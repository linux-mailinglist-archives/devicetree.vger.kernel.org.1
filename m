Return-Path: <devicetree+bounces-246199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB0DCB9D4A
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE720306019F
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 20:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F761310620;
	Fri, 12 Dec 2025 20:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="CIFquPs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41060236A8B
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 20:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765572978; cv=none; b=OKV+BPW5G+OcC8+CBlnTY6KZmdUqjsH1syac5tHaGpGRfdKWzkracYICXztrBdYTHYHhTmM1lc3ojPKKpgNBTJjw7yJswokB7dSS+99MLo+jXs3isH6KWbIA6EjFQvmKrljtv9erwFRXWeblP8xICHTRqKtxHTUQh7Fko3dtfcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765572978; c=relaxed/simple;
	bh=aauJs1J/Gkh6roPnBtH5sB4pnrQTI9lCh4Ou19IFhWw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HXTPoufNomBRhB+52X8mQHO2IIgdlS93Yfx4AsaDkD3h7oL2neSDtSW+ytnlbwxcFLzDTNQWFbpGI9TUmzLR4lg/hUD+C2TQZ66J1BpEXssDkOocbY9YIDGyOy6rthGivyDD8ppGLC/xmu8jYZc/SqVFd/CcA6bzymDm7uTHOBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=CIFquPs9; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 20251212204604d47407c8da00020761
        for <devicetree@vger.kernel.org>;
        Fri, 12 Dec 2025 21:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=jkKRNu8RePBTzLRlHwShxXUlHdolGq1GO4F41VgDmFU=;
 b=CIFquPs93Lz2rmW0h1/25BobRFozlevYo0Po+OAMN5x1plsaAKnOG953rr9pW7T0gULdFl
 AJrHubyUuGb06BaUP37JOdSEBdMm41MUM7NvLKiywESTPlKuroT7tWJebMw0xe9ezXv+zZk9
 9GO39GZhko7G5UqsBIxGZBoWJLzatxgpe0YJHdCjxzewaQ2QGN0obsvaqOoqS0Md3G1O9NpM
 i4xyt8iZz6LGJuoSw8SV9fAzzbbLJf2ZGwCkc0zUOI4pufFAY+XMWYsD8xGer5qifaq1T4gE
 A1/uawR2nmt3HiA8NxAT9c+jNNk8PIxjcA0lNJLeSvmiNaTzOS7M/3Bg==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: netdev@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: [PATCH net-next 0/2] dsa: mxl-gsw1xx: Support R(G)MII slew rate configuration
Date: Fri, 12 Dec 2025 21:45:51 +0100
Message-ID: <20251212204557.2082890-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Maxlinear GSW1xx switches offer slew rate configuration bits for R(G)MII
interface. The default state of the configuration bits is "normal", while
"slow" can be used to reduce the radiated emissions. Add the support for
the latter option into the driver as well as the new DT bindings.

Alexander Sverdlin (2):
  dt-bindings: net: dsa: lantiq,gswip: add MaxLinear R(G)MII slew rate
  net: dsa: mxl-gsw1xx: Support R(G)MII slew rate configuration

 Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml | 5 +++++
 drivers/net/dsa/lantiq/mxl-gsw1xx.c                         | 6 ++++++
 drivers/net/dsa/lantiq/mxl-gsw1xx.h                         | 2 ++
 3 files changed, 13 insertions(+)

-- 
2.52.0


