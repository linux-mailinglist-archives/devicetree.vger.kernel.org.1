Return-Path: <devicetree+bounces-130830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 865A59F0FDF
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 381D62828B7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6791EE7DF;
	Fri, 13 Dec 2024 14:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KGQqWCTL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507DD1EC4F4
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101686; cv=none; b=k8CwvPUtP476/IqOXarjb1WzTJO22TYPDPa0vLeP3HkjO9609fe23WslVA5zZlbUlkS89Rt8Oaah9NrpZX4Gvs+8I3cMF7peYKnV+ypKlxFVBT9QehUYYFJESU7QBjJYE1D5IFFG2L2jsRmtY9dY2fdhJFxMOEF2yzJicrpBWlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101686; c=relaxed/simple;
	bh=6L6UUyAwgDA4CBLJr3uOEmc4d0D1VithofP9AFdOXyc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cWlQE8p6zZYsYTKAOIf2905fUHHUuIkexVRMFa52ApJi2aQdKH/Ib5N3mQZcdDGYlA7pzt0P+XLGUcoZIEJ9oaNLCjmptbizOuymq4zg+7PUO9zKmWXBzTYn0Pt5x/h2ceqtNdkCEpjnCobxBuBCGoCUzmkDCZSrHRXGRk5Q+dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KGQqWCTL; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4363298fff2so470115e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101682; x=1734706482; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H6VUGDG0KdT6nSzQ5nmuo+Ya6zVTtbkI9Jh5XSKwDY4=;
        b=KGQqWCTLQWthyEo7l7gBur0p5k3Hs0mtqdM062kC1QfyYkSPefZ37yYAE1yGYm2DM3
         h2pqpagnljcsEgbrAPh8PBJpoBDwD2mUcGRXBzBSJwlx360Wv1iE5YQkUDL5ADg4nEo+
         9daOrYDsL/Ro/PhJabZSBr8tyYZczGSIPK+fVXZxiXnSiO00GVXMXzAQlv8EZjPm1s52
         HEduUPipl9BibVj/DbR9ZWewePTsjiei2LRMUXHDAhCAoPwCuDxFU+Frzun9CIoqRGkv
         ZFpWQjIud2Wibget/IUnXgA932gkLoUcbl6xTRIjCEGYpJjxFEEWZ6ek+mQ0p5P6sR40
         wQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101682; x=1734706482;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H6VUGDG0KdT6nSzQ5nmuo+Ya6zVTtbkI9Jh5XSKwDY4=;
        b=nlO+1xV2mTZbBdhfqfRkT7Ptg6XmXIlE5ZyyRvv0tjtkYlZw5KXNV1SScNV6PtfrOm
         AxOi6Do58jfLDeAZAAs9R3MNGyxTdywmNDJW0uwpxAb4reTYRdplVsWce4nwxvqZ7z3w
         /CvPcTu2NDQ4lGtcWeS6QCo0fLZzBUOxotiTTAac7qAi8XoEmwyYCn0x3DAIqBJ6BShF
         Z1neqPVElUkFUGAS5TGCoLpkBev8zDXmm3V7wuKfAogzdAdJ2Db0OLpNwjw/UVqOnkYy
         eTg+yt+uVKeKaQeW9w+f48oplGVLmFS28IrtlzhVP/sSTgJrlM0nI9t3VoDCsC6TEDsy
         1Pfg==
X-Forwarded-Encrypted: i=1; AJvYcCXOTRqf65hXFAW0OpzIA+SVoYX09H/14bNDKrmOsZQ4PklcKO+5sMPAHWw/v0MprVu7b+jltzmfWmXn@vger.kernel.org
X-Gm-Message-State: AOJu0YwDA7A8DHLHjlZlq6ChpY//KrhTZiiFrevGKqYJx2Kh8uiqDnPw
	D0uHDQOhZnHrPB/EQgdhyuxkqymXw8+mJfNBLtjUQ7tTIglxHtzipsT/31mf8Os=
X-Gm-Gg: ASbGncufQIe0mDRTDEBB/GF0msriIjhqPzT2mpXsCIgPtv9ALKrI4GqP7N6EdWFhM5h
	2z15uzsdtTBQMN075qTh+KwlBR0Zazq7C9041KwQmCN10PtbM74+jt8iDJVlV5U3JiUJzLkBWUW
	lC+vGZIoWXFkviEoMdlXiR+f43T90lgyiYmvXJ//K3k2G2nkb8Ahqe7UKpcIsT6rYniB/kiT4Yb
	f3wJSW+2KxPb4pVhWVH7mQvL1LRdOcEtc2GrN6q002Dn9mRqVhzypDcqKCCK0Dc0Cb3UZem
X-Google-Smtp-Source: AGHT+IFoJcMwVL+uPv+yp4TgLtXxlgd3qNkXNVm3KAKGRMknZ5xLmzuBxiHvIQ5b8+Gc1SDhG7gXqw==
X-Received: by 2002:a05:600c:35c6:b0:434:a30b:5433 with SMTP id 5b1f17b1804b1-4362aa9f021mr9600515e9.5.1734101682515;
        Fri, 13 Dec 2024 06:54:42 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:01 +0100
Subject: [PATCH v3 12/23] arm64: dts: qcom: sm8650: Fix MPSS memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-12-2e0036fccd8d@linaro.org>
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
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1400;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6L6UUyAwgDA4CBLJr3uOEmc4d0D1VithofP9AFdOXyc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqR4LCV1dpMckRSGvsASPaIw4ddINTN4h1Mu
 Bhvntq1c+CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKkQAKCRDBN2bmhouD
 1/KlD/0ZXPxq/nDz8WNFnHj60qVRUdOc49OEydAESwgO+wXxlwSPlxPnfmTgi7agHygUUvRCahh
 52zvXT6zz825lmpzIyRMgpk72vBbHSaXlwQ/T4XelknMSprY7ZzAZa3wweNk7DBkDSNNMwCP5Qt
 f6HklMBswMf7qVikAgznxhcvEwVou4GIgYoZmcZqF4iSo07Ndg5xyNoCY/RRMQFHhPiwDiySHhj
 lCCMcKQ0XN+EOgiToMQ2tGSeGJbz1/0E30hEUohsoEdyPd5b1EcTnJahvLBLCoLCwaAcxW/tTAi
 5DAvjlxE0Svwww5vpqgs1fltdP+b7vXRcrA09rWIvrOTP5qHz4vCzt2hgxH4XKPmv519RdPZxlj
 q6MRGrqZYmnDLyADstzAqXObyDPcqNe9xQjkp0xy8Rl+5zw1/+p/DuBsqn7ORrK6AzseUfkeUoM
 Pf0HlTYC6CIBI4JhET9bgwfSVo4wGoEeRlEl3cjQFmcMySEgAJ6FazlcTQF7DyQIJc1EipoY4el
 82rkv6sGKP4aBfHuIOjkGwzQM737TabK1ZVZm1jO66dsT+nKzBHVvLCib2nMfILI4eJ/GFgof/7
 UHiSSav4OW0O5UKesJplVOvk8vDmhkLdt/vx0OxwBNIChjhfUqjGy77p9Fk7tyMFGc1UBcsvs3L
 O1h8C1bLslEYbGQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
copied from older DTS, but it grew since then.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Cc: stable@vger.kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 1d935bcdcb2eee7b56e0a1f71c303a54d870e672..6ae81c191fae8f1788adb399a364886d3fc2dfdb 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2853,7 +2853,7 @@ ipa: ipa@3f40000 {
 
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8650-mpss-pas";
-			reg = <0 0x04080000 0 0x4040>;
+			reg = <0x0 0x04080000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


