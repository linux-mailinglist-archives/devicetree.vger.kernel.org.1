Return-Path: <devicetree+bounces-233756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 63460C25282
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9E55F4F9AD9
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE38A343D72;
	Fri, 31 Oct 2025 12:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UBhQa6kw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B83534C81F
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915376; cv=none; b=crjB9QkUcKLqDe9ZnplxYI+fqaijul2cM6q0WjDT+l1gUNMYoGRGK/q1efE524N72lWv/uBK2vi2+APjBtKG63KFgHgKhsmEqrS0X4rJVX96opHoRYFeW3RTe7xQqIxiNgzqdQFciERpR2mNZbzyktVkiu6rLV+wGtgeH4QGk7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915376; c=relaxed/simple;
	bh=SNitQ6iR1OrWkD+1kTT2otCfVrWRB5Aki2fWLfOjKbs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O89lpBkKZNvQWwYFa3Z75s/AG5rGNZqIj4KUTDA57CIdp/bop2n70oYRrIbvpudaiu72jxY4UTFiaRKGQBqFNv4sIuujDOg/vkT70I7GiTdbkASVVu8b6x78BO6R+S51QZnpT1hSzbwoKtVyfqiez5Ixc97t2K7t8qgxSBfzDms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UBhQa6kw; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47117f92e32so19200785e9.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915373; x=1762520173; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nPmKs28lkpvHoRqiGTUvXenyc4ndbMqG/sODnZUvqnA=;
        b=UBhQa6kwo34GlyUttobY4UbBFhkSUX69JB3wD3r5ahlx6xQQmccAOyqoVX+UZ01waQ
         iNGOBnaexOYyzA2x8335AAwVIy//i0AzXSJ71R1dlVWdaZD+f3FIuZU931nU/cGTYjgX
         /MBF5n3g+/kQTM2vRzHport5NmNvl0QdRP29ee3xw205Ffz2DW6wy8S3lCWEUNM9aGgj
         cQUA16K/77T/8/WLbnE6zvoDkgS7XWKlt8p5uhISY8Bq78wNIkpVuTCnKPMAecsugdUV
         DUk4Gg8JD/QPLpKHMeAle8/3X/y9JPpDzkDdX/h6/V/1JRJApbKz78tR6hDOw9u3RWHo
         MHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915373; x=1762520173;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nPmKs28lkpvHoRqiGTUvXenyc4ndbMqG/sODnZUvqnA=;
        b=nuSAapj/Hxf5MrGcj0Yb0xdIWk7/VFT46hECv8lVMBGHyVXC/RHC6YOc93Ig972rkr
         DbM9MiRFl0iRnPRdCN1E2oKvTL0iTTRQ0whmbA6Mqh2mDI2nnGLyG+9W6vMpJtsTSnul
         uTcM9l2+pgCEeu5rwCBIzqINOlP/cv/my/n1SlMrwz0613Ehe1pKf8oEpwTxZ0+S8+YX
         K96ioT4Gle32HRcqq8s9oAJu8KbmKmIEJ+NGANPXBFVXMciPoWnje8P0ZZPxtaHAWycG
         JdRQlYAWsvB0RoOuRyRSlGo5qxmPjkU1G79Suw/WXxBufeH5oKZZLNgoF5Wg/1F880T7
         Ruag==
X-Forwarded-Encrypted: i=1; AJvYcCVTu71nlM+aYysN5gJIGIQgAzOZ+5UVrkaE0USPdGQaSTErB6ET190TPXuouUMAT2sRr5idXbOA9+HT@vger.kernel.org
X-Gm-Message-State: AOJu0YzXiU3uANWIW0cvsPUJmrlNj550mngdqABPUyXG1UdBsw77ELXl
	Qbi1wE9BFuLI7J5/LmWOSNdaSyXpbA3RbuPc8Gk3X6DzCz3P+NqANXs8WcY7lg9mpvE=
X-Gm-Gg: ASbGncvgKGu7xfHugr+7sQ4sRFr/ASEdiNc1nmvETAKgtIorF6tlbGAQirndAVOPlfP
	FCPH/gZdeMMF4v0M/r5swDe5WvthRrjoq4KHQrqRranTBHhVCME/pBRSc32qZbj+2WWDIV/xiGl
	I0uTMvXCXVkeLIJvM28+4jPatFGB7/h6Ug7IKynknpDhK4XXor0oZdTzsVez/KolyDWOT5kQ11Y
	kHko69RyAuy3INpM78GTW7OSyedmbZ9EZGVN+Lod7nSBySEEa2l3n3+NlTlNgcRaVnCudPCkKY2
	oBVCZdh+9Ul65ogUiuenmKVWnnPEq92fIKPkWRDhM6765L3yhP6oAqFx7jTDdfIsVrP1lNLrWI1
	pwekRb5ej16ZV6cNmeVoK0wsnK4qYuSNAtGdDBlg7pbiwvmje75EzeoRijxFfa0lSRACMiNO/uj
	zNBI/TKttocRCsnL18X9uXDt60kV2oR+/1Epyk7mJXWHz9JcLrwERYvr6Uqhd6sjo=
X-Google-Smtp-Source: AGHT+IEgFt2drlICBdE8c15ZSdRAo3YhHP301vNjyBeBb0HaK8c5JkyxDlcHps+bf8XyCx+ZBmNPVQ==
X-Received: by 2002:a05:600c:538e:b0:46e:33b2:c8da with SMTP id 5b1f17b1804b1-47730890e99mr33964965e9.32.1761915372724;
        Fri, 31 Oct 2025 05:56:12 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:12 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:10 +0000
Subject: [PATCH 11/11] arm64: defconfig: enable Samsung Exynos chipid
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-11-d78d1076b210@linaro.org>
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
In-Reply-To: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=829;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=SNitQ6iR1OrWkD+1kTT2otCfVrWRB5Aki2fWLfOjKbs=;
 b=tiltm92a6lWnlNHMGe7UFecCrk/97yelVtT3Nd5y3c3b6toA4eFvJ9l/AoAY69Wscue1C6ZYq
 vOAuVToq/TGCmsCXChXNd7/Jjdxd10s8Y2Ky3SlZlKDxTR1t/jGCqZq
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The Samsung Exynos chipid driver provides SoC information to userspace
using the standard soc interface. Enable this to allow certain user
space tools to acquire this information.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 646097e94efe7f1a18fb59d5b6dfc6268be91383..cf1a548034d28db201bab0d48b838b4136dbb59c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1530,6 +1530,7 @@ CONFIG_QCOM_APR=m
 CONFIG_QCOM_ICC_BWMON=m
 CONFIG_QCOM_PBS=m
 CONFIG_ROCKCHIP_IODOMAIN=y
+CONFIG_EXYNOS_CHIPID=m
 CONFIG_ARCH_TEGRA_132_SOC=y
 CONFIG_ARCH_TEGRA_210_SOC=y
 CONFIG_ARCH_TEGRA_186_SOC=y

-- 
2.51.1.930.gacf6e81ea2-goog


