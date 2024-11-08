Return-Path: <devicetree+bounces-120362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB559C2537
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 19:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE112B23F0A
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 18:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC1D1AA1C8;
	Fri,  8 Nov 2024 18:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="neTlQ0cI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AEC233D96
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 18:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731092241; cv=none; b=NF/Avm67YTbE3CmUlvOd7aOf2RFVOKZkKJLqOmIX4Zxl+ErKwHLZwBXkq2cF9X/gNgmOCml27Th6idzVsZ5blJ2W7n6TltifRNMOWQAEZDf8AI4J76sXhsabgd94R50J8oiR2RLwTERqnBg7oqwVxdcwvCcL1DIHmQTCd1tM860=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731092241; c=relaxed/simple;
	bh=DSG+8An8EiWvy6/TXjRBl0J05k0pgUbGk4Fqi49SjmE=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LT6nbhtBBCIo/Zf3tX3jMk3a61Q7nAMoqWyznYilKlsNQj5D4xujLBEPvhkO9QQzu8QNzhWgzwfar7DE8drHYUkp/RmCnkWskhqEWkT6k/1NBMmSP/aHsIN89fyGxVK8jM7Vx3OQgPQ1d7D3RqykXZIQ8bw2Dj0UJv7dUKfmPYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=neTlQ0cI; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e29047bec8fso2880400276.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 10:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731092238; x=1731697038; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFhrTTpiQ0I2IodQiHI+ZaiAC6+TEUbpNWIml06w79Y=;
        b=neTlQ0cI6JqIGSOgGJEoMXPH0SM1upsN/u+2CluCnv1tWTn7QcQ0KEt+4H8t05RglT
         /8RWA0xRbI0bOzdDgVJGrlTYHCws1lbi3AwK+ijvPcww5ea9rh8fXmWsYPKwJikkQnFt
         AGa4QgHSHobpXY7XoNgHREQEYAmLptGMnGh8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731092238; x=1731697038;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GFhrTTpiQ0I2IodQiHI+ZaiAC6+TEUbpNWIml06w79Y=;
        b=tdMY/aA4OUUxS9O8qn1dHmaxfLW8MKfZqVPuWCK5YFdCdtrwPEepIZtHpZS1GXmAyK
         rnTHxWINneSw8BMfs9QYmA67kwsws0ACEqQL7dSGHdvQ2NQ348s5UPdu6lRE9fLqKlnC
         lNmEe5mKqP7tZsoJi/oi92C7N8lX4qAGIVQKD1samsEzYdTmzMjt8Pl0JXre7Ag0ZXg+
         mpBZ2e6ylbCrkXvtpbJrJ5cZmk2dw1uwPIMbu9DjUIiYMVMm7yfG/BztN/s6ahlFmGW3
         9WHMMgtlbAzd/u502cUyrUefCkV8+0CGTPMY+xkidsxTOauIP4E/F1g3/YBkNpkbzMBl
         UF+g==
X-Forwarded-Encrypted: i=1; AJvYcCXxzAbt/OnAO30YuNbDuHbdLjBMYhzibkEtLXTJWifEJWWKSo52UGv4CDgAEzw9FpIltocOKV7o3P+i@vger.kernel.org
X-Gm-Message-State: AOJu0YyeK4QwtDF9biK9l4aI1Q3BSCf454Z8yigTlSk1uXF46s0N8Cr9
	lENHxfnQ9+1RDK09fgVtPAaD3t0gzDz42dedXwtlqxVbzGQePm5TmNw90dXOd7Kg4HDXnk2aOKj
	bsR6WAaEpgH5J5EkDOXXEehoA9ke8LzGsnCeF
X-Google-Smtp-Source: AGHT+IHfC5tJ6whbDS7S3SlhCnoJBwUgDNoRBmtsYN3YKtsv214Yxvv3stXcgF9ZacsGjD0iMrYs07O4YZn2INdER/w=
X-Received: by 2002:a05:690c:d8f:b0:6e3:ceb:9e5c with SMTP id
 00721157ae682-6eade52f876mr34629017b3.17.1731092238352; Fri, 08 Nov 2024
 10:57:18 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 8 Nov 2024 10:57:17 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20241107-arm-psci-system_reset2-vendor-reboots-v8-3-e8715fa65cb5@quicinc.com>
References: <20241107-arm-psci-system_reset2-vendor-reboots-v8-0-e8715fa65cb5@quicinc.com>
 <20241107-arm-psci-system_reset2-vendor-reboots-v8-3-e8715fa65cb5@quicinc.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Fri, 8 Nov 2024 10:57:17 -0800
Message-ID: <CAE-0n50-h_h=oWt7BZ5ncX8JYfXmEpN7-HrZeC8wHrHZnGsJMA@mail.gmail.com>
Subject: Re: [PATCH v8 3/6] firmware: psci: Read and use vendor reset types
To: Andy Yan <andy.yan@rock-chips.com>, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Elliot Berman <quic_eberman@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Olof Johansson <olof@lixom.net>, Rob Herring <robh@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, Vinod Koul <vkoul@kernel.org>, Will Deacon <will@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Melody Olvera <quic_molvera@quicinc.com>, 
	Shivendra Pratap <quic_spratap@quicinc.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Elliot Berman (2024-11-07 15:38:27)
> SoC vendors have different types of resets and are controlled through
> various registers. For instance, Qualcomm chipsets can reboot to a
> "download mode" that allows a RAM dump to be collected. Another example
> is they also support writing a cookie that can be read by bootloader
> during next boot. PSCI offers a mechanism, SYSTEM_RESET2, for these
> vendor reset types to be implemented without requiring drivers for every
> register/cookie.
>
> Add support in PSCI to statically map reboot mode commands from
> userspace to a vendor reset and cookie value using the device tree.
>
> A separate initcall is needed to parse the devicetree, instead of using
> psci_dt_init because mm isn't sufficiently set up to allocate memory.
>
> Reboot mode framework is close but doesn't quite fit with the
> design and requirements for PSCI SYSTEM_RESET2. Some of these issues can
> be solved but doesn't seem reasonable in sum:
>  1. reboot mode registers against the reboot_notifier_list, which is too
>     early to call SYSTEM_RESET2. PSCI would need to remember the reset
>     type from the reboot-mode framework callback and use it
>     psci_sys_reset.
>  2. reboot mode assumes only one cookie/parameter is described in the
>     device tree. SYSTEM_RESET2 uses 2: one for the type and one for
>     cookie.
>  3. psci cpuidle driver already registers a driver against the
>     arm,psci-1.0 compatible. Refactoring would be needed to have both a
>     cpuidle and reboot-mode driver.
>
> Tested-by: Florian Fainelli <florian.fainelli@broadcom.com>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

