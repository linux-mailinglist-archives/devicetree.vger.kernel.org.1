Return-Path: <devicetree+bounces-213366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8E9B453CC
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 11:54:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB53F1B22B06
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4F6296BB2;
	Fri,  5 Sep 2025 09:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g+eGuey3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87B628D8D0
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 09:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757066044; cv=none; b=KYZV6DhIR/Qlpfi/25EZnz1awfz3U8DjMpbVB+pOUU9ogO/WyZjApoC0k0e6oGcrRNQqRDFcFo7M6Uf6wBcmWm+Tp2YyHw9Lpxjd9KnWWcsaVdjly8RFC459HB7LUFMYAIG6hicWIR4/PDxi+71wvSjzhifYHNjdvKejPcAsIFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757066044; c=relaxed/simple;
	bh=/znKzGBu5RuPK371ffJpsYCdH53GVaLVamMZW2EJlQk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PN1fmHt9aThCGqzRLhH8xpMsLQ7wY1zG35RyXKagJyZBZa59DVlmEnfTS8RU+W4ZQhVMZhbXhONElgUHT6JFNE/d/yGE1a6d1lkWQib+cl+yyGCCLT+OD5ERjHnVYB73A0QJ5W1YhNh8gpIDBdUtLK3L4STIFNwINqZH4NI8bKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g+eGuey3; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b9bc2df29so2873015e9.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 02:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757066041; x=1757670841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79qwGQajCQ/R8QZORjPKFotZPS+EuPoe5zdLgoDwmiA=;
        b=g+eGuey3CSTJw3s+92n8MVahqwQFKCOG+vCAvwzH1RIqUUdE/0XyvtI1NrWSs/Ua+e
         dLQQAi1AQxCND6JwY31BW1O+8r0MWW9hTa+ZiBWZdPbGBYGeHsHI8U9UAldE8fv3AmBz
         l78aW8lGSgivQx8FW289nW2FMyjhVlgvVYsbr2lLe3lUSrwoMS8G2K1iywg6MMdmoEde
         LsmZlz+5mhusRF+TPBjh1h1fk/RAQImRMx0+Sn+h/xl13cXlsIvS2eitctHFcQS3P6xb
         x08CZvLEbulY7o4JYGzaToDAfzRK+c+8mJW/i1ac5N1nlxiDohPZ8w4I7iypPPe4MF9R
         cFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757066041; x=1757670841;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79qwGQajCQ/R8QZORjPKFotZPS+EuPoe5zdLgoDwmiA=;
        b=r28+zFAjsCsHkfDFfSVAkPK9hIYiM0mStYKAaG6ogVCxOHJrarIX90rlKdTrtX8E+n
         0VdgNtGaXlkPL5wjGHvIVK7PEDJtSzxYPOmtOSHMELKmnEnUVLzcL+7VpdWRy3hDeN9V
         4ermFws2/JUUGp0H91RSgIsn549QbBg4CSK50ol0jWDSQUnJBvHYNEW28ky8V67TYV+6
         eJdYhgwCNS0ioXZCbZ5CdxAi8nEYIBYWF/0NEeR5EPB8CwC9T/ozyfSYkzfY6BNmPmp6
         3qMsZ2O8Q5ovo1GR9uKK0hdZNJ+CZfajXqbtZ3w6jNTPlu/q49WAZ1N/897Ou0nbFxzw
         kltw==
X-Forwarded-Encrypted: i=1; AJvYcCXBrwRoNIQugtbk0lS5LT3mHkdNBgW3Iih0tKHa76wE8jRdp5P+BvB8M6NgwtjR1KSj+BQQyIMXnfsc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4Q1D/ayuZVJViOBL8jTPSwdxjMBfe7jlVTeOoBy7BgBvoU5+u
	JBBlfK4H8EP4CLBSNWHF+aemC2Ju1qpKMPRb9KWpNzUixIgahrNJmWZybNxWFnSoan8=
X-Gm-Gg: ASbGnct/o8YBlNLt+dfVljHijMC4zF++aGms3X5LxSOLdFBA2RjJolO7YNS/c2vwBdu
	Ibgxi8ejnwBQhZWGWyYb7bwFu7cGZAay9fvRaotiy5ZCxX1wZsSHka2bBrrKWdtmqZK0fCKSzjV
	pZ0RijNiVXHY1avZZ6Z+gC8VOTGCAwyR9tgJl2uQIb9cs5U/NMywkLbbJWvvtSdsLfEfqofvjiz
	xOQgr6/uDf0k5udLTqYZC3WTMfLoG8KKLvD3S9lS4+eUM/wJXjGynrgQr43QF8UrW3xbwO8tI23
	tj9O5wv/ukKHP1+fFHcUnOBqtuNJhH82JDiwf8NZ/6rnXu05K47r2DfeuUJF2LK8ucn5l5K9HP7
	efqoxI3mZ9Dk1wyGCpg/Z8dQi631CLMPXgHW/jWsb5SWEIQg0rllH/pY=
X-Google-Smtp-Source: AGHT+IFs3NLqkxTF3RXfXzl4gp74qrH4ClrepPtc97J3f3qeEc5J3aGpEDp1CQUHXfCpfsJxzFJn+w==
X-Received: by 2002:a05:600c:1c9d:b0:45b:75d9:2363 with SMTP id 5b1f17b1804b1-45b8016df84mr106837605e9.1.1757066040958;
        Fri, 05 Sep 2025 02:54:00 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b9bcda91dsm152550295e9.6.2025.09.05.02.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 02:53:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8750-mtp: Enable PMIC RTC
Date: Fri,  5 Sep 2025 11:53:54 +0200
Message-ID: <20250905095353.150100-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=672; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=/znKzGBu5RuPK371ffJpsYCdH53GVaLVamMZW2EJlQk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBourMyesXH6y1kWweaAyPfVnS+sAwPXImVjWyZu
 P6myedG5H2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLqzMgAKCRDBN2bmhouD
 1+D2D/9IogNR6pzhuIvj/auBwDyMNBB9XZ+DohtcRgK4UrYOfQMZ5KWCCp7prlGrhZaFPfR3+5S
 gMjtfSxwU+EjjM1UvnEZXkVubIYqPAsHSf4HJIsziz/6lyOwHSpQ2CxnPbS9AFkIuBQpy2duEXy
 CDXFROEJlIMUk/2i7Gua6MVC879FKkVvLzWU9L1s2ktIsQuPRk787xkIO/dUv44S7mvmAaMqse1
 DWu6cPPxkkj5L7tYsDIOMXse1di03q1JouiN2dpQFzt0wQHwAgPCBvU+l5/wyFMBu5+Ip7ZRkUO
 LHImUkKLAO1M6ShkGrGSY3B1jnQcKC+QggtS0YvRMTr6U3WnRosvxz+pV6eJYj/OiagL+gX8bzg
 WfONpgeYjk7sE2PPXDekBYOIKOpwdVIf1cjFL+afEAaTjnJnyEJyc9qyow7j8y4OSPaDE86i9Rr
 6ETaJT/eDzNGdhkkZYQzUG9oeK9Y649v77a8/XzSSnqTY6ml9fcdq4GAaKbov0RToPeUmdCx9Q9
 tOYsCzWDmHa7keajZAZ3iOyHkHPDl5yFtZFonBfxtHW27NljSKuSABORvHa0vohN8ttdKukm8BU
 5rYRXQjEOt0K47YK5k8IPRgp2CrjOkUBU333t7z/j2wi0OjJsgRAq6n0OEeiDzqeTUzmOWGBckc uiqAUdbJes/AS4Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Enable the Real Time Clock on PMK8550 RTC.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 456e55329665..86c2d56bd4a7 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1146,6 +1146,10 @@ &pmih0108_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pmk8550_rtc {
+	status = "okay";
+};
+
 &qup_i2c3_data_clk {
 	/* Use internal I2C pull-up */
 	bias-pull-up = <2200>;
-- 
2.48.1


