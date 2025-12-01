Return-Path: <devicetree+bounces-243419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 585B6C97837
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A62533461DE
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A923316917;
	Mon,  1 Dec 2025 13:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YvMEOW9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D71F3176E0
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594520; cv=none; b=eazzkxOcvzbf8lvxWBbUyVy53Iqfm6WwJk7fFo9XS6Z8yrskA/YbZaFewURIQUplIyM+zZSf2IBkzmfQeFs9iIpw8ba+2xHTshQNh0RRonO6j6rEqXgMnMGnP6vOfkQiYJTMsvAe76uDQ2fOYkFmiXF6KE4yyebVuXdauylnl5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594520; c=relaxed/simple;
	bh=yK2o72zQe+DCz+K/wPAmdcA6PJnQHLVXjQkN9fm3wv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o5KC54+iMJsd7YUAG9bPrvJXWsIYgIh/5wgfiQMvwmX11PkEKrJs19kzQe0oCXG5iLhYKs4ZGn0+X1JsPKaqL241EOhfNgZPwqiT2sZTXWnAGRfnfYNew+hn6l5iq06e6KtqXLMGJg40Bx+RSHJG6yqcHtMKHN2ETCg1z3Bmk0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YvMEOW9h; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b75c7cb722aso610247566b.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764594517; x=1765199317; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6ART4te0v+vV281V0YHRF37dtpcBxay9iLJ0GSUM95g=;
        b=YvMEOW9hE8TykCirTmxiDGZHi3aUd0SgIjtjLSzWNvxtfxZJzG7+LLmEcvs9XW8ah9
         s22u3lA7EHJRoyAJL5oVCF+0+ukHwqc04Xckg3eXSC2rDIbruC6WPlq6eumOUS60ayje
         44IkgyCBHv+gk7h7I9wfv5GvcudiK55QMBrsjH1NOQbn7P8An9VnOL+TXwZQg1nmIzjV
         H0zVao6ebq4/xyv1TDISII5NBf9XuXjumSZuP0tGVx/aVeilKfvE1CxwsJP5BDevCUl4
         3PpNac1kfubRe+LsXVe0MpvHjUl+uDsGAEDOZqypEKppgKAloYy06P7WYagt3j+Jv5Hc
         lbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764594517; x=1765199317;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ART4te0v+vV281V0YHRF37dtpcBxay9iLJ0GSUM95g=;
        b=YMuRGxSY+1lbmuDn5JSR0OgYyKQr9U5oJ3KqJNujoQfbiPJLrlrQ+aU+mb7+3FBXr+
         pDE7x6wdGLHhZpngjPQQGtDTD4y7mwpZWKItg/mV1KKj3DCz2r3MCSreeobmyLNbWTlF
         FhfClUbfob64flk8/tEILzr+9CeaHJDZzw+6a30le+yzGmVgJsS2DQyvXpZibllhnC+h
         2YBbv8aHfZlq58mskY2uNGfa9mqU6MxY8PInzxg+RAe6ZMAEEN4RyqnUJHRJQn9OVQsC
         uqXWtzpdvfuzbjxgFYn9BEzUEg5nXhgRKzcR4+CDeuxvyZTE51fQczQtMfwYjQnE6Njj
         MhWg==
X-Forwarded-Encrypted: i=1; AJvYcCXNSnDhPdUSgALB6zlmcUPwbGb4BgBIv79X1ZIxTgpV4H/60Pqb/UcbUS6M2ra0EXjYFyDyLiIAjexm@vger.kernel.org
X-Gm-Message-State: AOJu0YwIgVhq5j74T9sZl3Kx+Efp7gFA26yQlOTY6YBAcwBzZZ5TvF0A
	dbJQgAANF0OwvR1GkFP4JhL/jfM54EzSmHBbnuLhEIEl65E0C5/+FLKi5sI5XDupOB8=
X-Gm-Gg: ASbGncsWICIjwaB2G+PNCefm0/+S2mdjqTkke7Ao/5vDm+xwobgT4awLbu/UAdp6W/1
	x6TwkCk9NAtaxdpBUdQtoRhQuYyguTxNOQRL+T/+GKkQCqVLk4rqgO0SLTtZ1onIMIvQ1iY5Gr2
	bF5HVl46cUUGCTI/70GcQanzQGRY44IGQJGqReUgzC+ZMCul5S6m7mzqgLRWMu0H1JGc2EpZjXo
	VBGFbNx2a2tAASTy4CfvD+0HJoYYDsNTmyRRmBOAQ/MayhTSzfp1o23R/8WRgwAubzjscCQF5sd
	kIFw5ILrSLCoUCckIMZFJvm35kzN/igR4RR3Armx6A3+m6i8Ow5ZMMeiF3Xla7juxMkwV+pwsbd
	gm4UocLoFm/H3UMdzvpTrBbFLsSMtQ3ZO7v7CveuhH0zqAw6PL55pyfVuvR4tUB0JPQk3xsFu8s
	gWK28hrXbjXvcfsmTqZi7bnFJ+h6s=
X-Google-Smtp-Source: AGHT+IGy8H4hZkMdsPgp5ClNfSZPP5T+1EX7uyKwcjKjvElb0fOWVlyxh4nPkZ/Ts/Rfemd9Q4kkuA==
X-Received: by 2002:a17:906:b4a:b0:b73:53ab:cfa1 with SMTP id a640c23a62f3a-b76715ab9ebmr3096430866b.17.1764594516820;
        Mon, 01 Dec 2025 05:08:36 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b76f51c67e2sm1228965866b.27.2025.12.01.05.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 05:08:36 -0800 (PST)
Date: Mon, 1 Dec 2025 16:08:33 +0300
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
	linaro-s32@linaro.org
Subject: [PATCH 4/4] dts: s32g: Add GPR syscon region
Message-ID: <c8302f53fcbb5cb5afe42cdb15aba7e2e6ed7338.1764592300.git.dan.carpenter@linaro.org>
References: <cover.1764592300.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1764592300.git.dan.carpenter@linaro.org>

Add the GPR syscon region for the s32 chipset.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 51d00dac12de..3c9472f6c174 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -325,6 +325,13 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		gpr: syscon@4007c000 {
+			compatible = "nxp,s32-gpr", "syscon";
+			reg = <0x4007c000 0x3000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		ocotp: nvmem@400a4000 {
 			compatible = "nxp,s32g2-ocotp";
 			reg = <0x400a4000 0x400>;
@@ -731,6 +738,7 @@ gmac0: ethernet@4033c000 {
 			compatible = "nxp,s32g2-dwmac";
 			reg = <0x4033c000 0x2000>, /* gmac IP */
 			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
+			phy-sel = <&gpr 0x4>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index eff7673e7f34..0ceca3caf133 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -383,6 +383,13 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		gpr: syscon@4007c000 {
+			compatible = "nxp,s32-gpr", "syscon";
+			reg = <0x4007c000 0x3000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		ocotp: nvmem@400a4000 {
 			compatible = "nxp,s32g3-ocotp", "nxp,s32g2-ocotp";
 			reg = <0x400a4000 0x400>;
@@ -808,6 +815,7 @@ gmac0: ethernet@4033c000 {
 			compatible = "nxp,s32g2-dwmac";
 			reg = <0x4033c000 0x2000>, /* gmac IP */
 			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
+			phy-sel = <&gpr 0x4>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-- 
2.51.0


