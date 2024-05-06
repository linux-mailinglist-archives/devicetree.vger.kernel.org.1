Return-Path: <devicetree+bounces-65183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 277F98BCF71
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 15:48:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90B401F2180C
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 13:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 592C380C0C;
	Mon,  6 May 2024 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="FP5aLMyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD5E80623
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 13:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715003314; cv=none; b=b1YS9KGuio1D3wXx31nDSN/jONdqMqFPDtzKDE68VjF8i6sDN7OSTsnQ0Zz8LXQckCI3o8q+qz7wVq0YUo0BA3V6z+ZS6NLkxSEnHMe4xzmmG/pccZf8JZxaZ/A8cVUcJWSnuulj/DWsj0cWONV3IX1RoSuZ+Mmt2LOYcwI5k+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715003314; c=relaxed/simple;
	bh=MPXbvZewmO/D2DEHW1XiJWvSM8CPq85XDTvUbnZY4DQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=OSX6NEpyzv31I6T8Mo4Jbgz6cpuE0gw6QyFmDkxSc7pQlDv3KaN2U3pOAwBfol3pAUbtOQUCf2nBhv9nkQck4eesmJqFz31Vc9Sp4SNN4MN1fL/dROxVIMJF1pOPnTk3noUlBDEvZ9E0r52odCK12/XxbyQ+a82ORwPOVmrQpuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=FP5aLMyU; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e242b1df60so24050041fa.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 06:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715003309; x=1715608109; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QyXdN6gxvZfSyDlB/uI/J3a7zD0pJvSdTF4inS8BuAY=;
        b=FP5aLMyUebHboGynTcrqRWNgvYNAHe6WccQU3+6ga5YuOiHtLHeI/8BNxpHzqtPxjE
         F3tGgbbAyze0d1Vf3pxY4ODkUSwRSkdrMNt7kVFpFLepoToFE7z8VgddB3qd0EcpX1C/
         exVa1dxIYpEABg+jhIUYnvH2+NSXb2vadJsTyFJEvqs9t0+JvRSJS+CrdE5A6acXNQpf
         vElj/RgOBwmK3/vBgK4RX14IgsBI+H6r8MM/oelYh8GEoO+KOK6wbevNBzvMOOvtMq1F
         6G5tZypSujyM1RSIbqR/M6slrkdPPdKiIyZM2pvU8aBz2C6E+0uPHL/fSFoJAUia3QJD
         fF6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715003309; x=1715608109;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyXdN6gxvZfSyDlB/uI/J3a7zD0pJvSdTF4inS8BuAY=;
        b=Z1wcc0xcE7znY2GftpeWBxIMNoal5zSeUD5T3wuwdgLbg1e+r23X2h85Mj9U4FL8Rj
         zUo9GruKZwOTFZzXEa+O9rYwPFtOiX5vB6VIkZbqshOvO9FNvfk6Au113/6HoW0QKpTT
         6JHPMoZYOxkwmZu3j0iPd/vFH3R8T8X9qKWnkDd6INM57/iiDqDRncN+yS6+om/V9Gkf
         L5mMBxmg8L5LSrNE75chAeMR4TcVlAnUI4IMwpYYaT+eOrkNIMY0FCl13SLoBWgon0yX
         sl1B0/Mp1xltqfuJFrpcG+S0K3F9nF7PoZM7/bTHZaMiHS/ksFhCUAkSlfo57yrihcwf
         2k5Q==
X-Forwarded-Encrypted: i=1; AJvYcCX6wzBpiXra/98cm8vEY54d/3dsOa3bUQ51+vMd5B2HNTnUefr6VJmAG/DCzNKVVOszlhJ83RgQf+HJmeK8wWH9V0PwozR7zxEZBw==
X-Gm-Message-State: AOJu0Yz3hXQBRacyqocqau72/uRpKv0Qx25ZKdKvZrM2oDF8eD15OfMb
	9oz7J0rLXJtyVR85XVWADxaO98E0Hc5RFH0fpHMkS0y4yzYWa11TXvV+wtF6PtI=
X-Google-Smtp-Source: AGHT+IEalc1xHQQV1lP6Ojgfs0WPNcHeEAEZZRYOqpD+rd2saelIZkJRzrjQzJzjZ4NoHZwjp0FoNQ==
X-Received: by 2002:a2e:a488:0:b0:2e0:4216:6fa8 with SMTP id h8-20020a2ea488000000b002e042166fa8mr8960460lji.39.1715003309480;
        Mon, 06 May 2024 06:48:29 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id je8-20020a05600c1f8800b0041bf28aa11dsm16131973wmb.42.2024.05.06.06.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 06:48:29 -0700 (PDT)
Message-ID: <c24f14d4-c996-4150-99ce-66a5c4409dcf@freebox.fr>
Date: Mon, 6 May 2024 15:46:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3 2/3] arm64: dts: qcom: msm8998: add venus node
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <72860c1d-7434-4be6-8c1d-9ea177602802@freebox.fr>
Content-Language: en-US
In-Reply-To: <72860c1d-7434-4be6-8c1d-9ea177602802@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

From: Pierre-Hugues Husson <phhusson@freebox.fr>

Now that the venus clocks are fixed, we can add the DT node.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 5f5b90a6e2bf1..3d3b1f61c0690 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -3010,6 +3010,54 @@ mdss_dsi1_phy: phy@c996400 {
 			};
 		};
 
+		venus: video-codec@cc00000 {
+			compatible = "qcom,msm8998-venus";
+			reg = <0x0cc00000 0xff000>;
+			interrupts = <GIC_SPI 287 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&mmcc VIDEO_TOP_GDSC>;
+			clocks = <&mmcc VIDEO_CORE_CLK>,
+				 <&mmcc VIDEO_AHB_CLK>,
+				 <&mmcc VIDEO_AXI_CLK>,
+				 <&mmcc VIDEO_MAXI_CLK>;
+			clock-names = "core", "iface", "bus", "mbus";
+			iommus = <&mmss_smmu 0x400>,
+				 <&mmss_smmu 0x401>,
+				 <&mmss_smmu 0x40a>,
+				 <&mmss_smmu 0x407>,
+				 <&mmss_smmu 0x40e>,
+				 <&mmss_smmu 0x40f>,
+				 <&mmss_smmu 0x408>,
+				 <&mmss_smmu 0x409>,
+				 <&mmss_smmu 0x40b>,
+				 <&mmss_smmu 0x40c>,
+				 <&mmss_smmu 0x40d>,
+				 <&mmss_smmu 0x410>,
+				 <&mmss_smmu 0x421>,
+				 <&mmss_smmu 0x428>,
+				 <&mmss_smmu 0x429>,
+				 <&mmss_smmu 0x42b>,
+				 <&mmss_smmu 0x42c>,
+				 <&mmss_smmu 0x42d>,
+				 <&mmss_smmu 0x411>,
+				 <&mmss_smmu 0x431>;
+			memory-region = <&venus_mem>;
+			status = "disabled";
+
+			video-decoder {
+				compatible = "venus-decoder";
+				clocks = <&mmcc VIDEO_SUBCORE0_CLK>;
+				clock-names = "core";
+				power-domains = <&mmcc VIDEO_SUBCORE0_GDSC>;
+			};
+
+			video-encoder {
+				compatible = "venus-encoder";
+				clocks = <&mmcc VIDEO_SUBCORE1_CLK>;
+				clock-names = "core";
+				power-domains = <&mmcc VIDEO_SUBCORE1_GDSC>;
+			};
+		};
+
 		mmss_smmu: iommu@cd00000 {
 			compatible = "qcom,msm8998-smmu-v2", "qcom,smmu-v2";
 			reg = <0x0cd00000 0x40000>;
-- 
2.34.1


