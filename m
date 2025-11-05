Return-Path: <devicetree+bounces-235063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 921ACC3435F
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 08:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0FFEA34AEA3
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 07:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C422D4B5F;
	Wed,  5 Nov 2025 07:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iNL7Fy1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4242D24A6
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 07:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327528; cv=none; b=R77Mbgvl/Hyg/EffCBkt/UiviXJ1bYvYmFZIVXJMiKm3ETrFHj7tLuTUsx8Z5RGECzyKcvTuZDKlfjyGAs+qcBjOvGczSRtgQuoFnHTnhkE3vYJV1R3jzMe5f06+OlKYbLC6eAD6aJ+4tsGC6vRmCDTBk92bNCS6Y0ksj5JbKiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327528; c=relaxed/simple;
	bh=3MQHnfbexcJms+PA/tw+OrIpFP88dlcCh/W8jqhAOro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Fl5uokcuyp66tRDs992TY/VkMDov9mDPxsSAJzt+YNOU5l0dD0NofV8J8+av18oVeiIkXYgiE9iUDUMth2uE8cyTOuXSalOTTcM0e2FbMLR1rBGDl252YPoq60ESX0PHTgsu7L6PzIMEC4aGHFuMWlsF/yfKtZqPLIIM5Ps09WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iNL7Fy1O; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b725c6be585so17139766b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 23:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762327525; x=1762932325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzyJ0fh/wAbVru2AIw9Z/iVWtj/2W/vCo97JCS7BrIo=;
        b=iNL7Fy1OY0+Dx9QAPDnlVHJl+cc3sXENxyOY6qqsxmiOI8/KIGCsHnlZ11mGvzdL4i
         udBuAtRhfrVU8IXZifgZKGC4r7TUPf6BiICiYaL52ux8H1Ip7Yc4gatf/Fm3+HwzVN8r
         TTtxnNkYlHN1yinjnEbsrAJMiglk1+2fB+G6pm6Kg67ditQO21OVAd3zGtJrkfP7IXlC
         YLoj2d1Lgpe4WXSSnSrWEE1gkrkdkuX+5NjhnqHJTmuhRfyEPzFvJ377Eiqky+ny0rhJ
         Wv9dxEbIb+n9UkDJIUPyZXfTMr3F8DNZn592pXisXWlJt6O9ZQUuOPOmsoGNpZHuYjFh
         5D9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762327525; x=1762932325;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzyJ0fh/wAbVru2AIw9Z/iVWtj/2W/vCo97JCS7BrIo=;
        b=tYZ25SSc6VidrjK5LeBU5TCqyBbIrDAT6AID5c0Ri/0RtA+f66p9MAM1LmrzTnBq9w
         Ki7NTtd7qDEwew3liyZg/jXMRLbDRfTShzUqMz1YXriiZVGYEOL2A2OTrtJiU8+Dsc5L
         CGoXAS8eDe1EDljs3NhPhBtyk8hY7OpGDLihNN3AjrwHUK6dy6qPUPoEh/qRPaHrKC18
         LBQbpTD0JY/DDctTvTukJ5CKHIt9XF6blA1R0U5McdXn8rvyTfQl0R7TOig+C8HIaRuD
         S8M5IWmXMDeq0sgKVnHI7j1ueUU9CEVKaMw1zgGj2wfVkixKZfFUjL5J7TGPmS+FwjbY
         kYUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFTLcOaTiBiQBFSEvDloMcqQYHJ+7BHjI5FYO5Wdwx5lc4EmsJktQJaGdLKrOLNqgZlC6T5MAE8+wG@vger.kernel.org
X-Gm-Message-State: AOJu0YwXmKg5PIIsjlJAh81L9HvbD4p73yJzsvnSwWjdSZQNhpI7UeHW
	yM/8/ra9EVuYQEv5XhYjZf6CqHDBD/3ZIlOOAEBCl4kK6iYA/LemB/pISWXm0tQfOwc=
X-Gm-Gg: ASbGnctq5YkaOpLMNtTvwUWwa8NSukOUq82uwEJgw3XHLfs5rsx69EXwAZehwV62PzN
	a6WWrpXaKhV41arJLYA+QrrJ4AeZL5IhkfPwg8GA4QDdI3pt8yD/dXaI8mDvTipzrFRdMuNSSD0
	Ztfi/9C2Y0x3y83zt/33+1Nc/djflDLpZzq+kT0ViQOPRc1FV98pe7hUUwFjYjrMILTtLi1sOsV
	udLKFPLFXLtTAwBusRfydlzNa2x6X6Wwhab1JfiIn5aBZX6kpYUgQ/gldX3J1rf/r2FUbAMfYm8
	zsVfpP3enZs7T1swLWSlrWvwWBMu6deqoDDdozocXP2886fZlmOM8dYkDf+FKy0lTriPRkGKlk8
	rFqFvGrbke1MTgjv52AgofZ7McGl4fDoYRZerzvss28ITyH8/Z9pMhzMfUIJEjlpOMrNiq3tOay
	VUW6s36CqiDiz7EBDC
X-Google-Smtp-Source: AGHT+IH5PD1LXiuJ1OVxB91pB1B4L0WrpF1/eJTOcdn/V7iCjj7s8mrxuloXatGB8SxHsWzsC8nfAw==
X-Received: by 2002:a17:906:f34e:b0:b72:6762:f76c with SMTP id a640c23a62f3a-b726762f87amr59779866b.5.1762327525074;
        Tue, 04 Nov 2025 23:25:25 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f8c5bsm411534866b.20.2025.11.04.23.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 23:25:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251031-exynos7870-drm-dts-v4-3-c1f77fb16b87@disroot.org>
References: <20251031-exynos7870-drm-dts-v4-0-c1f77fb16b87@disroot.org>
 <20251031-exynos7870-drm-dts-v4-3-c1f77fb16b87@disroot.org>
Subject: Re: (subset) [PATCH v4 3/5] arm64: dts: exynos7870-on7xelte:
 enable display panel support
Message-Id: <176232752377.13426.2352187579192770383.b4-ty@linaro.org>
Date: Wed, 05 Nov 2025 08:25:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 31 Oct 2025 00:50:17 +0530, Kaustabh Chakraborty wrote:
> Enable DECON and DSI nodes, and add the compatible display panel and
> appropriate panel timings for this device. Also, remove the
> simple-framebuffer node in favor of the panel.
> 
> This device has a 1080x1920 Synaptics TD4300 display panel.
> 
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: exynos7870-on7xelte: enable display panel support
      https://git.kernel.org/krzk/linux/c/35e69cc6bdef74a3c4794bd278a94dfb512abd7a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


