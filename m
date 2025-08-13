Return-Path: <devicetree+bounces-204315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20281B24F15
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A42BC681336
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4622D5427;
	Wed, 13 Aug 2025 15:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="npOuDtbL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAE42BCF65
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100796; cv=none; b=K7SqzzTKDzgDpzAP5Ya3e05xVe7C+iaIyyEy0j9wL1kl5TQ2dzKXBt1dycb/Sh98eryuEe7kepAk6jIPAjqyAyJ5cYwSpOxpVUk/Vg/URG09/t4So3r8SsoyT9JHu4Q/xogeXDZAs5tf+5o3fSenCrQRtXUMENl/YQsoCoPFNuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100796; c=relaxed/simple;
	bh=BvDXs0+AlOpKQOQJ2POLC/1UWj5r7JhH6Kjw3ywFP2I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jb3jPC4jXHGTKfBd/Zu9yc5O3g4L2sCIe+LYKUg4UjMZBSaffLPsjV6SQvMf2TwtLRH346SHMrvNeSgF3PNE5DYdmbu0UIRq9sQUfZmSKxZ3eBGPe+VVm5D1ktMwhwUmAHC74jwLPyT37LDyl3nF4fRC+xcgqETwvUB/kKlqc4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=npOuDtbL; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-459e7ea3ebeso26776045e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100793; x=1755705593; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTTg3HaxieE47YVOSyqpdQA6zD92ZMoZ5TjhpFmozWs=;
        b=npOuDtbL7Y1ZHngqe2ruXvHEh+6Oqxq/YydhQ1B8Zp9zgTDR6NeFXtLLxUe2+ZQu9D
         Z8ouuhVfq4IqB4sR2TlLLjbcRHDm5refGJRqlaTD5l/Osg3pczzhcBwfxDP1PGffL3G8
         iwk79Z/EBjakLUIjg1ZJxwZNInBFdPRSOHzTYgmocYRY/8Ri0M+SKz61V214ZEN+Ob2i
         tDhuJNUOfi+6G/jQ0p2ShupsWDPrBQlQTVgEsxyO/vzJZL5+0vzwW03nQLKaTDyC/Udf
         j/3U0xQuBOjVHPiZWOjWq4Ipzg06PRuF/6ugtMN8eg1Oeim0wbnfnzbFX87paBm+ogvM
         MABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100793; x=1755705593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTTg3HaxieE47YVOSyqpdQA6zD92ZMoZ5TjhpFmozWs=;
        b=Fqd5OQKY67klplbVKFLEus9CU2tIBftUv1C01NTZqLeGsswB/bNPf4ENCgvYn+MvoJ
         hhrYkToAOZhGzzgS/O0TUEdMBKEHIgEAaEztC8Bv3l+Rea1ZXNCAYu+7ftdIwIPfTqEX
         8QIthZIhNk2V78xp9nk6SnqRqcEqUaJPGKFUV/vSxagEGbHLouc2GcW1VTCATgcUfutW
         deek2vb6PFCcV+etJ2lOqv+6QS+WDmNyqHUfdGvTDYut6uL4v+6wBQZEkpqKvW6E7cDP
         eS7CRj9ahMeaGtsZPsbkX7UkB64Wn6FrVCAVH2iWG3S3f8P6kjS1PfEQCtp1ySZmvjXi
         iIVA==
X-Forwarded-Encrypted: i=1; AJvYcCXbBZ9bQQ2yQBsW3JqwwWMfDMJVu30MgUpDeX3qFw5NFx3w22kovGu92SoLPku04BI+walj8G8MFkir@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe7wM/sVtzdE2W4teE1eC8FZHHJt+0gEacxW9++oEeKYwTmfl0
	MLj+r2PItgRhhMKhUy92DXDtrFPI+inc8egl5h9V7b1G++i8TeIgZzIUKrHcB/rtkR4=
X-Gm-Gg: ASbGncvwAybX41t9pUWyvi6m2RE8uBPN1gMpOL4OM19of70fztnttzbs+3pX7YHntoP
	xUNsJngZhRorZq8KMjq1bzWcrP2eHrKnzUHHoKnUMr3dWFX+C9rI5/6VdAQYJwdeIaFw7j4AGbK
	EzZGauUmfBEoJTzfjqyGVhZwgYcw1t1FI6FVGQZiDESeZK+n7/1cz7rZg+yqLlSIdn1gxhPf3k7
	6CUAaTi0RHLCyAibv4mvVCTEwdufI2r5FHsvCiOgntqJrMj5UxhnOQPxs18Kgg+5Cin/2XZ+5Dc
	JMV7OXXtPNxmEZwpaIciyvgVsnvby1ZCMnAAYOGUEzb1/7V2I3XB5qyPJBOuP7+jPLBF0EmUD2+
	7BSVrKAK2UG4J1ju3QfxZ7jAX6fwu+IuFAjl9AMBg+nsOybJp
X-Google-Smtp-Source: AGHT+IHlFl/KN4c99kjp335F8fPSAof5RPTLX82llSuDD+Ly6m1dpWeuAZcZwngU0m7Y5+JbMaBsUA==
X-Received: by 2002:a05:600c:444d:b0:456:1e5a:8879 with SMTP id 5b1f17b1804b1-45a165b4441mr34651615e9.9.1755100792990;
        Wed, 13 Aug 2025 08:59:52 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:52 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:59:03 +0200
Subject: [PATCH 6/9] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Explicitly enable used audio codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-6-af82d9576f80@linaro.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

In preparation of disabling the audio codecs by default in x1e80100.dtsi,
add the missing status lines to explicitly enable the used audio codecs.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 71becfc5e6f649299b05b0b93cf74b81dea9fa57..0f0c37dfc5c5743bb08c038d1e61e4181762e777 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -1027,6 +1027,8 @@ touchscreen@14 {
 };
 
 &lpass_tlmm {
+	status = "okay";
+
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";
 		function = "gpio";
@@ -1050,6 +1052,16 @@ &lpass_vamacro {
 
 	vdd-micb-supply = <&vreg_l1b_1p8>;
 	qcom,dmic-sample-rate = <4800000>;
+
+	status = "okay";
+};
+
+&lpass_wsamacro {
+	status = "okay";
+};
+
+&lpass_wsa2macro {
+	status = "okay";
 };
 
 &mdss {

-- 
2.50.1


