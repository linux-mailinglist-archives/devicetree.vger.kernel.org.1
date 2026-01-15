Return-Path: <devicetree+bounces-255538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E769D23F96
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A87630BEA4F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E4536AB7E;
	Thu, 15 Jan 2026 10:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pXkc+pyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF08F36B076
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768473422; cv=none; b=lXNwZiB1fc5VeVcgjs3NORMRyPAdKspVYcOjOj0IU8+ql+h9V9LwjwOqrcDMTfIvNFuzrsd4cQJIZJJUbgWaVe+zDh4MZfplrx2TlmCf5FQZy75IUB10dEbQuYdHkFB2yc0eURUB0dI20WXGPtm0wwhDgg7rDm/UOc7EJUUC6d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768473422; c=relaxed/simple;
	bh=2f7r6DHOiPgFoyO4aekOZh4haKtIGWdO8KtijsoWZjY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UaW4MyIuUk/okbni1IMNGlfs1yPlcS++/SEkCYOATo8z5fzMGgSIryyf4tE8bar2C9IOFLWqtESh+nPZZftYDA/Ibe+LxAdxElEq6vPH2XYtagNPsBoZPGAS56zw/5SwThy7+JkQGoXiO71QqUuU81+NuXYbCkZD3XW+h8C3MfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pXkc+pyr; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-43246af170aso378821f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768473419; x=1769078219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HJqo6LxSFvjymO08OBbA4HDFLrBYb+JurpJL/gCPr80=;
        b=pXkc+pyrOQ2Srjgee96jPwYplw0eX8ovtoIBSHQ+oAyB1QrCbmbeQ/t+Q0zHORM5cO
         sSm3Jd5gh34CdH/xQ9dePSq7aMhXQUiayyqlHIWAFvgTmL9qZLNSd22JLAzYjp2pNfx7
         YKt6T0NyTSqxdqoUO1PwZObFZ87hITgXcuIvrdxkFDiLELQP2zFmKMN1rcv8vPxVlMdy
         DmJuMWIcmMFE8eY4LQCuJSXNqAq+fFOhnUPbLufg2AiewjhSxcGpY61xv6X/X49/gkJ3
         R+yCJeNzbyws+T6JOufuLFmvHH0mPBAxHLXKBwFuhkyNPFrplLVnvNyV8v0RfvTl5Jf6
         mv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768473419; x=1769078219;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HJqo6LxSFvjymO08OBbA4HDFLrBYb+JurpJL/gCPr80=;
        b=wb/1xnIwwCn4iLAp5Q+YgaB8a5xQOpxXM4RKTusnCN53q3SxPp9tfEA955atVkvVFO
         jUcn+4fsKQC9CobV2SwtgQCH3O583H0bF7JgUmim+PPf5W+xkxg9had645OT8H9JjrlY
         ZHFDILXDhW8iBfSHbGpgtqilEzKSzlEvaIZEsCeIPzAzJpFA4ZZkoR1k43EpFbLbsXKR
         xLKrFqHYXJnPWL9tiHGSUDBQQN5344H4abw4EYs+Ru8gKPFknXaAFvL4V7OwgjXbPVbY
         /PgasQLxDY23q0ZTvJpvZMBuf5tV8y31WGfCpM0p9H0r2sr0cyEGp4b7Xq8iBqxCWyU0
         GGTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8WHKl5nmtH2lNOoNpezVFXGHUuaN9P3cqNU+bxQdYOKr1vp3T/lj+aE3FhOYHoC6BpxxfDWiB11V2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9d3LswNwhWIKUa4rQ7KiF8VpQfdp3uZt9lYO70fJGk5vqaYy/
	Gj2W5Q9Ccg2ZAfv/ShGyz09ghwCMXxhWUtrERgjPbxUTjrn6ShXrTyLU8rqEbStiWWE=
X-Gm-Gg: AY/fxX7phEfnUVvqScKQGAntWDTSIqIK7dYSWcAPQDSo4c2ZvTAdWyBcXTDToiQugBt
	wJmlQhspb1XBTK0MAVgBkBoy6+y1NGu9hK0dVc2kTGlMkFa5HRSVDIYzzFhZwKEa6N2SxqFQwob
	LWuUAElgYWoWF7g8jz9uv4nx2vpj2No0yhhvTr0+qPIbUtWvss7DvqmM0X3+ZRkXEcMLRsboXm7
	A+VcWELXdmmy41wflejk2J2Iab0T2jvPHt/2vdR4oZQzI9lFWigthfHia7jo/5+TWU6orafqhuf
	dnsCA9xmfDuMM8+PdBpvCzUVRM03AwKCLXpshJjlUybJIgkEI6aNlNPOpZntzFbFKVKXso7VaWl
	kQ3SiURCJIvV9hGcieUlL9Y0x3bvU2jsJAqnGKhlRRqiMVzxgl7aiW3LwnCzB8CgHVds8AHNlYa
	ew3HJnvYZcDbSebGjtHA93EZB7d5lQTQs=
X-Received: by 2002:a05:6000:4027:b0:429:d3c9:b8af with SMTP id ffacd0b85a97d-434d75b7003mr2802540f8f.25.1768473419171;
        Thu, 15 Jan 2026 02:36:59 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a65bsm5120132f8f.7.2026.01.15.02.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 02:36:58 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, Nick Xie <nick@khadas.com>
Cc: xianwei.zhao@amlogic.com, christianshewitt@gmail.com, 
 krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 nick@xieqinick.com
In-Reply-To: <20260115030015.1334517-1-nick@khadas.com>
References: <20260115030015.1334517-1-nick@khadas.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: meson-s4: add support for Khadas
 VIM1S
Message-Id: <176847341849.1377446.5257760418462522600.b4-ty@linaro.org>
Date: Thu, 15 Jan 2026 11:36:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Thu, 15 Jan 2026 11:00:12 +0800, Nick Xie wrote:
> This series adds initial support for the Khadas VIM1S single board computer.
> 
> The Khadas VIM1S is based on the Amlogic S905Y4 (S4 family) SoC.
> It features:
>  - 2GB LPDDR4 RAM
>  - 16GB eMMC 5.1 storage
>  - 32MB SPI flash
>  - 100M Ethernet
>  - AP6256 Wireless (802.11 a/b/g/n/ac, BT5.0)
>  - HDMI 2.1 video
>  - 2x USB 2.0 ports
>  - 1x USB-C (power) with USB 2.0 OTG
>  - 2x LED's (1x red, 1x white)
>  - 3x buttons (power, function, reset)
>  - IR receiver
>  - 40pin GPIO Header
>  - 1x micro SD card slot
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/3] dt-bindings: arm: amlogic: introduce specific compatibles for S4 family
      https://git.kernel.org/amlogic/c/fee65328ab35d5491ac5c9c697c52da3fd068268
[2/3] arm64: dts: meson-s4-aq222: update compatible string with s805x2
      https://git.kernel.org/amlogic/c/9ba73c18b14ac297b9fae92b684ca4dafa5e0361
[3/3] arm64: dts: meson-s4-s905y4-khadas-vim1s: add initial device tree
      https://git.kernel.org/amlogic/c/6186af6bd9b1e778e295a176c9281dba970da7eb

These changes has been applied on the intermediate git tree [1].

The v6.20/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


