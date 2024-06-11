Return-Path: <devicetree+bounces-74573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 926F1903AAA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 13:43:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85E6A1C23373
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 11:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA6017BB02;
	Tue, 11 Jun 2024 11:41:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [91.198.224.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B493178CC1;
	Tue, 11 Jun 2024 11:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.198.224.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718106084; cv=none; b=ByRxeCU5ASAsHHXKlFIbfPPsQndHuxirVe3tpryFH7vqYM0z9GS/yfdSwIB9KyHLkcyt7UnN4QCs+wNlMmr+t5RMuAkOM5lwohzSXjHzIY5OUCGpOh7XBjlNUS2hus+YZbpJgYBLB9D1IPRqfK8YZmN1clMvDQqY/lH6Pulk2UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718106084; c=relaxed/simple;
	bh=taDd5iOXcMi1GDYjC36QIK9CTE076C7/N4X93v5aW10=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J3e8Is3c6TQZfk8xquv8sZSiwLC/LUaMKVoC5L2Rzgx4TasHLg/S8McXXAKHLDfWJh5TIykMjFS4eIQedv0nUdmzH52Qb2BnE/ZdOFX+rE6lL0olydAk3Mlx6UzZ2xt+z2vPAalsq0euGIf/VPc9Fltm3UUui/tDWYYwLnxty4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; arc=none smtp.client-ip=91.198.224.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [127.0.0.1] (helo=localhost)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=9906f4c1d5=ms@dev.tdt.de>)
	id 1sGzsO-001Ksd-Q6; Tue, 11 Jun 2024 13:41:20 +0200
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ms@dev.tdt.de>)
	id 1sGzsO-001XUa-8D; Tue, 11 Jun 2024 13:41:20 +0200
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id 00C93240053;
	Tue, 11 Jun 2024 13:41:20 +0200 (CEST)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id 85698240050;
	Tue, 11 Jun 2024 13:41:19 +0200 (CEST)
Received: from mschiller1.dev.tdt.de (unknown [10.2.3.20])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id 4F51129768;
	Tue, 11 Jun 2024 13:41:19 +0200 (CEST)
From: Martin Schiller <ms@dev.tdt.de>
To: martin.blumenstingl@googlemail.com,
	hauke@hauke-m.de,
	andrew@lunn.ch,
	f.fainelli@gmail.com,
	olteanv@gmail.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ms@dev.tdt.de
Subject: [PATCH net-next v4 06/13] net: dsa: lantiq_gswip: Don't manually call gswip_port_enable()
Date: Tue, 11 Jun 2024 13:40:20 +0200
Message-ID: <20240611114027.3136405-7-ms@dev.tdt.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611114027.3136405-1-ms@dev.tdt.de>
References: <20240611114027.3136405-1-ms@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-purgate-ID: 151534::1718106080-194A562D-73996D5B/0/0
X-purgate-type: clean
X-purgate: clean

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

We don't need to manually call gswip_port_enable() from within
gswip_setup() for the CPU port. DSA does this automatically for us.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Acked-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/net/dsa/lantiq_gswip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/dsa/lantiq_gswip.c b/drivers/net/dsa/lantiq_gswi=
p.c
index 37cc0247dc78..c1f9419af35f 100644
--- a/drivers/net/dsa/lantiq_gswip.c
+++ b/drivers/net/dsa/lantiq_gswip.c
@@ -898,8 +898,6 @@ static int gswip_setup(struct dsa_switch *ds)
=20
 	ds->mtu_enforcement_ingress =3D true;
=20
-	gswip_port_enable(ds, cpu_port, NULL);
-
 	ds->configure_vlan_while_not_filtering =3D false;
=20
 	return 0;
--=20
2.39.2


