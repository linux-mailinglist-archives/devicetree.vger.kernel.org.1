Return-Path: <devicetree+bounces-102303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F6197658C
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 11:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEBA5287524
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 09:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17FB191499;
	Thu, 12 Sep 2024 09:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J2mJ1WJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A49F190063
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 09:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726133352; cv=none; b=huITbo1WpozJsRNglOcF33Jh2W1usReS/TJITj6b0WP4mSmb8mo6fWoB02cKjBt5s3Gx/upAXTfomb7YUXsxsMLFF6gP0QwrvC2IzzeNmAUPX/u5xG0NwWrkRbmsBGyW2RMRzHvj9hNfSCazb0ObPKw3S28VHNCR/w7oJiAyvLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726133352; c=relaxed/simple;
	bh=f1LgvUXrqwLz/Z4q62FxAV/qtsloeO9ZWMMYuuVqxOM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=cLOfk6V1REys3pNk+Py9+CJR5Izk20AKrtYc+4V7K+wFiX53MQJQ7EDeOClMHo5GLGBQPkA/p2bUMFf2r0MWsizEtA4gicM6VSV3Qiou/GP4+J2fU6G41MN+DS0blEQqpbqpc7N1bX18uL58Xstfggo0VRvsWv2r4K9uZTlbckU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J2mJ1WJQ; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-378c16a4d3eso887315f8f.1
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 02:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726133348; x=1726738148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wp9jPxe8dbEyJ5HtUVcWqEzQO64+7gaLQ5RI1SB1IH0=;
        b=J2mJ1WJQ9XprVcRx2GseUQBCqQ5rtefft/XEVK0VtWG5AOAvfjNMBvo4eAhLnW4sBb
         oMMPE0tjNRl7nEHNVISd9a8aYcygYirJvKZmSPPZscYNdoH+Lg+yUhcaN4rZgXjh0wQ3
         n4AoqvCgs5EhmAhLW+QIlmtSieLgL9EYhcE2b5koOpmNHGdgiVSjvotVHMp4H5C98CgN
         oOIJ/1Z7bWjYEFbnjJ+riPmZbtVlraXKTu1Q5SL1LmnaBP87nLXBRg3HFW2dp2G/woET
         NuwJhXTrkcYz8+xWWe7CAjCK4hJeJmAmagAhEaSqgbFBVQUNZFbJ+iOhKgN8kX97ZIL0
         tJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726133348; x=1726738148;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wp9jPxe8dbEyJ5HtUVcWqEzQO64+7gaLQ5RI1SB1IH0=;
        b=RSlJGSr8NwjwNyiX1boJEImM00z7FiX73oefQxJtrZ1SOmhRpJ3TSDvQoG+K2qveYr
         4+88C3OVtt0GLLigMIp1g2IjX5w9D16ZfhywJPM66FriO3teWCexJCyNCckH+cTmgLvj
         Cc9cBwMcOLxEV8PVkqUcLIRa/yWJato6VBdE6zLdoC5NH8C9MJUcvHjE+u0uTvJPsaxy
         0FnMpynmI2+bPiT3VsizdHTVYdhMd3kL0tyU3fxXQU2GwKSzT/1d+xVt1e1VQvleqozv
         aaki3HK2MiENl6WyLPu7xUspxgqHbi/gUrPPawjmhhwqibX9qlUK27k0/W8ALdnys9U3
         CV6A==
X-Forwarded-Encrypted: i=1; AJvYcCW0mSRa0b6lZByCi2CyyW/D6ytwBY9bDnWg6Jrig071APvYwn5OSN++BOFxfxnt7qWM+4MBcMOj6p+x@vger.kernel.org
X-Gm-Message-State: AOJu0YzQWjyPnTequqFnJyINjqOCC8u9QF5vjsWnRk27V/vOTWzY3aE7
	U6N/D08MQve5p7RPR5gEItxF1komhEyqVf2jbaTbQ8H5czBMpU0uuxKpYPWQuW+PlXUOErGVmdt
	Y
X-Google-Smtp-Source: AGHT+IEgyiSK927zXIsO2K8ws+WuFo5rdGvLrwD1Uebv/Pcw7+ODrUZYJsEs7zuDgKzW3jgL4jxagg==
X-Received: by 2002:a5d:4945:0:b0:374:c160:269e with SMTP id ffacd0b85a97d-378c2cf5617mr1780563f8f.22.1726133347751;
        Thu, 12 Sep 2024 02:29:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956652ddsm13911677f8f.29.2024.09.12.02.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 02:29:07 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: ukleinek@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, hkallweit1@gmail.com, 
 George Stark <gnstark@salutedevices.com>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@salutedevices.com
In-Reply-To: <20240710234116.2370655-1-gnstark@salutedevices.com>
References: <20240710234116.2370655-1-gnstark@salutedevices.com>
Subject: Re: (subset) [PATCH v4 0/3] pwm: meson: add pwm support for A1
Message-Id: <172613334685.3721802.3816923810532224075.b4-ty@linaro.org>
Date: Thu, 12 Sep 2024 11:29:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Thu, 11 Jul 2024 02:41:13 +0300, George Stark wrote:
> Add support for Amlogic meson A1 SoC family PWM
> 
> Changes in v2:
>   add patch with optional power-domains to pwm bindings;
>   fix syntax in a1 bindigns patch:
>   - use enum over const for amlogic,meson-a1-pwm beacuse adding more devices here
>     are expected
>   - leave only base compatible amlogic,meson-s4-pwm in check section
>   dt_binding_check and dtbs_check run ok now;
>   previous version: [1]
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.13/arm64-dt)

[3/3] arm64: dts: meson: a1: add definitions for meson PWM
      https://git.kernel.org/amlogic/c/b7e5f4bb555ba1d4fdad6f94eb6ab9f8d9c63597

These changes has been applied on the intermediate git tree [1].

The v6.13/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


