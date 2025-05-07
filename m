Return-Path: <devicetree+bounces-174574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6999AAD9BB
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 10:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AABDA1C22B72
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB4822A4E6;
	Wed,  7 May 2025 08:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aH27DY0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CFB4227E82
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 08:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604933; cv=none; b=qTta9SxnHd5iDzcgAfY7W/LaP4xy3kEScGt5mYDVFRYSV0v95j63YJl0VKRXAX9yNMOghZLxNY4KSQMvHK/Lh9W2OeUTOcDnEf/Yml7HV7zCKnh1xroWqa9Al96WvYoE0jcJB1Ud8c290X0YqphKSULsDtNxdQIb3YMVASUr+y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604933; c=relaxed/simple;
	bh=9du/cqVmLABi3S4H7ZzYui0a7J0RxPnHiR8v0eg+GN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TlAQDI8mE5k6tjcWf9Z7M0rg1eNyHp40pjmfCLI56wiueZM1ZGV8ZEyIxKGczzLfa7JaaS6L2nazkQtt4+XXVfRjrbm+2KeNDK3KigeWCi3AlyAoDbndI4fUYk4ME6Xb6CQ9VYWNESdtDNnaDiEssmezkN0SQrFaMOMMf7Qx0wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=aH27DY0v; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac2a81e41e3so1221223666b.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 01:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1746604929; x=1747209729; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1WF9R1PkrWxK/cwLXU/35vaxB2tRI8rlJl2KnNgRvug=;
        b=aH27DY0voTohBr8HRChz6S0/3+fyIkQNuErhKJqhM3NksMajkZlNOGHF37fKoce01q
         kfriDLkgQODwg1mMWqo5eK8LbdLAt+Olk6e8kOwX2xUdWf6Y1qW0SWgbvHCg409tYSxX
         0VUs2E+y8K4nwDHbyuYlnyM0utpsW44jWenAR4HkLc4FSbbr+4+BEukuvprHywOJ0Snk
         lsPssuBeUkPACY3HsjPPUH1YmeFKQAkG2Jgr5l6Hgtl7khiTi63b2rGMRIkg8GEFhSNA
         /A25oLwoGcx5X6UK35DzQV5tP/1cKxMvC8L4EQRzROFV8y7iFDOfgH40qL22jwNCeVw+
         kkLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746604929; x=1747209729;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1WF9R1PkrWxK/cwLXU/35vaxB2tRI8rlJl2KnNgRvug=;
        b=uqz6t3WRELSk/OEYbneyFoMbYu1ejwGWHbO+kk//7nldLI14sQJuSZCQCtLOUOJbnx
         FTLvmGMnzgDXWb7brL4AwHpReUg6CUyA1f95ZKME0ouNZY+qfUgZlrXptecS61rwvO5Q
         3uvQt6MMGX9A5jlvSWNwukDmUlnWaclAik2BD5Tu5oIM9iFbCJtSKIlG5hpV7MLJd7Qz
         Q+rJO0R8ipt48sOGSlcZwFVoQS+hpO6DMj7/NCcpHRSGp1Yh8TLiSFY+1PJsyrgh8cfz
         MUXKosdZD1IEPgorDgRiti8pPiTjy9YS60IQZJsQvYh1Y5nilXC2XVklzEhf4BbR7/ga
         +drw==
X-Forwarded-Encrypted: i=1; AJvYcCUYhttg424+TAwLv3sa+o6dhFFtNbdD9Ecep3ta6wYnZAyY6SXfhSR2T6xCFW6wD1PBq+F34UumFeFd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4s1sJI3lGHs5i+/ekriUvH4lr+buSQP4b5MDb1/kut0acWsk6
	/0adkrZIPWvzqN2NAi7D1Z8+ZwfKwrBAkIe0QbD/iJtPNnsfcFn7OYve6RYju6M=
X-Gm-Gg: ASbGncuwHNJ6v4J9wUACO+j5Cj2x5HTEaniWSumjVla2ZAQUywWV6M2Yp+0nKciwfIy
	R9ZYkpQRMhKh+3uJUa3bmcGrPiLAFj/UvTE3Y9Y3AlAPiR8QB5UcVl5lgRbRcLgq47Pp7Xh0buQ
	SlBwPwqTHFXaps6Lpft0+JetRyXUazNNyAUPcZEC98WVIwMRAN914XHzrI1/iqGCNsDIYW7MKXt
	gnnluhvC7Snce1gbkaVPvb0rM663LI+c+ocSEXmAxkJFnj2hOGxdvCnd32g0+ixlYRQUj2oZCEu
	4bzEI7/kqfK3/yGJKjTJYq8KH9AAqwadZLExcwrPTb5+X2O5gWmBzxayQV9Aood1DjFUn/gH39h
	ijfiBMzLs2DP/zQ==
X-Google-Smtp-Source: AGHT+IHag0H2cbbPyO4b5Fnqc17Ebpqc1RQXUqG6LtKmBXIShvnF4nzFMo2lTa0qFSCUZEOEH+300A==
X-Received: by 2002:a17:907:d48f:b0:ad1:e7ed:c1c5 with SMTP id a640c23a62f3a-ad1e8d5f6c8mr200591666b.59.1746604929014;
        Wed, 07 May 2025 01:02:09 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0310sm855236066b.88.2025.05.07.01.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 01:02:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 May 2025 10:01:41 +0200
Subject: [PATCH v4 5/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 DisplayPort sound support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250507-fp5-dp-sound-v4-5-4098e918a29e@fairphone.com>
References: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
In-Reply-To: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add the required nodes for sound playback via a connected external
display (DisplayPort over USB-C).

In user space just the following route needs to be set (e.g. using
ALSA UCM):

  amixer -c0 cset name='DISPLAY_PORT_RX Audio Mixer MultiMedia1' 1

Afterwards one can play audio on the MultiMedia1 sound device, e.g.:

  aplay -D plughw:0,0 test.wav

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 9e8f9fb57c4723a24704a8239a86c6081910916b..e115b6a52b299ef663ccfb614785f8f89091f39d 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -14,6 +14,8 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include "sc7280.dtsi"
 #include "pm7250b.dtsi"
 #include "pm7325.dtsi"
@@ -1147,6 +1149,35 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&sound {
+	compatible = "fairphone,fp5-sndcard";
+	model = "Fairphone 5";
+
+	mm1-dai-link {
+		link-name = "MultiMedia1";
+
+		cpu {
+			sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
+		};
+	};
+
+	displayport-rx-dai-link {
+		link-name = "DisplayPort Playback";
+
+		codec {
+			sound-dai = <&mdss_dp>;
+		};
+
+		cpu {
+			sound-dai = <&q6afedai DISPLAY_PORT_RX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
+};
+
 &spi13 {
 	status = "okay";
 

-- 
2.49.0


