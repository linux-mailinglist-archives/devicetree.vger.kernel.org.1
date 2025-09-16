Return-Path: <devicetree+bounces-217661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A1543B58CC2
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 06:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C17647AE542
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B0C238D22;
	Tue, 16 Sep 2025 04:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AkoXujtB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291711E9B1A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757996483; cv=none; b=Z1z9aeGhb8+OMUJGbpy/CDZoFMq1Mh7OoJGRWBRFhrKE1UvzkdK6hV8HV8YLhrmYqpkcvc5193JfFKhDFRUeUwQEolmsJ3SYNlipvnhGaOCmAJD9vp88L6Xy7xOodVmBjmQIzQuBzRmwQaVmM0AoWRcXCgfDqw+zMzZ2XlAZzmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757996483; c=relaxed/simple;
	bh=bogLoMlflI6VbNNnCzsFDXRtZ6mT7yFBE69/g4NDZeI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pcyxcqsaJzMlGONGMVBd+sgcUuFVilak+y8qhyTDC+IzHnYT+7AADnBgxoh1scnvvqKJ4zhV/d9PPM0yGZZA2MRea8H2wHDQ4KOeRX1m7rPZ+h0CEcIAis7NCaF0Q/v+5ZY9GC4/MS772yYVlPEsaq/ejU9MpsNRGB95uVMXjQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AkoXujtB; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e931c858dbbso3080144276.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757996481; x=1758601281; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bogLoMlflI6VbNNnCzsFDXRtZ6mT7yFBE69/g4NDZeI=;
        b=AkoXujtBVXk8PIvwVLotmv5GEugFnrh1u/RM5TBaCU3dtErI5lXwEbjr0NykiBtUAZ
         PgDAo9ztRKfFO2I4zsoje3kgeRU/fxZOeabsk9dbZORpQS96mye+Tnw2GlPblp0hf+Yt
         NPZ/6QlRLvXq4KLBgMb7JEjgYMQACgWk0eVnzziEoy1L/Ms4lqhSEzrhnMg3/JaEdNYW
         CcCNWocVuWecxO3A0eNSHwQKJ9LEunD1sMrlosQEOVfSYtn77+vAB5SDLfH2CrSGiwkZ
         5PxTYgI087Ze0eYgEsDVTqTYm+/tqn3EBqXPRwsYVDfmM+pEBGbXzsTvx30hpCF3U1Rk
         mD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757996481; x=1758601281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bogLoMlflI6VbNNnCzsFDXRtZ6mT7yFBE69/g4NDZeI=;
        b=ZbtaJ4e30xlNBQytSthg5F6MMC919YLTazCDyke17L5jl6zmU642kQrg4yS0RfPVCe
         mfbXoh1ka1tGdlR2cM05GIP0LwlJhxnlARCnYvoKNqhkCoerae5DKewG3+nU5bld1oiX
         e5ezhdfa9Bqor0eoW3+WUtfwpR1FWbrAdehDufIH2MtWq3Wty8sxYWdaDbM6R8Ml/+ap
         D2/Jb1EPhFU1ku6roA5bc98ZxAXpevRpVxzx73ximH5AJYvXkqfUU3vsezEGjO8UmRJY
         khmHECf1CTCJ4xW+2fUqQd6pNO2lzfFvGINFkABOuyO/MciSA9i5UDZ3aHh5A3b7SpcI
         pAjg==
X-Forwarded-Encrypted: i=1; AJvYcCXgwj9ZTM34Tks1GExaB1rYiWqszL6BtYRXe+VsEszH2yS/tS014ape6h53jO8DtRQtJWCFTpRJk+Ou@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn2POP7ub4vFJdmr+7bYXbJ5Ntd5wZF9uQKzPrYB6hVuHpf5Bd
	Khqw67liCwKv20yWQoODimvnxFcOLfFeFwTj2amI/Ucnn6XJ9zAYvgOy4tuu96QzR/IMOi7z+fu
	AdSUTCa+bDzg6FHUTDsACPvtYB/Vam9I=
X-Gm-Gg: ASbGncsuoI9c5pJz8t1Z6EVNjdxRsagCyqiKY8SJvZDpmkqFclVDXJHWSmBxOAN4pSn
	igh8mYBXcN3oEebjadtvA09mVfR5XPkf1YV70l/dnvTncpHz5f+c5iYqoQEY0xLTOjKammSiXEp
	CYTRflR7dCFvQZOLYcHRqxM9gYpBwMgM6pn2Rnl/VPqAgXmc14T6LxAYyjYhrDF+ANwWBWK0V20
	Qkvg2OzafkfhXds2m6Q9TPyJywrdfdpyZ2mTIqXBjM9EZVN/GYk8WCYVCyqhHo9O8kjid8r
X-Google-Smtp-Source: AGHT+IFyzGXqLS7HgTpLjfWR0n2UfIRuua03WSClBxtb3ipLLNlXWlUaTN5qUbRS4LtdFGTOHy1hA97gOm1mTGj9g3c=
X-Received: by 2002:a05:690c:60c1:b0:72a:78ee:f265 with SMTP id
 00721157ae682-730623e29f3mr107076077b3.6.1757996481126; Mon, 15 Sep 2025
 21:21:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250913002155.1163908-1-olvaffe@gmail.com> <20250913002155.1163908-2-olvaffe@gmail.com>
 <20250915-numerate-makeshift-c076500aaec3@spud> <20250915-deodorize-proxy-b18e41fa8668@spud>
In-Reply-To: <20250915-deodorize-proxy-b18e41fa8668@spud>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Mon, 15 Sep 2025 21:21:10 -0700
X-Gm-Features: AS18NWDfiAtyEiAampVSnuFJXyQ57PVn2PUsFhR83kG6F0bRG1fbgCjLT-SJhR4
Message-ID: <CAPaKu7TEjG3sWamy3k_YLig=208oXLPhMmbCvPOf96iEL0-uig@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpu: mali-valhall-csf: add MediaTek
 MT8196 compatible
To: Conor Dooley <conor@kernel.org>
Cc: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 15, 2025 at 10:52=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Mon, Sep 15, 2025 at 06:51:16PM +0100, Conor Dooley wrote:
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> Hmm, actually there seems to be a more complete binding proposed here:
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912-m=
t8196-gpufreq-v2-1-779a8a3729d9@collabora.com/
Right. I tried to add the compatible to the binding (this patch)
before adding it to the driver (next patch).

If this patch is not a prerequisite for the driver change, I can drop
this. Or perhaps there is a better way?

