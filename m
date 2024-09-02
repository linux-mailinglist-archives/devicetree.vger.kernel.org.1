Return-Path: <devicetree+bounces-98958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E745968210
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 10:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A9091F23014
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 08:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACB70187338;
	Mon,  2 Sep 2024 08:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HMMw1CeK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A85D757EA
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 08:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725266075; cv=none; b=b6mZPH3WNKaZ3wf8i5L8631k9z65jpb0ruIdkYwZV1tQ5sgtXD3vgQdIGpbhKRXU/abeId4x8jkHTfpfJNI71UcoK9J/D1vylZpcQxu6BejpMFVMPrifLNEeRqwzdw3P7duYQEoIo5vRzwyCZm89mursDUeLWJO8I996UTgRQXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725266075; c=relaxed/simple;
	bh=MnDoeT7vCt952wLfteYkGvY6GHFHpBb0+PURR7QujnE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=USc3oE2JMgNuBJbdmrJg7bVE9VdE4e58SnCcEYW22SU6OKnVyjL4IokIer7sVldZJNycGPEHzljlVbT/8HsxxhzUVYQQq8ejP2VaGTCuzbtEooCETiPr6ICv7vn7zVqaNsz6kj3bDccISW6Qt6vGp1WBIt4Ci7BDjCpYDkmu9dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HMMw1CeK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42c2e50ec13so16504915e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 01:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725266071; x=1725870871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zTtz4aJ6WOg0pDCld3WKbgJIlmwIlok5mPiJNkSVlqI=;
        b=HMMw1CeKvRNBJJm1dlqbzXmZGOlsOk3Ba9wM6hGO+MSDYJDTEGM2TTBM8adUpSC083
         53212+AaO8wcMDgP4/XSHpumemJraFlJsf46xeBL3D8/cPbJfEV8E/7f7O1MHZJtEwjt
         rr1/kG3dSKqCHd/CbfO1lJhjJfCiXtQxnTj+1ZuMR5OmRjotgQNDhw9RqgXR+Vkek3er
         1fZIUy4ViG1Iw723xsZ9xQMF2cImDlelkX56XhzVoXIY2bvhZxiB7XSZ1EHAjp2XrIaH
         +2bA2qXyiND3Mqsr6fyd/t/JNUM0CoR0/FJhspzvlKPi5uwoxUJABHTUG9O+mlZpevmP
         jcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725266071; x=1725870871;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTtz4aJ6WOg0pDCld3WKbgJIlmwIlok5mPiJNkSVlqI=;
        b=Su7FhWK+qLYCzAWqHMpI7Hit0v9rZXTqrTxaOkd+fm0PDVDseNcdZCeuxxVE+R5r3k
         DgAjEB9XWpOQgru2JMT+fbgipG5EJg/fIm46A0Bb6+AgC58PCginplNCG0Algt+5AmAe
         Bev+XNAA8MRb60Y97j6fPv8w2ELWRwr6PcrDMOWT4rcF1ULp7+SseWEVnm65jUYHWhZZ
         1JucUU0UEluXsdj9rEzP/mbvXG4Frya1kA+dI8BoYab8K8QXowjiQAsgRFTRFu7s4ah1
         I5M2sPe+CB282ZEd9H72W01zMAYZSFV2btz3XViy9Uz69+D7XjrJIup4gzQRN0yIErlX
         AysA==
X-Forwarded-Encrypted: i=1; AJvYcCXbMo1ElRaOGxtpgvEo4qFafavhdOja6aKzylRL9VXZs+13kSAb0wFS40DUkAM6V/ptJVC2nI3aF/Dz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd5RexB6uy6cQJWZjrvz36P2xMwrdPqa8AuU2lhDyrMnjhyBbM
	k2vYzMVuWhQoSqZ+iiT/z9NhiGpuWmlzbeDfNyOCWCAkQd6JGf9vgubzweReIy4=
X-Google-Smtp-Source: AGHT+IEW/pesy5OKJ0IGSRRTNmo3lQ2HG8HktgHM07V8Q3+5V8e1ooBtP7Edf8e8UGZ5iZ6agRXHgQ==
X-Received: by 2002:adf:f4cb:0:b0:374:c03e:22d4 with SMTP id ffacd0b85a97d-374c03e253cmr3159185f8f.1.1725266070437;
        Mon, 02 Sep 2024 01:34:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374bfbfc7b7sm5807456f8f.88.2024.09.02.01.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 01:34:30 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-0-58159abf0779@linaro.org>
References: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-0-58159abf0779@linaro.org>
Subject: Re: (subset) [PATCH v2 0/3] ASoC: dt-bindings:
 amlogic-sound-cards: document clocks property
Message-Id: <172526606951.2176850.4026983419764013991.b4-ty@linaro.org>
Date: Mon, 02 Sep 2024 10:34:29 +0200
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

On Wed, 28 Aug 2024 15:53:53 +0200, Neil Armstrong wrote:
> Following an off-list discution with Jerome about fixing the following
> DTBs check errors:
>     sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-sound-card.yaml#
>     sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,gx-sound-card.yaml#
>     sound: 'anyOf' conditional failed, one must be fixed:
>         'clocks' is a required property
>         '#clock-cells' is a required property
>         from schema $id: http://devicetree.org/schemas/clock/clock.yaml#
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/arm64-dt)

[3/3] arm64: dts: amlogic: add clock and clock-names to sound cards
      https://git.kernel.org/amlogic/c/9b5d25117985e51faf61a808c4b3e15432d55f85

These changes has been applied on the intermediate git tree [1].

The v6.12/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


