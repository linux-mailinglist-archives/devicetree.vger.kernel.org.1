Return-Path: <devicetree+bounces-144115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCBAA2CE54
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BB077A58AB
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20E71D90D7;
	Fri,  7 Feb 2025 20:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uRz7ZBIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D511D63E5
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738960895; cv=none; b=jo3AvgrAlSBHw9f/BXasA2ExUD2USI0zbAR3SgbFjCbWRlAen+dgfllLrcmFWRFJaYaceI4ZmygXUiEx1zy5qBOTfaiNBa8WDSmhug8KcxW+1bhMqi2uvbXcjDJwoZV1FjbSRFafmLo7rKvSE6indeEgGftYhLGFz2rw1Qk2/sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738960895; c=relaxed/simple;
	bh=qi1V0XhBkBrxty8uIfZTcLxNTnebQC4tHcL8urIKw8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pdg4EcNg404ntvnyPBnlVCd/MSeUU8l6oNEP6imNSkudVH2NxABcmK1D+tLIZUGPcmca0l+9Q18/MehczgWdtx2ax55LB0NDsEa19OfSa9G6hmYKc5ignOc/o74aO8V0aUz8b4BYjkSPZsRoXeVDrZMMFOd0p+rH37yBt689uRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uRz7ZBIf; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3078fb1fa28so23458421fa.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738960892; x=1739565692; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4GCW5ssE11TCosEFHQR+hT7DqL2XinuXrF8Jh/KlSvs=;
        b=uRz7ZBIfl13I77jO5n3qkcDJbEuxw/QvHahmWrRrre2wNUhVLsJztlA9LYKQL7P/Yh
         2WV6ILffS13z/RyiAa41Mdnk3jDgmqgKqZLVPAecLWfJdHvYiOiH60hOshTz03v6NkVY
         JuT/VlIelZOrBKX/R02AM8O6AGikqFzKw6A+rUtNH+IsXGVn9y6aJbXlZhkS3wxEJyCJ
         o8WL7kEAHRvx/qrC0n+Lcqrqj6nUZashqpgPu3YpIgeH+Wu/t95YNUvB++pZsBGk62Vw
         8E82fkJ9R5e5B77JiiVbd+R88dVezGAgmR8Q6EzStzHHrmyRlab+iYd9quM1h9jyhCPS
         xbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738960892; x=1739565692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4GCW5ssE11TCosEFHQR+hT7DqL2XinuXrF8Jh/KlSvs=;
        b=azDuM8jqtgY+R2zA0JVyrFB0LQ1s634ypTEqztHizU1StijRetb6uQyygFSc/dQ5G2
         vAqktpzl4lvm+8rDyYzaZLIOc7FCeN+qkYdTjCLUAbtyQCwaWbdACn3Yhm3N+nMhJuRy
         Jm8+fBjJv9zRLlYgvsTfocijtLHcZfPt1EiVJA9APecBm8EIdBKEFTdFL9yp6Lz/Wg2a
         bYsEEE8GNuL4VxHKThoBjqlF2BNmkR8OA44j1unwbk4WW1uwQ7euztZwYMmLPWGL4nO4
         /StKWTRq3RRVptXMv5dli3iOrXjZYlMjJo7Mbn7ppGBbXpWelBfaMlE/hQv1El9o0P08
         TH1w==
X-Forwarded-Encrypted: i=1; AJvYcCWjBdTokmmPIqSgcjivo3TdpnBDaeFC3G9hD89sraJMRthoPL1Yl3ElQLJwE6+fY82F7N+dnRxJvBdo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2KAJYiztbXE9ydchDuZI3jTIuVJ9FB/LfL7BbCJaUvdcdDBRO
	qF7OIFzkl4ugG5M0aS6hFsjQzzS1rK4ecu4CftNPCirRgF0OC0A598zIPCwnLgA=
X-Gm-Gg: ASbGncvaXiZd8nUXTH8wYY1voDjeZJV5QWjStAOvw4VOSXnQ6BqLTjPzoYxK4G+RjgC
	nPG0nxOKKzzWzAg3htF1QUlMlv4fMZhkIbtTnJhfhUylb7ZBVaw/YBPrP4vmmuOWSUi4KWmcf3L
	YJuqVeKgNf32vCd+p7BQLcU9+Cb9hzDkuiT4VZFrQ0Yq7ACNVyi4YlZfPDy7NPCfa99OX5zT7j9
	/UxdyYqiBeArk7Mle9zuobQQJ8DhzYbwAy7y4wQmJ1yrAGYsrkyujtSFU1BhNxmkjrvXUb1PAqO
	4MOAAO++EIXat+bznDS5/cA=
X-Google-Smtp-Source: AGHT+IEBrJZCd0Xop4TqN7hbfRaUqlV9yD/Buv5vFYZSETU04EFffkRNpJDvdRhPM0QpF0NR/3WMpQ==
X-Received: by 2002:a2e:b8c3:0:b0:302:17e7:e17e with SMTP id 38308e7fff4ca-307e56249b5mr16057921fa.0.1738960892192;
        Fri, 07 Feb 2025 12:41:32 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de178628sm5343811fa.10.2025.02.07.12.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:41:31 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 07 Feb 2025 22:41:19 +0200
Subject: [PATCH v4 5/6] arm64: dts: qcom: qcm2290: add UART3 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-rb1-bt-v4-5-d810fc8c94a9@linaro.org>
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
In-Reply-To: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1323;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=qi1V0XhBkBrxty8uIfZTcLxNTnebQC4tHcL8urIKw8w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnpm/ujW9HyGLt8g9r8KYeBGvBPzJCLQA6GIBM0
 F5rhO2oy9yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6Zv7gAKCRCLPIo+Aiko
 1aInCACdLbRGZMZ1qluRxcZdmHdIo85b7zTs9sSmlNzHctqHpE1ZjdGHk8cepvMmTCoMuWZpbeu
 rnMO9+8Q0MECLgV7ImZPbDYxudbJySRSDawCTUP1kPPwVVX387tsvK0nkV1M3HOcF9jfWQOEFWL
 Q7gor3l8DABVRtFj2QJoGMSeTVLFubca0mXphiWnN4ZeTFyDBnIq4atPOpRLvKObAKc83zg+4rR
 /Q1kY+mtinwxcxcZFR77ZnjSSn+lkQPy34gayvbKpup6VQwbg8bcCTmmrBVsqM/hiKa1mVTKddu
 6/ree3ZIYjQ4GBQI14QB4ZTJmY7i7ikGs8PjPnijLOl/Nc/j
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On QCM2290-based devices the SE3 is used for the Bluetooth chips. Add
corresponding device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 6e3e57dd02612f3568f07f1e198028413f463c69..30e9bb6c1679aab13c3f3f7f6455f2483b2ba0c5 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1239,6 +1239,21 @@ &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 				status = "disabled";
 			};
 
+			uart3: serial@4a8c000 {
+				compatible = "qcom,geni-uart";
+				reg = <0x0 0x04a8c000 0x0 0x4000>;
+				interrupts = <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&gcc GCC_QUPV3_WRAP0_S3_CLK>;
+				clock-names = "se";
+				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
+						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
+						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+				status = "disabled";
+			};
+
 			i2c4: i2c@4a90000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0x0 0x04a90000 0x0 0x4000>;

-- 
2.39.5


