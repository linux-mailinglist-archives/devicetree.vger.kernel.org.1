Return-Path: <devicetree+bounces-137985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8092A0B5AE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 12:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32871881D6E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 11:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7714823A56E;
	Mon, 13 Jan 2025 11:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RNS8/buR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387AE1CAA6D
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 11:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736767572; cv=none; b=lL7Ce+X3iKXTSj2B1Y8hKqvY107bsCYQ4S/+woHP2hIiGsbEqY3zewcxG+AxM9KHAELkaHO7Cq8Gz2inohdSipvsUD67FrB5RavgDbXiMldrO6b0AW79We76aNG9Pn/fwyMePTk4xeENEN8JyRvjneRMIDbVqZNMgQKYv7KgAE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736767572; c=relaxed/simple;
	bh=u3hahkWocHwmmkAO+vdyrc0iLuCr5couR8jZqwcdfd0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IR/L3fhFonW1tXX0AQOcvlet1VzVEgnu/bAJX64me5xe8tOg4VIeRLyHsNk3e2DyMlg3W85JYANHyNtZYd0JWhKdl8DTgZFvgxGFJNZp/BdiefUoh7V0eH7ymUz6J29Ng9AUfHspD9zM7WA3A9QKHIPC5t5mPwRo6bZ7lfpJhtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RNS8/buR; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-518a52c8b5aso1330558e0c.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 03:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736767569; x=1737372369; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u3hahkWocHwmmkAO+vdyrc0iLuCr5couR8jZqwcdfd0=;
        b=RNS8/buRF2+FkUTzpTQkZLTC/6VC+xbW7gTHPkM6VWp2NCjDJ9FDl+r/1QOYIAj1eG
         7jsHi/4V6NIm8b8KVf8oeVqrSx3Uj7e/zhKuTUSLFOhn7UN+dTNZDqRlKlMIWC4qv1cD
         bPtg0B7nGW7XGT8+UBwvNdpwnCTmxujxXiwE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736767569; x=1737372369;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u3hahkWocHwmmkAO+vdyrc0iLuCr5couR8jZqwcdfd0=;
        b=wnH3kSWV4RYPhHgWUFMoNRfT+QpBY1FQnhHMVa1+o4V8ubEPiBDajYo2ZKJHCbw2NC
         QMn+crUy63OIFnZjhaOJaeNFMxpsioH0Zv+0HmjWAMxujru6q6Lq1D2ftY6iAlky1Sln
         KxLqQAPgeKjggEhdJgnxOqKs+rnNvUaM8BHt2Fy2qtzEuLVHiChYF6w5pV/AHnSo6+b5
         1Gn4J2iymud8BakGkcnslmA6Dh6WV6NG0Fn1KRq3RGr0nacVtc2TZsUWpe4jCIWSzY4J
         Iu+MMeuTq7hvLCHLb9W3uJjTwzdjJN/u+OQ7fOgJe/9N4r3slTV7brTLPtcqmwT4bWWZ
         qTvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXP59TknusXP23IV1c0LUsSnG9Xgslrb1TbWWjPQmKf+siuMxQXbMVbIbUNJ57Ft3UrkYplokyFNdcz@vger.kernel.org
X-Gm-Message-State: AOJu0YzJPG7n6Rs2meapvJBpUfC+Uz29ixznqrtucwB1cDIVnS3sSjAJ
	1Q/S9Er6EKHjx+Ygvyva6e9JyqsjdDnCyXClqVTLxtYxKROggdf5vuuFfZfZw8JVAsVLoT0SMD4
	=
X-Gm-Gg: ASbGnctfhdj4VHNsMESKnaNltCDMsfFM2rfimI+mKL95qZt9SaFWAz6pRsYt6pdYwzm
	BXab5XFVIUtCShShU0dd00wA2CQOGpIh8R9qIkvY31+EM6EJpX4Aam6lWR+STyNe0cWhhXxyhg+
	B0jMTRrjmJlfmeQh8AG8T714iH8uPPeeqNMq6x63cufPYRxj1Zh50LEo1autlOpvM1ezyL92pW8
	UVadC7IlKedPXs5lozv5dJ4o4MAknuNKt3qwTQSRLKYNKZYhWovgd7qHs8uNsLCw7c+yS88H7NS
	0Xb/mjlRu201rm/S
X-Google-Smtp-Source: AGHT+IFrdnjUeWdV3NpompJ7+lYxGT8+rJlPTmIr+zdlfliAzcT3wYle2Z6vyo0EzswimfBzfH4mOw==
X-Received: by 2002:a05:6102:3750:b0:4b2:5d67:94c3 with SMTP id ada2fe7eead31-4b3d0fc4134mr16139714137.18.1736767569060;
        Mon, 13 Jan 2025 03:26:09 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4b608f033ffsm4229293137.6.2025.01.13.03.26.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2025 03:26:08 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-85bb264993cso924762241.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 03:26:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW91r/0Mb+xZl0Esvma82hFOswyRd73pKWdIYe4dtcbpPdJAgT4IU/fukIryNjH0VvsRp7JF3+fqvr3@vger.kernel.org
X-Received: by 2002:a05:6102:26d6:b0:4a3:ab95:9637 with SMTP id
 ada2fe7eead31-4b3d0f1a897mr14365630137.12.1736767568272; Mon, 13 Jan 2025
 03:26:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
 <20250110123835.2719824-2-paul-pl.chen@mediatek.com> <0499ee04-0fcc-42e1-aab8-3cb8daa88c88@kernel.org>
In-Reply-To: <0499ee04-0fcc-42e1-aab8-3cb8daa88c88@kernel.org>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 13 Jan 2025 19:25:32 +0800
X-Gmail-Original-Message-ID: <CAC=S1nionnQ=g-7Ys=D_iQegPebuPfOH5S9aOx73aVh987DMLA@mail.gmail.com>
X-Gm-Features: AbW1kvai0eVMYu31zp3zyb5u2A5YMsTuoKfeRhXsuHOuCIeklBH2XCKHTQA_efQ
Message-ID: <CAC=S1nionnQ=g-7Ys=D_iQegPebuPfOH5S9aOx73aVh987DMLA@mail.gmail.com>
Subject: Re: [PATCH 01/12] dt-bindings: arm: mediatek: mmsys: add compatible
 for MT8196
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "paul-pl.chen" <paul-pl.chen@mediatek.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, 
	angelogioacchino.delregno@collabora.com, matthias.bgg@gmail.com, 
	p.zabel@pengutronix.de, jason-jh.lin@mediatek.com, nancy.lin@mediatek.com, 
	singo.chang@mediatek.com, xiandong.wang@mediatek.com, 
	sirius.wang@mediatek.com, sunny.shen@mediatek.com, treapking@chromium.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 8:58=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 10/01/2025 13:33, paul-pl.chen wrote:
> > From: "Paul-pl.Chen" <paul-pl.chen@mediatek.com>
> >
> > Add compatible for mmsys yaml of MT8196
> >
> > Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
>
>
> This is a wide pattern now in Mediatek: login name is used as family
> name. Repeating the same comment to every Mediatek employee is a bit
> tedious, so maybe you could fix it internally?
>
> Create some guideline for your colleagues so you won't repeat the same
> things over and over?

Not a guarantee that this will go away once and for all, but I can
ping some MediaTek folks via a separate channel, and hopefully they
can amplify this message internally.

Regards,
Fei

>
> Best regards,
> Krzysztof

