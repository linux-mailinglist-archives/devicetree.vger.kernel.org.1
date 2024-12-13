Return-Path: <devicetree+bounces-130839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E18F9F1002
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD63B283931
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF1D81F4708;
	Fri, 13 Dec 2024 14:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dc24vq77"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039171F4271
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101699; cv=none; b=EBCf9xQxjFjQj3XCOP6d++wWcrpqYpeY3PWTtMBTEsgx92BWCUFAPl0MrWj2CTPCjK3LfRQwlzWT7x3a0PmCc7uN+f9uaSk3D9Sf9WJqOcw0Ue8r3Rhv+cfXFROzejM+Nz7qxy7QouLEHzQdiHT9l1bCSK9jSbzzXTDOYy/nOes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101699; c=relaxed/simple;
	bh=tdASVTFy6HO3Q4FbETgjEYpFBAVpQ/Ozo5M47mRih30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hRrAb6sSEYUS3yJBAew1DnUQNHB3/q+9Ku2zZwZAylabjXJtAFfCPV1Tmzh7UOOZ+RD2nesUXM8VrEG0wz23FehC0ZiBtFDoDT6qep1xaACH6m04Y2IXMgMvVmZCg3rbXirl/K4R8fROxGo6YYS2PThrP4D1+fwqyY2BUm7v8d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dc24vq77; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4361aa6e517so2065155e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101696; x=1734706496; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o7BLB1ZICMgsEsBHTJXOYsmJqn5wrXbeljAB+WqBZyA=;
        b=dc24vq77F6OvNiN56sEVgmlFw9M1eoLfd3mC3WgbhtHC5cdGrKHblABRi5Xk0TQqYp
         M86GI+Ys5rB5rZynahhEKShgmaYEh8nWkaaynyAnpC9DyRk+7drLhxJEu0YcCyTuBRhY
         x3ohWush34yUV6CZPG32e2DJelDaR4GOVxNtTfjAkNOvOaDC7YpScuI89cSFitHmh6oA
         WQoMaQoE8+/urY/qrcnc9zQIIZ46lnVy83C5KIF/oY5A+fA6yl1bK5iVEgAkW9drlwyt
         GCvro2DkhHi82/OK6eMj2YTw5iGwXzqe7YD8Rt9tlVXG+t3LOPaXOBv+gZIArpzfxvkL
         OFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101696; x=1734706496;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o7BLB1ZICMgsEsBHTJXOYsmJqn5wrXbeljAB+WqBZyA=;
        b=gOJoCBVvb5QzUbk66jUcRWtTk1L5VqwDZM302e1AIEt+6bs8/fRTeiGFY1ZHGpOEUD
         vDPtLB/5vUZsgj6hQUVRoDlS3njlhU+1b002oOkNFCcU5YGdvXYWsKIflXuPcVRCAFx3
         dziBJ+9CYPRDcXKEFk9o+VvLJmybTMfKvoEBRNEnF89m3nkzz1NjnFmjEzS8stljto/n
         yxxDR6rW3TBw6nudNE47cKxF0bVuD3AoQE4Rce0SHCjVbntDM4NfG3AOMDd5YfFVGNWv
         OOFd6Xz5fOt50dZPZM2CTAZsYZyO9voHsJ5JW5uzcWJ/XSwhfqLY68Q5sUI6/6pD5Cly
         F/aw==
X-Forwarded-Encrypted: i=1; AJvYcCWaA7A5n9RTWHhSO70nxyy+U0b7vWW20bwgzt2Fa75LHc3LHcCY5YHFpmIX3gSdQsZjYRSE3/AHzqiO@vger.kernel.org
X-Gm-Message-State: AOJu0YzPyPsFCRTEtoiBBjWMk7BvMA1fb05jOTmPaNgR6xfZjhGxd0E8
	hmfGk5mZ+NyQ2/EiJkQxKZOyKBKkCDsj4eG+z1LtnQ6DoVYUoJsyqHh2NofNaTs=
X-Gm-Gg: ASbGncvQMgPk0kR5bkfnK3s1VVETwNAeqIOcfinSGItsPp2hAbDTONi94YOdRVpZXXT
	hQpEoslXqWSFyEw5FWSjkqK1DrsL0DNrlO7W3uz+a+qf/3DuQ5dV03Zlpbx4bsM3FAZX3gHvMii
	6Rw2OYeJ7eS0wlDfGKzyys7ucLSNIXRYamKoVDfN5Mq3o41qD7TuJCz+1cMkguS0sQOsi7MQsNq
	eCtk8mftmtCXFhMBLvpP6bQsBK+hpgpMA9dcIQV4H/BWJRWjbCVu4YIcvNnWrA2p8x5SENY
X-Google-Smtp-Source: AGHT+IEpr/3yH8qbO0jQJ21URjoavzc0r7TAT21KWmk51q0EauIqZzlSP7k3ESu4jnKQWyC3iVWqKg==
X-Received: by 2002:a05:600c:358f:b0:436:17f4:9b3d with SMTP id 5b1f17b1804b1-4362aaa1c24mr8903005e9.4.1734101696357;
        Fri, 13 Dec 2024 06:54:56 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:10 +0100
Subject: [PATCH v3 21/23] arm64: dts: qcom: sm6115: Fix MPSS memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-21-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1317;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=tdASVTFy6HO3Q4FbETgjEYpFBAVpQ/Ozo5M47mRih30=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqZNFOfU7nfo+qfsCE+vEHmFaA/an1wvK9v6
 xJz56w9qaGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKmQAKCRDBN2bmhouD
 179sD/0UbplwKXZQrZ6RjHEgxnAyXfX/B95gp4LxbvyUv2w0jQO5JOxByf65/LQ2+mBHMaf9bUS
 ogVgmZLlYpfMhyyz86RKb8ZawBKmIQcpYi/AQWcf74WZ/UK+5UbiQQyITc0ynfWb/PNE4JQ8ANK
 ZqrnZaBeFJd40arxtm+PWwpTKYfiWzIvAMGk0+yWr1FNyyv5feVlngLORo28Xyf77WLO+6JjHel
 FXhLXgzTYbBYTf99lZ+3lXRliBjf5FDfv2QlCvj8Y0Z1SZGhZLrKTUju0PIkdT1L7MEdxr5P3q9
 P/T7OL4TVXFYH7RJit2Ta6jZ9/OxqKwWuRaE2dLOkdVfjZ08xz1v0fMgKnQpzWO6/PVpen79SEU
 3LGUon71Id+scWDxnOgl7ozvvTfNje3VXA7Ci79kt3ES0oRlhPgSPFLogpbcxObqBjbSKE4Oz5M
 TZqRH1i3WwOmHpMXRPEUgFT6lArIMd60hRJVPDG0W5rl2kdx0TjIKYgZluhs5QAxExF5hJ2OuDh
 AKJYpWiEik9qcQm6gzZ/yaUhzPMqSq6Rw6gS/GRRGvCxS6lihylZerWOKxbB4O+mSOJ+b0gr010
 PynyVOrL7eMxt8LG8UVtyugMEBr1olZeuiDedqcg9K0pPbRUVnUoIVOvTgvai3TUtpAesVrwaiH
 lLLFrMAecG74g/Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x100 was
copied from older DTS, but it grew since then.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Cc: stable@vger.kernel.org
Fixes: 96ce9227fdbc ("arm64: dts: qcom: sm6115: Add remoteproc nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
New patch
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 9b23534c456bde8c400cc331e847f0f84ae0b74a..e5ebe7c7e87fcb3ab87284a2ec8fe88567f6cd70 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -2027,7 +2027,7 @@ dispcc: clock-controller@5f00000 {
 
 		remoteproc_mpss: remoteproc@6080000 {
 			compatible = "qcom,sm6115-mpss-pas";
-			reg = <0x0 0x06080000 0x0 0x100>;
+			reg = <0x0 0x06080000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 307 IRQ_TYPE_EDGE_RISING>,
 					      <&modem_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


