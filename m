Return-Path: <devicetree+bounces-65873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAF48C0720
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 00:05:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D06671F235EE
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 22:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE23D132817;
	Wed,  8 May 2024 22:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lSauip+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA50132803
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 22:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715205942; cv=none; b=KYNmHzhexT+vyh9/ybRZFBlwbngrDSXBoeAdSkTJ51WdMWQaYofEBKaZe6VRrTdV9245AEUu49Db8vlMTlVdsfA0brFZAczDeOQi4ayboyLQ+4EsS9rKp8yEDmRokayK4AgQQOdSZdTeXFSMv0lJuo7ZZO2SQvw5hsrB7d27GGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715205942; c=relaxed/simple;
	bh=xXJXTX+AXl31YNYKpCfQaCakia+fRsDhNq9CD9DPan0=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lwe83ecEvuvhPi4U5Pn+LcNsbEuJSZKR7WUaVN6LkFgeg0XrJKJ6tbAWF6Zchfljs4cnd7Mx6kEtCqNjYY6XrpMZ47bgAYNXgFzNch1BH8xzKhCqiZqLgp4zOqjdYfMgGrWQ2SqzF5K1RcSzMY3c1pzLHDqMfHKzOrQKUMmphLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lSauip+Q; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso285636276.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 15:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715205939; x=1715810739; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXJXTX+AXl31YNYKpCfQaCakia+fRsDhNq9CD9DPan0=;
        b=lSauip+QEVMvJYgAjrNL7aHJDKYdz7h7x/0PNu0Wwi4oAMaSgvBj2TjIblgwtBO7+S
         6K+Z4xnIod/vIjM+nS1NrwEssn2rKJEnBJqI1LL78EfKeMZBQWchxCPC6GnGfVR3uoZ9
         2rfDVGeVaGtkqhc7zmZwo1cgw3iDTw8pTmBlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715205939; x=1715810739;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xXJXTX+AXl31YNYKpCfQaCakia+fRsDhNq9CD9DPan0=;
        b=l8na82H9J5Fiyzzt7DVAjihM2n3+7ynaUj/tV4udWddFwi6xxdprjfWjiKJNYI6pnB
         bVF2PryYyxD+qhQ3cYDGsdhNXj2+hrhRezoPzr6PtRgSSWKTJy094FBlkR5xFOXg+Y7z
         Vu5508B5LU/AcbEjmimeZEKqKNvyjXmpTIS1hrvE3GG3HDq0gC7Fgk769a84NrBkNBqA
         PaXMZP9dylHyKQNzzHFwMvn/DHYd6ynh/euUrGBOlqix+ICtI+ML9X3THKBSUkHDIkAd
         eIyUnWna3ITqjkYk/KlJRDAXfB+YCkEGoyJI/hMv/1ja+8zyfownBnrTgNLUUzB7Y1af
         rRAw==
X-Forwarded-Encrypted: i=1; AJvYcCXuvxxiQ3u0C3MqlRJD+gvS3jvQL6kZsIjRlaymZu+z4hpGhioqj49LRraD8LxVKSMIdM31E1hx0nRxBGR2Jgx3Ej7HGvO+jhblvQ==
X-Gm-Message-State: AOJu0Yyk8F/OFOr4FiOGkLeILfWQapRfmA5EvLxm/uuqclmX24WPE2EG
	AGkz6OxHaGfSluNuZ2Iex50chSVuiJU2fs/+aEdgB3wtRu9GCI0YfsDveO20VmRpOnRedHkmnOb
	cOqDZInBmqzE2jep6re+5jaJYA+VWq16+gBM5
X-Google-Smtp-Source: AGHT+IFOzlvTP54gRhOxc+z5MQ8WG/MPd7EKLY+wd4h6GfQB/rKrNwQ8ChHVKkeDh1oaX6WWyOIU2soq0jHzKU8OGwY=
X-Received: by 2002:a25:ac9a:0:b0:de6:d0a:ee3d with SMTP id
 3f1490d57ef6-debb9db5a4amr4379276276.30.1715205939465; Wed, 08 May 2024
 15:05:39 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 May 2024 15:05:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240506150830.23709-8-johan+linaro@kernel.org>
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-8-johan+linaro@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 8 May 2024 15:05:38 -0700
Message-ID: <CAE-0n51CUjWD30BbyPDqspg3-ZX3QaguBEtR9tBztGxCxSa4eg@mail.gmail.com>
Subject: Re: [PATCH 07/13] mfd: pm8008: drop unused driver data
To: Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Mark Brown <broonie@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya <quic_c_skakit@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Johan Hovold (2024-05-06 08:08:24)
> The i2c client driver data pointer has never been used so drop the
> unnecessary assignment.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

