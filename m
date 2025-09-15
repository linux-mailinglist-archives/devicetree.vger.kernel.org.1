Return-Path: <devicetree+bounces-217330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F568B57585
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 238A73BE2B0
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E76A2FB627;
	Mon, 15 Sep 2025 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E65XAi60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E442FB0B4
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930793; cv=none; b=Ii5Yps4h5ecwrJtDjtUCKey2y4m7puN4pKzr5HKY3B92gmIUlJPLZJN2FYTBk9/Gxh6VMFu5aU/+0uiECD/R2OCrxveyzHfClYfRACnOIHrZdn5en68Z/j7sRYxohH+W8Tu/VG0p/dKbGZe/GXd4rq4QjT89eJWYbOAnZWF3N58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930793; c=relaxed/simple;
	bh=MDfCdJ5kvasHFOiBfeJtUTsAbDg5HADtacgIr04WlG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VS/jhSi0s4SsdC8KZ9rITP0WsMpC9UT+0Xo66Gs3JovLwSUDXPsrn/hvVOu3Foc0vSfMhS0D1ucWECZpsrjJvRljymz5nyQLi80mI4yQr7bQMBniZyS6Odn1F1mb4g2Rdn1ts8dfAFmfxMxVsAARK4mDIhMdVwMWQhy0WyY3dCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E65XAi60; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-3eb0a50a4d6so401116f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930790; x=1758535590; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D6bLhOy3aQ+nTIsBm75KhRBxHYpZEyRQkCJbrV2nDCs=;
        b=E65XAi60IZKN+J2NYeEbIoFYBoNf3nsKm4jCFH7T1qfsllCB31tNoQtd84rU7okpEJ
         /Ga7m70duJ7emkC2QcDGUFt4mjjWnMZiC12xEIR3qG7uuD9QdpYv959+ZY/jE5aSXa1g
         /jRTu8JTFYuA9HYtTbVg0PBswQ8BTgRsGSiJ8T5yJIjgtNM83TWJhzj6GdmSZ+sLofPP
         0CzcXkMMtx7b/OcjHfT1e1svGhO9yhTlQN0qju0bGtxZvdVht/VMpIWpzumZm5jCitru
         nKITEhANx+de56CMjRU2KbdrFqQnDpSyb3/gLw0eBE3H01QTA1u/HmIeJkfI9qrhDZyY
         P0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930790; x=1758535590;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D6bLhOy3aQ+nTIsBm75KhRBxHYpZEyRQkCJbrV2nDCs=;
        b=gNlYcBz6ja9DiPXTa8Qf42fo3qtcqeE7CSMaTR/amZuN6MARcEdx8Z7bdes12FVEpF
         lB3NtmuzhFThtMjcFIgXN9zRlcNXRjscHt2gt7La8pWI1xpnf0SGejfSej5BDU1VPmeL
         cCNDt0s2HL2NxKfHPWfiDac/ulTtIgpbOIZPcd+Aw3sZ0WSOm8s1UPhkaH3x0yWJoZwx
         3r7LmUBtvkJoNRGEKbwuJkvl2d80J4WSMs4qO4eCHKmENwHdtJAEARSTtvkSLNhtFdAM
         FCAXiuOt2LAY5+ejXKIMcCofMLSyk4cEcVn20q9N1+qBVBlUWA5xR/2XJum4p3mjBpDH
         LPUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsBcOXvMWwiiFepF7MO6EWFfjBLrUfh2GJGVT7xskfZRkRye6DsaZIJ9aDP4dRgR2eDaTV9F4qZlxo@vger.kernel.org
X-Gm-Message-State: AOJu0YxvGcmH7iP/CFXMjA4k+PjWIjPQqqmwo9fMdDuaqugJI8nMUNi4
	ehb9+VKRefsebRE72Y/G4iXFAyA5wSAD/aqyhE0urPayzDu3jZfoPN5sxl9NDlxuT6w=
X-Gm-Gg: ASbGnctbTv5WVxrQ7wucQ0B5a1TtWlT3TLTE4K86njLHi/9+h+ukmLoPA++z5DOEmoV
	hBBu6tF4sLZbX+JrQP54LqO2+Cr483ZBVKewg6ZrgqS7TSYx1u0i7pNi85Z+A3sdEtR0L3V18Bj
	gJA0qZehqn2yFouLcs1uxdqu0x4FTlOme7xvAeQLigMFxkUY3sySM5jZ+it6uALYUu4Iazo1l/q
	Jr3bOT+cM3vB1RESF/Bvx2v75JLCRiWBL/0Eiid/KJM4iP46uLmx9J09dl0funvJTYb3PxsaQMe
	lxbou5OljHDuA/vwIkxrSVMht8oZrOR+umbVa5UU/eHo6JLmqnCWbzC2kgNCmES/JPrLRrPYgzO
	1nFadw5zIj7Nnc9a9KE0guTLtda/iyV+DrBC6F/+snkEtnA==
X-Google-Smtp-Source: AGHT+IHuHMN20CvPkXUvYZTGmiFV3ve4adeDICiqiLAsONuOwCFEVWmW+hAAOekUIPtlXXHNkbcI3A==
X-Received: by 2002:a05:6000:2511:b0:3c9:b8b7:ea4e with SMTP id ffacd0b85a97d-3e7658bb0b9mr8253628f8f.19.1757930789807;
        Mon, 15 Sep 2025 03:06:29 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:29 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:14 +0200
Subject: [PATCH v2 3/9] arm64: dts: qcom: x1-el2: Disable IRIS for now
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-3-1f928de08fd4@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
In-Reply-To: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

The reset and IOMMU management for remoteprocs like IRIS is implemented in
the hypervisor for older targets such as X1E [1]. When booting Linux/KVM
directly in EL2, this functionality is missing and the PAS interface
normally used by IRIS to boot the video firmware is not working.

The Venus driver supports starting the video firmware without using the PAS
interface. The same code also works for X1E when using KVM. However, for
the new IRIS dt-bindings it was decided to avoid using the dummy
"video-firmware" node in the device tree to describe the IOMMU [2].
Discussion is still ongoing how to describe this properly [3].

To avoid regressions when running using KVM, add a TODO in x1-el2.dtso for
now and disable IRIS even when it was enabled by the board.

[1]: https://resources.linaro.org/en/resource/sF8jXifdb9V1mUefdbfafa
[2]: https://lore.kernel.org/r/20250823155349.22344-2-krzysztof.kozlowski@linaro.org/
[3]: https://lore.kernel.org/r/20250819165447.4149674-12-mukesh.ojha@oss.qualcomm.com/

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-el2.dtso | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
index 380441deca65d1b443962fbe6151f4aadd918383..2d1c9151cf1b4aca79f7ad67328ffc3c721b9dc3 100644
--- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
+++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
@@ -12,6 +12,11 @@ &gpu_zap_shader {
 	status = "disabled";
 };
 
+&iris {
+	/* TODO: Add video-firmware iommus to start IRIS from EL2 */
+	status = "disabled";
+};
+
 /*
  * When running under Gunyah, this IOMMU is controlled by the firmware,
  * however when we take ownership of it in EL2, we need to configure

-- 
2.50.1


