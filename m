Return-Path: <devicetree+bounces-206289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6345BB2BF42
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:46:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05FB01BA219C
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991AF326D6C;
	Tue, 19 Aug 2025 10:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dYo+8Plh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D82322DAA
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600340; cv=none; b=bJPMLiDAY2KBBkQuhjdgs9/eKW13WaRCj9A1Pn3Dnq5abqqV0SPru+H8fpzAZf2e1E8DxvIEz3ae3LwNhM3xPy/s//tFmSTvQyB/vgmRT3PwqCP2SdBBl2qHBJPsBjKbnnI8gFyGLaJ8zKZgq/TcVZKjuoMsyBwTIhBoadx4gIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600340; c=relaxed/simple;
	bh=CoGnRVCEsryh+FbJQYTFV1jTmW3dnOmX3oR1hC3xB48=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y+mU2OtUtai5rGyzdyqSSTuCANxa7/KIr5S9vLutnPDt0h757KYK9OEQinjlZqryN7gpIkTTi0EsC78CmtofvqXYf8RFqhuzmX9rconLqSyVAIWJIgj6O81Qb47fRCoACVDwgBFpBQHZLvlrMLHM9MtU5mdRIUFw0U5tFT6vcp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dYo+8Plh; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-61a893d5226so459798a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755600334; x=1756205134; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NNWfg+jnR/IJfZkh2W9jbuKIKGtjrjEx/l7JEhyxTVQ=;
        b=dYo+8Plh534a3EXzfPYL0+N/Czr2HKWjO4hiXtpOFMeJwMudwbhoWaVCeqEjhI4TTa
         T10k0JAHQaj5HOFYoMj/rcwEKNetItXqSXU19yH4VgHJmslHKQrkVlzxq2P76VMxy4AX
         7drq5i3EWDrEHkpVW8Pc1a8fRWQKhDNkgaVDUDHZrq+Bui3DWBnBVJzZDqZsT8k3N6v1
         soMtYLj7ePTFjZGvb5BJm2OQs+DpYiWXEwo+mD/MK01aFJ6D+ypdSy8sBr2cNexF1DQY
         Y0v7ZQi31r8nuzbW1IpCkLDz2D6ghuTEzPoYmjlqYP6j2jafwBsYlZX6aRNBMMvfil0d
         831w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755600334; x=1756205134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NNWfg+jnR/IJfZkh2W9jbuKIKGtjrjEx/l7JEhyxTVQ=;
        b=hqwD7R37cn1GEGk0l/+/nW3xk2KIuxkw6J+GcMOdGcLDT/1cZ4euy8ymnBG2ugMP9/
         ESSBOhGwrhet9Fag4BketcZMNYa0wZrbpY3eAIhiEVkhGk5W6w0bHt2gfpwLb7UzFexX
         Ch8U36cejT9/k5raI3LPPcX6iQ04/c1+Y3TGrdTfPpkJmFMbqY/lZozU+MvWeRqo8Rna
         pLeH/vifdyHBh75q5T9xVO4s1pCpl9ThUbidLJ4RHfCNoi1h4mkd6bJVdP3cCqVtXUBJ
         SM2o3vV6Y8/nX9EYBzLFGihqHlfWqSisdOCNNnm/6cu/aJoIuQtyz4zfJnf1Npklbf/Z
         57XQ==
X-Forwarded-Encrypted: i=1; AJvYcCV45+iJFbpcXmOBjqnpBKrnm8D/mDHNZdFO7CD4ZgjcAATARLq+Rifl2WaskDfRQg/BrnwKnRGc2Pbx@vger.kernel.org
X-Gm-Message-State: AOJu0YwpJDCpdJtQUpxmkRf2TKHjmK5kHMkrGAki6jp2EEuVqDoPJ2V1
	0khxMOO2LgXlQhvBKRrI9i9XVdQL7torI/0l4ub6PoA7CsK2KLycufA4uzJ5GlPt1/I=
X-Gm-Gg: ASbGncuqkYftgShls/JUDAXTg+tDxCfiLGtvzDTlbBxYkxz9RoaIOAJBXUTfMa5t9No
	1vhMFEmxb8eXDIv5BgSa2UELmbEczv2o6D0ZhJSv53PwjX+Nq5zzjCiTVpm7FZSYnekyZibPdkK
	B7I1k0Nsuy1aZHcIp97+wQjhZ2eCFwL8m/UoE/4n+l4nepcnSiFSUwntpXaKnDdAkV9lAJX7wRp
	3tX/mT8Gu7RQtd60JHhVJOL0kNx7z8FgDwYkzC4iYxXnhCPpo0oBglAV1eQ6TvN7k6OZlEpeFut
	uZRTWFml7SQ1vKXMCP6Qi7/J3TYlv9iqUZRIzIEBx1mNfliXBjkEj623EiYnfHVU8WbuHixnl4x
	GtqFD6yMz6I5LagUWgPdYzye/YCwsBKJNnXgh8Q==
X-Google-Smtp-Source: AGHT+IEE/a1cKOzDFjQ1Qc8gYfnMR8SKLgI15DshI4v7Whp0lmGCWNGsKtl8WSrbZmbUgtPlX0xdNA==
X-Received: by 2002:a05:6402:5247:b0:618:6615:30df with SMTP id 4fb4d7f45d1cf-61a7e70bb70mr1435647a12.15.1755600334057;
        Tue, 19 Aug 2025 03:45:34 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:db5f:8096:4609:9b24])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757a48e2sm1469787a12.40.2025.08.19.03.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:45:33 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 19 Aug 2025 12:45:21 +0200
Subject: [PATCH 2/4] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Fix
 swapped USB MP repeaters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-x1e80100-fix-usb-mp-repeaters-v1-2-0f8c186458d3@linaro.org>
References: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
In-Reply-To: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

The &eusb3_repeater belongs to the first port of the USB MP controller and
the &eusb6_repeater belongs to the second. This is obvious if one looks at
e.g. the CRD or the Dell XPS where only the second port of the USB MP is
used: They only have the &eusb6_repeater and already specify it for the
&usb_mp_hsphy1.

Swap them to set the correct repeater for each of the USB ports.

Fixes: ffbf3a8be766 ("arm64: dts: qcom: x1e78100-t14s: Enable support for both Type-A USB ports")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4cf61c2a34e31233b1adc93332bcabef22de3f86..e04df29a8853797c0e36cb60ebc2fb3161a41d30 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -1543,7 +1543,7 @@ &usb_mp_hsphy0 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb6_repeater>;
+	phys = <&eusb3_repeater>;
 
 	status = "okay";
 };
@@ -1552,7 +1552,7 @@ &usb_mp_hsphy1 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb3_repeater>;
+	phys = <&eusb6_repeater>;
 
 	status = "okay";
 };

-- 
2.50.1


