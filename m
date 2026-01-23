Return-Path: <devicetree+bounces-259114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAXoD7rRc2kCywAAu9opvQ
	(envelope-from <devicetree+bounces-259114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:53:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B51EB7A567
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 084BF309985C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF17B2D060D;
	Fri, 23 Jan 2026 19:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HAUuY9eC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF44F2D0601
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769197887; cv=none; b=f2ccWIsQxVHSWPjaiSZmH/F8dSP9fWXQ3vaUYmTcWW60m6ifIthKTQ9MhNPTK+qaYw/1jQdsGkjz/LT0jE9JdJazKPw7HQ9Ks5sv8Jt4iHWEFk0VKQvNGEp1TldN+bJ/ltxm5Q6bAzSpgBy3EVQKlOMSUonwG/hy4OqQVeFyc5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769197887; c=relaxed/simple;
	bh=CsVAGnJYyt1gpIKIOyO13ylzg/PQgaXnaqCXcwteapg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JnX3Sm8FdtFjG9HKrr+CncRuMA3bGHyfftEYu0/GdCK+mYfHkCkV/f1+TaRdnQulX8ynHsQYBPwJkr9CMoSxqQEnOBTRhIXOSRAFh0/EarYAgLs4Ijl8iYyu0EjlN4zgdArSTEKIxAD/wn4QQT2rWndhfieFhqYQinSCjIh4uKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HAUuY9eC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so22145815e9.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769197884; x=1769802684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MNmEBAcCOcnCArGc8pe5UUOL3dPUYv44y06uRTFe1O4=;
        b=HAUuY9eCLm66QWg1scOsIxXcs9xNNZ16ViTINKCwu7yHrHQyB1qUdo7ppKb+iq17gM
         ewiffFx5oqEKaidR7I5MeN/dsv/eTBuB20uC+xyN4lsny7DZOyLfXYsDAnYGH8s/ymRM
         DncQHYM4bxCyvbQ7H7tZ7dY8VbZw5JFx4VxlExEiAdZ8idjnaPyZ4mYWxLKvxtCcJ26o
         2JBBFGx+y/A4dvSVEc3cJKZsmcq7TqpQpsqk8si4xSWk7vA1MdSYvB+5I3hVmdd1Ri75
         pS2nlyLFLku8BEcuUV2v7zVt73QID7u66vFKxb+/4OfSAB8RBTv2NZsZg4+4HQpwnhYx
         Wd6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769197884; x=1769802684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNmEBAcCOcnCArGc8pe5UUOL3dPUYv44y06uRTFe1O4=;
        b=OTo9XuxtFqAOw5fNSJRYbMkq2cBagPEjRheLL5ZOelahbgxnrH/XUulnHlky9Pojy+
         QS5t8qBwL3rpNPaGEz0m5q4s20fDmI1GzrX/egFnuimxJC6cCQkSPbl3lMbAuBJBotEc
         ccPutPOEO1wNLbYE5wdqHTe8Cg1HCJrL5Na3I0SwRkharfJBYwzcpgwo0YMFS5rizf51
         TSdhDo+VreMnu/oH1fpx5K3Qi8LvgfSY58NNCE0+7196MVHQiCTCrZ2U2uVgTLwy2ar7
         buvbKmVyA0gLef8O/3SN0gt1IqO0NVi8m1GRklgkKD4YQU+l6aTTrIfK5Qsx7mEGLYq/
         HF7w==
X-Forwarded-Encrypted: i=1; AJvYcCXM85DzXxs5960Zy9tzvoMR9PurIEjgxT0gS6xFN2OLz7hVGL2RvLfDZ/ZmLWnPEGl4XEuz7GUl9Uxw@vger.kernel.org
X-Gm-Message-State: AOJu0YybUr0ZNQj0oYmgit1NlnXT+7BFo8G0Yt2WNYtxIVNgzWkltrZf
	JZg5ztoUdsOj0wg7lKdeq8/zYcCMOBbLVX3UWW0hM7j5EMM1cODG4WJYaxPuaLnop8s=
X-Gm-Gg: AZuq6aLJZZeqpUqgknRMZyPWDt04/J1XjXQ99sGwbhOwqiLZRnZYOd6czlxuJTuX884
	suXMLenMQvi4r/rkDua/AmNMGY3Em3T/wvh6L26IezZHhW8THkPXCwIdNpQBPYpP3vH3/Bf2nIm
	jCcMtlPauAguJeEqMrRKGyGVh6QVywVA9Y6RyYNOORzDimJZcfE70BwF34IKF2k1BYHuTBSNoe8
	EFDxOUDS3fuz5YEA3i6xFS3FIOyi1pegJHN7dR/NSboXzlTjl7IaUPs0KREzt0bvxVj8z4XzZJY
	ZnrehtFgu9OsiX+rgSyU00zVb2kfh2oOhRG4+2YgtdmRYXoHcNv2JgN23vB/QqSV3I3R7LrkKF7
	yOrNaN0FYbaKg569XvJhzfu4ZYpHvgj81YhkOWTQ3UE/oKzdeRasS1ViaKn19bIETuGIAytTJj3
	lZ6ERQEr10A9t4ydb2
X-Received: by 2002:a05:600c:3e0e:b0:46f:a2ba:581f with SMTP id 5b1f17b1804b1-4804d307b0cmr68595535e9.16.1769197884089;
        Fri, 23 Jan 2026 11:51:24 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470bfe42sm156761385e9.9.2026.01.23.11.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 11:51:23 -0800 (PST)
Date: Fri, 23 Jan 2026 22:51:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Li <Frank.li@nxp.com>, linaro-s32@linaro.org,
	netdev@vger.kernel.org
Subject: [PATCH v4 3/3] dts: s32g: Add GPR syscon region
Message-ID: <34ac20223cf6833a0fe4291cfb2db5309f4e5eed.1769195864.git.dan.carpenter@linaro.org>
References: <cover.1769195864.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1769195864.git.dan.carpenter@linaro.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[suse.com,oss.nxp.com,nxp.com,kernel.org,pengutronix.de,gmail.com,lists.infradead.org,lists.linux.dev,vger.kernel.org,linaro.org];
	TAGGED_FROM(0.00)[bounces-259114-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[400a4000:email,4033c000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: B51EB7A567
X-Rspamd-Action: no action

Add the GPR syscon region for the s32 chipset.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v4: no change
v3: no change
v2: Remove #address-cells and #size-cells

 arch/arm64/boot/dts/freescale/s32g2.dtsi | 6 ++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 51d00dac12de..b954952d962b 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -325,6 +325,11 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		gpr: syscon@4007c000 {
+			compatible = "nxp,s32g2-gpr", "syscon";
+			reg = <0x4007c000 0x3000>;
+		};
+
 		ocotp: nvmem@400a4000 {
 			compatible = "nxp,s32g2-ocotp";
 			reg = <0x400a4000 0x400>;
@@ -731,6 +736,7 @@ gmac0: ethernet@4033c000 {
 			compatible = "nxp,s32g2-dwmac";
 			reg = <0x4033c000 0x2000>, /* gmac IP */
 			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
+			nxp,phy-sel = <&gpr 0x4>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index e314f3c7d61d..be03db737384 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -383,6 +383,11 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		gpr: syscon@4007c000 {
+			compatible = "nxp,s32g3-gpr", "syscon";
+			reg = <0x4007c000 0x3000>;
+		};
+
 		ocotp: nvmem@400a4000 {
 			compatible = "nxp,s32g3-ocotp", "nxp,s32g2-ocotp";
 			reg = <0x400a4000 0x400>;
@@ -808,6 +813,7 @@ gmac0: ethernet@4033c000 {
 			compatible = "nxp,s32g2-dwmac";
 			reg = <0x4033c000 0x2000>, /* gmac IP */
 			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
+			nxp,phy-sel = <&gpr 0x4>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-- 
2.51.0


