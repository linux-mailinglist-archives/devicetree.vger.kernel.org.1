Return-Path: <devicetree+bounces-107215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB4198D29A
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:58:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C821284B13
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D780D200121;
	Wed,  2 Oct 2024 11:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SeR8bslo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E4F20010A
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727870298; cv=none; b=mmZ1KWCaRM7AXWwXlJb2eF/2Zv1xMKQJo2azlAUM/KMlyvcskTc3eMzUvIZGtSliVVq2cfLLWc4lTNnY/86lNTL1hAr9jAAYMi7Z4Oqk9zCrF3uRK517Rc1xPRcd9omyS7+CevODYC+IAVXh8Z8ObRo9Hh/Vytel5Xnud9W9O4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727870298; c=relaxed/simple;
	bh=fL9v4AHZ/INp8TeWxKwvfGoMuAaVHhqmCcCgRa9MWnA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sLEOFNSyFDHowHre3WEjXMgvx1Xm8AmEvOF6nSrcfax4HseDlbiZdZH8mnxVq/Ua0d3BZ+MTShRcbknXZIM6AEGIUN+pNlEOJ43YYreEidcHOFerPln2ZWJD9Zi5FiJV/RCzkzfg5I22a4Vc0ZhIzAvl0st3t5V40/1x+pJ0Lik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SeR8bslo; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4a3a77d435fso1489723137.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727870296; x=1728475096; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fL9v4AHZ/INp8TeWxKwvfGoMuAaVHhqmCcCgRa9MWnA=;
        b=SeR8bslorzhlOQcj36J0UpXUutwPCP48MUqHN2SNsrEjUfe36OTm+wiPzWzbTDZSe+
         QkwSBGaZlvE48FN11x5jT96jBpvGKrH+nwVB47UAu0wUCE5VJsQZtIB8GfkT2sIv/xRa
         apDnZioJ0bGpYt6TD97bUNu5J8auLeEpvaN7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727870296; x=1728475096;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fL9v4AHZ/INp8TeWxKwvfGoMuAaVHhqmCcCgRa9MWnA=;
        b=mQydjgrIjn1wWzt9io3AKm4HdJ+V2jKhOCrtn00ebO8yJq0gMQVwVO0qYb6Jdjxzb5
         4bSR28dwO1gwkBQc9kvrSXtCgxtDAVfDn346gC+BXQiypQOhSr0Xx4Fyn9VC0vXFJpPU
         N4AxmAUBw2UIwnpO/wu33gGBukdF80zmR5+//hQ1DziJsBcGjJk9GGEZ7UqLsQD4Qtgr
         YGqVZfI/NtQ9KRo2dzz+ss89q/sZ1qFlKpBZC3YpPiLBuTT2oY2i2/4KV4WIQKaZOCjk
         Onieshpd8OeGrPkNv6LWE0adtf4+m6ZlxH7yiby3eKRv75NymwlX5ZF0qcS0GqwVosUR
         Mjkg==
X-Forwarded-Encrypted: i=1; AJvYcCXbTjYZHKXtBcoCSLbYrCQ7ADzixC6AHl/L/BsCTrvNJTiu6bIb+AmQC7RYmhcR8B5JRRpICqtZw7iE@vger.kernel.org
X-Gm-Message-State: AOJu0YzRFqWjK374M96w4LC2tMoTD8QprOR70RWb3MzdmCkm7kmw2neW
	cch1BirKJrWg3Nof3lmNFcWaF5QnMf+PBwhJumjSIdDAWdyu9v0JE9fMEl384CSb1PgqUp/D2m4
	mKA==
X-Google-Smtp-Source: AGHT+IEWwMDAKnz2csYKAimA/P5guj/O2llgdY7EeXA3CbYOLqfwldV1+JOcys6z63QzR/oB/tNuUg==
X-Received: by 2002:a05:6102:94b:b0:49d:4812:913f with SMTP id ada2fe7eead31-4a3e6901a6emr1670339137.23.1727870295874;
        Wed, 02 Oct 2024 04:58:15 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a3c1f708f1sm944040137.33.2024.10.02.04.58.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 04:58:14 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-84e808f3c3cso1724172241.2
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:58:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUPgy9Y52NEGWCYoe4Ozwv7vHaMN6h4iOLS1mjIClZcXxcXFKO4Kz3uVh45pBVbTur3QLMWIiBGMDki@vger.kernel.org
X-Received: by 2002:a05:6102:3912:b0:492:9e3a:9f48 with SMTP id
 ada2fe7eead31-4a3e68078a7mr1610494137.2.1727870293454; Wed, 02 Oct 2024
 04:58:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001113052.3124869-1-fshao@chromium.org> <20241001113052.3124869-4-fshao@chromium.org>
 <r22z7eehmuprvq67gxekqwsah2mcobfsyhn7xzyyh2gdtjegve@zl32uljxrilx>
In-Reply-To: <r22z7eehmuprvq67gxekqwsah2mcobfsyhn7xzyyh2gdtjegve@zl32uljxrilx>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 2 Oct 2024 19:57:35 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhF7CiiGaNASiqYw4Av7MQfLJsUa1HrYsx9n4D2sAP7Gg@mail.gmail.com>
Message-ID: <CAC=S1nhF7CiiGaNASiqYw4Av7MQfLJsUa1HrYsx9n4D2sAP7Gg@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: media: mediatek,jpeg: Relax IOMMU max
 item count
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Bin Liu <bin.liu@mediatek.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 2, 2024 at 2:16=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Tue, Oct 01, 2024 at 07:27:21PM +0800, Fei Shao wrote:
> > On MediaTek platforms with Multimedia MMU (M4U), a multimedia hardware
> > can be assigned with a local arbiter (LARB) which has a maximum of 32
> > ports for MediaTek's IOMMU infrastructure. That means there can be at
> > most 32 items in the iommus property in theory.
> >
> > Instead of relaxing the max item count every time a newly introduced
> > device tree hits the limit, bump the number to 32 as an one-time effort=
.
> >
> > On the other hand, all existing and foreseeable JPEG decoder nodes at
> > this point have at least 2 IOMMUs, so set minItems to 2 accordingly.
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> > It's not in the upstream tree yet, but the upcoming MT8188 DT will have
> > 6 IOMMUs in its JPEG decoder. This patch is to pave the way for that.
> >
> > Changes in v2:
> > New patch.
> >
>
> I do not see any user of this in this patchset.
>

Sorry, I was doing more checks before sending out that series.
The particular patch depending on this is now available as
https://lore.kernel.org/all/20241002114614.847553-6-fshao@chromium.org/

Regards,
Fei

