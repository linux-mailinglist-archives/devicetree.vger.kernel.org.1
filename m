Return-Path: <devicetree+bounces-208053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8F8B316F0
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:06:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 572A4623778
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED86E2FDC56;
	Fri, 22 Aug 2025 12:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t8eav59l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1634F2FD7B0
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864281; cv=none; b=qX5RqkJgc07ctZW6nc7oVf3tcQSveXloDrrQRpNqluDuMElieJIEjw1nGaxf+13JSRYJTcYgQMZZGIcT4YHkZ5+2jd3dEQgPLTjABcxxuANKYibBeHrBC5WWx6db0+6iF5/4Okq4i8aCkr38lEI4Vq4xSupi/gqoq72Tu2LUcRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864281; c=relaxed/simple;
	bh=YQ+XbFW/8lO2P0B2PZ1HFyUscAH5YzihzpphldOG8og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nEWBA2XQRpRbGbUW/MqUPobY1R+eTM0h6VrpgQYx1jL8vNvdHyu0jfPDosm+4Fo3QN7vFZav0L4ZdANgEP/Ki5K8RyQPXDufQ9ENHOXR4CJce8ibYySrklt7Cr1edZ2KLRozU4PBL7p3uScLXiPK5y/g7lWgH2Mbw3le4sHS588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t8eav59l; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-61c1d397fffso81419a12.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755864277; x=1756469077; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aSHCZyBIl0+Mccuv4ZcmEDnZR30iJO58Wb2y765+r3E=;
        b=t8eav59lhRdPBvbs9PwZgNZ61M5kl6/Sf3uQKNl99D/SXysW2NI6r13IOteCd25gkJ
         ZngqabBgkjEx+KQC6uK8sRTqmod0J6fCGWgyNpkyLrkijsr7aXyjZdRcVZAyGaHYg2lH
         HFV1N7yBquumz/7vNAaYmacLpWqRGeM6u3vUDDqIuVYLMkUpghtjoDs6TVnI3L6rovkW
         wohKzLbtBJ/OrTpHFToy88ryRwFb2PdThg+wdpfQloT5+tbXRMmjpRzKXJAL0QKYzbNn
         LcZlLilCgPX12X9d3MuK1o6QTCe/I+pv9lkA8AZLRVY7eCsuOdIrKhTU5KZgKI2aNZ68
         /RyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755864277; x=1756469077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aSHCZyBIl0+Mccuv4ZcmEDnZR30iJO58Wb2y765+r3E=;
        b=Cho0hQzAwipGyLVNpx7fg2l+o97ALLKw4iKEmx+ACs95Adv669VwEVUdKXaUtfLf9K
         OcrPKkPB1qput6HHynGMIaw8XKwqKgb1Mkq1W23bvmDvPrJomVkNZVI31IDPs8hQe26C
         ghArt0Q3b99Fxhvk7OoVC7ek/i41MH4IjNkWgdAWIg0EnxCOJSsS7zmznh8BQ/y2V5Bo
         zZP0A5PGKOHqAXfgE1kEfXXAO3XdDPHYUqBu/d+Nhuh/GAehCrRnMDQhu1sF/VyL+8mF
         wp+1mHyH/ic21gezO9Qx52JAN7X0NqCHYlznEcgA6Ev9ycWLIudbRrtVtetuaL0vSBHm
         6Z0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVQfJFq+MqxSHExgg7WILBv5KYDFIKZxRGHhPjJsoa36Ox5YXzDeGn4+8rqKHgDtbem8kzwx3cV7OcH@vger.kernel.org
X-Gm-Message-State: AOJu0YzPT7+pTrtq/etZO4lgiMf6Q3O+Y35xMQ215HwPLquiwEPygnBW
	aw8j6QZTrxg2/DXhSg4tDV6Y//1fYsxx9kTnXRXiy4Er+Rmb0c7Dtm2iMK70+Ex9jms=
X-Gm-Gg: ASbGnctniGKVjPYabFRW1H6GGRYaNKeiJfmMYpyAEmjgmdofTrUcqOh7kvXOoUmC3Ku
	ANuyYE1xckAGwc/mMC7vq+OnUTAKPYiDjwZMwvl3nengUf4OIUiX5GsLea02zG4BsDpvYFFCB5v
	IT0ajzc72PeljzfmudQK4k6vY+eHsNGMYbeig4+bzeibMCjSvNMvAAlnCcD19StPJ5ZGAWS1YVx
	k3HbImhKek/ywqnu8DE9Ofvm9NvnlL9fcUIGSOUKIizaoxPY9WB7sjU7Ft8zPgmPd+9C19aMFn4
	XxZWlIsMKDE258Bqyt6WacMLb9VFOnPkuOXQWsTWPY5hshB8gR11h6VlzhKxMQbR/HK/DgxGW6z
	gbVibBd8LBOwAIqnv3Tt1hHlvqV50QgtGAQMgRVuE4P06t0d0PA==
X-Google-Smtp-Source: AGHT+IH7FGdZmjEraDxJWfBqGYxc6mCVhP9spbLViFtU/+UVheDiGx1G++0yU86YB0yZZqaMU/vXGg==
X-Received: by 2002:a05:6402:358d:b0:615:7ba6:4876 with SMTP id 4fb4d7f45d1cf-61c1b91089cmr1189387a12.8.1755864277308;
        Fri, 22 Aug 2025 05:04:37 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757b9b39sm6690444a12.48.2025.08.22.05.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:04:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 14:04:08 +0200
Subject: [PATCH 08/15] arm64: dts: qcom: sm8250: Add default GIC address
 cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-dts-interrupt-address-cells-v1-8-d54d44b74460@linaro.org>
References: <20250822-dts-interrupt-address-cells-v1-0-d54d44b74460@linaro.org>
In-Reply-To: <20250822-dts-interrupt-address-cells-v1-0-d54d44b74460@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1307;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=YQ+XbFW/8lO2P0B2PZ1HFyUscAH5YzihzpphldOG8og=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqFzB6+297T/mf93jhRCwQIXtm3nL0W3Tb92Kz
 n+zeo6lxoCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhcwQAKCRDBN2bmhouD
 18/9D/9jrbJUeB8CB6+8oMHmTZfSKch32byqduGz4OD0SoHHDHRYeKNOgrppcVGYsa9WgjKSGOI
 XfbM0LqCxV9giR3xEadd1MQg1RAX9yDqVCZYLgWi1AKMTHxQLn2tsNtJ59iYa8J9SmRLnEPovBF
 VwvscXXQO+P0P9QYyQ77h+BWDumYeN5tFXMUV6zhkmYXqg6NQXdp/FGavj/bqfKwd3tXOkZMF0R
 4zQCf0oY24DzJD2qMvTlAcPdRDfaeU+uUyMilTzSJnYSC9b2uUV+YouGQ84Fqat65S5eInyqj4C
 rbLzXca3sVvVUMraUTBB68NliCbfbvbm+OzhL/pr4K0ZnuQWvWeEDrqQPwbmStPO+DOrTezySsZ
 BOI5NLHp7CUpkCx92wM1lNmM2xyx/TXwSdTCRKohxXOOKbKVQMeMG4i3+i6+nXgyU3T74Irvueh
 X07Bmbujm6Fo4a7m3EWvv8Zg4YvcCQJrB7gUwgoSvT3sNu8kLa4E7WR7mukVVHoBpQjy3RnOMUe
 EUsoMgGwtnqTR4zOHR2nc7B0osyVmhHPEZbM2PTBv+0z6s/5E1bgHK2pTR8piWgCMCQ1rvmmr4j
 PUiTtngP548H6Efhbns3d7Ien9g8ifVqXYdl+6vjwe2hLGqIGZOqJqZXBghdlUhsyyXLQs2iGhB
 tpjteK1B0l7r5bA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  sm8250.dtsi:2166.4-2169.30: Warning (interrupt_map): /soc@0/pcie@1c00000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/interrupt-controller@17a00000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 244339cfbed5c32708c282de18f5655535e2ff45..8e0eb802d68e9670a10cd6e227bd1eccbd872866 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -6084,6 +6084,7 @@ compute-cb@5 {
 
 		intc: interrupt-controller@17a00000 {
 			compatible = "arm,gic-v3";
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			reg = <0x0 0x17a00000 0x0 0x10000>,     /* GICD */

-- 
2.48.1


