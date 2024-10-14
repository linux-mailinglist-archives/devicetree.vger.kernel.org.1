Return-Path: <devicetree+bounces-110987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD93999C74C
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 12:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A8DA1C21A09
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 10:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403A717625C;
	Mon, 14 Oct 2024 10:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dQNArusc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920ED156C69
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728902374; cv=none; b=DVE3AveVgFYakj+0ho15f9ClI8eQTnop/4jPR8OXuBuSiP3rtAZRKNAqKSXu9UNA14RE/N2c/Rn4PHOERDrGABLfpoJSseeLOMmL5A+hjIxjDzydgIk6/4/lPqPN003Wm61nLpzjes+dH7u3YaQBiGyA/cuOaONnXutv8v9rBTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728902374; c=relaxed/simple;
	bh=vGJpjQ49w8gK06HPVUKE6WRHK8KhkaqN4tjSHC1kO/U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q5U+ylSoKrNrWARGqFSK8qU621BHRmPaDg27wJ74oNvFK+rznMTeIdRYKitdAL2aTSQgYYDEM75W+3uzISlWjlhvmpY68P/SuQm191/zgM2yvoKBPv9wCXSNc1hq4hAovNkRylHN729FEk/vD3jMPfZMVwPG3KKJEz082Wskqdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dQNArusc; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4a48477b25eso672159137.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 03:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728902371; x=1729507171; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vGJpjQ49w8gK06HPVUKE6WRHK8KhkaqN4tjSHC1kO/U=;
        b=dQNAruscNVzQV8o22baV/o63av39WENJAeTGsiTsIBlvnzqw0lenZnqtL4fCfvECUm
         Wkd+Rx5NJhafU70z8bpgqwEEc3IiYp78CsUSXoAT8LpFa8NvVHymc2c4oUnB1JGpPOtw
         pVaj12V1YtzsSytsWFZhPdsPerYlvDSJ2uYjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728902371; x=1729507171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGJpjQ49w8gK06HPVUKE6WRHK8KhkaqN4tjSHC1kO/U=;
        b=O7YtObJYpv/tU4cqQ4j2yu02YkGE92go/7JmK6qroYmwWrwdqAif8VmP1rPmxONxch
         mmpmPxSl496GHn0YHgY1QGrw1L6mx8yw8xKk/uFdihUFaRI9K1eDc5y5fW9ltEUZz1fq
         Z13J/V/UpuJFm/ddT7XE5JZunTxi2JOvqxTKkdjlSF7psziZ62GEUmANHtm5lSDdLira
         YqxfIxS8PhneLQrf1cbpJgCUfEYgyXa2E/Qv5gpYq+8PbtgBbZDVVJyc679hlDWZ3Pzs
         9i8uw9LItLpjFGwKLsKMHs7hX93RAo6+wZSGmPJnJ2+KSbm/1318LV711p6QftTKQ9qI
         Hcmw==
X-Forwarded-Encrypted: i=1; AJvYcCV+ENCtbBuJKyJYhVLNdVSCv4LS/Imj0AIqlQmAPVySiNuxmKpQjB7lyGdroIFb2IGsSJzNlc9tg5B0@vger.kernel.org
X-Gm-Message-State: AOJu0YxOUZ4RvXmg4enRFke3Px1hFabfkhuGAvpN/erXNKuYc+1mrrpW
	x1DCUXAm7Cotg3f6E1hLqgdbFhRP9TPdQZOjE1Bjsa0KBpF0ccZhWF7zQuBYnuW9BplGAVqZoKX
	WvQ==
X-Google-Smtp-Source: AGHT+IEo3glOuJ3HIxI+n8ZbluW1AOnY2NRbKdqXoEfmlDmzkNxE3zX4kjXyFiKGNGjSn60SmwzZ4g==
X-Received: by 2002:a05:6102:390a:b0:4a4:94a8:7e9d with SMTP id ada2fe7eead31-4a494a88c0emr192488137.4.1728902371156;
        Mon, 14 Oct 2024 03:39:31 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-84fd356f2cbsm1449344241.37.2024.10.14.03.39.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 03:39:29 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-84ea1e5e964so2824922241.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 03:39:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWsn08SacyzeIenPk+YX2lgfQoAdnnktYtihpOtPM0dipKdEZrW/c6alQJDpubgByczts41x7S8dWm1@vger.kernel.org
X-Received: by 2002:a05:6102:2f5:b0:4a4:8502:491f with SMTP id
 ada2fe7eead31-4a4850251d6mr1181599137.7.1728902369150; Mon, 14 Oct 2024
 03:39:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241014094622.1720289-1-fshao@chromium.org> <40ce7287-7fed-4670-b16b-695c36535661@collabora.com>
In-Reply-To: <40ce7287-7fed-4670-b16b-695c36535661@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 14 Oct 2024 18:38:51 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhwn_ec4-ATNkEzUOpfUtZPEOb0niXpr202U5ysytsNxw@mail.gmail.com>
Message-ID: <CAC=S1nhwn_ec4-ATNkEzUOpfUtZPEOb0niXpr202U5ysytsNxw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8188: Fix MERGE's alias IDs
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2024 at 6:34=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 14/10/24 11:45, Fei Shao ha scritto:
> > MediaTek's ovl_adaptor driver requires the alias IDs of the MERGE
> > components to be indexed from 1 to 5 to construct the MT8188 vdosys1
> > routing path, since merge0 is particularly reserved for vdosys0
> > according to the mmsys routing tables.
> >
> > Update the alias IDs to ensure that ovl_adaptor can find the correct
> > MERGE components, allowing DRM to initialize without issues.
> >
> > Fixes: b13ecb7c6f67 ("arm64: dts: mediatek: mt8188: Add display nodes f=
or vdosys1")
> > Signed-off-by: Fei Shao <fshao@chromium.org>
>
> I prefer that you resend the original series with this fix squashed into
> the right commit instead, as I can still replace the series that I picked=
.
>
> That makes things cleaner, so please do that.

I see, I'll resend that later, thanks!

Fei

>
> Thanks,
> Angelo
>

