Return-Path: <devicetree+bounces-207942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E11E9B3136A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:38:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2335B625AB9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3502FA0D3;
	Fri, 22 Aug 2025 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gj5Xxeqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99C92F7479
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854955; cv=none; b=jgA1HyW+AUOeoxfyxJ3NUFvw9fDjnQesH+LRoUEBpeYIGrDDBH8+IM8m0+K6i3osmZJELQeMRL/50wibHR6PFOgWVwZ7UqfWb1Kxy9fw92tZGBdq1pctd07c3RPpLekUtDDF0YokspYwZu/jppL4ruSlCrhu4zANE4io5VpJzHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854955; c=relaxed/simple;
	bh=3aZpoa43CgwAyEuU5OezFHxEJBjjcpDe6c7LT71bAIM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EMZC8QKeA/E+5tDfPmqGMsiYoD5nRtd+KkcYEJXJX6no1QKYugW/+oHygq+t8e7I/lUztlPAiYZ3nl6YFJ1geYJMHv3StSePMRBjpTRyutWaH3gjJqsiy2x1PvRvfyt6bL2raEGZHrHQJDODNSQvOYMCjVn/yIjkkl8T8VS5cwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gj5Xxeqa; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45a1b05ac1eso10828555e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854951; x=1756459751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhd7a0fXzsnPhV3Ln71dyr+J+aAF8M86zfN68JsypU0=;
        b=Gj5XxeqaS/yAB3CIjb28vGjLamNKofGa09UN4AqGx7ftpfTnVfawnZKxyagHhAn1iF
         0IOPIkugi/TEC0dgF8CIoJXbAtXhE9fVUbpPVpQqaozJ/lWr60m2U2fsxoLBRR7KOQ2X
         VheIoTF1NF64URKU/dXvMG46kuTxnfCQEO3Ks/XUsFKpOznF/1iK2fbb10cM1DFz4CJ0
         9z46SFTQhwESDINnLEi2h/JYPEPvzJrWIJlJiPFEO1793r172KP9NIy5/kKyx2QG4Aim
         TlMpQvD4GLtARsrAo7jGcIwQ2eIW4nW0ADWflKCojVqkvQS7DwwBQObXkopvIJ6o3fT5
         r5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854951; x=1756459751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hhd7a0fXzsnPhV3Ln71dyr+J+aAF8M86zfN68JsypU0=;
        b=g6Iyqk2lfoFAM1/epFkB9aY9SSfHEbsw21UTSPX/VpF/Awgd1Phr44+mc2XTEWc7Vl
         1Kbbqea05NswX4cmVU8aLKITlULl1tospwGR6e2C8fQd/AKJvqPfsxuec1G6vUuI4IHv
         GmHZYyJfukf9nOTVA2xaGtZYoPR+MY2YvmXlh4ylewI9w99dhQ5f6un2tG2uUaW5Wl6R
         EvuEzVfpUcja9Mo47+zKCMNFkG3m8D1vm7XaDAz0U6e/kpDoI7dE3vj0Wv7pJl8ykJA0
         EcWX7YdN7RcTsd+ldpDDGPnZQM6qgoKWZj2ObXWT869eTlhO5qpkM0IAuJOBXmhhHi7u
         ZzhA==
X-Forwarded-Encrypted: i=1; AJvYcCXxqb7SEblKEsjofxFiiNOJ7x9ebgw5+ZE0+K1Dxl11IYByUaWKtGbS//+/jUiQ6tOR0ex2k/mteTS0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/W+Dk1JkjEnjmxOFKbDrhbahIgo+hKeD1ZZz8f3G++K5f7Lz+
	vl8CieLjIVJGwonxoirv8p8RqLvr6jRWboi9L1T4Ox9Vdl+jY0vzcVP6T7gfGuPxcU4=
X-Gm-Gg: ASbGncvZe2jpA0syrLzke4ToInqBkKhSBsCTQxBwlJukj02vcDSUkMnmycH+LExzNCy
	JXzwsFZkK7WKwaC7+fm8h7qvFKqZ7/d9c3z4dy+Xf5q1KyaJYG/6KnpuQm8JkdyPiIrOn7DGvUe
	2WyBDuiRSxLAdp9lEvzRe/c8VBAgLfXeAT7OLwgTdteHl3H96EzpKvJw+lo57zG2r69dAedkeSI
	dD1mmy8i48tHcigZ6IXiEKX66mn1fu+VQfgBktBHnjc0ZWoQCSRiMfT1UIDyoYLNQkWoLEar37R
	kGZ/mO7EFKKC+LUW+umVDY4gRyaWyYqI/ibnFO6ZzGOTjtUA/WzWFHRj/UN+2GUwEhW8SVad9ug
	j6XGEqYBnnN359kz60LBF0rvVirkN9gNa35hajw==
X-Google-Smtp-Source: AGHT+IEvPYZI+pR2Cv6FlEIH+bERstV9JI33u+O904XKUZhQ8U/QXgWZilLuGm90hKiEn2AyyHCmWw==
X-Received: by 2002:a05:600c:4586:b0:45b:47e1:ef6b with SMTP id 5b1f17b1804b1-45b517e0104mr16344205e9.34.1755854951094;
        Fri, 22 Aug 2025 02:29:11 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:10 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:28:58 +0200
Subject: [PATCH v2 07/10] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-7-6310176239a6@linaro.org>
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

Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
bias-disable according to the ACPI DSDT), which is defined as
&edp0_hpd_default template in x1e80100.dtsi.

Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibook X Laptop 14")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index f9ce2a63767c151192b0618ee2154e8d97316c1b..8b28b6f47c9a09fd49f2ebeb139291f710eb6e1d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1044,6 +1044,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {

-- 
2.50.1


