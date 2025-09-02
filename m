Return-Path: <devicetree+bounces-211615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4734EB3FB04
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99E101A8831A
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 702DE2ECD36;
	Tue,  2 Sep 2025 09:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eBEbusgE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C34D2ECD33
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806484; cv=none; b=tleUQaefpYnDhlzW0O4xzwDwOpyThpK3LLKpjOmUFsDFmGfapxTUB1VBPZ+va67wlb4sR4ZJYx5g4w7HYDzeyUKI6Wd62dpZulfVwEA/mTtDXX+Hccx1TNnAwfAhug7gVR9pJCgF0f/4/lHnlLT+AwS0dpkYpSoO4DVhMMSZrqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806484; c=relaxed/simple;
	bh=yuhYbpTjEHtc2K9Yfd0cA0AiG7uR95InZUdVYtUB94A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZHrklZkgrO2APrpRifjtkJ0AFwbcIVGi0nWiyNRkeh7WM+fDScCsXrosMGIlHuqBt3CDATn/4icF8N4bBd24n+hU+NN7JnLzmcFfhZwZQR+n5BADgR4kRbGUAqwiUhpT9DHLMRfRp218fqBULWqWVGH0dnaBusgD+nhbLoJzh64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eBEbusgE; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45b8b7ac427so12038845e9.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756806481; x=1757411281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+AE+C1WgV7UwNd3pLh9lQDj1/1l/Oj2ofxSGM6ePL1Q=;
        b=eBEbusgEODYp40Ykfx/W0Hga8NEE5Kc2ZHhnF6cWmjwjwD7XImHBZfz8pxF5jStp04
         oElJYGWD84+a2bNjtDbLE9s80C+M5N57Dq6dlOl0/IxCAyjgIEi+ELBuvuR2yI73NeH2
         JkYxc1Jar4W6qKgUxuN8CiKQEXgWadRnmH7BX/36MWGVT0JZtNwo+l+S/f1zY3TiPcNd
         gE+U3uAl2OHxLYxym7EX0fBSjhj3AXDZwF/QKsdAN4ivH/zqGqoofZPAbNfsaGOwaNUp
         tgc+QY0PcMvDkpmzv9/sl3iJo4YE3nisOvNmX5lXPRYYxAvZrotr9D9tRWyTe5XZX7xZ
         8MoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806481; x=1757411281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+AE+C1WgV7UwNd3pLh9lQDj1/1l/Oj2ofxSGM6ePL1Q=;
        b=hrzMNVzLWAok9a7E0gsfekK4W3eFj9S8lOZcF8eAcpFaOmRnPEYx3nHUU8dhldlPDV
         VoJpR4lHP0T+n2gYJiGlIlorN9Hf8Ho0ZgHjLg2GvoDWAkm6PUsrRqEEDEeCrMTPEF7K
         c+3vuhx9PXme6o3/n03Q2W7EgxIytpNUnnsEEzGcrDZpuNHZqyC2O7FpPrEw9FicRUSm
         zWEMsJN+c7OrYUq8TY4fAIadSkqBZOuQWyT9s88MQdXARn3W0x7ZmlgWWjP/eCWwWPDC
         c8zaYjTU8pVyfjFi8LYNcDP3sYZE/NXuICB6ve3H11Mfvoangw07pBlodlsp30L7rcy0
         MfPg==
X-Forwarded-Encrypted: i=1; AJvYcCVgedraqi/o1xhlwGheu3Y1juzgjFKJaLp8HotCOqwxQIPPRAJpNGuEUfAEnVBfNhHXPqNCxzP7X6PW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy363SOzePBuA95E+Q5R3Z6lowhkx5Ds2HRJQCsqCXFCyrEvdZ4
	NGokMbFJTIjGQ8IXIs+3l0SAvsi47+G4yWPGuOtkpzTTnPHmrAZjEmJ/d/LGvzhxXHc=
X-Gm-Gg: ASbGncus2q+5ggD+BQpd1MNFYEC6W4It7zdiVgZnP7knSEf7EEWDwV0IqGLyXunUI2s
	3l6Cn2t+S1LlxJo0Zr2OZWrKuEFfo7r+Xc5qFXr7cyYBqCCGH1pp6RIi+tYUmRE1CZ15oaODeKV
	wWRm/xqQPUwtkeTWDmmHUae3vdJz6vIXE1VxSWAcyWM2ngoXxtB7dxCWbSma78U/+9gbQRGKIFg
	+Dl+j/MHpaW0XAF1XFq4H3u+AOoDZtT7vB8F/kSz77X96zJqEpuW8VEV64KQwyVOMyVJkAI4gNZ
	LRv8HxJctz14JV5P0KGrtuEXr1wbTNlYSM6QLW5NvUP4u77F32bXHUvReTYeaf3kKgOyVQksBx7
	9GNupB+qwp7gJRcw7S8235qcqyUw=
X-Google-Smtp-Source: AGHT+IHkum6MUnPnlTSyYdYK5PmduwrE+Bc7PlnDr2fgc28ulaODsmsfkztByA9uDZd9M5QRVY6Ofw==
X-Received: by 2002:a05:600c:3153:b0:458:a559:a693 with SMTP id 5b1f17b1804b1-45b8557047amr89974305e9.18.1756806480844;
        Tue, 02 Sep 2025 02:48:00 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b6f0d32a2sm294964805e9.9.2025.09.02.02.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:48:00 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:47:57 +0300
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
Subject: [PATCH v3 3/3] arm64: dts: s32g: Add device tree information for the
 OCOTP driver
Message-ID: <7877e1958fa92df92b2b5229365c86493c620c8c.1756800543.git.dan.carpenter@linaro.org>
References: <cover.1756800543.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1756800543.git.dan.carpenter@linaro.org>

Add the device tree information for the S32G On Chip One-Time
Programmable Controller (OCOTP) chip.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v3: Add the device tree entry in the correct location based on
    the 0x400a4000 address.
v2: change "ocotp: ocotp@400a4000 {" to "ocotp: nvmem@400a4000 {"
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 6a7cc7b33754..d6a9f61394d3 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -355,6 +355,13 @@ serdes_presence: serdes-presence@100 {
 			};
 		};
 
+		ocotp: nvmem@400a4000 {
+			compatible = "nxp,s32g2-ocotp";
+			reg = <0x400a4000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		edma0: dma-controller@40144000 {
 			compatible = "nxp,s32g2-edma";
 			reg = <0x40144000 0x24000>,
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 61ee08f0cfdc..f0e2a2907431 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -408,6 +408,13 @@ serdes_presence: serdes-presence@100 {
 			};
 		};
 
+		ocotp: nvmem@400a4000 {
+			compatible = "nxp,s32g3-ocotp", "nxp,s32g2-ocotp";
+			reg = <0x400a4000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		edma0: dma-controller@40144000 {
 			compatible = "nxp,s32g3-edma", "nxp,s32g2-edma";
 			reg = <0x40144000 0x24000>,
-- 
2.47.2


