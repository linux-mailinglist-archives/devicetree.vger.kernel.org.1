Return-Path: <devicetree+bounces-270820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EE72CuCDp2mZiAAAu9opvQ
	(envelope-from <devicetree+bounces-270820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:59:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1121F9071
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B560530699AD
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 00:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F29A2F6193;
	Wed,  4 Mar 2026 00:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PPYRtT2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18CB23C39A
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 00:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772585949; cv=none; b=Ij0xmkH+RDevOZa2xokE6Wl7Ip++FjHcGdPPenRvF6J610hGpE0Vv3E1DURAdFzddpDQB/93Tx4wK0IMYwQT419yEY94zjXedPs6sjoE7dzbBXHC0eXTzuWFvDT05J28UHq/b4lRHXx0TdsWGf9dsMa0I8wLLohN/TqWYZZ4RSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772585949; c=relaxed/simple;
	bh=kqEpoeU6uwUw7UJCVSou/auM1cXuat3qxhal/UfK2Xg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aHY0d4IyrLaljQqrIrsiVu6cPwPAfuZwqcHm5wiq27Gi/Nu5XNHQP0Mw5NivSkyn8EmRkEP6ETJoN1OkeIYJYpDAXbP83dc8c68xBigHWRE4Ful8heIwxfWft/A0NzgiPlxm9Xt9NT7YH7Do5lo/nKL4AHML62N1k7S3vRwi9+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PPYRtT2Q; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so71083765e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772585946; x=1773190746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=PPYRtT2QZKRz5AvxCFybOmuGOqiq1F6wCY7JFYdOSqKd3bEfyrQlO0wo/mLmugjCWp
         RDyK0n//vkHuq3CAvORyMzvFZHC5kROVtEpUolNhd3o9ldC9+Ro3DtW8oNEVh40pbLKe
         Tmhepw4St7vkaKDY5S2qr0Tyqx98bX2GO+ncZn4EIbmoiTH1B8J0N1GVDtPCHkBA4+Z1
         rC8mb+mAlNWnnNPnD2DmNa+S6REtARkLluRtbht53fxBNC/jRqVR8223Lz63rP/IJ/yS
         pPDvZP2qMMvkLAxW8vSJCD4aM32siuzzq3o3HjWusSgbRW54D2RgcQF1LhrobWXVmPBg
         CSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772585946; x=1773190746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=vPfztpvqXV/YVy60AW7kUnHcIbRGOKe63kD7XteoT3UMSE2RH3QO6cNyD0wCIiIjF5
         cufKO2FJJsL3ERjBLxwGQporJK5stIysLN7bYW40lO3wo6DoVGgVEGHLNqhiC72TTrRS
         KDJJ6HUVZzbDIBkZ8u7Wk1GdpH50FjAPO6npoKAFOmiu/vcjAihr7Yp3eTjSJmTejdB/
         EUyT6ln+wQ5tHGOUBdSpsakdRsH8InnxB8WrSDYrs39v5iZ7zJL4vGe8NQBdXNfCApSZ
         rqJQL1gfAqFCYWK/XONKm5lLx0Qz7VcKfqr6QzHdHCZWWs89yZjmQDYznW6Xuk0EfMmc
         u69w==
X-Forwarded-Encrypted: i=1; AJvYcCVIroziwE7WbXxUsXABZkgeZxXzIcETbd32vlihd5NQM1cIfK/ZoL4VKoxwSqWsphNewMIdqCUvHegj@vger.kernel.org
X-Gm-Message-State: AOJu0YwOCutmQ9vzfpzdQ3pYTqRSfHAU7r7VS5IDRQZlMw4o/3qLWw5c
	mUF50k12ztFGNkJJ+oq6lagVvKy7L9x1gWQ5HmcyRHJhb8EFkwaVqLaH
X-Gm-Gg: ATEYQzw3RP25Maa629QTs1obBXeTxm/gNBpX4FnPWUqwsY2fnrGxAt7zl2eTEQJxzUZ
	ZaSBb7YAxtrkL89yLOvsKkmSVVSwRqOqyGoiISaJcMqfuOZyhMhSv/euxAb7fgPO/dF961aj8H9
	L0XyN97olAsFJ+aaWHa2omRmsbUKEz1lmwZ17rnKiv6zZsdyYrgw72g1m9I+4XmhYyAWSnNQOGC
	PCtu4vOURYbkWkFAdF1aQHpa/ROmcXOFTH3bWTZe7w1fFM9L2+yXVyff+8E6AomNDASUmSD5bb7
	8t2plbGEGrH7CVZOZU4J8MOvfbRmfhV3gr1JwpnVG/fYuope2lXMQZUEXVu8zBqYpBRj0kQcDyV
	tvcyXtJ6ZLu0gSJrWjQ2AsDdVbPFYDiKO4aD86VQhXgCpPQ30/EpzOCwFhMrx4zfFC2Re+zir3V
	g/Dps9LWQ5iassMiFBcXfJUO7GDxqktkz0Zf2XbnjjNM1z9qaJDZRRxsE=
X-Received: by 2002:a05:600c:3f0d:b0:483:7903:c3b1 with SMTP id 5b1f17b1804b1-48519889a49mr3172975e9.20.1772585946112;
        Tue, 03 Mar 2026 16:59:06 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851880724esm26927575e9.9.2026.03.03.16.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 16:59:05 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Wed,  4 Mar 2026 01:58:33 +0100
Message-ID: <20260304005843.2680-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304005843.2680-1-ansuelsmth@gmail.com>
References: <20260304005843.2680-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: AF1121F9071
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270820-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
purpose. For example the Serdes for the USB1 port can be both
used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
used for USB 3.0 operation or for PCIe.

The PCIe Serdes can be both used for PCIe operation or for Ethernet.

Add bindings to permit correct reference of the different ports in DT,
mostly to differentiate the different supported modes internally to the
drivers.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..a14cef465dad
--- /dev/null
+++ b/include/dt-bindings/soc/airoha,scu-ssr.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
+#define __DT_BINDINGS_AIROHA_SCU_SSR_H
+
+#define AIROHA_SCU_SERDES_PCIE1		0
+#define AIROHA_SCU_SERDES_PCIE2		1
+#define AIROHA_SCU_SERDES_USB1		0
+#define AIROHA_SCU_SERDES_USB2		1
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.51.0


