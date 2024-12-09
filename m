Return-Path: <devicetree+bounces-128604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7CC9E9199
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FAFB1886F1C
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21823224AE7;
	Mon,  9 Dec 2024 11:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lkkjC5Ag"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A127D2236F2
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733742185; cv=none; b=jRGwQS+/23RjW6oC23Lm6hITiKfV1P2bYym2gvGabduQ3jQsF6tFUc9EBAm3E77o/DFR8Vy5nEKWYbA1dPV6D+/6XdjvBAV9iIr1hC1nIDF6hSSVKB61OBbw/YR2qd1ST8ZQKEhABCfNvBebqGxTgg8qgdS9RUmh6ZmA2tZqAUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733742185; c=relaxed/simple;
	bh=4XlWKfnmTuQGxdgudvxQgYEWyzNKQNtSzL8TC+5d//c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vjxlhx1dVWbVTfOlAWxYFR/XAwc1P4Oj5eZxY5UTSTGDenpR5nauE0PZNtQpm+kUBLvGLGICsqLqk+BfyUX4rVjcx+WF+pmC6LkFCiCWOO0zUGGXmNhF5A6aCEOCxejxvVAO51G8Dw9pvxhg6cKsJ/OPrMucaAN/+3HmWPW1VJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lkkjC5Ag; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d3d69e5b63so237658a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733742181; x=1734346981; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iO10RQLOSphsKOuYcR9GWLEZ5zCmIXSgPjuSN5APqZ4=;
        b=lkkjC5Ag0jbUhSERZZmqcC6SWoKL+6PHipm88qHVSAaFLqHsvcWPJ3M2sVsS0sKCCy
         fjpS4fpfx7jUQddduj7lSshrJdJANYLFFbextnyusjZbofihNyFH7cJ65vf1XsW4YTpb
         0oFhM0KdaNCongvn8sJH8C1M7yozQ5AT9QIVWReCAXeOLgBxYGeoqXJQ3Us/HxCbF7tB
         s7exTVhzkw1mtBVWCE2NttU5x0bYhj8FYTbwmY+zwD7QlCTha0jPKhXk4RRPmfPPsj8y
         CAAYIL8bNg7eoKwUFStSgU2mapgPpN0g8ES+9VJkPhk7Ta435FrUDr8JXwvBOb1JZOw7
         PBuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733742181; x=1734346981;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iO10RQLOSphsKOuYcR9GWLEZ5zCmIXSgPjuSN5APqZ4=;
        b=i/Q3mYeCuHxhu0o/I/73HK7xhzd8G6UYp7phrJp7rZ+ueUS2k/8WJEux7o6qBprxRl
         nUXwVQNeMcrKFF4bX4athuZXh8UcnqxXWm1Brc8hxUM7kKsIeSyNvtS78g4+1uGTmEat
         jseDTGQkMEjfLEsBYqMHOhd/10WY/yJgdgEPEOlq44DW3WYT6ZNfV4ud64I1R0KqdDwD
         F+U0QyzSNGKbnGqP7P21NvAWsJVIKVhCRhXdZ8aeGM5Lb7+jfa4trppg83d5uYyxSBUR
         Xj8IB4w/p8nqW/2UCk8AGwrTyLXCTu8wh0M8b2lJPnjMsHkWD3/xw2rny1DwH2EptHWn
         f/gg==
X-Forwarded-Encrypted: i=1; AJvYcCUCt/aqKHru18KapMr9Vf9Hn58i2BGjndZ4VfiZ850dn1en4rzyCLkvfWAAnxUjtRtw/4b7Zu0ik1s3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdbac76Ov6xgdCTLzw39qf5xvYYxv3hKm0IYExeCMOY0RNfcZ9
	1CN/XIEFMy9muFIAHR1/3+QtHXSV7GKbfDZ6wjzMA4nDN9nFzAWe6e1BgVUl/xM=
X-Gm-Gg: ASbGncu4SSk9sSfoexEeZxW4a4JQIgLovKM0sb04UZxc7oSG3Eo5wDsxss0ox0Hbdph
	zrxNa1T9T51RC/g48D86jW4fxCP2yjFgk60MHBt6nmtwjGTqcSVH2oR/gUFGzxdEAPg1SC3w9wi
	2+lRAQEeRNhmU4nLdkvZNRN1nYJdhjmiidBM4s1YlNOtA/muQdPKgVVXFsOoBI2vpfr3cxdOQhu
	YUKWN/tGDwb7Xt4Aq2C8KeBkmYpKzJ0dIlkuADjL2u3eV7WkroXCpnZdsY2cGNaJry0ZQ==
X-Google-Smtp-Source: AGHT+IGTKUyVMkZZQjm0ZGOlK69kN2hUTOh5jSmXUGkwEm7ZVU+d77oHHis3027HKrrb7SAar2BPUA==
X-Received: by 2002:a05:6402:3582:b0:5d0:ccec:8518 with SMTP id 4fb4d7f45d1cf-5d3be7e0602mr3804349a12.8.1733742180996;
        Mon, 09 Dec 2024 03:03:00 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3dd4f641bsm3348818a12.51.2024.12.09.03.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:03:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 12:02:23 +0100
Subject: [PATCH RFT v2 18/19] arm64: dts: qcom: sm6375: Fix CDSP memory
 base and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-dts-qcom-cdsp-mpss-base-address-v2-18-d85a3bd5cced@linaro.org>
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1366;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=4XlWKfnmTuQGxdgudvxQgYEWyzNKQNtSzL8TC+5d//c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnVs5AH4n+BcnC5uSC4tp5h4tTcw6PTtNt2DFg8
 xY8XPun31mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1bOQAAKCRDBN2bmhouD
 14JZD/9j/zwkn0KuAfwaXlC59qX9Q/IGsAyn1FEfTh7iv68YR2FICp0Is0WL6Q7cFo+LdfxcSy7
 lr+IibYVGUr1NTc7utk+7Aie7byNZkE/2TRNoeNEzv8BojV4WMoGedtBZ9qDX5XWzTS2gt5dtux
 jnitLKQZej0W33l636WyfkleIneFFNwLKNZFloWFk1nADB+BLd8wgrm02leFfO3zV+t60e5htz9
 38TtYKCwNPKc+N4n8vyCrGILG82+h/EPjcjc1FlgCXqP3S9DvPHPdcfuspLpO/ar7TckKmSG2e8
 8h5IZUSIrpCvLdGsW8gH4qmB9eCDx6npULo4XmqOgJGolJz1wZ3kJqBq0oU1MVvtVd7UvzmXwOJ
 r6cJdd71dpuGjQltHvgsxDDo4UiroG40UYGQcgn2Ishh24CtKLZ1aU9Px8k6vmMuFPGWWbmWlVi
 ET+IP8cRc+f2TgU6Bp1lXRsPWymuy9vR8brFwTGjYpW0wOT1gd13abqeyJl9MWBC5Iif7hf0Puk
 CeiXk3w49M8HonoX50t0rJesXJDE5PmKx3NZD79Y5U/UC3HQLIPPfmJVtOnAK1X+GXOdtMGUYl+
 F8XENCaJLDUZpdTAP0/LhxULwfyieRYfId593EyFabDwv+8GkmsZ9FXL+NJAIt4G/uF+eG4grQE
 ImUqaVNhrUyQEiA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in CDSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0b30_0000 with length of 0x10000.

0x0b00_0000, value used so far, is the main region of CDSP.

Correct the base address and length, which should have no functional
impact on Linux users, because PAS loader does not use this address
space at all.

Fixes: fe6fd26aeddf ("arm64: dts: qcom: sm6375: Add ADSP&CDSP")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 613319021238a1fec44660cd9740a980edeb3f10..bb6511cb451b1c45ed2669f208fe3ed00848b481 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -1595,9 +1595,9 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
-		remoteproc_cdsp: remoteproc@b000000 {
+		remoteproc_cdsp: remoteproc@b300000 {
 			compatible = "qcom,sm6375-cdsp-pas";
-			reg = <0x0 0x0b000000 0x0 0x100000>;
+			reg = <0x0 0x0b300000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 265 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


