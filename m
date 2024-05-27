Return-Path: <devicetree+bounces-69576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F628D065D
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 17:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DE7F1F238B5
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB4A61FCF;
	Mon, 27 May 2024 15:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="bBYqcC4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA9E2A1C9
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 15:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716824421; cv=none; b=j7pUCqPf9a2XJY9C1Ut1EzakrVTSSVeyRw6CBj9mmjogU2QNgDI2aq1rn/pf2x3Z+HjGkIKuaZl/kU1USzaTeuRvcL5MKFJzJI3c7rVsLCtq6+2ACsQvxCzTPqGHj+KeKg4hd86cuFPIR/zCUDNU+pG+9crSqPIWrYYjseycGIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716824421; c=relaxed/simple;
	bh=DVhtxKy/g6Jw9Zac26mbMJkQSFj9K9gpSNpyZiB8W28=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=cHvIKjyjYVgAASVIWXbA8r7awO8SdYDpD6bodyFUMnt/MkI56GKC21qVGUeFy8pgJzRRvstQevls+TuTCWXSGZMQpnv9RzPd3tNJGwp0DV6OElMMcNt9QwsaWAe+OJYH+2p0HofLVgeBD4M02zQf9p/IhqVrhKe0Rlz8us0mjwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=bBYqcC4z; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-354f14bd80cso3617565f8f.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1716824417; x=1717429217; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:content-language:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVr9JrV0nG2+wTrmTNe0v5f/mYkzf+N7lyxDsOb/dPs=;
        b=bBYqcC4z7kpd20ffWLgjfuOK0qs4+++S+dPK154UB4UXNqcVmRCTZH48qjalexLZM3
         bPvVHAx28YtAeejvinA4tSJqNGcT7kDFnA1akTZv6QAafokb75Yf02A6UbqrqCoeBs+/
         vwT03OfADKLi06ymH8Fbm1RcSFkBYIedvZv1ZjRBdhU/QSw9IovIeu2WbaRoOeY/Tbpe
         s0hcqLvnhcehGjgl7T1iIwN2oWTIfuOT0fIvkjtqSjnxFe3oZzcAIthdd8lXXlNjnX69
         WOz1iN5vK/QaJvkl9pFsbd6m1sjlRxIYIy6PK6Ly45BJyg8/AL/9AzM8wZvCuSjE3PFY
         xGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716824417; x=1717429217;
        h=content-transfer-encoding:cc:to:content-language:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XVr9JrV0nG2+wTrmTNe0v5f/mYkzf+N7lyxDsOb/dPs=;
        b=tIlBgZIrEzEFzcK2raTgSj2UiGsErSM4AYIsxj2bmppWhM6DoFFTvOk2hJ0X1o5FDU
         udEppXR432xXOTPNDgDxSONKqbhQXsi5MoQa/vTGbLd76oEgmKGk0re8RFTaKnvdT1pO
         TkHxry7e5XgG3T4u/bDF3Kr2y7TJXNU9gbRpEI6j4EZgivIYHC3G88J6nCjeZHfytmqW
         QHnVB9xc2P+NQ+EwJmAsk0iYeH6IbtvIAi9snHF3V6tvtCONpwfmDfqebzIxgKDw/b2W
         Ys2wmxSzwoKUZ3ZEku8QOXTG/2+B2hjhDX77YOPUqS68KPAB8E7sHK4IbDcIhmf7CZYO
         13Jg==
X-Forwarded-Encrypted: i=1; AJvYcCWUi4rzVyOSoFdJJvgQXR3V6LiNpfcF7bK8NNc35cH9PvsrABCf947TpcGe1CVrElXxm/YDG0nR+pUw+Kja2hY4JDbbpJtEYNiyqQ==
X-Gm-Message-State: AOJu0Yx9cSRb9ZyxNzQL/fvINZf6nQpvcQhV386DBZtxUcwU3WQRg71O
	2zSH+0fRc+dhgBXbyg10Wbc8UAzmt96kdkHM6NY4noB+i6OF4ZzVTVRNH9u1JzE=
X-Google-Smtp-Source: AGHT+IF+VR8zvPqcmS9JVDxwhcv/vAODOlwnqPTA2SWhHKo1nHb3CASRkC8D7fFqdeGXUnHZPETx3A==
X-Received: by 2002:a5d:5050:0:b0:355:75f:2876 with SMTP id ffacd0b85a97d-35526c3d541mr6991025f8f.5.1716824417139;
        Mon, 27 May 2024 08:40:17 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a090366sm9221319f8f.56.2024.05.27.08.40.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 08:40:16 -0700 (PDT)
Message-ID: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
Date: Mon, 27 May 2024 17:40:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

MSM8998 GPIO pin controller reference design defines:

- CEC: pin 31
- DDC: pin 32,33
- HPD: pin 34

Downstream vendor code for reference:

https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8998-pinctrl.dtsi#L2324-2400

mdss_hdmi_{cec,ddc,hpd}_{active,suspend}

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index edf379c28e1e1..ec4e967ed9b2a 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1424,6 +1424,48 @@ blsp2_spi6_default: blsp2-spi6-default-state {
 				drive-strength = <6>;
 				bias-disable;
 			};
+
+			hdmi_cec_default: hdmi-cec-default-state {
+				pins = "gpio31";
+				function = "hdmi_cec";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			hdmi_cec_sleep: hdmi-cec-sleep-state {
+				pins = "gpio31";
+				function = "hdmi_cec";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			hdmi_ddc_default: hdmi-ddc-default-state {
+				pins = "gpio32", "gpio33";
+				function = "hdmi_ddc";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			hdmi_ddc_sleep: hdmi-ddc-sleep-state {
+				pins = "gpio32", "gpio33";
+				function = "hdmi_ddc";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			hdmi_hpd_default: hdmi-hpd-default-state {
+				pins = "gpio34";
+				function = "hdmi_hot";
+				drive-strength = <16>;
+				bias-pull-down;
+			};
+
+			hdmi_hpd_sleep: hdmi-hpd-sleep-state {
+				pins = "gpio34";
+				function = "hdmi_hot";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
 		};
 
 		remoteproc_mss: remoteproc@4080000 {
-- 
2.34.1

