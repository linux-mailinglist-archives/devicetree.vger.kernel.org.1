Return-Path: <devicetree+bounces-207937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93454B31349
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B73F1C21212
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4CD32F6194;
	Fri, 22 Aug 2025 09:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H/JnkB0G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7747A2EF678
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854949; cv=none; b=YQ/hyNzMcJdfyvWgy8AOmJ7Ql2FJDf6y1U6YOTAll8bmN7XJN/ofahpfr3wdmjLb2dO3XmWeExJ2IqKW/H+Yhft52afbOq6nceCDBFzCjRPDkMvC/GVz6v0UvfCwwaDBc3vXXzIz0/zKiSAEcmwsy9I6j1bZ4Njc05N2YZOtvZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854949; c=relaxed/simple;
	bh=vBMNvMwlW7o6o1xWYoJMdECi7yJZhAi5LiYcGyrWEuM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YnqTaLcwg5t5+C6uGcOvt+I0mCFpsJ78jhEYO1XNBQXV8W6dIJeBw2nETQ9VRc8PifY6X1N3xeuUwrqrSh8/RY9cpvrmHrNu48cfOrKMGut4c/hFq77oiiYnvhjg3ySn2SuKuynFUen9tafTAcu3pbw1XBh/luWF89Qz/i0bOdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H/JnkB0G; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45a1b04f8b5so11533305e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854945; x=1756459745; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DhkWbjoA7TQSL+zMe08xDLYt0I1Xn87bnNUqz6iscfw=;
        b=H/JnkB0GGHord41cjygWW2Y0MGaWUyXT814aDH7P/e81/E+/pbhACdkkKAsTTRYQ/G
         efFA9Z2jcA1aNEHsY4j1HagiQwK4AmA90VFN/3LRURYRefpMKCpusKpuaZQ8g9TGlCEF
         Qz0Qt6JmkgIB0YAxQ6vivlnOnXC62UOuk3UXVYefAmFtW0jHWfAMK9Hl+zLllwZMH7Mm
         lCOj1zxEtumbpBAyCvGR1fmRGllqKcaBXauK+evpUcCE3eIGgxFv+OcfqecQ00T24mi3
         8kpQpk3kIJCuST7fdL2w48elsx4BkFZhNkbBgzALHlRrvmKZClBX4XQ/FILF6E9GUY7G
         pm7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854945; x=1756459745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhkWbjoA7TQSL+zMe08xDLYt0I1Xn87bnNUqz6iscfw=;
        b=m8S2Vzst5dfDndp5RtQPin3zAWWWlLbtMSSxDVcLORpl3s1asVv+Lsz/j5BG3TIHDB
         UNGbBiFAynvTegUcu1GBTgsP70mvuoNZvyk+CgEP5RysiowWw44bnEV4BcyiOp5HAVER
         xPyTEYcuJbTC7LaYubjpu7En8bdPqXqQ6nH+jvzw31nYH0SJB1MJZBj/TPCjuMT9Pc17
         xXjjMS0/8v+NO3rUbaqGl+F00OGG3VZsoNW4O6H6rEXFU77Qw3+nGLpa9WKIekF1skBn
         5HAYUcxcJLjY2HqCvhwa7u9Dt6Jed65wrMpHsvaOTuUs4Kqcm8FiiEp1liRwneQDhWBf
         WiDg==
X-Forwarded-Encrypted: i=1; AJvYcCXolnsToFeff/6wQiN4af3uNJOvP+HoXAezb0rRRwTAikKIFlhuJAJ4ItaPc2x2Wg7gLvKtAHZ1j0Z4@vger.kernel.org
X-Gm-Message-State: AOJu0Yze3SG4IciodSRHTaDRrA/+J5zGP9gY+patiSPTaC35aP7IvHRS
	qaWYHNocm21KM96df6HTGouPJTAXwhL+y2Z+Qe8KwkvXygMyMqgDJhzdLLbkgf+BHG0=
X-Gm-Gg: ASbGncuwb3/zhVj++p+7RnaRWCOCvvrGHAcDxuc8zX8s8+HO6tRKCgCXdimyCt5fIZx
	fXbrCtcTup8XwUVmKT7NytsW5AjqLGQl3SA4iIkjCQ+3zp8FuR3/KyHyGOf6gmZPXsGYlQ/dRTz
	GbBnbr/oRiaHm/N+eOiv0A3f+jITIGrvy1zncW9DIU1PVLQH0bFnpelAtRh01Pv0czG9GtPhnH7
	WRonWoTmpWY4343cs/aO+tYM4ASDIJYF1pCLYYgE6m3Y1579Z0icpEkJjlctVvcKI79VoUeVBej
	L+x339ICGREk08HSSqE1m24LXV0lU9oro8O9ojfhFhOtlXQ0SeZT1Hai8emVPnuGzAbAfkFSaBP
	m+IFXVHp6oa5UjAKaLZdcDBHo7O3kACy+TKrNAg==
X-Google-Smtp-Source: AGHT+IE6Rfg8U+FIj6zpFxhGKTsfkPpD/3AuuxhXFzsGfi41Oqhra93t2reI6lzi/1xZXfxdbdZ24Q==
X-Received: by 2002:a05:600c:350c:b0:45b:47e1:ef7a with SMTP id 5b1f17b1804b1-45b517ddc35mr16587355e9.37.1755854944641;
        Fri, 22 Aug 2025 02:29:04 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:04 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:28:52 +0200
Subject: [PATCH v2 01/10] arm64: dts: qcom: x1e80100: Add pinctrl template
 for eDP0 HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-1-6310176239a6@linaro.org>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2

At the moment, we indirectly rely on the boot firmware to set up the
pinctrl for the eDP HPD line coming from the internal display. If the boot
firmware does not configure the display (e.g. because a different display
is selected for output in the UEFI settings), then the display fails to
come up and there are several errors in the kernel log:

 [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
 ...

Add a new &edp0_hpd_default pinctrl template that can be used by boards to
set up the eDP HPD pin correctly. All boards upstream so far need the same
configuration; if a board needs a different configuration it can just avoid
using this template and define a custom one in the board DT.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index f293b13ecc0ce426661187ac793f147d12434fcb..32fa9fa6fb946c4933f74fd0ee820ecb9284901e 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5808,6 +5808,12 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 239>;
 			wakeup-parent = <&pdc>;
 
+			edp0_hpd_default: edp0-hpd-default-state {
+				pins = "gpio119";
+				function = "edp0_hot";
+				bias-disable;
+			};
+
 			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio0", "gpio1";

-- 
2.50.1


