Return-Path: <devicetree+bounces-124968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6249DA69F
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87946B2A13D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 382B51EF0B4;
	Wed, 27 Nov 2024 11:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P1Z0kSbo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91711EE008
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705307; cv=none; b=IclEbLHIfLVHItqkQE86fvGGhKWRdR3j2se4/pINz/vIMeLY/n4F9IChpDrXvnMXZUXF6+WKs6ZOMQ9hh40FybTqY3CC7BfqcB4e7MVlrel26egfUgOo61LDtFNjYBsRTDkx+Klcz1ZPi97krjP9ppM3F0+nW1dzOqm8mku4yYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705307; c=relaxed/simple;
	bh=Fx6JxYmZAWNFmGBaodns3MA1Cp/zInnAqGQR08vTJZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DL5gqO1s9nXp3ZnzbJZGrfqqP5Q28LSNWVNozq3Mw62KLQwnYS2euxyiXjuLr10YrV6oKzaGRjLiJf2mWCVPw7rR7pu34I0vpq8enVexGGR6aVHpfGrMIq6Fmm72nwVuGybC4CKx71Mz9nThY0X66JV+YCUQjIEq+23wY3d/Z/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P1Z0kSbo; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5cfcb7183deso1197896a12.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705303; x=1733310103; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HOjDTz5quesA/57iR2U9/Cgnc4v0qy5hefL79EGSNfA=;
        b=P1Z0kSbo2mZaFm+sR7yUylpf7IO3m/SFtHR3GgHKgAZ5df+7O1HsypqJ6Jq6hVc6e+
         ixwJbebmPt4arP9UlrvR4wfFEucyB3LZji58ZDMeZ5OZ8/qjiRrYFooQLaSgS4N5BzaE
         N2LfQaTRfeDHoru099SXdt9d8nRmwLXFy/9kctIJwGcys5QQdKH7lhHYQG12WJveEpdu
         rvmC07krAEOpp/CjiF3z9mEA1Y8DP/+vtHfKujoTDhxKM22RSv8THMLeJA35YCWc+fG2
         lHd7mKImA6tzGGeSGez10MJl3Si27rKZFoAeOGCV4YThNKjosIui6+/9Wvkvk3lmrCgb
         LJVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705303; x=1733310103;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOjDTz5quesA/57iR2U9/Cgnc4v0qy5hefL79EGSNfA=;
        b=H4KVEdx3UpDRihQjfCcdZgqkwTRfb9t7MsBK9s8cHeDJ2RIqjxLhguUrfze4MwfjJL
         t9dBaJf9YU2P42alxE3mCEgfuVY8c0+DzBotE8YluIpByxRR9yahYMDxyu7x548g8Gbs
         FCBj4RXI1l/cIF+k2rbAMDpihtOdKuRba/MuW6RDJdrPVXhhFe7EkTEDA4vKUBPS9g8o
         ho6/BNFugpsiTAcdFo2D7bltHjZkUWMTXUHi4kzAWqZP84uy+ul+NTecL5j2IoTUiYoh
         oRXiz2RUGj0WkRzmhV4B8cP/aWkOT/EFm4B/33a5epEBJhag8z287FCco6KQ6yRj/akE
         421w==
X-Forwarded-Encrypted: i=1; AJvYcCUm4T/bsirFy+Q0YVoKyPMYQUbxfoEVtbBHCPhmD+3+VmlzacW9/fg1dy8OxrUTarbKwmfUxBnM3qyk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8c+FWa9WNa4s2Wbdt5OJXt1BfEqCzalTJUtCVMQLdDIZxp00T
	UnbXayJcSc6s2m5DsxuhiptqB/LInaAZ+urUFt2sAbNXgabMPoO0gVvlkv5/BMw=
X-Gm-Gg: ASbGnctz5rekBMVmfRV5jT0G+Dtzw5uyHnx42Bb33T3m15CCKWiixYtZvu2Lhfbnvs1
	j4d4Ol3chDFjnIufhpt/3EZAuf85OrDu2eAY9c3Z5f3Vv9PrY9rQo78jw6ziwtyT2CdZLsCODpS
	S+QUEfog+Lve0TfvrjGNh+uFUGlpIC7iVyfELNnP9uEtppt09//IqoLxksNa8W3/hlrK6UkeGfb
	0bawwlmqCeGC3iB5X0NyLDSfl9kHodWgie1NbfwYrQGsP//yXRwUtgZRw1uWxjTpaqKsWxfISEJ
	zWrvnQOn5/17XUQDcmAqh9tbLBbPXW8aKw==
X-Google-Smtp-Source: AGHT+IHB5KUzcTjH16njBBTQ0xCVSadda6wBBW1QR/hMzlosFVnEKcI8ZmV5cmxHoXIIbnCGjXeWgg==
X-Received: by 2002:a17:906:318b:b0:aa5:1cdf:7bfd with SMTP id a640c23a62f3a-aa57fa99a0fmr256898166b.7.1732705302951;
        Wed, 27 Nov 2024 03:01:42 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b339612sm693762966b.84.2024.11.27.03.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:01:42 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 11:01:42 +0000
Subject: [PATCH 4/6] arm64: dts: exynos: gs101: enable
 snps,dis_rxdet_inp3_quirk for DWC3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-dts-v1-4-5222d8508b71@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

This is required for the DWC3 core to reliably detect the connected
phy's Vbus state.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 18d4e7852a1a..ab016fe9b99a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1302,6 +1302,7 @@ usbdrd31_dwc3: usb@0 {
 				interrupts = <GIC_SPI 463 IRQ_TYPE_LEVEL_HIGH 0>;
 				phys = <&usbdrd31_phy 0>, <&usbdrd31_phy 1>;
 				phy-names = "usb2-phy", "usb3-phy";
+				snps,dis_rxdet_inp3_quirk;
 				status = "disabled";
 			};
 		};

-- 
2.47.0.338.g60cca15819-goog


