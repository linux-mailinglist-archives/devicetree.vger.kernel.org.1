Return-Path: <devicetree+bounces-52880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ECA88A4F5
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C02191F3DF27
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727D717ADC3;
	Mon, 25 Mar 2024 11:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mrb5oQqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468A91A0AE0
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364120; cv=none; b=ukvSkeHM/vHQCFd8obBs1uBYDizJIobkMHD0YRlRgJhzAUGRPhtHB1w25DIlfGrp/JztaU9ebCkggAvfnjdy5tBxi4obkRBtKswXPS7i++1kto1Eew0Kkdp1+OCUtEdF8dM2x3mJGhfMHWH775A9eL9FghcJFp26XvPHmcq9gEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364120; c=relaxed/simple;
	bh=4nAd/EAJpokdGGZGpm+JgdUUcm5UsCvxwQ8RcxzoCik=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Lg4k0PI6J8SOe5k6M1rVJNgXTHlBzWBpA/ewn5an3WGzmo52abXiBfNg1zjNqxowM3aKC5fg07bfkIfsJjQsL6mgATu64ak+RD/+RnPQlv4NI36iqfF8OQ53ZLAqadksgbh+vfDsSmcbZXd4nGqax/01oOKaA60T7zVO5uNixbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mrb5oQqI; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d4a8bddc21so57449231fa.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364115; x=1711968915; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFcyCCwkrWUNl/vLlM9putmgMzWSgSa5UA8ajqCwlrY=;
        b=Mrb5oQqIyEHZlqTaVGavUTGpvypgvfG5Doqzm1/hJqKkvT8AptTyW+frxr02q0UaGJ
         TFj32Rr4be1ry2GXoPrbNxQcmZ9GQKED/sVuCjQ8GtW7Br1uES4c+uj/VZs070+BKmTM
         VDc2WTzQvvEMBd4UOYMd5zWXvEnB0QWhTarfGdhuRX+Yxion9NZXRrjnqOYt09whXVSM
         Xng8r1B38GlBO/Y4yv/t+R0nvotsRpzbxqMnz3qF/S1rND5ZMT8p1G9gdG5IC6bBumZm
         +kL3Jek50i+KeFzPMdklJacmUs4hZpitMRYRxZFYbzFPgZ4xrTFtHI9KZEu+eagdgJOY
         ZZog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364115; x=1711968915;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AFcyCCwkrWUNl/vLlM9putmgMzWSgSa5UA8ajqCwlrY=;
        b=KarIyYLru9yaJAWdMbj64n/aISFCcTpTTeVhbz/xIVY7lzvFz+faSRQC/6nji/B6C2
         A/MpigY14E7FNI9iZUNZ9LbCIrvFIvz0DQRzFLM41+hto/dW0Wx9uqm558d+Ufc2OOzP
         ApRd18axjPAxbc/yaW1cwx3dAEaF+z43OcD0zxnOtqS3R1hQJqSdsCqGLZ76a8XAK5tx
         v9Cayj+bgibefTEHCvEmyF/mnSh/yQizkOQPSDRH/uJJNkV7OMmEEzuP/e2z5exT38TX
         cJBlmmlctmhcmqtIhzhtLN2iwfi890rLrP4QGn4a5H266GLI3TWr4o7VeRYCwyJ5MJQp
         Z6wg==
X-Forwarded-Encrypted: i=1; AJvYcCUrO8wstuzzlk9PyowzUhIzBQWGZCyIxgRsF9DWr43JSh74MOz00h85JBue/FTJa4cXuPXvI5xKYuom35P0mz9c+LOjHBAC3D3rXQ==
X-Gm-Message-State: AOJu0YxLFI72RJ9Jt0xdme+YQrnJ2vbEcmmJ0p2W6GPdcglZegIooGSS
	jCzp9zJGWNX7kA02rtgID52x3j86ImF1N1HBBnZmEDLj2TwV0gtNZkijJBQD8E8=
X-Google-Smtp-Source: AGHT+IFmXAWMmAnpJ15iSitf914lYKTJoX1F/f5dD88N/zLkvlKc9jb1ispcL7LFp4W0fApbWNRYMg==
X-Received: by 2002:a2e:7d18:0:b0:2d4:5c0c:77db with SMTP id y24-20020a2e7d18000000b002d45c0c77dbmr3743878ljc.3.1711364115205;
        Mon, 25 Mar 2024 03:55:15 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m29-20020a05600c3b1d00b004146750314csm8161410wms.3.2024.03.25.03.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:55:14 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240325103227.27474-1-krzysztof.kozlowski@linaro.org>
References: <20240325103227.27474-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [RESEND PATCH] dt-bindings: display: sony, td4353-jdi: allow
 width-mm and height-mm
Message-Id: <171136411426.2357652.2521397331384143643.b4-ty@linaro.org>
Date: Mon, 25 Mar 2024 11:55:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 25 Mar 2024 11:32:27 +0100, Krzysztof Kozlowski wrote:
> Allow width and height properties from panel-common.yaml, already used
> on some boards:
> 
>   sdm845-sony-xperia-tama-apollo.dtb: panel@0: 'height-mm', 'width-mm' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: display: sony, td4353-jdi: allow width-mm and height-mm
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/c8a0970321aeae4a5e807a5b323be9d48c6b5749

-- 
Neil


