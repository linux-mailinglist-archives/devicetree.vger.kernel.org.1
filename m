Return-Path: <devicetree+bounces-206287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89838B2BF3B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A2E1178B3B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F063322DC6;
	Tue, 19 Aug 2025 10:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l6VjhCHd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DE4322C9C
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600338; cv=none; b=mdBd99Lncge6RAArmGV5UaO1C224E9vIG0HOlNtwMeO9eaHLL4htRLovguaapfOE9elNfyjwTPdKNhoRotGQQOFq9MlNc60rPLcosTGLXziYD4uNeV+GuOQnyeGeMPPi3u9o5amdu1aw/iN4Czm2kD4bwjkFMKl2MfpOx/Wt1oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600338; c=relaxed/simple;
	bh=1sd/ouPhwY994V2JgIdwhDUDC7tKLXQbXK+ZAjrzaC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oLXfc+rj0IlaKPxNbpWcYTG0INiFvQY6tgAmGBYKhmrjpv+oBMBWrDAdE8wn/ieklClc2B0cU3n/6IjfwXQxRQWQ9On15KmbsBDt45I9ANsLCANWZ3oHHuwnmUR+ajkwD4mv7eSlFI8Vxqz/G6PopZKtikQ126z0loSqEMEMqwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l6VjhCHd; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6188b7532f3so9251332a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755600335; x=1756205135; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0xeIRINnU2V4r2y5NX1BVLBAPpQQEZ1x9/pnnUXPbAU=;
        b=l6VjhCHdZC9bksGfTkdQ/6iUxsMhe8I72v4TDB5orJgVUSwsUSIwEf96uQ7PLlphiI
         Qp0aJ8FwRXN+B7IQnq4qwB5B4/CRQuyW4FRf0YMGcyq8osw8xuQqnLD4Fz+12bprZ7Yv
         1f3CoWnglMojyQ1cpeCBBi+l7x14Cl9cnCJl5SVO6vPzC+mNSaZCx+dEbAwQI+AUOh8x
         4m7UAcBddrkAb/VmqtF9ZTsKhUwOMxmEwYWE1eb4VuUCejX+rU2XusiR0UKPrCBBBiar
         Vu96SVJhqPmuaywwkOsTXsdEWNY6w1kx3TJ2nQEz9QqyzuMPr6lyHe4IERv3FLYktZ6j
         UQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755600335; x=1756205135;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0xeIRINnU2V4r2y5NX1BVLBAPpQQEZ1x9/pnnUXPbAU=;
        b=NApoyYM6XamMAvkjnsXePZg2v7vDR7IdpwZoTWbobTr6HrHRXrn9hg48ostr1DsViO
         MwDRIFfFlT4t6Jiu896wb6+vWlAod0gj/DeoKTujz/c3GaEzhRuWPwgIjg7wBB9/Dz9B
         OXDAhKzqrb8WJAIhYZj2WhtTCn1Yi4IyFCwgdFKnLorBoPIEBcSm3FrGIx1NYDJ/E+VB
         Kf08xU4BCi5a94+QPwkqZH2UXrbPxV1PVC5CddJV7/AkrIZkcWpvidNHQje++0zScQPu
         AYJkXwgt+weropGJs58tCeHEMHYNyni3aZkbPKMH39Gtk74nxDLR/ZLstV4MkzrDslT5
         Vvhw==
X-Forwarded-Encrypted: i=1; AJvYcCW/9/9sD+VwsEq180BtM7s4FqP47ivkp2LWWv5j8fkwB4F+8Tq7eHRrha33Lx1MLGVxp85IO2X48qCl@vger.kernel.org
X-Gm-Message-State: AOJu0YweU5czQS4S85WfOxsylgqrNXh23ufOy52C0R5yhpraBxe+2Aui
	EpRw2J2RCwKfH/I9QerdLOqzeB0lMcj28tw2wBue/Xq4fD53/Lb2oQVN75vLLZsY1ic=
X-Gm-Gg: ASbGnct832lRf8K8fcHvvXPd2QPMpkiL6IcWYpobT+JDp2BcRZuMyOHTo5La0zMXIQy
	FzsSlMpcha+0wmbLvyQrYOIQbXRz6w8ZsOneN1j7veePW5DiSZGHM28p3tRO2pety9gWgDB1hlX
	y7eWTNAuyfoQNCvj5svIZT5CfbQA1vjIaUulqYdQ6Hd5Sc9Z5FKAN5iWE3stPRFu9U2JRaKO9yB
	Wc79JXRqDIDUoV9AJVG6XC5w9D2AW1/4EStHTYWqmubGQnF+QR4JTH/4xSaLJbFP75OymciSxi5
	J8Hz/S4idp2y4qS9Y4JqtSHrIWveoqK/mF9omVbhWrxixCOzCqtZ1ldjqMIXn/hmmVu+7IK5mlp
	ysjyl7ssoUqbatsNANJvK0w5BPDPyno0DTGhUlw==
X-Google-Smtp-Source: AGHT+IFnMjA2JxcB/d7vwACjWOfZsT/t2ar6gA3xAHBBf9g9sMPI2AdWAWOkEAfZFqMDZRqYYdtNaA==
X-Received: by 2002:a05:6402:2683:b0:61a:89aa:8d16 with SMTP id 4fb4d7f45d1cf-61a89aa9104mr499308a12.23.1755600335215;
        Tue, 19 Aug 2025 03:45:35 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:db5f:8096:4609:9b24])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757a48e2sm1469787a12.40.2025.08.19.03.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:45:34 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 19 Aug 2025 12:45:22 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: x1e80100-asus-vivobook-s15: Fix
 swapped USB MP repeaters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-x1e80100-fix-usb-mp-repeaters-v1-3-0f8c186458d3@linaro.org>
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

Fixes: c0c46eea2444 ("arm64: dts: qcom: x1e80100-vivobook-s15: Enable USB-A ports")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
index 62eba17cdc87c088ca471b4cbf5b44af06400fe4..b571e8349d3b378ad2436b86044652db3f16993f 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
@@ -971,7 +971,7 @@ &usb_mp_hsphy0 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb6_repeater>;
+	phys = <&eusb3_repeater>;
 
 	status = "okay";
 };
@@ -980,7 +980,7 @@ &usb_mp_hsphy1 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb3_repeater>;
+	phys = <&eusb6_repeater>;
 
 	status = "okay";
 };

-- 
2.50.1


