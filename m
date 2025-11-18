Return-Path: <devicetree+bounces-240001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D3733C6BE46
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 55A7C3626A0
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A749E2EA46B;
	Tue, 18 Nov 2025 22:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e3M8vg4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBB9288A2
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763506080; cv=none; b=t3BbGaJO8ONW8unHVMqouyxQCJl6OVg1YD9eWnQTlmjeypvT3d/PDGDpianJjtcnol0/B5HNePMVvOV4G6dpMJgS5O5pSEvE6djVgFoDPflm2LKvfZBMx6hB7hP/Hi+JRI5YNyBXerMFvw/bTWKhIfrmEfOMNXn6fitWCBB1cho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763506080; c=relaxed/simple;
	bh=zLlk6UkFi9AiavKeSo3Js0efbItcHL5Vz7KXQEkD25Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dI8MWZjmDr7izkwJVm1CP8PJnNBPNU4SO+iy0cOiy6YNPUiILiDqlBQVAq8dTaidLW4YkqZO+mQx8dDdOK77W+Dx++YiN9F2HD8V/P8qNzKNJbBpZKw7KVzYwJ0rHuMJQ6B57NsC2kO4uZ2c5ReegnwuBnvBLZzWzNNYRJuUE20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e3M8vg4L; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b7277324054so842933766b.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763506075; x=1764110875; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLlk6UkFi9AiavKeSo3Js0efbItcHL5Vz7KXQEkD25Y=;
        b=e3M8vg4LiyGNX3qrpnLw6Ibtcz+5aWXVJ8C+f3ngzugeV6kaXfoewWYVGBpmTecNaj
         9G+yOYu9HILt8V6rHLOt7BfipkFVVCKfetVhG+WdQYZioeVjSR260HdDQkuaXa1m7ABh
         j1Jzx1aDd5uZ/QsWfSkGJXLZxwTFyRu+uXJi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763506075; x=1764110875;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zLlk6UkFi9AiavKeSo3Js0efbItcHL5Vz7KXQEkD25Y=;
        b=o0do9zO6y8id6Xw2KAsfMETRxcm+3yo7pPiapNCA2PqsPEmG+bchtMxwZanwdnNvbq
         xaOQDO0f614wLKJJEDakgkfNhEeDVN0y9uWJ7eOQguIwi1FP2V34i6VW50YnEKGwQ76D
         OE9Jjq8yvMo35+rZDP/JdE1eARCsMpMBPfbxNv5NZvH77b9zb9FzDtcs3I8qK5IOFRF1
         5U1rFhEUk8aGU4XhU77ZO9sP8KrQR8B84NmcZxPlNdVONjs4yKWiuIIpZU3UTgUfFhhF
         sDGnOKJxkhwYCeb4aHF6GQK1cgE8mnNUWNQp/3x+/1MlczTe1Wx7EvHXbHPB7HEp9Ydl
         dPdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUu6vjVK/udkrksiWUqDKDdmk8nn+e99YCOQGMOA8lXf7KTEVgaYLUkby8a8EWuG3RmA7ircHbLHelI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywaq+zZNCX/jfQcBKVRT3SlXeDhhLgVlytKViTxUkuVgD5VC5co
	MmyuCnD8VCqkxFCntdBE9/sdS9ytVu6y8v2KzRLz8v/HeFDqmk7e4ePhs7xcTtAqzeD9c4GeWMe
	s/E9U/w==
X-Gm-Gg: ASbGncvb3LfeqeF5fLwMIN5MGvRVk6saCQh9tmXaOmnKAB9KpCoZCpuEfYz7rLMezTN
	NvE7v7EMV6RqXCIS/tlwO8THK6tBtKEV/kO3bONRWqzPVvXL37n9jf2xJKTKCJrJdubgfP75aBZ
	KIAGSG0bPIaa5jcMjcuncEcvOXwQiJinEhlwoWIb+VAaSYXl/i3BaIpsS+B3VcOYnpJ5oB59d3v
	u4m9JT7bOFu2CbTHkQu+bt3DR90YSmyd7ddq+TEWk5nqzgdrbMhGPaL/l4UCtcqzOy04fmYX3Lh
	srMSgT6Kfl1yow1vFudPjmk5ILcftlwS/+mFri/G+mYmOwksg8UpwIL1bBzEQJlEZ1ZK0/OzI0K
	sWzsnRSnpj0wUAzTdjVcPPA9zFAAbBG8wxDgTgKWvAXRi+o/b9nNsJhyhdRkDPbFTwAd94rP8qo
	6WNlqErmzD1K+cFmMtEpIoIBrmbCZ/fpWcQxuvWgpPkairkGMmY2FzOjUyzpWF
X-Google-Smtp-Source: AGHT+IF+HLoYRdnCR2q3VFlecTuqZfFyjj1Xk5tCxFuo5fZQE0h5ayCv3jcTje8BSgQWm9PWBHd+KQ==
X-Received: by 2002:a17:906:6a0a:b0:b73:8bdd:eec9 with SMTP id a640c23a62f3a-b738bddf290mr1334004766b.5.1763506075494;
        Tue, 18 Nov 2025 14:47:55 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad4494sm1441877866b.18.2025.11.18.14.47.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 14:47:54 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso40771795e9.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:47:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXaVgW9/0n3cegxKaM5ivrA8ewSK5CjuLDuLddE3c9RnaqnYImox6ombzaSj0ObVCIVvTizaekGJqZt@vger.kernel.org
X-Received: by 2002:a05:6000:2210:b0:42b:2e65:655f with SMTP id
 ffacd0b85a97d-42b593499c8mr17946628f8f.19.1763506073874; Tue, 18 Nov 2025
 14:47:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.1.I72a0b72562b85d02fee424fed939fea9049ddda9@changeid>
 <20251113022719.GA2281498-robh@kernel.org> <CAD=FV=WUXK_xs4taxs8Q4kxqvkNYE+Ftk3N=N7Nm7yKEvUMtAQ@mail.gmail.com>
 <20251114152005.GA893333-robh@kernel.org> <CAD=FV=W5=AVYeZvz_LxC2-7U83yErY0JGc2nZQ37Pf54FH8++A@mail.gmail.com>
In-Reply-To: <CAD=FV=W5=AVYeZvz_LxC2-7U83yErY0JGc2nZQ37Pf54FH8++A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 18 Nov 2025 14:47:42 -0800
X-Gmail-Original-Message-ID: <CAD=FV=ULAvZ3CkSta7bA5ANhen83RJZ2=qczvPM-gC-_eqTfeg@mail.gmail.com>
X-Gm-Features: AWmQ_bl_hw6vDHu8MkUl7OQYNBNjD1FAMZQn03A25BwsYvwyfHESZ3LQca8v3-E
Message-ID: <CAD=FV=ULAvZ3CkSta7bA5ANhen83RJZ2=qczvPM-gC-_eqTfeg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: google: Add bindings for frankel/blazer/mustang
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 14, 2025 at 10:53=E2=80=AFAM Doug Anderson <dianders@chromium.o=
rg> wrote:
>
> > I think it would help if you described what you want to do more
> > generically rather than mixed in with "add a new SoC" and send that to
> > devicetree-spec and perhaps boot-architecture lists. Present the
> > problem, not just the solution.
>
> Sure, though I think the problem has been discussed at length in a
> number of situations before (mailing lists, conferences, etc). Each
> time it seems like it ends up being too complicated and folks hit dead
> ends and stop trying to upstream. Downstream just keeps doing their
> own downstream things because there are tons of people all hitting the
> same problem and there's no upstream solution.
>
> IMO we need to start moving into the realm of solutions. I understand
> that upstream doesn't want to accept some poorly-thought-out scheme
> that will cause long-term grief, but at some point it feels like we
> need to accept something that's "not too bad" so that we can at least
> iterate from there.
>
> After re-reading all the above, it feels like we're not that far from
> a solution, though perhaps you'll read it all and say that you hate it
> and that we're not as close as I thought. ;-)

I've taken your advice and posted to the devicetree-spec and
boot-architecture lists. To connect anyone that was following this
conversation, see:

https://lore.kernel.org/r/CAD=3DFV=3DUx7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnF=
S7zoJA@mail.gmail.com

I've done my best to include all the concerns / points that were
brought up in this thread.

-Doug

