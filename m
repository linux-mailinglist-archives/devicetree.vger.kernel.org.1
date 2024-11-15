Return-Path: <devicetree+bounces-122105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA479CDC65
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 11:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AC0B1F2312A
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 10:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36F691B3957;
	Fri, 15 Nov 2024 10:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nn6H7NCv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62412192D61
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 10:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731666063; cv=none; b=to7yFZPvobFUkYcZNO1iJSaEcY6HQyi4kqHrkARYVJFycJYGH7TYymAUyU3JB39+xHgfCSZsaAZx25xi+uS6dSH82YTSSVNYdAotxFPBzMMmRD1q49KtGekNXPF0WVg/2WplnA3stixMfwv30P1uoGzKGY85ksKwQlfanoVOC6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731666063; c=relaxed/simple;
	bh=/gMpueglHMK8VWuO9ywksu7k3a5EnaL4nh8Ew4dHXx8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=atF8JnwQr6tTPO67gcsXeMUPMgg2/NT9kx/XIj4uJVKzV5rNbqxggXY/x9OMvnYMYhTViyIgTXIreBvs1UDtAP3YI1f0hzxxh32QOYACOsRJIRJG2HX0rDHBjfvBcVYkEmv7hEiGk0udIvKB5UWih9EHT6YakZD/6KE2ah+9x+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nn6H7NCv; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43158625112so14500815e9.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 02:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731666060; x=1732270860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJ/8U5E+Axnwvvrl343djAgzMldwqWBFwD7na+Rzzk4=;
        b=nn6H7NCvb5cLtIwPQ9kLVdN5lJdLiuXlbwaKptsJRBwqzZUhes7RqdunLgZQo/zNnP
         QFjS0se/MY00j77pDlnL1yO5G8sUewpxiZGkVnA/ZEfVGzC7JaQr0VxpMhSkT43tvZvk
         i9ghcCaaDl3J+apCokIgRCKbOxmquW4mpwYxJhN+wZwwO7DLYjt2UMUAbGwKjh4eE2g4
         WmIaX1tlo3wjLS+eJG68SMG556XljovYiHhKnXjKpNRhKwsn3KXER51gytKc3+7i+rPx
         p5muXDPaVuekvXNsSuzV1HwDx5UCazvPRoogFjhKTUrO0U+Na4EpA/QY5u86jYr9lrIi
         u3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731666060; x=1732270860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UJ/8U5E+Axnwvvrl343djAgzMldwqWBFwD7na+Rzzk4=;
        b=c9eiPZzbLhMx5I4MRWsV8NDsRHmh9NA+v/suVV2NEnsVu3RUsxfniaA6HCCiAYIZtk
         hUxeKW7e92qsrIIiwMr3NkOk0WkIOp1tSsTesqUdSSyGxbrLHVphxTOq8qOygZTCamlI
         JsGeK4rnO1sCwV8HIzqvMaEX2fUfi4bL1I4NK/grC5vvzxBZuqNiNiwE+Q93wLNBNzcM
         n+wngOYAwCtpidNHyxUst7lj+iTd3XmKzxRTk5w5j9Jd9RKoE87n0VIyBSyKDibWY2Fk
         PtafaGIA72a/rOckRxIOauwOod5qFEzY12Fzibi+xm90sHHUHF8FfJb3HY961xxX5+xZ
         Zs9A==
X-Forwarded-Encrypted: i=1; AJvYcCVIkly4EUYDGbFpX0LFL9NL6mY4Ib+xciTz5aZ1TrEoi5/U2vKgkQX6YYdHyg5UGa/UUj0/JeSollYM@vger.kernel.org
X-Gm-Message-State: AOJu0YzO2HgNme2lmPLkbCc8SMgueGyXdZ4Fh1GJlCm6I2tmksMZ5F8A
	gB5MCmqnLcqoXR/rOODhGLZIViUtDnv2TCBmamrf4OFuM4JV4LNS7EalEfF8PEs=
X-Google-Smtp-Source: AGHT+IE/JbXQuM2BEx472Her81RyBFQht7yndf1PAKUPqnSo44p1GoQnGrhJDxZY4xKRZ0qjEpDQCQ==
X-Received: by 2002:a05:600c:444f:b0:425:80d5:b8b2 with SMTP id 5b1f17b1804b1-432df74e9bbmr19311965e9.16.1731666059761;
        Fri, 15 Nov 2024 02:20:59 -0800 (PST)
Received: from [127.0.1.1] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da28bc11sm52109995e9.31.2024.11.15.02.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 02:20:59 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 15 Nov 2024 11:20:53 +0100
Subject: [PATCH 1/2] arm64: dts: qcom: pmi8950: add LAB-IBB nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241115-topic-sdm450-upstream-lab-ibb-v1-1-8a8e74befbfe@linaro.org>
References: <20241115-topic-sdm450-upstream-lab-ibb-v1-0-8a8e74befbfe@linaro.org>
In-Reply-To: <20241115-topic-sdm450-upstream-lab-ibb-v1-0-8a8e74befbfe@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1237;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=/gMpueglHMK8VWuO9ywksu7k3a5EnaL4nh8Ew4dHXx8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnNyCISrq4smg6olt9dUnOX9jPt6tRtj8GvUg3v
 q5CX7mZnGCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzcgiAAKCRB33NvayMhJ
 0cXoD/94qov9AGhaA65LkZrG0m8Z76RxU0PI1nzGxWTST730EttpSMMoxj2SCsyZKg5LmKerFqU
 6L5qsZFEbd5NTzZ6Cst5FbaVlPApqczR1F7DI1nOxXXZNSK43UHnIV4Ut67y4K/Jy7H4B4iZPBm
 VlA1WyADv4ObruWAilnzwOxNNS/7hCWC133H64xuTfV/AtZy2EiN9CqYt8p9fJI0wsAZj/xc2JL
 GiI4Jh7z5ZN6PJ+V7YFzoP3hKB2z27H6hhPOMiq2kJPbE7wSNA1b4AjYIhsZn5O9WdJ6ubdQdqk
 K2ttKpcC89NwiRkCaTgfAhgbCXNW2Kdfj4UBr3bE7OIhICCN3prf+1SxWVnGqoHD0oEH+bUDk4j
 YZYCH+7K55H9htKPMWkQHP8nlMdOXr4QBiCd5IpAb8dM4Fc6VpMPGphH/R8CjdogmX/ExQMXStT
 cRrrI5D5l3JebQWX/afje9dvjJ3F51XUWw4qYRb5B6bVTBw9Oo4s6Cyu3rEJlvoSmZYr7KlwYbY
 UKgj5/LCMTGI83Ghbx0wpt8z+8gnt4ggHZ4vcRWMDdHDKeL4Nq7N5pszBfWJ19AQ3ktdu3DIGKg
 76NtZV8ffR4vKf3VTkl7eUKTP+D3JvsDBm5CfQTmm34oILqlDeBlFJQmaBLQ66w1WXx2Qvjd5J4
 09SeY0+MDrvu4ig==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the PMI8950 LAB-IBB regulator nodes, with the
PMI8998 compatible as fallback.

The LAB-IBB regulators are used as panels supplies
on existing phones or tablets.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi8950.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8950.dtsi b/arch/arm64/boot/dts/qcom/pmi8950.dtsi
index 4aff437263a2930489216c81c53e0d7ef7d14b35..3d3b1cd97cc3d04b2c5a78c06fbeb3fee3c5af8d 100644
--- a/arch/arm64/boot/dts/qcom/pmi8950.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8950.dtsi
@@ -84,6 +84,23 @@ pmic@3 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		labibb {
+			compatible = "qcom,pmi8950-lab-ibb",
+				     "qcom,pmi8998-lab-ibb";
+
+			ibb: ibb {
+				interrupts = <0x3 0xdc 0x2 IRQ_TYPE_EDGE_RISING>,
+					     <0x3 0xdc 0x0 IRQ_TYPE_LEVEL_LOW>;
+				interrupt-names = "sc-err", "ocp";
+			};
+
+			lab: lab {
+				interrupts = <0x3 0xde 0x1 IRQ_TYPE_EDGE_RISING>,
+					     <0x3 0xde 0x0 IRQ_TYPE_LEVEL_LOW>;
+				interrupt-names = "sc-err", "ocp";
+			};
+		};
+
 		pmi8950_pwm: pwm {
 			compatible = "qcom,pmi8950-pwm";
 			#pwm-cells = <2>;

-- 
2.34.1


