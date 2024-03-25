Return-Path: <devicetree+bounces-52882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3910688A4A7
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:35:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 697AA1C3BCCF
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0F618D87B;
	Mon, 25 Mar 2024 11:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BMqgy39u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77CB1552F2
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364263; cv=none; b=hLwOTA+NVw0tGgRWebMpSjc5cXPz/J2DBxbGu+duMevtG+uWVi8E7NVPmyd6r9oMdqKpibmNmZ04CRSN6jdrc9wdPqRtUv1+IdM3as7RBqdUA4D08Yuj0zdRrTRsSpx/knlhlCqOkycsB3+zVK9NfPxqQNiNSCSoIOCJlCsUhW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364263; c=relaxed/simple;
	bh=ZNmvTSM9WskoV9jkCverTdK2gmPZbqJ5s1SufnKoohM=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lRWLNA0MtoAlB20X2kkCQyis7JRFfx0Vh0XX8iSXU4iW4SmFKPFBwcLsR4z3KtlJiLT8NOLik350vb4Tp9FFrUaIoyFwrmrf+nSUvEztUiGeL8rTqtCRFY7yOcbACxiEao+1P0+bwUYBoGzRbOO7FCMcsGdDJa9fzJKf5cZL/UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BMqgy39u; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-56c08d1e900so1335467a12.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364259; x=1711969059; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GiFPmka/p26FoyLkWS6C+JqzFKTgiIjCyRSd6+v/el4=;
        b=BMqgy39uEh7sUnGf02iT9JL5KwF185CTHioAgmxxmWUwSLFHiVEYF3vrapPRd2xvun
         O9u7GCLJ4iHma50ZwPWkFeGc4P+OF0NMALELljbGWwtlYo7lhZ+0q47FqEINnpyWhWHq
         c+rU6h6aBWJLvb8nWnp0U8fCPHcPflGnhewG3oySoJm5Bd/3rXAh/1k32ohieRFqqapS
         QgkovsCAjUJXY/ulWQyaYFmX8e88KG5vuntQLS+I9VHFnZnePVJV6aG/VUjZ/Ra1hteR
         sI/TyKWXRORaJn1c4GhpE7FaPl5wir20j+VISCBbtMbwkXeQz/hKOk2rt4Kb2rQWL4Xt
         jjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364259; x=1711969059;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GiFPmka/p26FoyLkWS6C+JqzFKTgiIjCyRSd6+v/el4=;
        b=uBxB0iGIHlXFPYR+cykkVcHVeO+lZqTNhLBkPQlTcJP0g6FuH4qAL0qih30rjDtaZl
         gupyyxG4ZFz4ZKM1lbbKxmEGLjCok9IfD8riFV36kuzSed0OgIpxhXeLWoeEkh1e0i1y
         IX2QMLxOmU1YsfCZ4ZYdcakoZ8IF9gr56pWw6g/cKYCUc0njPcTkb/eyHYjVjZlqRhEz
         hydhFOVPwnfgFTWIhv+P8Erf3TcXFZqw1smH2qsHlAreVF+6I8vU+WqVk5kg5leIaQHo
         Ah/vjfYtKh4fZ5Cb9MgHGxbSfq+OQ0IX1Hw2QChxRsLyHdbmAUWWNMLI9JmAek+EFLiU
         CRwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX35wvEtt6XYjCuRnnP56VJsGibLi8iRzUR5xO4yDYaJGI0HW/JlIaGLeCNELoChc5LMaQrOedr0PLVsPx3M2HWpdPUo8RQUFlwow==
X-Gm-Message-State: AOJu0YxVMtSZSvkhoR1Ig0YCxPSIZudd5IHdwguu0CndJ0Bs8ON6GBhf
	0AwRFbDb7M03uok8wz/hha34lw5vxDmTk42pymx/2QstRCAa5fOlv9af2W8W7TY=
X-Google-Smtp-Source: AGHT+IHrOea5cReywJ8Vx0WsqRFwU3TXjuY4dSN6EjmPcL/LGoqFHz6R2NYo+nog5F/IjCKcIF4ggA==
X-Received: by 2002:a17:906:4e92:b0:a4d:8481:5ea8 with SMTP id v18-20020a1709064e9200b00a4d84815ea8mr266415eju.73.1711364259238;
        Mon, 25 Mar 2024 03:57:39 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id c19-20020a1709060fd300b00a45ff5a30cesm2940522ejk.183.2024.03.25.03.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:57:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240313183011.14253-1-krzysztof.kozlowski@linaro.org>
References: <20240313183011.14253-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: samsung: exynos5800-peach-pi: switch to
 undeprecated DP HPD GPIOs
Message-Id: <171136425808.35431.8311696844753821107.b4-ty@linaro.org>
Date: Mon, 25 Mar 2024 11:57:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Wed, 13 Mar 2024 19:30:11 +0100, Krzysztof Kozlowski wrote:
> 'samsung,hpd-gpio' property is deprecated and uses also deprecated
> 'gpio' suffix which is not matched by dtbs_check:
> 
>   exynos5800-peach-pi.dtb: dp-controller@145b0000: 'samsung,hpd-gpio' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Switch to hpd-gpios property.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: samsung: exynos5800-peach-pi: switch to undeprecated DP HPD GPIOs
      https://git.kernel.org/krzk/linux/c/75d7fa24772d0d7f78aff9eff013b3e2bcce3335

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


