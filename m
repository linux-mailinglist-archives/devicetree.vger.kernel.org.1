Return-Path: <devicetree+bounces-175042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02052AAFA2D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:39:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39EAD16E429
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB26226CE4;
	Thu,  8 May 2025 12:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wDMkLU/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683F514A4C7
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746707935; cv=none; b=B7dYx+bt1kv3k88lPHqPwGwaytgbzR1O48HUt1Tlg+/VISCJcNNf0KNM4/P4NP0XyGu4Uy9Nm2HbizrN/RFEO4yxf43gMFkt8U2r+s4cuGDdrpBQO4R8MdvEYQG/QY1rhinzbt0tjNd7kMHRs4bIw8S2Ndm/AZZ6i8LJCCBnkSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746707935; c=relaxed/simple;
	bh=ym/GGePTtcR6pPbHuXLLIC6Kw58vqtqImYgRJwNLr5w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MMKOmU/0jbRokF4Z5XZ3DhnJ9i1p2Gau+DcVeJQy8Hxs3gQeVWDUFd0M0Wcv4s/nvtrrt0WBs1UzP+XwH9k+omsa1Slk2WttfNMyXVyz+8UI3tDieYPXxyRf1aC7v2D1FqUqtVCDTVqdRDtBl4niIPiokOYleaFGrnf/DTUVFB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wDMkLU/i; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-317f68d0dffso10629461fa.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746707930; x=1747312730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ym/GGePTtcR6pPbHuXLLIC6Kw58vqtqImYgRJwNLr5w=;
        b=wDMkLU/iBTSt7ygMLhPJEzEH/GXw1jl/+0nNoklo5RhDLdpBZSGSCrr8ZMFgklmJa+
         JhY67Wnia9PDKosZAf5iu4OQMMOhdW4SjOwZuwI2EDpogZEMCHQBtqkPl4oWenmw/yhW
         Dwmt7Iw13Bz8HzRgb/SbHG+mnrNxDDX5z6Nq0O3v6maemtAnnG2hCgsdWn1JKAWmVed8
         KeQ4/thfr0PFE7SFP+ovnUN8TsWWyOYHHWaUiq4uzICkRHwephI/hwOK9yoJB2/epGyt
         8DJmSZZ3r1WuGwhmBMqWVp+cplxie10DV1UbR0GohfmIy+jjFZ8toG/h3enhAvP5eqBg
         EU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746707930; x=1747312730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ym/GGePTtcR6pPbHuXLLIC6Kw58vqtqImYgRJwNLr5w=;
        b=XYhzi9ssvsPAtgwzEAa5dLXh6WyKRUIdI8tE/y4HUzgyyKfS7xXfiYxyplySTy1jZJ
         g6V8xmhs7sDuPGCn/RKcPdo14tqJ7hNYaTYAuszsqvw33i4LRnNRN35beDSNa0LZhCeP
         S0XJg/iSmrgJbwBb+I9DxPLwheDYwla7ols2ypXJtIiqItZTXp7imvEX2TJH4yjtHZeL
         NO4R2WCmBlR5ObRZb45jIEbLuGiXa2FEQyDRp1BSX9KYr8mhfSFkCoyFn1F/MqzN+sf0
         WHvo3SHBHO0JGzvh1c8CtejhdlkjSCFIE7t5JVy9tcbEllWCP9zWv+F4+R0Ft9W+3Znd
         34VA==
X-Forwarded-Encrypted: i=1; AJvYcCUtrGeZr0V3JPpXY2strCBSNF65/Iu2L9hCv/iCtC/PPczeSvxSLzVoCSoNCpKUNf9uPxmx+fO8InNd@vger.kernel.org
X-Gm-Message-State: AOJu0YycVG/PoLE6R6MiKal4ymICA6ZJeLdbN49niqK/I/sUzsf+Kv/d
	Ibxumd3Qaukheqhk+t0FJgejZXFhzqjJsepnNNn1pr8EB9AB6k+OT6vYX1e47xEGNXQG2R+X8By
	ViENe4c9WU1A+BEjam58b/0YoiLl1IALRrj1qTA==
X-Gm-Gg: ASbGnculztRbhyWi9IsnfQbQ84ljuWsK4CBNwWy2sItfRznn5WMljsqjwhJy+Q0I91j
	j2vU9EnMqDcm/rdcVZGIZjZQrvBaEDxpnTvqoNvdBLFGp5NwLDNGkOCmeRhAnqSdqxsc66GiWKv
	uR41BxYt+VeF00JLj2WVyCrg==
X-Google-Smtp-Source: AGHT+IGJqMyrmkCUIQDg8PE9y89S4un8Sptn+ne9CkBnqLfvsuKGyDCGNoAKWRWwcnckQHjTgl6OjpG8jsiCqQsITZg=
X-Received: by 2002:a2e:b893:0:b0:30b:d543:5a71 with SMTP id
 38308e7fff4ca-326ad17460dmr28868011fa.1.1746707930459; Thu, 08 May 2025
 05:38:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250506092718.106088-1-clamor95@gmail.com> <20250506092718.106088-2-clamor95@gmail.com>
In-Reply-To: <20250506092718.106088-2-clamor95@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 May 2025 14:38:39 +0200
X-Gm-Features: ATxdqUHd6nS8kMJuc0f8MXMDIRZHhCR46AYmqFnKzqCQqTYWz7YZni31Y68Ocio
Message-ID: <CACRpkdZCv2RV1ioXsuJnLHsiErbrfv5jjzvPWMire94+OznY2g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: panel: Document Renesas
 R61307 based DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 11:27=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:

> R61307 is liquid crystal driver for high-definition amorphous silicon
> (a-Si) panels and is ideal for tablets and smartphones.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

I see you have gone the extra mile and deduced the underlying
display controller, excellent work.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

