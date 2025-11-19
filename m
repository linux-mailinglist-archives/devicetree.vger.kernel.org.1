Return-Path: <devicetree+bounces-240236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA40C6EFFA
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 504EF2DF51
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C53C35E551;
	Wed, 19 Nov 2025 13:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iNqrXIg/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D1335A137
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763559958; cv=none; b=FCbgzkllZkbn1m1QKsud9wdcttoI6vJD6YdwJ+3c91jUoDQbOWIMozKrpl5rwg+oCEH9fbCNI6g5Ds+XUoAeI3K9FLUcChfJriD91t1JAzFei66G/VZOz6YV5ITqagFBPQ2279oLqFTKQXBaESgRPYT9nZ+jzgJrRKa/9+OiSPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763559958; c=relaxed/simple;
	bh=Iw1IbTA9k7P7Eqb6cVyD4QyxkJcMEsmsz+D3jS9djWs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IhOe45LKyFbT0EMBQqpn1EqR57/C6rmIy9+DLLVPax8HMN545sUkMw5dXHWWiQ50Ga+8txQ0avzSZ2xNkF4OHalqquHRkg/sxXtVk36n5HybsNXcfDOMdesksckKohchJAeKsmn9c6c27f2oKSJEyI3OyCF4wF877dv69/dH4mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iNqrXIg/; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-595819064cdso1407254e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763559955; x=1764164755; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/1l2z/VREV/OGSRWFgMDmn4kGnAaKe77gm/9lQK3iBA=;
        b=iNqrXIg/IFIeYcgUC4NVqrgdh1jtEexXjeHh+fyvVHuWhEvCdpe1asJ3vEVZuYBUbm
         L3OnuZlmKWnYLDOkP3uVZQJ25KQv5jWj4nk2BFf6kNhmBs8P+xhmGlLftLCADjyh3vt1
         KYstK0aqdE6iUUryEsw3VZeUcj9Tr8JJDmqpM/S53vmGLCU/ZbeDqbtm3vh/m7u0UGv9
         lmybBJC9VH6R/iuubFKGAKCnfmGXYp7NmuHj0DgxGhrL5ARfIleawB/jCTQYFCmRvP5u
         OXdj6oirUOayuCaINelZlcE1rf+VF+QfupjJigrC22sPTYr/K5/lYjrYjuWZbYPaYoGa
         Z2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763559955; x=1764164755;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/1l2z/VREV/OGSRWFgMDmn4kGnAaKe77gm/9lQK3iBA=;
        b=ZjrmsgwRdH19GV0SYrdnnNfjFgqpa7Fc0PtgfAmlClAm8nbis51UTcZe5jmMmzVC1H
         31FkT68Tt0XObjAgn7RYOAp1lyfrWMZLMzhL6MEL9m0ancBqCOJ2i6SCgDZc7TP8yLAm
         IoA5r79OMSHDED+HtWRz8X5k2d899U2HWmWh9JnihY+gM/rz9wlIbTXqM2Q4+HwcHtn0
         8Nxwqez+PY9LGL+jEPF6+pfAHz77f+u26j9rSqV3nikETKn5V3eXSwiFX2oQ/mydYzwZ
         XQASPyYLjNZSvk5XzTHOK9B3oZqLdXExKUvd1YmZj6P3jNqkqpZoBr+4ueD51VuBsQbx
         US+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUXtkbBRGktICTte7TFAfCRUmm4LoXx000AyZjfwx6ZDPT0P9F6D62qaTt0kLXgru6hU1ZpxZ5SL8Mg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy264Y5ZbdyLH6fBuAPf0SipgFNPsMrs4iTE15ymy9hrxtpGj57
	VN6tsxQu79kM8G8cfe6Dyn4sNXRnF6WhLWt9O/cq6MU1Oy4pj7A6IZo0Rrik/FvmnmQ+bftYQdM
	iSEZehOYdpgPJQba0laKR0WEVBgbqb5xiyPuHibFCdA==
X-Gm-Gg: ASbGnctbnChtkUufFomcqhnCm4zVhNxreUi22aayUCA337vx6ZMrMhjxnxcKayAuqNS
	bI9ElqhcCpwm0RZKy5bmbeRznICbbNKAhOfnviNhKe0YAZDXYO4wg0yNJJyGH6eMkchnvEG3/qj
	hsg035lbZRe3H7a2UZBK/qwPPM5390O6qcC2NOaN9icwmu1gHUyvLW8a/PT1frkmZgtSsTSD2qE
	yGNPvn44FezRjpNLF8ZveY5YQEms+HheM+v8sdyeJqYkjzQdXOEAUE8Cg82hlHnT5t6Megj+dU8
	Euh/0g==
X-Google-Smtp-Source: AGHT+IHi46MJUsWVgKG97zvzBmctPH37ez7biiVDWReMD3gtNWbTOlbOcaiB9PFyYiZpqYGbAnTU/qHFubT2adEieWs=
X-Received: by 2002:a05:6512:1541:20b0:595:91c5:3de1 with SMTP id
 2adb3069b0e04-596432521bamr735676e87.0.1763559954606; Wed, 19 Nov 2025
 05:45:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117091427.3624-1-antoniu.miclaus@analog.com> <20251117091427.3624-2-antoniu.miclaus@analog.com>
In-Reply-To: <20251117091427.3624-2-antoniu.miclaus@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 14:45:42 +0100
X-Gm-Features: AWmQ_bkJ2p2IaEyURBIT9I33r_u7IzpUPkMo9HREbt3jJevxjDJx9Uz8HFl3ag0
Message-ID: <CACRpkdbdsqLnqGeOVtNJ_N2Z+rfpON2-B=YV30xsN3iN2Wb-KQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: switch: adg1712: add adg1712 support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Antoniu,

I like the looks of this!

On Mon, Nov 17, 2025 at 10:15=E2=80=AFAM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:

> +  The switches are configured at probe time based on device tree propert=
ies
> +  and cannot be changed from userspace after initialization.

Please drop this paragraph. The DT bindings are for several operating syste=
ms
and this seems to be Linux specifics and also not every operating system
has a kernelspace/userspace separation.

With that change:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

