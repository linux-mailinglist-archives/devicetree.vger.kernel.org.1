Return-Path: <devicetree+bounces-171821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F5AA04CE
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF72E7A967F
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 07:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E440E288CAD;
	Tue, 29 Apr 2025 07:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dZsHM4Ow"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F46B27A136
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912589; cv=none; b=pkXx8U/4yqCCEX4uo1Qrtau0qk+Buz15Ud6KKYWLpwaz3JnSZF5yXuiPPHa7iE4xo5pJs2QWcWxkcHeQJf+DMGBACfp6wVpCYaMU9hhmfrrHc3Yrq5j3YovoDXoTzD2VfyHHQOB6L6p0kLMprhk8Jpz7RP+Mc5HKzOtSVIieOsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912589; c=relaxed/simple;
	bh=CTwTt1G+dlV2uvVXAeYFRL3LN+3HEcJBUhzYf+1LquM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iRM6KKTabAqmwcdjtYKd35gy+Vi28LEObVSwal7fOif2sM+smbYrFK2nwqw3Mj0wvEKR80fCjive6S/xQUeOhEUp2+k+mfzox9xKGk0bxbKJ9beLkEv3vHwilS7DcOH7JSY3bm4j5Hce1+Xtc3y/wQJ3YRFHdFfvdBC678h9Ua8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dZsHM4Ow; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so9067006a12.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 00:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745912586; x=1746517386; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yfxkgSvaAT51IBkaZUI/5ZAk5pQxxcrmYfjfdWPA124=;
        b=dZsHM4OwAGxy8YEZdPiiPk1s4bDEHhbOV7+M9h/1dKyjVD/B9nYxjM+QmzCBQgPLW0
         LLwqEEHv5Hc0Q+FOL3hiCYvJ2JlSVHGa8gqRk8OCOVEL8yrbn+M0xiSA16LjCRrjpbr5
         nxf+znrn53E+pM5XnMhs4nCMFzKiQVoYYA5VIJ6SRQa63oD2hZv0nLtZVqBvPTOsMauF
         kO/BDwXlLhp/dR5R7nt85eO/9ETVzzh+aD6rl/DrMdHQ3/8CAvHCfn9AjBc8jYOiNGhG
         umLW5qesJlrmSjgVyycM6wlR7WwXHsuPhvNHfULdKbidcaDufAUBgWZ2vMkKE6kJyRFt
         elrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745912586; x=1746517386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yfxkgSvaAT51IBkaZUI/5ZAk5pQxxcrmYfjfdWPA124=;
        b=SxeYN3o8ia+JZwXijyYCHTwk4NO+C8V4Jfll/jTYv6yQhgfZQ9ygoXqkxQPWWh92kK
         eGd+gpsGf40a3QeN/okryV4iCJzefqkVfIrpMaRDanzc3oIbob3K4B78fQjMilX6hPGj
         ZlXsaykZdmLdN4ItBTWOkw6DY5ZI1wGkcY+R/oY4My4AnKxg8/XGsBTJzUyN1v5ER3Gp
         /5tIAA9m9I9OW+vTTD4ls0c4DPtE21/A5ouZq2nLbSPnxYNSQOEBNcbNl3UZzh9JWC5b
         jXdF5ynUNcgpIc8aOW53yQw4T12QBzBN7SbMjpBdyOKH5Kknc3T+VY1MTNklWUorGrMC
         9XYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAxAAWNbO7HxelOXKsXAY5PeP0la80h5sKWIOU2xI5EVc/v6pshuoQq6zZFUuUUIHPw/w3keb53kR6@vger.kernel.org
X-Gm-Message-State: AOJu0YyvTfgRELOkQ6EAnjGjjG/Hw4urWk0wVQgR9lhg22Qfh9GTjow7
	ivSEqggvJ0ymMoRrEAKeRf4t2lPKM0JGBIn0NRf5z4koiKcdd+duMV5dDV20tcw=
X-Gm-Gg: ASbGncsX6TpQOFT3r4G8Nwp1NdfYVpYSuO6Cppbb7bhiGiENnUiuRbW2e3sSD1fB0oh
	JYdNFafAoKOdc63NMbrndGM8zGOtCf0DsRTfnI+A8XCvXHPR17U9Xux0lKSfeJqeerWjKH00ECD
	bEuMgjmEahZVpD2ewf0KiIRqO+iWWMA3eD/HkUXXrLlohnXeIFVadO0Th48U3Zuc+hITs14p3vf
	N80f8sVFfCAgzbj6Fg2w2AVDxPerB18KU2UUJ2vz5t/sGCxdLQ7aodEhoVYVu0po1WcTr5ReDks
	w8pVrZrbIZLBHOTkcfi/Mon86i8H4aQ+3Rr4lRA=
X-Google-Smtp-Source: AGHT+IETQTKdMbWbEhocs8zhIYnOS5GPRZMByDHQ6dHQPj5ZNHD9M6SccSvAvYq4Bi2rt9TJvrY74Q==
X-Received: by 2002:a05:6402:3513:b0:5e4:99af:b7c with SMTP id 4fb4d7f45d1cf-5f83884a96cmr2031776a12.9.1745912586387;
        Tue, 29 Apr 2025 00:43:06 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff4e7sm7048114a12.22.2025.04.29.00.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 00:43:05 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 29 Apr 2025 10:42:31 +0300
Subject: [PATCH 3/7] arm64: dts: qcom: x1e80100-t14s: Drop useless DP3
 compatible override
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-3-058847814d70@linaro.org>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
In-Reply-To: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1319; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=CTwTt1G+dlV2uvVXAeYFRL3LN+3HEcJBUhzYf+1LquM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoEIL4UVDHlaTAMeYepFtAaY5PQdOyWQkJ/t5uT
 HQaOCSt8ACJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaBCC+AAKCRAbX0TJAJUV
 VoXAEAC6+HQSjAj0dv5UAgsGEPiBq3tYKRfy53LWqfo1n4lsoegFLRhEgF4wigTwDq2q/za1VIM
 4Pym/rDcfe/oW5qc4lcw7hcyxsRWprNX95/M51unYy4Gg5lqu68rRNCKdJwLHfwIfHm0etUFp9Z
 dYxSGDoRTyiO6SqhqpEVze6PWbSqvHBeWxTTx+zlo7J5FBG5tqi8soqbzVZWtk4CSzbOI4pKWgp
 7RPlxNAKdwaKGKbfA/SU+v74rHlZKdKGgTcjk5izxCyA8EQNzTmmYZ/NpCbPO8jE1CD5xvMYuT4
 rMEshvSr4Sd6gfP0Rf6agg329GUp/GEllHFUcqDq8c4f8qRYWkuwkyo7XxDsJAr3YoReMonLU6G
 hst3WDWBiAy0NlmvWbERan1n5o2YWmTs/whRb1CAkrMd7EMvPLE+x7jwhUP8yn9fPCcxlYQk0d1
 MM3K36S6o19tXV91BpNRhUZiE5aWmrmM8ttJAa2LnNdng/+pskD33Q8FlTggmCY0tTQYBZJqh2b
 29+F/iNBTSAPaNmcTmYjpsBQDEeHYXHWYadNF98LhRerBrsaJSu+PX6xk+5JIoJW4fETjE4s85q
 EaaT67mV1nJHf2IHgnh1NFcNe1MZCZAr4OIp9qWPai0/593S9jDiogOtYQXkZ52TdS+evAwG214
 XSc4cYxi9ZwDtgA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Back when display support was added initially to CRD, and we used to have
two separate compatibles for eDP and DP, it was supposed to override the
DP compatible with the eDP one in the board specific devicetree. Since
then, the DP driver has been reworked to figure out the eDP/DP at runtime
while only DP compatible remained in the end.

This override was copied over from CRD which was the first X Elite
platform upstream to have display support.

Even though the override does nothing basically, drop it to avoid
further confusion.

Fixes: 7d1cbe2f4985 ("arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..88cbf2a8186188acbc29baed13169fb940f83c73 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -972,7 +972,6 @@ &mdss_dp1_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";

-- 
2.34.1


