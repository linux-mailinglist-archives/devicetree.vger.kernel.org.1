Return-Path: <devicetree+bounces-170700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B17A9C06F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:08:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 965925A601E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 08:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214DF236446;
	Fri, 25 Apr 2025 08:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="06u9WB11"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E71235347
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745568461; cv=none; b=rP7abEkfJ/geAd9Is2vGauaXpdfFSL0yfzivJHLY0NToaTAe1kUTVuxHOEraIsK2qly/kfOjYm5DD44ak5IJMHuQC0Uh7wVyD+Ht0+mK+nkB5IXNub8wRovc+0TVjCsi/g5gtOsldOSS6CZodDAQMPlU1lhkgcyC8ajjZNY06MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745568461; c=relaxed/simple;
	bh=9du/cqVmLABi3S4H7ZzYui0a7J0RxPnHiR8v0eg+GN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YXNE8q7NUT9YB15mf2ZA2j1R+fUy/PAUUEMOxJoJEINkJl77Ulgiqa3DM3ZclJdc/Fe5mKDOlG7pCNZ6bzO6OhYdZ53lSS/kTplK1CuZ6bFUpaIYv6JdyQ1EZGk+1Bck5qiaEDqJ38DeiOWSL4+mXc5WVULuN7YRQYYH2QsaGqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=06u9WB11; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf628cb14so22619255e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 01:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745568458; x=1746173258; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1WF9R1PkrWxK/cwLXU/35vaxB2tRI8rlJl2KnNgRvug=;
        b=06u9WB11yeFjOEXvumQCtZa/Y7L34FubxjwlIs7sJ9qQA7jRuQGjcwFNqy3IWih0j6
         NyFjgg7M6LhuhZyxB65WpfGFYwjFVg8iYv7lbyfImyn/NUjiob2KXrnRiceo7s5YOlDP
         YuW38CSglFy/P5j0C8r71cmN+cquvJ/t/jDXWnnZC9QhxlyHkURT6knOhC6Zr43Z8MXk
         i231yFBWlfikmtuWGbtPb6YknEdWO3rmTZZHjM88WHmc5RH+xOJwE5whZXvkkMjah27V
         JQIdSN2NTI8oxLvOpNt2Jot1IdoPfNBbuSOhxfhD+zfNRUq/dRn1VbvPTLfmV4xYu1nh
         qpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745568458; x=1746173258;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1WF9R1PkrWxK/cwLXU/35vaxB2tRI8rlJl2KnNgRvug=;
        b=LwLh40qGpaBrLVALlts1MXFm6YJcnyIWWinUMtEVeqy4RukzerKRY8dmV4lG89ivjK
         3C7EmJJxf4oMjQVoMi5qAkcd2KoI+F4CpTGIloE1offthkx0BEVLXHMc3PuI0V/vv0Tw
         kvxTqlQz2gAfx+deuzyeb3lihAUvobIIxn/9DSQctdMICgmPstad4+iKgnqgifIvMnND
         WybboGeK1nDRLfijk4COq6HHxIXGQ5WdAw9z53j0/adnNmZvk/a24s6QdKcyRJwfHiwC
         66Hl8dIArgYy06MN94HstMWovUD0T/P6c0jfxKXlikR1q7KBug5543W4kN6RlAtI5Th7
         3E6g==
X-Forwarded-Encrypted: i=1; AJvYcCVJA5M8AuGo+6hma5cqK5EN4SF+WiwQHWQWWO8PfsbWcdZU/EuKE2sfVCphlNo90U3qZNBPA44+cfRY@vger.kernel.org
X-Gm-Message-State: AOJu0YxUjnWm9Cwhw3nmfSOiz1sQbmgljrMcHtB46MGrcv82Gzlw4BT4
	Nn458OI9odfoBuVxLKBES/CWbAVVnDyC3l0YfBdlY1FI4aoovfR2uwcQZNL7i6yRYmBfhhtXCNP
	H
X-Gm-Gg: ASbGncse8k9hudNkJcuehfm+S+JmRJR1BXYjjPV2hvIHroM3H8VW465G+Tb1vWTpvCp
	dUffEsIMAJnJPxAVMtP2BSe7CL2NEJlSeNunBpABFxOZtP/Lvf9EP7SiV2nEkTuWFdhchQCbcBN
	tKI7oB/N7hvOdtZt9wV/dzmO0uMgcsxDlRCuMKj05Lf9QQBlTniv0vKrcKUG1VKNoPDjU+3Naq7
	IDafTVD68xHzWHVpndw2Uv/S9X81axsFT2MSJNrl9f3m64MM4XNGthIIt04872J51gObOhGumxP
	IShifxBAU4nEKtdUlofBiRXoGT+lgpljD8lOv4GeIncnC20FOcql6OS2y3e4RZeEkSTXcGYrv5Q
	yX5NtoKhhrSvBy5mwtGEa70Nh7JznrZgFxJgnhhxjcJjHsffb6GCavRO2
X-Google-Smtp-Source: AGHT+IG/sz31Wny+TtyIaDzEEdUt0YMeO0mUdD924acJQ9OoByTsHsI0o1wsRu2TPR3UpEE0kePClQ==
X-Received: by 2002:a05:600c:58d7:b0:43d:fa5f:7d04 with SMTP id 5b1f17b1804b1-4409c52a44dmr43791425e9.16.1745568457579;
        Fri, 25 Apr 2025 01:07:37 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e461casm1593513f8f.74.2025.04.25.01.07.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 01:07:37 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 10:07:29 +0200
Subject: [PATCH v3 5/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 DisplayPort sound support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp5-dp-sound-v3-5-7cb45180091b@fairphone.com>
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
In-Reply-To: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
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


