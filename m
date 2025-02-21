Return-Path: <devicetree+bounces-149403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B32DBA3F584
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C92A188A3BD
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 13:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E62B20E6E8;
	Fri, 21 Feb 2025 13:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DxGCo9oh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C3920E327
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740143235; cv=none; b=GbhsJdCZKzYx3G7V6+uGkEIsDrQICi9mHs3hZ0mR2oMAnzEBv+YD/dLBnrS6YxBfpWoKF0v8nOrkWFfvK9JujaCh4yWrWMsvk+eoQKoqrRZNmJvf8BYQkKU14rxbFTC5LWW3CPS18OO8aG6PSyATu4h2XvxlViRo+92xTzkWgsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740143235; c=relaxed/simple;
	bh=Wuq8PZZqTZmX+Wwqcw5TIBdEiOB/HRphCwfmFoMd2sA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dUMqFRe0XZ6gvfo6WDY1aKe+9eWkNRJlYAV/5rzNpebpZ0vtrGurAUkf9xHIy4P+uPKChPTD3n0OB0gyaWCqU55fCKmu9elHeo6SHYGUFXWfemmPVBCaTBJA0+DZQ39LlzHuW6o8apsatYyNdnZxOUNWQAZ3H2apUmI27JGVi10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DxGCo9oh; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-abba1b74586so316136766b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 05:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740143231; x=1740748031; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J2YtPHkWiqQRxoGi/rdnAG9zWLBdEYwphfKc3zJwkgc=;
        b=DxGCo9oh1mPhg3jD1Co0IFQ+sQtK1LqGv5AhkON1RP9il2E3VCQbCPp1hsyvHqtpGn
         8O5YykFcq5VbeHVUQsXJ5pkHNqxLKpzmeCfu/DtmqOoNS0blB9MyOMdQoGDh1kQ+BDxl
         yP4P4N3PZTQ6/LlORZjqZHFhMidaG7GZctDih7HrcckKgVLfbQxQaGO41EZKAltKmxDX
         Siz0h17xi7yRr5ULUOn/fMXXyCydbEZRZ/WwZmn5LsJzVSDJdpspYUf8icHJ3jkSJW6M
         VvhiP07Jvadn2W/X0wsIc0h+gwTPS8wY7rsa5yYwDGPHDwIvjydHmqpRiZ/L2h+d3CUH
         W4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740143231; x=1740748031;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2YtPHkWiqQRxoGi/rdnAG9zWLBdEYwphfKc3zJwkgc=;
        b=ZP6mfGNTiAiJRPZxJiEAa7sxbhYiTsvvQowOKl+49bKp1OlqJdmiYq9iwZWL1P4hzx
         n2Ibs9t2InWnNh4S3MIqf8RrGBVtNsHn8J5gIiCyRHe18JR9cZWWwZ/ImTSdEeV/F0jP
         uJUfbl/lSkk1MRlebNJDv7ItwShjA4zhfT9XJpu29wfuR3GCXxs0XF0R4PyPSZaYw54u
         tkaUO5RixaLJd4N5MuGqaASYuYnGJrqlTm5sm/gLx9s5SlZrkg51CQoamCHSBtEo4JRj
         rrNMv/6v7v64F1R0tIJBJReDfxuqbYNCNv3r6KMSSnyixB4hXUYixZoQoQ5g5JsBzoLw
         INng==
X-Forwarded-Encrypted: i=1; AJvYcCUCiPn43XgfAldaWO9wMBV5egRmiQiyEY51N0gwXOxXG7OXAwsnju9ixKdmqLOcQoeXSEH9svZm598y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfu1kFi0cwfB7y8HmmVNiOJXz8wfAztELcsn8x8JJHptWGuP1P
	vRNqj1St40ENR5L/aEJOx3xb1dhjT36Iwk8IXityA8F9igY1e/QvpN5PAwBl3pc=
X-Gm-Gg: ASbGncsJAkER9L2NHEQN4Y8841dKHHlKh2LEgv3Hl86fIhw5QRa2wLUEgKaG3/Eh2aA
	GEn3MVQJW7s5hlFmMofUNshYzuFLB8NT3XVgN2NMYY9uQSv8o89xmq5UtIMhIcFsjE0eb7B7NBq
	xLHr58hfArvfUdeQ+blxKdhl/LPhWb9YEQdPOE3WzMvT3922Wn2ydSpZrbmlkptM1/Mph4KFoMA
	WNhzt4lyD74s1HmrXdlKoCYpuInfmS+95wsJCB77G9KERuAZEIBYwMqkkqucV3GVeFANsTv6q0R
	A267yiRMePs89LWyfO+Lbx5S
X-Google-Smtp-Source: AGHT+IHdJRh7VHfi6YJp00w6m/VTpkjx4C8wPXol1hyTtGE08K0yf46cIn67ahIdjvnZFNPq3S7ylg==
X-Received: by 2002:a17:907:c2a:b0:aa6:5eae:7ece with SMTP id a640c23a62f3a-abc09c0a5bdmr293895566b.43.1740143231091;
        Fri, 21 Feb 2025 05:07:11 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb7a04f8e6sm1236944366b.177.2025.02.21.05.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 05:07:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 21 Feb 2025 15:07:03 +0200
Subject: [PATCH v2] arm64: dts: qcom: x1e80100: Add crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-x1e80100-crypto-v2-1-413ecf68dcd7@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHZ6uGcC/3WNzQqDMBCEX0X23JRsVKo99T2Kh5AfXSiJbCQok
 ndv6r3Hb5j55oTkmFyCZ3MCu0yJYqigbg2YRYfZCbKVQUnVS4Wt2NENEqUUho91iwIH87DYGdv
 1I9TVys7TfhnfU+WF0hb5uA4y/tL/rowChR9b7a3takm/PhQ0x3vkGaZSyhcHU+fNrwAAAA==
X-Change-ID: 20250213-x1e80100-crypto-18c7d14cd459
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2208; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Wuq8PZZqTZmX+Wwqcw5TIBdEiOB/HRphCwfmFoMd2sA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnuHp84Tk7fzBMY5S0/WNJQgiwVjS7hHLmH8N30
 aH09c9PJGaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ7h6fAAKCRAbX0TJAJUV
 Vij/D/97LKM8GJDdE6GdaC7MoWCBjHqr8im4hqWkGlBzMgpdIl+izdMUvR7u7UfYFff3//AxD90
 eNrJLcA0L8AZ6jzuFEDThwIT8JRp8smjpJoj5BVMjLbCzFEfI8aQ3iVUpQXm4ur7liFBNQLfXtz
 bCvKih/9O104PsgdIqHlQkSE13FPUuZ/R617HeH1Q+X8RYUrxEmk4amrZGEFxeJhF/cYGZ1E/8H
 vStRU8Y4D8n8Y2CnPEOMBxM733UbH3TcT4gYjKfYZGKYTdYf+IdVszCyyL+gxd8KfSQPkHTn28M
 KZrS8PGWdZEU1h1IDjFP//q4EiYHMbHEXCf1/9IY9QZhICXLDzPqRIeth+QkS3X+Cr/6yfIYnZ+
 5uxenP4Ko0vG+0LDoSQqSN81BymdIvylxbmjgupnCcqCkLzLPfF8DE9fmjqgmAgG/RMoX3cWwGs
 Cv+bpUFwOr3zoypfBxCtrtlFKx9lUlgCCQhgZvxS6BszEJqt1SspgjvLfIS7KxQXhquTxzHRKI6
 ik2sWRuNDB2QWvxvu0/Kkwe698jR0kXlUFskoP3wUkr9d0+WjNT05FD7zYSlxoLHe3jwBWmz/ax
 n5y2MRXhQ4BlSnabw/qxVAhf3UxlecOsJ8Qfc/Bq9NuQQBMaUaxH+I8AKMM2Zw+DF5YFXlnEyAy
 RMSYpfS+F9PoABQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On X Elite, there is a crypto engine IP block similar to ones found on
SM8x50 platforms.

Describe the crypto engine and its BAM.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
The dt-binding schema update for the x1e80100 compatible is here
(already picked up):

https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
---
Changes in v2:
- Added EE and channels numbers in BAM node, like Stephan suggested.
- Added v1.7.4 compatible as well.
- Link to v1: https://lore.kernel.org/r/20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432892ceef95daf0335d4cf446357c..71d5f5eed4511030a51fb12e453f603d294080cc 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3708,6 +3708,38 @@ pcie4_phy: phy@1c0e000 {
 			status = "disabled";
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x28000>;
+
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+
+			#dma-cells = <1>;
+
+			iommus = <&apps_smmu 0x480 0>,
+				 <&apps_smmu 0x481 0>;
+
+			qcom,ee = <0>;
+			qcom,num-ees = <7>;
+			num-channels = <30>;
+			qcom,controlled-remotely;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+
+			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "memory";
+
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+
+			iommus = <&apps_smmu 0x480 0>,
+				 <&apps_smmu 0x481 0>;
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0 0x01f40000 0 0x20000>;

---
base-commit: d4b0fd87ff0d4338b259dc79b2b3c6f7e70e8afa
change-id: 20250213-x1e80100-crypto-18c7d14cd459

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


