Return-Path: <devicetree+bounces-65351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 793378BDE41
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 11:31:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FCF3283E6F
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 09:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E56214EC6E;
	Tue,  7 May 2024 09:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="YhAQC/GN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF63F14E2CD
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 09:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715074287; cv=none; b=e5VWcsTaO3CIWbEu9M0z5jsC6HDeS09UOf1+jhm734db5m/FL3V4JjwDXDFMGZMB/xPf+HJYNhkrTpDRQuJJfGN81lA0ItOfyUhXBGMbW+4M+CwhoRoSnWOgzTcLDMbs968F56uWftU6LFkiKbx2Hp1fPL4Geuq+QA7hm4QgTfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715074287; c=relaxed/simple;
	bh=MPXbvZewmO/D2DEHW1XiJWvSM8CPq85XDTvUbnZY4DQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=gAut8iQl5F/LVZxHJJ5BzWEhpW57EqL7Vd3T0decyBOSoezOXfJtPysrYpiuWCL0yxvjRYDdZybZFgke6FE5O0IeT0a50cwsypOvhZZk710qSxOPTRYxBGj989E1jhUgpbtqxUqtwzNXve6qMgGGmOabTfxb5/AUdTV9h5JRsss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=YhAQC/GN; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34da84cb755so2335030f8f.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 02:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715074279; x=1715679079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QyXdN6gxvZfSyDlB/uI/J3a7zD0pJvSdTF4inS8BuAY=;
        b=YhAQC/GN/jW5NaNLPJclFChPJC1mz06ncdQPUfv2SirY3NZoGnANlCoIJzr4f9xwK3
         vKl4SFM/my9Eta98ihtW+3lpeMFkRHCkT2IiggLgpwwzFV1edIi9yx8j1KvM4iNU3+4R
         1Le9yuaXUCgYySwsq2nF2FkgJNIyv8lJAgixWXXf+X+sXHFD7W7c1EKN7xwWzJVz5BhL
         tZ/w3Ep8CWQ22/6nCgiEVGShRKCwGPVxGG07SPpxZRkzKdiOQYl/ek9nyWKB4/SaoElj
         9Awovj7eKEMGt8mndhythXC+V1169yvUZGgW99DFiUEfDGZdsUp0U+NZZD76c/hK4Dgp
         /dOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715074279; x=1715679079;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyXdN6gxvZfSyDlB/uI/J3a7zD0pJvSdTF4inS8BuAY=;
        b=C6mpu6PITHfjQxyYvK2h46HTBs+I7pzwhWnKJVue5rm2kHqV1n8H9WlDeKOLM6ow+A
         xd9w+AifXhpLg3G3LPdYoG8qR+0xDx6SyhpoKPZXuIj8sWWpHoSSUnQ4S2XK+t4HLPH4
         UN62FGyhuRwk+kd/ZW8Ym6U0qhtSmNsSb8+NTS6idoU4kj7n4fdwmrTVqfBq7iE9CR8i
         zMlOX6+JX8F4h4pguoHF1bkh7wrqw/7lx5KaM4B/6K3E17qPUrYQgWuK9LVBm5mzMYS2
         r/2UaCS6R2ZUiu95aFjdNeGUot/fYYEKnk4eBYQZcPkDjx8Q/3cGsJYeEKzH9W8RxHUz
         1HKg==
X-Forwarded-Encrypted: i=1; AJvYcCWnDYNQdqwCswBT3qQM5ft1pbrm6XRtCtu71l7ZKbdKFGUbRlPliwP7cl+tW2Mlnrt6c8brh7CSzn0IRZywpmq9YJ09T0SnP2bs1A==
X-Gm-Message-State: AOJu0YxSxvgrCmzakVPZheuvPTjUFebaLYOXL/RUmbnOC/fyiuI9CFgJ
	md8A5pjD4+KCab/2Id3ELxcMwVh/BrdE+DkHGSUTolGi1nt8KY2sH4wJORg/U3c=
X-Google-Smtp-Source: AGHT+IEbF4B96xPtnD9KzivYdLyGQTnX3z26aVSw5JySkazStzElYqb1R7jUdZoog7s+4m3fqc2E/Q==
X-Received: by 2002:adf:ed8e:0:b0:34c:925d:fa77 with SMTP id c14-20020adfed8e000000b0034c925dfa77mr7102080wro.41.1715074279714;
        Tue, 07 May 2024 02:31:19 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id f3-20020adfb603000000b0034dced2c5bdsm12517710wre.80.2024.05.07.02.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 02:31:19 -0700 (PDT)
Message-ID: <c2fca6c7-2421-42b4-a43d-68b251daf9b4@freebox.fr>
Date: Tue, 7 May 2024 11:29:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v4 2/3] arm64: dts: qcom: msm8998: add venus node
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
References: <1cf08b56-a247-431b-a24b-69f563f49240@freebox.fr>
Content-Language: en-US
In-Reply-To: <1cf08b56-a247-431b-a24b-69f563f49240@freebox.fr>
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


