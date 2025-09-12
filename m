Return-Path: <devicetree+bounces-216557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A723EB5529A
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5635C17CABF
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB35520E334;
	Fri, 12 Sep 2025 15:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EwLfVH7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2F7189F20
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689409; cv=none; b=GRkV6csKWXLS3ejSpB+/XLHVtaltP8DugQaCQdbiK7zeY9Xo/9/4iiB/zGSCPtPzZX3k7di6664vNnhn6sJCd1IJCYAr5NA+f3AcgJZsX06RvmXYXIeaVp1XJr8Z0kPMGvQgLxYo418kfdXhvW7SDqdgudg4T+kkgB9HrK1i5Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689409; c=relaxed/simple;
	bh=/Ylbt4Hgov7SuNxJ3P9gKkIyD2OkbW71YkYFjNuHbKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJHbtKtvtA70ohEkPDvQv77uBOYFokdi9Do3mcEX2FODeLPWUx4e4jmONFqEV6MJy5Bst7fnPOmjsFmN6cP4qCXrhKXt7lqdzuG7L344rNEuzKLMRf7UmZyEID5V+SqkhKYwyl5jWIkLh5PAMqSsOFJ5zppUSyty1gZez6AK89A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EwLfVH7J; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45b9c35bc0aso17337475e9.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757689406; x=1758294206; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zq1J637xCjsK3a1jRXJ0Uurp60mNSuIOaSzaWarRAoI=;
        b=EwLfVH7J+J8hr24JMcZA2kzQaCH/e7LLYopDBif5z/sb0XSRkgIdI56oiDxdAC+SQG
         Zl1zBf07JZeEdpsYezwczlXoWKeTK2mxWupVFkQTgPiALi21pXwI3nNgQynIqHVgxzoT
         6WNShO1iJ9uQ+9mjyFJxtVZ/ge/sEciuy7rDqUOKfDnBCNLJly4LOb11LUP+WdcccfSd
         WNSgJ+rTsYsdaxIQ2G3Jk2j3ymaILOW3FZA2Qq89Ff0VlKdT1VG2FCmqiLbUhKI5bxTn
         nrMAhO5+KNitiSkelgUMX0fMvE7QKTBUPeIdVZTcscWsvm6Tg6Ih0Ye0Rz/kTyEpkkuy
         r2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689406; x=1758294206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zq1J637xCjsK3a1jRXJ0Uurp60mNSuIOaSzaWarRAoI=;
        b=rTzStGZPkNn3QyjfxW6L2xxjwYRCRS2R3B0KfLrVdYHI7zZLDDMG7UVI8bOvQgppaL
         64MPjRqO6kg2v+I0Noi+a453S+ojU8XEt4T3XJcEyK4jAoapjX1dt2jBHGV8JLHsYbjC
         F4xwgI6f7KB3T/vMSEGRCOM3qwpKH+pHYvQuXN2sP+IwNQf3s1UrYGqjB0jSK7gXiEn4
         QIgNPTd0sa1KOlph+4UuoU+R254biwUtmB5aU4cXEoCrv7kaE7HhJbMwFL8Pmh6VLviS
         Zxm0CDcdpQziHPxBvAkgXe4yLwJiVtHKc9ezQcF29Wf00ryIH+cLz/r8PHZ03On15Xj0
         259Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsNWRg1GQpvroPq3edetfmlfxz1mjEYeNu/DDmvyF5H7U/tk3DCf/FhY41/cpP+Md8gMLPFh6hhn0/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+gX/f8t+l//MH6zjwaZDvBGotoZ1Hbh408mWbOX9R63uVbeOT
	htdRF+iOkaS7r5AZzCHX1wuAN0DZw+ohdWXz6yrVkXZ0QiAO+SuKfVXknyg6fORHRHv5L24psCZ
	w+eug
X-Gm-Gg: ASbGncsGMh45uLFPz9QDhhFV0RVulpgrLGLHQlSq7zdpaV2hGR0xz5rTIlCMZ0Kp2oP
	Nf4CePbsw9DLNNcJYfRKG9hlsXPaNH/yWiI744eP8/0l7Gfa8SzgJGN7oEh1OtfQWW5RCQGwgoD
	BcPXM+ntwRUJOI9pvwjimbFEUIghry6VOIMlXdmVwUwrDNzZpHNIfk0yyOORyZtVyR8K0JqGstL
	Ji1tzbGmb80nqHftbaLIrZAExC6gLkMouns9cF1CHl7QiD42OmPpAVvfJbrrjd+dLw5FkvPqjLy
	mLP6ZTfuRfk8DMEx8SBwA2TDKohKbQ0xAj8Je/MqUjvw5mr8nO+Ek7kZjGIMlOeRsIaR7pWD9hD
	az2jQePfDpVa9zfc/S2AcvCUQzM4=
X-Google-Smtp-Source: AGHT+IGJXVmJrfU4VspkXVUL2QLcSNv5Pv+0FQFjRdVM0w+zljPzezrhfzIQOaENjXatzp2p/nhztQ==
X-Received: by 2002:a05:600c:3ba9:b0:45d:d9d1:80a3 with SMTP id 5b1f17b1804b1-45f21225cd7mr33416595e9.37.1757689406190;
        Fri, 12 Sep 2025 08:03:26 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e015784c3sm72663525e9.10.2025.09.12.08.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:03:25 -0700 (PDT)
Date: Fri, 12 Sep 2025 18:03:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>
Cc: Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: s32g: Add device tree information for the
 OCOTP driver
Message-ID: <6ea7fede9642dad10a6270a07e052f7a726f9bd6.1757689031.git.dan.carpenter@linaro.org>
References: <cover.1757689031.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1757689031.git.dan.carpenter@linaro.org>

Add the device tree information for the S32G On Chip One-Time
Programmable Controller (OCOTP) chip.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
The other patches in this patch set were applied but this one needed to
be rebased.

v4: rebase on imx/dt64
v3: Add the device tree entry in the correct location based on
    the 0x400a4000 address.
v2: change "ocotp: ocotp@400a4000 {" to "ocotp: nvmem@400a4000 {"

 arch/arm64/boot/dts/freescale/s32g2.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 3ff3b2ff09be..d167624d1f0c 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -325,6 +325,13 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		ocotp: nvmem@400a4000 {
+			compatible = "nxp,s32g2-ocotp";
+			reg = <0x400a4000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		swt0: watchdog@40100000 {
 			compatible = "nxp,s32g2-swt";
 			reg = <0x40100000 0x1000>;
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 6292ae99883a..be3a582ebc1b 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -383,6 +383,13 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		ocotp: nvmem@400a4000 {
+			compatible = "nxp,s32g3-ocotp", "nxp,s32g2-ocotp";
+			reg = <0x400a4000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		swt0: watchdog@40100000 {
 			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
 			reg = <0x40100000 0x1000>;
-- 
2.51.0


