Return-Path: <devicetree+bounces-39009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36684B253
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0898B25D1C
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7EC412E1D8;
	Tue,  6 Feb 2024 10:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zo6YVVc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEBE12E1C5
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707214646; cv=none; b=X5ciynT5nkxDdLqNVoTMkuYqVvW4RLRKxrBabh54ZdBwJ3HCsPvUD04ywaKEqiNBzV0X8DX0fG7Bwk8KtHCzXf5D1AVThbVpPZ+zo92gV1/6dfSfrq/gXeIfPpigwCQahKamHRXpdZwVZeSZXpB4xKvRtRBpdxlPpqL2Pc8gZ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707214646; c=relaxed/simple;
	bh=i38UX2oB8FGkdPpyxdxzAu/jZR70Dnm41t3z8rgQ3Go=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YoiakY8slUTODkyOKF3WJX1C92CzbjfqKVfSpBSgLi+t8uNoElLipFoDbJ/doOSIX3OpXcd6jfu1pxwF56OYwxUIsYOGoZJUgO448fnxUQ12f52G+cSLWZwltVSCMwlz4D2z8ue684gydmf03sz3JUchGWElo81gDjGwnwYPIvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zo6YVVc+; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40f02b8d176so47138365e9.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 02:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707214643; x=1707819443; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=okvpDmJ6YxvtLDoaL+EuAzH0R6OlFEWzRCbcPG/MMs8=;
        b=zo6YVVc+EcWxvpMKyridVADlfq+yOGO66srZQl1FpkHYKhTu0EwYco5RiDtb6J/fwX
         Cs0N0/uduk459K50sdib5++CNKm3D9vZCj6HcW5Uy4QrmVoL1hFpsoXboaVnDUhO9MCh
         5js+yiWz8uqrCKrybg32HCyKDbL/sDhT5SF4iRpnFScmOZsHxyI11WXFkvrhT7Uz1mWg
         VDltzlAlCThjazGruka4fJLcVjjyX6isdAcp/8x6/XymFG2A6UJWfSFPKPVSdzw12esk
         g67sHC4miAm4RL4yilThjxGi0ZmYq60WTuQBd7S+BW0DxdEi1X2rO4rh7c2so4nupJqI
         NOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707214643; x=1707819443;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=okvpDmJ6YxvtLDoaL+EuAzH0R6OlFEWzRCbcPG/MMs8=;
        b=LQoGIXGw4kdJjCTe5mMU4jCpAPAN+cFkN7Rn/XKUOhmlnioXa5iHUYMDJ6PwdtnGkF
         yVTiYKRDA+wHTYVbFz0/sh4mYulml9rG9YA7RVAaXlMV/eEcZ4yWo2XgNVSNU4Og2Uw7
         o2+bpkj1zNF3IfpB+QRn2k52IjaJjANrc8LV/vfEURO7Qc3+8zbV0tOk69Gwx9xYaS5Y
         bj9ItfCyGO3YhiE/ZbBgkuO+MWjMwkiKNUDi0/c//GLE+BszLv05CF7JSw5jEMWoNVOP
         h/86Wyjit+szK2Qzix0RtfwB4bgrYLDDAtB0dPyf06wagppUzrrH1GOk1NQfck7sNH42
         z7WQ==
X-Gm-Message-State: AOJu0YysiELhAx27HcnFQr0ZCqKzWWQLywIUi9XiqHFKzgsuwRuAzcKY
	EVv4lBE/apcaID9lmmbp7bjq7vcFsEiIDns3Jts/WkN1WmdR6BKFP8O4IQZ1Yyw=
X-Google-Smtp-Source: AGHT+IEh/NlZvc0XX1nfq4rBaoQoNY+bojaaQv8rHZnHLdL3hbLWo689LlDtjdVRG4ov19Xfs23jkw==
X-Received: by 2002:a05:600c:524a:b0:40e:f9df:3531 with SMTP id fc10-20020a05600c524a00b0040ef9df3531mr1780782wmb.8.1707214643165;
        Tue, 06 Feb 2024 02:17:23 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWbB7Z2nIu8r0+ECNPhoZxe7XdYRaU0MHSQpgw6ZV8l1/eZjv23nF0XWWM6f8TXsEHXI3FQMqB3QnFO2EPrxffCE1xfU9A9SbkcLWt6X3Zh9S0aDjaouz7710EUTYPrgjhzRntsgACtuLGX9hGcSsfJKk3W6IXHX3AVrl0n5jcrfiXUD5Vaow7MiTreBmzg3zYCfwovYDToA4+F3sRuMuiqsRwGExVu2mEHSNuaDaoBCUzcaEbZy1D7hKF3FFU2nhb1MPScdywwqz7x4eFsT/sapV03R1t8Anp3qfBDcX5UUCU5TBFqAahvxsdcXKCtyNY1SI5slTe4ZP1c8Q173RsSvVc5Puen9fHbgoBge8C7uSgXZ7skBgbHirpa9Gr8ffvEkhxZdh6IV3xOVXDexVu/XDpxD+Uq9tphLQ==
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id l14-20020a05600c4f0e00b0040fc56712e8sm1489992wmq.17.2024.02.06.02.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 02:17:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Henrik Grimler <henrik@grimler.se>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <20240130-galaxy-tab-s-cleanup-v1-3-d4e17857241d@grimler.se>
References: <20240130-galaxy-tab-s-cleanup-v1-0-d4e17857241d@grimler.se>
 <20240130-galaxy-tab-s-cleanup-v1-3-d4e17857241d@grimler.se>
Subject: Re: (subset) [PATCH 3/3] ARM: dts: samsung:
 exynos5420-galaxy-tab-common: decrease available memory
Message-Id: <170721464155.19396.4129646315750177250.b4-ty@linaro.org>
Date: Tue, 06 Feb 2024 11:17:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Tue, 30 Jan 2024 21:40:41 +0100, Henrik Grimler wrote:
> The last 6 MiB are used by trustzone firmware, and cannot be used by
> Linux.  Currently we are saved by that the proprietary bootloader
> (sboot) passes available memory to kernel through ATAG_MEM.  Change
> memory range in any case so that we do not have to rely on ATAG_MEM.
> 
> 

Applied, thanks!

[3/3] ARM: dts: samsung: exynos5420-galaxy-tab-common: decrease available memory
      https://git.kernel.org/krzk/linux/c/9a5dbb835fd396c78da34b26ee91db6d529d096d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


