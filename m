Return-Path: <devicetree+bounces-204702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F851B267B2
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:40:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF6CC1CE05B5
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BE030277B;
	Thu, 14 Aug 2025 13:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zjX+Tz5J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5CD2FC88B
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178244; cv=none; b=pichgGBBikznfgvhsgt+p1dHJP38X+j/YPAo8CKg7rnbpW2U7eONTd47CfhYhzEB9u+bPJelVOqA0QfNSMsY8Sl8bhhFi7gk0fCO4mnK5g3YMkR7H4IBxCy0eL+K8eR/5osuD/qIwFYvch2iwAk6S1eJhBk03ChZ/pA0Z4yS09M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178244; c=relaxed/simple;
	bh=RyODLr4tfYQgpZQoVN1JjO56CVtyANQBLY/NQuvqZRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GVltVtJ8b48Xnq3VkfnO3ocTNUvSAhWgmyjC95bTWcI5HmdsaKp4eDaCwXynguH0eZgXZKY9xXPSN7c+5v/3foAqReBmbxrDtJsupOfB194wy4klid8S3WVmaLwO7TkErIzAY3JPAHddqIiRG0R6jx5Tg/AvkNo6eKfjvbGPBsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zjX+Tz5J; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so5972415e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178241; x=1755783041; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VUP8YT3BizT/F6pRuI1p9cYQKQzwKLKvSp0CT6xtpHA=;
        b=zjX+Tz5J/c+jQlE8JzAZy+ZFJhsS7w3GEC1LHthwxw1KS1dEjozyK09zyNkaEsrE2t
         lLyx1x4zS9pjxgC96Ni1ZT9043qIyT+WAgbU/LlPKnA+5c5yP1g1yV6HV4lt9d8ynQWq
         hsmc1olsV56d8SwJCHVdPEKeq0ns4nTm3q42FVZrOz9s+SMpmqSqcRr0UKquN9Kb8bsS
         zhDI2aMt3OEgC0r+v0OrmDAsNK2S+F788iK7Ne8h+wQYZa3Sf32Ob6O2UdpBnne4TlxD
         w5Zav5Bc1y6Mutcdd+OBl+SUyKFbPBdToS0Q+LtPj7T4FVgEEaqmph0EGa83HA8Eoou0
         nPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178241; x=1755783041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VUP8YT3BizT/F6pRuI1p9cYQKQzwKLKvSp0CT6xtpHA=;
        b=paZwHbFQiy2pGOKPwDb3KfyJdugmvsIx99cLQapGhz1jaoGAwdiwgn+Jwniu7CTeso
         qGN1+vanIY1gFs4KsRblIQYnecVR1fTnRX97cbqDiB30pp3vhNhe/3yWtO48DQbo3Acz
         alrDTHhSIJeIXzRm+Q5QCQgW9mu/9YNl7OqUvyqJnjvnMtBsfqxVT75jt9FvUtEZa7W9
         4HhRFfcJgqMw90BLmnsUABuBFUTgb+9tLk4r8136Or2NPUL+FJ8PQJ1KipsWwcOmJF8r
         zaFSFnJFu+UfkdnCgUtU9ZJkzmFfeocBLYiMhAn4c3lRUZS9MQ1jAZVbno/eVbL+GflV
         l8AQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKwKRxo7glZ3/DIzKkBuyWUEynd2fRJCzGOjmgsEewLE/Th4c5PL9ZL8tGrQ6HEb2NTaUnGvIx42/E@vger.kernel.org
X-Gm-Message-State: AOJu0YwFdOLp36HsEIOS6Hy5hVAnmNlADtsqTrLCIBoWmxJyGqLnkSpZ
	fEWvEqYrZA/YrGWvkja7VWsMrLLMm7964vPvXvwyKSZ5KRViDffZnCl/PhKoL/umjgw=
X-Gm-Gg: ASbGncut+vqB9D3znD6Q4/adl0o4tfnuKFF2fSIARbe8JM/+oFZuoS7QOPR44kwO0te
	ZmXkVGa01tge3N42lP6rgG7T/RfTCr0Mv0seVIjdM8bvSbZxRQN7jc5sv7gAzysw5lzbw1j1bDq
	FGuhzhuI3VQvyts88UQmlyAGYT+B/Jd1tldZaXWcGoVoYXhsO/eedtNsTkl26yVrfeDXIqDGYgw
	fQWMS2bzdNoMTmYqmoZYooYMpuEFlak+F+xBilb9ZBLHyigqS9GR1UWhctVSZLYgW6eBEgaFNOB
	bLhcMRAzDa/cknenuzb6TBjHyxKfw6L7mw9AaMJlwMS12w3B/S+Cs8MsZuyZTaJ33yfY0zop31E
	9mD5Ho0Pu2bvl3RhODHY6M4sr39sjvk1Fr+SO
X-Google-Smtp-Source: AGHT+IF7LAjZCyCvOBTYMG4GUOkSm13ztgYqT1wBAfwRLo47Hx07Kcdhq9rvFE1i3I5vmK8VyDXcpA==
X-Received: by 2002:a05:600c:458a:b0:459:e39e:e5a5 with SMTP id 5b1f17b1804b1-45a1b791232mr25209425e9.5.1755178241116;
        Thu, 14 Aug 2025 06:30:41 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:40 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 15:30:28 +0200
Subject: [PATCH 1/9] arm64: dts: qcom: x1-asus-zenbook-a14: Add missing
 pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-1-a52804db53f6@linaro.org>
References: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
In-Reply-To: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Christopher Obbard <christopher.obbard@linaro.org>
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
bias-disable according to the ACPI DSDT).

Fixes: 6516961352a1 ("arm64: dts: qcom: Add support for X1-based Asus Zenbook A14")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
index 16d045cf64c08c02c420787e000f4f45cfc2c6ff..613c675aac296f931293a1ba3d8506c6663bad21 100644
--- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
@@ -1001,6 +1001,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
@@ -1236,6 +1239,12 @@ cam_indicator_en: cam-indicator-en-state {
 		bias-disable;
 	};
 
+	edp_hpd_default: edp-hpd-default-state {
+		pins = "gpio119";
+		function = "edp0_hot";
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";

-- 
2.50.1


