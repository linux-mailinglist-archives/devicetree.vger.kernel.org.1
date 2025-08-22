Return-Path: <devicetree+bounces-207938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEB8B3134B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:35:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9EA61D20564
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E4E2F6565;
	Fri, 22 Aug 2025 09:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VwzY+nW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946112F6175
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854950; cv=none; b=k+4QESgeJzlrZFRBA8jVThdcPkNG0Y5REHqQtNDqhgqpU6e+rbgDQmeXnI1Jf9SS5R+wMeqSqiR1oB7zXic9fNdXLL3wBcAsqkgFKGSI8vzvr2Ayr6OUsNlhZ2+G85PewzM4xlvAQhkuDW0zvzYy1Nh9u96/vdtQE4fgWZ5ejnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854950; c=relaxed/simple;
	bh=Ly9UoXSrOGG1KoFqn9vvbnaBI7RpPhWYJpNHpG+PnO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qowlzAFO5q5sqUJCtNju9X+s8NKdbMrvqBkgeQMPn7PJ85fdt6BxvTwb1AWQdYo+xUW7Xh7qd9GiDJ9Sg8qtOjNFJ6g9XHEeoy25EMavyslG/C6v5zJpNqP9v4zA5pM5QsVGZcuX75yLBpvQklk/chGMTNWho0qNPtQOYOW7uw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VwzY+nW0; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c68ac7e1c4so71164f8f.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854947; x=1756459747; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/WN40SXjtEd16jYCivbzAZ3BY0qBWRGncWwFkmVx2k=;
        b=VwzY+nW0NuOvyOoesWpcwsAF/GCOxFXsm4EozYeJaQr5CKhKySX8Q+stOTKH8YBPnl
         UQaHtcimIqt9QJqRdje3xLSQe7Y6kBNoJuWkWfG81hCg0rUxr17Hql4ya52Q4Ijz8K2G
         9yADvc8NhxJUSMMK0MbkiI0RC+sv4cXrx1c9sIq3++iNYWs7PZR88cdFUz7UxqamsD7R
         XcMszxWMbiKJIBVbT9FPF4tLgBxuopM+LD2XfIW3+xNnLW+HVSlCN/cOXrQgo1cikt0H
         J+I1E0qfBoFDjZ7MKfJF3VAR0y5onnfewjxhojYONI1vBWBCuqVtZnGsHaxyBfmWE4O0
         PGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854947; x=1756459747;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/WN40SXjtEd16jYCivbzAZ3BY0qBWRGncWwFkmVx2k=;
        b=GGq/QtnmFPA8+OTf7zD30lmaSeNvNIavA1jZjcU9kgmD4T/ChQqJ3AR/0zzujZ8ff2
         sTIUirj2qkVqMZY0IsGsGKjILxOr1wJ9x76tjeo5lqHmLKnavK08C1RPwEtvyz0zoGFM
         AWXmNo7LF8USV1GEQVPjwIUCAN+qLzuROsNkidhw34PMXpQAQ2Bdk9kRbMWiRB3P4OOo
         ew8Sw5Z0Jxh5uBqbLPwoDAKWbm3DG1O0kxqLBCSfIiNYG+Cj4BLuQ4ok2kz4QSwCZXtF
         ux3+w4EhtOqDogBXOfsgP013cqlM9qNSdP9a3HlXodUcDcrHBCuM/AQ39JoBa4ia6iMw
         SV7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUaXQytRdldnjmVcYu/EO83G7Y0xN35OKBSgJ8xFJICitinoE9gFVE9cMNdFLOzF+SNLpjsyhn1mWSF@vger.kernel.org
X-Gm-Message-State: AOJu0YwjfpLfF4PQq273YFaQc+l49D5AlOgOWEyCl6NcdEbzg/gqHJu1
	hkWAybpqQsOIHAkFVlqls5eb/JuOsH3iBO4myOprhwZfoICqpwfpLbxNjmuWqPWBotCXvAzn91A
	zQEjJ
X-Gm-Gg: ASbGncuAXoxz/yWr1fCgKUpzeYiPVgWcNd+BPhV5WrQKvztSUp9vs5UYRVa/Nw48gSw
	Th+e36w1muiQuvkDoLFxXlmUL30ylj/rzJSBoN1zatPHU9SZgMih2Xk5lbgghy+3cqFvZerY/F1
	0dZPZHnlnytRGqjaKquqm3P82FsswkvY4BUws1adCPIRapmbOOQ1zv30uTCw64walVSVVwia/MV
	qlPZmjsUtZM+ZosYAXaQTWkV6nYyhVKYAP6DvPFW546ce9f3RKysgfmhORTx8b26vYRNDPmPAVD
	BOzxVXkesTT6DzQh2LwNDGN2kilImA1C4PrTU/GaFLFGMA37E8Bza+5JJWKbxV2WhkGTEHJ2xCH
	u6Gv6JTdiVnX+zOB/zsKxR/7ntcJg9e7/v8fARBGAIWRsBu3B
X-Google-Smtp-Source: AGHT+IGN3cWxuLg43OVYr+zai71i1zlWCdwIKsQtxCW5KJ5cNuy+7e2wDbiVDh3q55ETL0kXICd13w==
X-Received: by 2002:a05:6000:200b:b0:3b9:1444:98b9 with SMTP id ffacd0b85a97d-3c5daefe1a2mr1676047f8f.20.1755854946788;
        Fri, 22 Aug 2025 02:29:06 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:06 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:28:54 +0200
Subject: [PATCH v2 03/10] arm64: dts: qcom: x1-crd: Add missing pinctrl for
 eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-3-6310176239a6@linaro.org>
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

Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index e3d2fc342bd184473b37882f3bc4f9c4d23135bd..92fbb03291975f60f41f4ebfc2505bdc9879a5cf 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -1174,6 +1174,9 @@ &mdss_dp2_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {

-- 
2.50.1


