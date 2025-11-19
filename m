Return-Path: <devicetree+bounces-240120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 817D3C6D8D3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AFA304E3307
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3E430AAC0;
	Wed, 19 Nov 2025 08:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ibKIYJir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311122FC010
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763542483; cv=none; b=PoItSKTMdEfizhwmqadCLAICYaOGpM6aBxUKNwGWYoYSkL/ytW5J5xaused/xS+CFSbqk4k4eEf0AFpqqARN1M6SrnPu8P/BeHiawwVzHXYQ+JKORviXosEWaHrBk1dq41l6OEE3BnUFrKBsXEHNqAKBI7T5gZJjXwGU8RS5Uws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763542483; c=relaxed/simple;
	bh=uq9A+rP/n2h/Cw4vBdMGHC8Y4iUHLllWMCwq1JBoATY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ByE7qB/TuJm5mScNqjWs0dQwByRnPQkbr/YwjtpwvvoZGSY9VbEgoZ8JsXq5R4hKKIFHY9WorycYlze7tTnSgRj9ctqEgfpvEkPDrac55I+f4/RvMKyXJBm6yzbzgZF4p0niw+3AMqlmh4k5LDWIJfqiuZ6nOjBcHWg1E5/nz8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ibKIYJir; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-37b95f87d4eso52406631fa.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763542479; x=1764147279; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8vU/bXiUiSX+XlUElJe1ZIOtLsB+Q8+itOmUp+Ohro=;
        b=ibKIYJirzEX3GhoDyV1DmhxctWOmM/4+1FuHBbhHYWmB74V4mhRKdR0pt4Uq9DFp4N
         UVKMZnISNVyFpbjUECGSra0ZiUto3cH8KNLFNBy6aHHTp6WXqoTHGIZH+twDdIL3quVP
         DD1Hl9XThRu1/QYLpNgd6pobQaLBeQcphOZx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763542479; x=1764147279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8vU/bXiUiSX+XlUElJe1ZIOtLsB+Q8+itOmUp+Ohro=;
        b=nL2G7NrdPC2dB9L5CwWoAiZrTklrvgXDKTIIztJkRaSp1jxPXY7dhkt22Rr+q3j7TH
         PT2SjgMGSjWb7MDSw+uK57+QshTdeQkfyNDMT2OOyiru2VxTblqyGbC/1KTfz4KTdXHp
         TFw+PnG6CFcfKLN+riAccaDE/M7eT90ZWF+EqHKm5PENJaBf7abut3+/MgYAPBsDQCEw
         YlAV+kKGLGAXC/j2ErgDUXaE4/3gBkyFxgE9Uyx9UHWDQXaAPeGuFDIU87hfQpPjnXKC
         FQQy26LgIsE4+a+V/Xv8OGG46XwI3eeXfgRKS0Pg4G6wxDMtG/2v2XsSsLMlK/FVQttY
         GAwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV5qK/ksodspMWWvWZK/WMRkubkmXUavQA1vfALIa6IgK0P9G0Q9eKtaffo8Vh3Ax0GMNNTgGiJs2C@vger.kernel.org
X-Gm-Message-State: AOJu0YwZd5ldlkRq7exSquqvacd22RDW/Kt6onxzpEnA9jnqaPMaTmWM
	Pnmlrj25kzXyD/tMaeTglAG4NQRGixrYIvoNtGM97Ujj+0mM/wlsaeB/chm+TiTaBeXc2K3kvan
	klm1ExuSHcFDcxTMuSlLFnFaEnUVxeX1MYtAHCIuv
X-Gm-Gg: ASbGnctjqN3AvT6U8zmsxVxIewNWT6Z1X3F/oVIgdatX6EiJeKvHiEmql1DxUG9LnUo
	w/4LrHuMDbNlT+2l+wewbLc7bC1gjU/vlGCbLzHqKEjZmQSDjaaOUw+hc06CBZCkUKfh7YoJwu+
	YW7rfV1DaenQvvlyYoaZt83yGPDkNx4ukh6HIHqoHF2JgYI/CkokZ8PpmhBazQP8BE8Yb8E4pVl
	43JKzXvvgXHulHPKTHk4yAmuuSdj2Ne7DYGbcHkN08ZoaTQd1BTIqUc1JYT/jt3YK3+7Fn3YY3B
	UJZE/jkrV+rNIEgaemdKALvmcw==
X-Google-Smtp-Source: AGHT+IFhlPMrRvpqdsL1dRrt5/hvTvDt2HQaw6mOPpwq4Z8rWgeUCX2QlUWOEDMbkLtDd/Z5qXCyPQTzgWFahIEpLfs=
X-Received: by 2002:a2e:a00a:0:b0:37a:4085:c83d with SMTP id
 38308e7fff4ca-37babd5c8d9mr55521611fa.29.1763542479298; Wed, 19 Nov 2025
 00:54:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119071126.1719405-1-wenst@chromium.org> <18342493-54f9-4e5c-be05-568a3026663e@kernel.org>
 <CAGXv+5EnfwRA1SMvt=3n7gj1gS3BndXKNVfmfkC=y6n2A3VsdA@mail.gmail.com> <d8f3eb00-c7a6-425a-9e69-a01bc3532f0c@kernel.org>
In-Reply-To: <d8f3eb00-c7a6-425a-9e69-a01bc3532f0c@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Nov 2025 16:54:28 +0800
X-Gm-Features: AWmQ_bnHnfSc8wAlhe_rBr-TemtbkaVyA6tPaH5I_09BBzsfr8kvP5fgv6NpHVk
Message-ID: <CAGXv+5HePVim+-fx0bG-geBHp3kLQbNGLyknGRx=LgLZ7H+DUQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: coreboot: Document optional device
 specific properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, Julius Werner <jwerner@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 4:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/11/2025 08:32, Chen-Yu Tsai wrote:
> > On Wed, Nov 19, 2025 at 3:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 19/11/2025 08:11, Chen-Yu Tsai wrote:
> >>> Coreboot, or the ChromeOS second stage bootloader, depthcharge, will
> >>> insert device specific properties into the coreboot firmware node whe=
n
> >>> there are valid values.
> >>>
> >>> Document these properties in the binding.
> >>>
> >>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> >>> ---
> >>>  Documentation/devicetree/bindings/firmware/coreboot.txt | 9 ++++++++=
+
> >>>  1 file changed, 9 insertions(+)
> >>>
> >>
> >> TXT files cannot receive new properties. You need to first convert to =
DT
> >> schema.
> >
> > OK. Let me look into this.
>
> After the conversion you will hit another problem - you need vendor
> prefixes for these, because only generic properties can come without
> them. Otherwise (without vendor prefix) these would define the type for
> all other bindings, which probably is not what we want.

I understand the concern. But given it's specifically under the
/firmware/coreboot node, which is inserted by coreboot, doesn't that
already serve as a namespace or vendor prefix?

FWIW the ship has already sailed for naming. The first three properties
were added to depthcharge [1] and coreboot [2] in 2018. The last property
was added to depthcharge in 2023 [3]. That is what has shipped in immutable
firmware on ARM-based Chromebooks since the RK3399 days. The coreboot
change was presumably added for other devices.

This change only serves to document what the firmware already provides.
Whether they should be grandfathered in or not doesn't change what the
firmware already does; it just makes it more well known. It's not going
to have any effect on validation either, as the properties are supposed
to be inserted by the bootloader, not added statically to dts files.

Presumably we can update the code to use a new name, but we still have
to live with the old names for up to 10 years.


ChenYu

[1] https://crrev.com/c/1028728
[2] https://review.coreboot.org/c/coreboot/+/28104
[3] https://crrev.com/c/4975217

