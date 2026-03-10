Return-Path: <devicetree+bounces-273383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IlEHdnhr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:18:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D202482C1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:18:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C909130622DA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA74643CEFB;
	Tue, 10 Mar 2026 09:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DzbIqa4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8803A43CEEF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133919; cv=none; b=E8DbHG/sAsYi8lCFSsdJCXza3DUg1zUKxMynOFv6VH/nt8WUFr07mERvent+MS98lGR6nKUQGCxb68B7CukHewyxFZNAs1axaQKFEjJcq3hq8JaTgrHVUWU9wV8PogTDBsP1E0SewVLbiNirYtnUHBkYdC5fXK6YDuW0C0J+DJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133919; c=relaxed/simple;
	bh=FhXJrZ7uVPaK65xiFPjnwZL9cmC25AwFyvS/ow5KGiY=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=g/iOhQba1uD1f2lWGL29iee8wLG4kiQtaBroAnfgj6eso5+ahGe84DE6w6/a9URfWA+SsLkCHXtvnsMp/tu8n9rgExTmjQvvr0f2ySZkoudkO/gpY+AFmwvp0Kb5Lf5xIL9qsSd/EZ6jl3oHcObWu0+/4TlE7L5ntmdsvlVc6qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DzbIqa4f; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-482f454be5bso126820945e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773133917; x=1773738717; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8byY2pi6aZMASU/wIMl2Z52enhJy2O8vbvW26gwVodc=;
        b=DzbIqa4fngRG3znJ/fiOhlFL0rikkk7nMsCNROrTd2PJguX42WGq03tf55On3RYc30
         G7hT+XAhqv/Q5dNzgXQKBkAkQysYMF5L0AjM6EeQ/xg/CGGEpjzH9U/igqSznDXC2Feq
         2gzn7gsB1rOsMh5IqD9SxrOlb7Cp0dP5T3hSrO3zVz6ELBwLk+ZZmJECo6nXA+md/kaJ
         7YTVGNXSr+J3YWIwTlr8o1p2vdlOdN749dtOSZhBVdDCFPEh+07DbCYQjmx1XFL08AJQ
         VRHSpNvknrR/ys/z2VrwYRQHEbEFwg8trZEEI/380sh8rdOT2Sdcnu9hd33uDCq+YsOF
         qfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773133917; x=1773738717;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8byY2pi6aZMASU/wIMl2Z52enhJy2O8vbvW26gwVodc=;
        b=uBBQCKCaTCOVBE00UfQ5mSQQlQj+Foag5/K6U/SZBYvHgfYI75+o7N3yz8dS/371Jx
         GGS3pC5Nxu8ROpZjdThC/gOQ9q8zLzfDpueiSDc0hChOm7xKZwtx/F8gJxby7wImyw+K
         K/2MvVzhDHePEva0xNuHyq70iYsOHPuWUblgjnWUaR41tblbUuWzUTdhdhM0rPs7RP/j
         2NlXsyqvvD5118GAybffH1YyTtEdResh2Xm9tpc2IB1UElpkCuYUCQWOp2szqRa/QnvB
         5NG3GSA8byOxz+vYskYu/F8QMjyO5nGFy1tLPeK2rrgQhv/0x+kAqqkKTmn2oOv0sRnh
         dQjA==
X-Forwarded-Encrypted: i=1; AJvYcCUamST5AME+enp/Wa/IgRVMnyVAjMToKpg1AMC7FIQvthkNTM5TIYsLEDMaB3fbbvyRaPUx5LgvnDcQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyL+DGkZbczEf/S9Bb9X1SHQT2hJZ/+XqtDB5SuSnWyIBn6zFZU
	UPyZpQ/trAHl184uhI3lXQTumNCiLNc3wyrmB40q1R0sFg6rmXa+hyPX
X-Gm-Gg: ATEYQzxombtWjuTQYiX+GrvvkGSBYssfLSm9OeUMtk48TrZdjEZlK70VM0mR8ljJIjo
	mvTDTqG2mExUV74vpq7zX+1E6xih69D+BNdkydv4AKz+QjYcrsThgdDsWJ7eHm2lJTLe0Ulki8Q
	cvpskVv/6ke+rqQ/xxfducQbfntK4sd+gneRGABVpIichYFN+rapxn6gkcdR6T+GRSAPdWrLfWP
	ybDNHc9DZsh6Za6MPElFveTpGeFIkpce4qH9P/66Fc+lO2tOpvduy7gMX+6/+jC7tQQOE34rrP/
	Atqg7/vZXvz9RgUdDLLcUH8HJ8H/RSSXlQiAiRsGw96VwZB/+7hCSIHRej/Q0quj0bqNRl9OcNj
	pi93c1SRrWPHFlwxbUt0PZl792oboLRBEOWz8Ia0bPVCAM4ERb1Zl8QVRELnAN7iISfpTuyvKp7
	27Q5+awh0oxzdXAts8Eg4crSOcJrK4mlAXxBwD9OpuFQ==
X-Received: by 2002:a05:600c:8b4b:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-485419f1614mr41410525e9.11.1773133916565;
        Tue, 10 Mar 2026 02:11:56 -0700 (PDT)
Received: from homeserver.tail6d6c39.ts.net ([82.137.32.29])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48541a6bb86sm56808345e9.1.2026.03.10.02.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:11:56 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	egbostina@gmail.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH] arm64: dts: imx8mp-edm-g-wb: Use 0 for reserved bit
Date: Tue, 10 Mar 2026 09:10:53 +0000
Message-ID: <20260310091054.2029912-1-egbostina@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 18D202482C1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273383-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

The i.MX8MP Reference Manual documents bit 0 of the
IOMUXC_SW_PAD_CTL_PAD registers as reserved. The hd3ss3220
IRQ pin (SAI1_RXD6/GPIO4_IO08) currently uses pad config
value 0x41 which sets this reserved bit.

Change 0x41 to 0x40 to leave the reserved bit cleared, as
recommended by the reference manual. This also allows for
easier conversion to symbolic macros.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-edm-g-wb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-edm-g-wb.dts b/arch/arm64/boot/dts/freescale/imx8mp-edm-g-wb.dts
index 242fa930b..a78401d11 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-edm-g-wb.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-edm-g-wb.dts
@@ -345,7 +345,7 @@ MX8MP_IOMUXC_SAI1_TXD5__GPIO4_IO17		0x16 /* DSI_VDDEN */
 
 	pinctrl_hd3ss3220_irq: hd3ss3220-irqgrp {
 		fsl,pins = <
-			MX8MP_IOMUXC_SAI1_RXD6__GPIO4_IO08		0x41 /* GPIO_P253 */
+			MX8MP_IOMUXC_SAI1_RXD6__GPIO4_IO08		0x40 /* GPIO_P253 */
 		>;
 	};
 
-- 
2.43.0


