Return-Path: <devicetree+bounces-167865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3DEA908B9
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA7FB19002EE
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F6E7218596;
	Wed, 16 Apr 2025 16:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HgUWF3HF"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB17F212D96
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744820560; cv=none; b=KMi9UcckXFGPukhasnrqGNktgNfHGH0yrfhbH//HknWAIoiJ8RX2hN1IkEm4PZQnYL6apHpnN6bUUy/7QpjMGW2B1Z7BcTcY1vHQAu+koMKtQ5pFDS+1JTzqjWsbjoVXCRvgNAH1kavO3n0P3++07BJ8YJwf+UZ+zMY7xiasAG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744820560; c=relaxed/simple;
	bh=mhroH62gvO9ZeN3ndrEuib78iEtzPLbdjGEAf/xy5vQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jo8vXdxwyMfJzM0E9NYim4FWzWU7kNjTURTw6d3D/Q6TKeiIiGf5yK6bWF7h40r3Q8ZkdfkziU9K0sr1BOvxOocbJEYzfk2/wWktroSTpl5JIvz0eW58Rs4mFkBh+3noDyFohcQB98dFpWP+1TT3lIDWX716Bud6ebTJoFKdDfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HgUWF3HF; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744820557;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=c0XIADaqXMLiabHFp8+DtJN4Xp5Pbh8dJJfLV+eNoh8=;
	b=HgUWF3HFznyt2FSxPwUQ1KmT/JuGMyKm9LkrQ1oWhaucY2j06UbB33q0HklSgT0u4T3nhg
	vn9I5gKcyDuvghrmMqWBkAkh/dDwjXmhvnXt85TnGkRuo+tfBna3BytZLQ8xMaqh5u8dpB
	nkXWgoOBQPZiaCvW79HavXCNZOgeMR0=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-217-O_wDi8XxMiOsSbKJ6eKitg-1; Wed,
 16 Apr 2025 12:22:36 -0400
X-MC-Unique: O_wDi8XxMiOsSbKJ6eKitg-1
X-Mimecast-MFC-AGG-ID: O_wDi8XxMiOsSbKJ6eKitg_1744820554
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C04B719560A7;
	Wed, 16 Apr 2025 16:22:33 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.33.32])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 09D0E1800965;
	Wed, 16 Apr 2025 16:22:28 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Jiri Pirko <jiri@resnulli.us>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Schmidt <mschmidt@redhat.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 net-next 8/8] mfd: zl3073x: Register DPLL sub-device during init
Date: Wed, 16 Apr 2025 18:21:44 +0200
Message-ID: <20250416162144.670760-9-ivecera@redhat.com>
In-Reply-To: <20250416162144.670760-1-ivecera@redhat.com>
References: <20250416162144.670760-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

Register DPLL sub-devices to expose this functionality provided
by ZL3073x chip family. Each sub-device represents one of the provided
DPLL channels.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/mfd/zl3073x-core.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/mfd/zl3073x-core.c b/drivers/mfd/zl3073x-core.c
index 0bd31591245a2..fda77724a8452 100644
--- a/drivers/mfd/zl3073x-core.c
+++ b/drivers/mfd/zl3073x-core.c
@@ -6,6 +6,7 @@
 #include <linux/device.h>
 #include <linux/export.h>
 #include <linux/math64.h>
+#include <linux/mfd/core.h>
 #include <linux/mfd/zl3073x.h>
 #include <linux/mfd/zl3073x_regs.h>
 #include <linux/module.h>
@@ -774,6 +775,20 @@ int zl3073x_dev_probe(struct zl3073x_dev *zldev,
 	if (rc)
 		return rc;
 
+	/* Add DPLL sub-device cell for each DPLL channel */
+	for (i = 0; i < chip_info->num_channels; i++) {
+		struct mfd_cell dpll_dev = MFD_CELL_BASIC("zl3073x-dpll", NULL,
+							  NULL, 0, i);
+
+		rc = devm_mfd_add_devices(zldev->dev, PLATFORM_DEVID_AUTO,
+					  &dpll_dev, 1, NULL, 0, NULL);
+		if (rc) {
+			dev_err_probe(zldev->dev, rc,
+				      "Failed to add DPLL sub-device\n");
+			return rc;
+		}
+	}
+
 	/* Register the device as devlink device */
 	devlink = priv_to_devlink(zldev);
 	devlink_register(devlink);
-- 
2.48.1


