Return-Path: <devicetree+bounces-80610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D8091A0F6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B18B72841FF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 07:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187196BFC0;
	Thu, 27 Jun 2024 07:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fzE44u76"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C7F74063
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719474971; cv=none; b=dKxO5XeRyVtZ66hnEgdZwTCztjrk22KRvxFoutYO3FjzhWEApnjx4W7yjk1qaKXZopbG1AnQhTdl6rnodJ+3SZY+tHv/INbiH5BELLQFlhQb8hD0dD/vNRejhbko/aKHkPnKB8YsagSouOyJG4IUQ7puWHBZWlIWJkd4g9NFfqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719474971; c=relaxed/simple;
	bh=A346QiIXS00xNk3ASUpVgw5Wdt0aDVi+VgTddZx6WCg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DaXHZYZcJNDQ9pYDX74bIE3mR+7yjJ84hamBvcqgPJ+BcMynj/zadvyflzhubIj7Qb5CPupevkRroP2YLTr8Dwe3ACTllxH4bvGyjPl4xEt9h+XfMgaGjSMtblrRqTY9fXgTp2HPWBSTi6yAonRqXnnOSR8TF36TIF0I0Gc2X7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fzE44u76; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-36279cf6414so5761733f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 00:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719474968; x=1720079768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rhb8tshU4UTCoUKCJ0uFCvR9IBtcpzLcynFRgzyN5xo=;
        b=fzE44u76GlrBgDuxaRzaIZVWX/cykXkLr3j53FsgA5Gr/uG30jZUg30B7X8rk54Qk8
         zTr9vTvYOm8FtyhGDRHkHiG6WfY//OEtayST8JopWwNk8a/ZIcDX3X0mZyzVO6uhh2UJ
         1AHPkq8G/6k/OWMgY4LuZQV17Fva309L3uNtArTKehaRvgpjRvJWzKDSuB4sKuOIBLjB
         Q06DbgNFaeWeMcbuk3qNFhmmn43UXv3JLZ4spn03nNOJ2Ja75RAUtXggnoDAXxazv0eQ
         PqynOOXfVFKm0P6cbifa1VknehLMCp/84LTwSgUVUsE62G5XIBrQX/u+z4b0xyFQIJmy
         FZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719474968; x=1720079768;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rhb8tshU4UTCoUKCJ0uFCvR9IBtcpzLcynFRgzyN5xo=;
        b=RV3FMK811NbXwdp9Z8GQ5O9pYjSd1mwKuo1eoGPzOI26MV1gPP/v/5JwOa7p4HNPps
         hRdhx5dl8RBfBX4cqUudRbMfat6tehJ+PA/mm7rxf16KqwQvGYTHstsTG2Lmg0SByAqo
         0ZFjUyMZt+L7z98N6IOxt4/95qur4CTO3zOCUmLmTjfj1Xs3B3Ij5oHVAIEfTa07jIGC
         g/gfQ8z+5qG6b+qmG/KyU1HRQ3+SJcvJa/cJ67y9Dkb4bx178d+O+eOGFEpapBiHScEX
         Z5kVcaaumtfo31C5DLKHRuKS9Del+BgrNmI8KdfAjslWMxCRFbVJbUGVXPQs8VS6M/Uv
         qrjA==
X-Forwarded-Encrypted: i=1; AJvYcCWO0uGr87nLb9PJUvs/mmDe/S+18il+9CVWKosOpHxuQz++kZFO5GliU1wDmGMHRnsvpsftPHYRVIaszASV9kTL0wfH4nI05Wxo0A==
X-Gm-Message-State: AOJu0Yws7WaHldEEWk1Fe4Nn1RUHkChWDxAgxsb/xNlUAc/SxcAUzTn4
	S0k+xTXYSzJ4K7KZXK7jHLZbXnnAJDXxi4sVc3uNy7I52sqGBv8yMahd5DdwXRw=
X-Google-Smtp-Source: AGHT+IHGlNZJk2OgRWQ8EYg2rsbzX9mhgpwNdd4jOMVlOFKRnwWm3q8FMrXLPKl2frkadi+gta/3Gw==
X-Received: by 2002:a05:6000:24f:b0:367:43ce:9c92 with SMTP id ffacd0b85a97d-36743ce9f2emr425332f8f.20.1719474967330;
        Thu, 27 Jun 2024 00:56:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674357c089sm1024019f8f.7.2024.06.27.00.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 00:56:06 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kelvin Zhang <kelvin.zhang@amlogic.com>
Cc: linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Junyi Zhao <junyi.zhao@amlogic.com>, 
 George Stark <gnstark@salutedevices.com>
In-Reply-To: <20240613-s4-pwm-v8-0-b5bd0a768282@amlogic.com>
References: <20240613-s4-pwm-v8-0-b5bd0a768282@amlogic.com>
Subject: Re: (subset) [PATCH v8 0/2] Add support for Amlogic S4 PWM
Message-Id: <171947496641.3255632.14959368201943139429.b4-ty@linaro.org>
Date: Thu, 27 Jun 2024 09:56:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Thu, 13 Jun 2024 19:46:34 +0800, Kelvin Zhang wrote:
> Add support for Amlogic S4 PWM, including the driver and DTS.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[2/2] arm64: dts: amlogic: Add Amlogic S4 PWM
      https://git.kernel.org/amlogic/c/e227c1e14dfe06a54844014c076d11e9cdef87e4

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


