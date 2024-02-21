Return-Path: <devicetree+bounces-44157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 941DC85CF0C
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D27528246E
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5143EA96;
	Wed, 21 Feb 2024 03:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4o8bKZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42123EA8B
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486979; cv=none; b=WqWmFkvcYS6nnI51Iw/eHVdZy+DprrNrsf1p0agzkmcpViSWnZ5ie0IIzaTKc1Re1R9MUTuN5OyefJbSND2dpF7kST+f+HpWoFZBlk8ljs0ejo4lukXCyewIx3/ZW2TQHHkdmupF8hQkXcMxTdmr8SA8/1fz3E7+R1txQzWKcf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486979; c=relaxed/simple;
	bh=v0NanrCHtPUCEUAvQdovAHbjQxA9Yuc4bxKGmsuGhc8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EeU9JLKcCGTHHlRv+nBXb0wvohrb7VKlkZ1xwgRYs2AHqORarzN7Bw6VKcZ2p9OslcUuom9tWX/yDNzBss8Y9fzAbYyZsB+2oK0UVAbvHeoR+2ZmNQaBBHa5oE/KE601it/3bywlkEBbyUBL+iQWsy15LpIKgARhLsE+0Xh0R7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V4o8bKZS; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6da4a923b1bso5232182b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486977; x=1709091777; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VNXd84IFJbhmOHdXNTbZBZOPnufOfmzRvPaXP24uTLs=;
        b=V4o8bKZSJSZU2xlRFOeRe+IZs0zpUN3V81rQbD98XnHk0Au9QpXzmVBAIkPqMpPAL0
         YqcwYcfH+DvQRS4OtCjdc+jyO2LijT0ewnl/XttqWXumrJbxQYpj0IpeI/bS4xNTHWNM
         PlwYgMgn3jSMFDaj3dcfMa4yNjBX0bonrnhtTKNhht1d1kqCxFPVfiPC1v+nztZJlH17
         4HZilWsiSWGrETZMsNZI6Hu7EeCFaeAdK8PxNjKNZY2H4LqQdJxn/uon6uG2q0x/vZwn
         mgrIPrtSoKa3QNOgGQmddO7vJZBLV05MYa3wQIb0sS0Ae0vL2V2VHA1jqmvFDE/q5D5g
         iSEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486977; x=1709091777;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VNXd84IFJbhmOHdXNTbZBZOPnufOfmzRvPaXP24uTLs=;
        b=cvspeuKPivtMTNUDPC/cMqSsUKrjM4RX/WtQcYlkS39qp3VdzRlbBTzNdZTZPeWl2T
         XXpmaM/J4LRU/DyFd/MFmXBEqOvr33d2uQrzvMit7GiOd7iFN5ybvNquBJ+OtjK8U2/l
         gZKzMgdmpEfQS/xLo+a2xMVDq9fucmnUAmpM5yQap5kPnclYPPKtbzewxBAtiosEKxOI
         6kX3BNwQUpS1IwcCfnammD1vZLNeFH0l6j3954tRx9Jwli97EYLf1sEU3lXa8++ZT40b
         3afmZroGOu8VgYHhsa/gNJfHaBWSkl4npoXT4JO53wWlnTc1ggi2FZLH/zTx6pzBuj21
         UzAg==
X-Forwarded-Encrypted: i=1; AJvYcCV0JfdNG7ZwvgnKS1cVum1T/CjS6ARvc/qQpAVWdN1OvhoQWxaHs9oRDE+lcKt2uOoF/gSlT4bb52/QZJgrl54GHz3jnoky4MCU1w==
X-Gm-Message-State: AOJu0Yy1I9HkdLUKX6WpFvuEkRDCucrf1En/hIvuPuyvvZcGYraZTmvP
	UP+iIXR3sokrXUt2cKBwdbl49URyujxcnGSRRWwq5KY4E5rKqv1vkpwGyBMQPg==
X-Google-Smtp-Source: AGHT+IHjcDwZCbB1jFvmn+LlZxXAUGpkCGy8INEhx2LahEFD15AwObMhXhld5sXNlknu6mogBKQBfQ==
X-Received: by 2002:a05:6a00:4fd1:b0:6e0:f6ed:cf19 with SMTP id le17-20020a056a004fd100b006e0f6edcf19mr17965602pfb.18.1708486977102;
        Tue, 20 Feb 2024 19:42:57 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:12:00 +0530
Subject: [PATCH 14/21] arm64: dts: qcom: msm8996: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-14-6c6df0f9450d@linaro.org>
References: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
In-Reply-To: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1567;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=v0NanrCHtPUCEUAvQdovAHbjQxA9Yuc4bxKGmsuGhc8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEI8VDFXBQaqdwVWhl8JNsDSbjO9PYWlQm4P
 yQVfsbj8Y6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxCAAKCRBVnxHm/pHO
 9Sj4B/9zzpH91kAZBS39fhvKSAaU+3NFzzblxZl4hrI12T4eG4lhYaE33YnB2aTrqqlQ9I3l2Q5
 OAMvAi10kI9rKs2CGPAO1/s+juix0dMMtRtHeWcbLBIYcq/QE7kG46lC3po4Bb9fIIFUqeqWve4
 uv2RgBP6pv5fSl2Dpc0Lhak14CF85xYAgAfMQj7CINNrw+PU6DcploLgBMxr6Bv0z1e86pjDBIm
 O6q4A53O2xINBPovyQBfIwwkMiypaiJ8tZML4fsDP9W0u1SfuVQoKrJyeRizsODAvcCMnCMB/x6
 9Tr3+agGzVRliIPXH3QZ9E5RbEj8XgH4N5EhtRNCDfelIEVt
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 8d41ed261adf..cd28b368ebb6 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1956,6 +1956,16 @@ pcie0: pcie@600000 {
 						"cfg",
 						"bus_master",
 						"bus_slave";
+
+				pcie@0 {
+					device_type = "pci";
+					reg = <0x0 0x0 0x0 0x0 0x0>;
+					bus-range = <0x01 0xff>;
+
+					#address-cells = <3>;
+					#size-cells = <2>;
+					ranges;
+				};
 			};
 
 			pcie1: pcie@608000 {
@@ -2009,6 +2019,16 @@ pcie1: pcie@608000 {
 						"cfg",
 						"bus_master",
 						"bus_slave";
+
+				pcie@0 {
+					device_type = "pci";
+					reg = <0x0 0x0 0x0 0x0 0x0>;
+					bus-range = <0x01 0xff>;
+
+					#address-cells = <3>;
+					#size-cells = <2>;
+					ranges;
+				};
 			};
 
 			pcie2: pcie@610000 {
@@ -2059,6 +2079,16 @@ pcie2: pcie@610000 {
 						"cfg",
 						"bus_master",
 						"bus_slave";
+
+				pcie@0 {
+					device_type = "pci";
+					reg = <0x0 0x0 0x0 0x0 0x0>;
+					bus-range = <0x01 0xff>;
+
+					#address-cells = <3>;
+					#size-cells = <2>;
+					ranges;
+				};
 			};
 		};
 

-- 
2.25.1


