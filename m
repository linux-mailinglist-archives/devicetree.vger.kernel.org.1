Return-Path: <devicetree+bounces-29787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4C782493F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 20:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A4581F22E7A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 19:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4C12C1BB;
	Thu,  4 Jan 2024 19:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MGYS/1x4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E01E2C1AD
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 19:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1d42ed4cdc7so30425ad.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 11:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1704397866; x=1705002666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0fBUOM0R/wxHfJNIbk+Hsj3pvgiZjJxtJP8ZKkEMHY=;
        b=MGYS/1x4JJPq7yd+cbE7eR9v21D80WmjlD7CiAi5TY2En73kG7envC+h42FjiQbzt4
         gQG4d/bwJRGHS31yj7keMX252+g+y2fNNYIODN9XftBDxdks5ee3LzYQeSnFpZjlJCvL
         /+q+BFiq8W8T5Uu0Y5WnuE9wAfepM7VQbZlrbFjt6JUfwT42AtFioUCyi6xwraUrOkQM
         1e6e8TLyepfz9aw1+lKcNJzvGd9CrHkSSWRyEHvmN11yNQ/TrW3buIsp/0iXGfoyJcuq
         gY+gi74YV0evWzq+gC6091kHADzaOVpQAvmqyH1TtV5+tcXknhNjsJKyS0FGlrXGlvfP
         VJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704397866; x=1705002666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0fBUOM0R/wxHfJNIbk+Hsj3pvgiZjJxtJP8ZKkEMHY=;
        b=P9xiE+3ZBlb145VNOqWYUSzvPZHirdzfU8JbA7NOcKY1XVx308tuIvPU9agy91FPhA
         E8rPMD8GOgaINkfv2JUm4jTTp3cySBbkGxuW8T3KFKT/eHP6XQLg4aOIMGJrJ6Uw/NMZ
         FXgW10SrpoyHrtk0rQcIq1vQ9HiP5NYm1RTCTuDw6KlhWhTdda/EuJR8slgSAzqhOan6
         fV3giftX4Uqf5gZv3UQsZE29PwpOd0iXqeEum0aS9j41UN1iO8jThIBHybb/o2XOpGvD
         ni6L6ax/UnKlIr5h19do8qrg2J2mcoS1fJPUwnMkIaltxJeLhJbTa8uxcqlpqZtsGqR7
         cEwA==
X-Gm-Message-State: AOJu0YzydIBMMjF1DPXdu+IRtP2pC5aSiWeCtZ9NM67Bn96DF4DUbm1E
	AwMYxM5Z5pqkJYtFGblea5CDc0fSn6ejlDIkan6OZX1idK0=
X-Google-Smtp-Source: AGHT+IFqzvWpoM2uA+6FBRb2VzfC6a4Pu4eHXCZULmxK95LCj0aqs1mpvIbjznkas7f4lRb0XubNWN1kTL/JdAY9AX8=
X-Received: by 2002:a17:902:6e01:b0:1d4:4482:83c3 with SMTP id
 u1-20020a1709026e0100b001d4448283c3mr39053plk.16.1704397866221; Thu, 04 Jan
 2024 11:51:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231212024607.3681-1-yong.wu@mediatek.com> <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
 <20231213110517.6ce36aca@eldfell> <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
 <20231213133825.0a329864@eldfell> <20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain>
 <20231213161614.43e5bca8@eldfell> <9m8eC1j8YSwxu9Mr8vCXyzF0nfyCSHpFbfc__FtUjjKppew65jElBbUqa-nkzFTN-N_ME893w0YQRcb3r3UbIajQUP-Y5LxnHKKFoiBepSI=@emersion.fr>
In-Reply-To: <9m8eC1j8YSwxu9Mr8vCXyzF0nfyCSHpFbfc__FtUjjKppew65jElBbUqa-nkzFTN-N_ME893w0YQRcb3r3UbIajQUP-Y5LxnHKKFoiBepSI=@emersion.fr>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Thu, 4 Jan 2024 11:50:54 -0800
Message-ID: <CA+ddPcOew7Wtb1-Cakq_LPN1VwtG+4vpjpLFvXdsjBunpefT1A@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
To: Simon Ser <contact@emersion.fr>
Cc: Pekka Paalanen <ppaalanen@gmail.com>, Joakim Bech <joakim.bech@linaro.org>, 
	Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, 
	Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, 
	John Stultz <jstultz@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org, 
	linux-mediatek@lists.infradead.org, tjmercier@google.com, 
	linux-arm-kernel@lists.infradead.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Any feedback from maintainers on what their preference is?  I'm fine
with 'restricted' as well, but the main reason we chose secure was
because of its use in ARM nomenclature and this is more for ARM usage
than x86.

The main difference with similar buffers on AMD/Intel is that with
AMD/Intel the buffers are mappable and readable by the CPU in the
kernel. The problem is their contents are encrypted so you get junk
back if you do that. On ARM, the buffers are completely inaccessible
by the kernel and the memory controller prevents access to them
completely from the kernel.

There are also other use cases for this where the hypervisor is what
is controlling access (second stage in the MMU is providing
isolation)....and in that case I do agree that 'secure' would not be
the right terminology for those types of buffers.   So I do agree
something other than 'secure' is probably a better option overall.


On Fri, Dec 22, 2023 at 1:40=E2=80=AFAM Simon Ser <contact@emersion.fr> wro=
te:
>
> On Wednesday, December 13th, 2023 at 15:16, Pekka Paalanen <ppaalanen@gma=
il.com> wrote:
>
> > > > It is protected/shielded/fortified from all the kernel and userspac=
e,
> > > > but a more familiar word to describe that is inaccessible.
> > > > "Inaccessible buffer" per se OTOH sounds like a useless concept.
> > > >
> > > > It is not secure, because it does not involve security in any way. =
In
> > > > fact, given it's so fragile, I'd classify it as mildly opposite of
> > > > secure, as e.g. clients of a Wayland compositor can potentially DoS=
 the
> > > > compositor with it by simply sending such a dmabuf. Or DoS the whol=
e
> > > > system.
> > >
> > > I hear what you are saying and DoS is a known problem and attack vect=
or,
> > > but regardless, we have use cases where we don't want to expose
> > > information in the clear and where we also would like to have some
> > > guarantees about correctness. That is where various secure elements a=
nd
> > > more generally security is needed.
> > >
> > > So, it sounds like we have two things here, the first is the naming a=
nd
> > > the meaning behind it. I'm pretty sure the people following and
> > > contributing to this thread can agree on a name that makes sense. Wou=
ld
> > > you personally be OK with "restricted" as the name? It sounds like th=
at.
> >
> > I would. I'm also just a by-stander, not a maintainer of kernel
> > anything. I have no power to accept nor reject anything here.
>
> I'd also personally be OK with "restricted", I think it's a lot better
> than "secure".
>
> In general I agree with everything Pekka said.

