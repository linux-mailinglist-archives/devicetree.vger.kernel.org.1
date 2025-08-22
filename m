Return-Path: <devicetree+bounces-207945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3098CB31378
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B2C9A23133
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06A542FB969;
	Fri, 22 Aug 2025 09:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SBx4KPp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078362FABEA
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854957; cv=none; b=VE5Vqw7sbBGWjaLGrk8aHRQX0+0PfbS8THfK5+I4MOafgt/LraFHLErorMcGKoNOiY2bnon3YPwkEdep8832sLbYKbbO6n4uVqZs38yB5mlDX16kH9bPf7STtvqcn9WffZghNVHMI1/kLURb4mM2HkClMG4nZopA8tjHdOPjqdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854957; c=relaxed/simple;
	bh=QUt0+UycE3l2L7m5spe6S0KqFj7nRto3yM8Pu7JHGtQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QsPRLM+KbOkFRWwRXllKE8Q6coywYyyRoajiXrpH3BulLhsmB8HF5+5sHloEFicXUo2FQEuAAxXYdBJUh1UyZcFw8SlNEvxVzRPU2zMe8ktMILZEdMtU8BaKCqZ9Y1cE7XnkkspZwVaHYhvTNZHeltgdxhq+6+zB6yhtygfXNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SBx4KPp7; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a1b0d224dso9199955e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854954; x=1756459754; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=482U6L1exn0T0v/WP+eBHc4UYIMx1Rf/qRIRSNFyPxM=;
        b=SBx4KPp7ybUy5U/MY0d/Ug7czgPB5ZwifJ2LugC2hdVvvsulzZENrNYy58wFID/sXa
         sLWuqLPL9f/d48rtqIGuBPaKrWEQ7dYn2sddbv1BwKXRQQlVEXxN0/11QpioAKqxZ3Ch
         CYJPo6ECNLeU0lXPuHvRZk9UCR2/PMsxnUO0Bl1F4ZzYk65UL9r4cQn3MnxVoviVzkId
         o5gCWDBCx0pvAB9wbdwzR2WJcq/wEQZHJZgRVehTxNpwZkSC8PyfT0zaONs8xRrWZFV6
         bHl2KJR2+xZ1NO4ljMUcGYtgILXnmBgycr91oqurmhz1jdZl9jfD/zSyX6rWumrQJDDC
         x7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854954; x=1756459754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=482U6L1exn0T0v/WP+eBHc4UYIMx1Rf/qRIRSNFyPxM=;
        b=EwOfuXLciBVxe33ldtMFuyu5Y/2nLyHoialtlUdf5X3AqMY7NkPs8C1KOA48RBLFHd
         gACOxb4XT9cvFeITxLSKB9ULnatrrEchn4dzTtLK4HnEKU/2lnL4XA2s5BY5o2iZkVAa
         hrbyuf8DECiaomfV7pq6lUUoiNc1JSVSvyjrq8QsHpubIRUnTN4NNrN3/uCkmJiIoTwj
         JgNWy/AYFNQnBO/m0WZbgXpcRPOXH2LfbMNsHUWf8Ca9JqBJRiOhkHcXhRVwRh1A3gJm
         v7izKrdiT9c0fN4gi4j4nQhfO/XgJtH5qdizzrpgvEdTLfLXmwCKYKLtO2V6SHQ1xgAj
         Kzmg==
X-Forwarded-Encrypted: i=1; AJvYcCWDB0FbG2PqAiDAZKNGKVFjMk6SDcFzNCwm8//NCpt+LTORWL5UczuGtjCxU9Z4cBgm9Un6XFyupGoH@vger.kernel.org
X-Gm-Message-State: AOJu0YyogYjDaKSkPcK8gzhMMZMWQNeHl8jredVb+bvkCjPMG9OnMzaj
	PpBLHCWEWxWpfgDEJjlLeGPGNyj9xlizugI+qk/lX3bBH46jNmOlUe16CcHe+hZGsQA=
X-Gm-Gg: ASbGncuxAsXNkXaHu5wRqqn7YQyItOPqzTHFqoSsvwTkmxUaY46iO6ukKwGDDa6jiQc
	8m2JfXMeZXWREMr33B93fR/fGJnS++L5ZxZBYkyAtwjWjX7WdyPhmLbIV24dxT5t974wcpf0Sm9
	TglwkHrNtoT9h1xbs/x6Dl4q6cLhHTFhuD2IOTV8qp/Y4jnkNgFsb6Jjand98eRy/fPLhKOj4zD
	TQCq1/xGIA86rCeosEqvvAqpoPpWbYBjBR3wW+QzJbuDFR2yV46IDz2xrWMYob9TQFZhxF5kltK
	VrNdOEGMxGAYQTUjniLwpHlol0g0+qZHuBeX8eF8BwyTrvJXNAOx1dZ/IfDoukvtzFt9gtd5bs2
	y+0MAR2UUH9BrOlJ142jm2VUXF7EmkJQ19HEsvt4S8uhRUqAk
X-Google-Smtp-Source: AGHT+IF8rG+HAdadk8FJZFHlMphapIz/vjkTDpBbGV2hMvAIFg2h5HlIyowXYUWst12d1VIrhFQpvg==
X-Received: by 2002:a05:6000:2313:b0:3c3:c280:d42e with SMTP id ffacd0b85a97d-3c5da83be09mr1291521f8f.1.1755854954298;
        Fri, 22 Aug 2025 02:29:14 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:13 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:29:01 +0200
Subject: [PATCH v2 10/10] arm64: dts: qcom: x1e80100-qcp: Add missing
 pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-10-6310176239a6@linaro.org>
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

Fixes: f9a9c11471da ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 9369b76c668b5c008fefd85d5ca18e87ab9ce93f..ef9bb7dac9193a44e3086ca370350b816744f41a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -915,6 +915,9 @@ &mdss_dp2_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {

-- 
2.50.1


