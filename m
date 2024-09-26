Return-Path: <devicetree+bounces-105568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A48E9871CF
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 12:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F124A289AC3
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 10:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B025A1AD5CB;
	Thu, 26 Sep 2024 10:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VI2O6hJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4531AD5D9
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 10:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727347381; cv=none; b=MJ5XH9X7Q45IOXdWncwNPPPapUee7WH5MbAgfDHF/rmKyhOjLk+DHLOhGptGX71RksuBEWgt+xN46PLtaLiboiSTnhSl2yy3fRJUWjp/wY8ZubHVxTj+KUD1MY93m6Y3ElesUymelCu8G7biiB8/BqAK9EXGuyj1aDpqo8UzPik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727347381; c=relaxed/simple;
	bh=EC4Cttvh1PVYl7PyH6TG3KSaErRi7zR5BNzSOgDzZlc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b3AL8LhssE+wDH0JjsY/8tGB8WNfYmpWy2ex8OYJ4ExfTpJFDKWeCLV3uPhdWN8SBkkUl0QeSuKapD7/pvUE/VBY83KD1MOuC6lg+YIyE9wO5g0mM0UswGgOwbdI8DT1zbI1bpUlv+R292SxrpBh+WljWAjM05rsHN+ZIrZGnyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VI2O6hJG; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-503f945138cso238061e0c.2
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 03:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727347378; x=1727952178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U3BXOWLdZ3ZYTaPWPPVpqTruEaQT+RzavUhoQtzfsW8=;
        b=VI2O6hJGLMms7icM7g6g88h6r24/oGxdcM+91KDQ+v4Cmw+qTkg1KdFSkup55Hrc/W
         4009N+Miyd6AFhPaKQg1+VtqRoRzri/qjsgB+ODdBvMxUd8ca1dsML4mWdDWFOXVU597
         gDtzaQX2arEKD6ulX8TnEUjIP6V6nu5YWabqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727347378; x=1727952178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U3BXOWLdZ3ZYTaPWPPVpqTruEaQT+RzavUhoQtzfsW8=;
        b=S62yT92wqSSRCJWF7ctv0QLB+z9YDtJZFl/0DLejtE1ZILe41mkgq7poGkhrshnBlW
         QJBEoPDwoJeiQ8csJTc7Y2C9J3a3kU7KpCaRPLCmOHZVAlicU5LYE1DuUMrJJf5cBA0g
         QWJnSspn6XNMuqYK3+9yXrjGkE4+7/ApbNiyavGvZcQnBFZu4GqVBFnBOmZtNyLYKRgb
         zysiVdigH/DJtsK69fT1jJmJ4B4qa5R9N8MJOTPaX7vM231yPOnIksP6iJh3Ej6M5QkC
         yJfkbDYZEVyuzFRoKd4J8KaEdOfnyDIbPibwYTCLxcvFwJUA825QvybWqaJjjvHeDCLD
         KHbQ==
X-Forwarded-Encrypted: i=1; AJvYcCViP8JKmfJYech2DZvMjWM8GZfD/O+8bTmCUJJrMPmjWK/QWCrqPxpdyK4rtj+7CZlOQwJhRO0xduPz@vger.kernel.org
X-Gm-Message-State: AOJu0YzeiJMsvmv0yQzuqDlWLZUu/0S8MjyXoRHphurodjCWqGORxVVs
	thBnTl41sL7PHmnjy1Y9w43GGNFugs5T4/++dYlCeLX+hUBHzEMiJXlKLazTsYj8RRMu/HlBsIg
	JPw==
X-Google-Smtp-Source: AGHT+IHm0UAXrUYMqz95Eo88QubLptomvWJR+7U5r6VadNQTfq1qSLr/cRL6OahNhVZ49wuZa9zb8w==
X-Received: by 2002:a05:6122:3197:b0:4eb:499a:2453 with SMTP id 71dfb90a1353d-505c20707bbmr4794593e0c.8.1727347378404;
        Thu, 26 Sep 2024 03:42:58 -0700 (PDT)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-505a9f79321sm3133043e0c.28.2024.09.26.03.42.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2024 03:42:57 -0700 (PDT)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-500fcf0b32fso182624e0c.1
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 03:42:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUT7aylMCZqMuoKPZZhIcFJKsh51F/lzDgRVtExbuwKBtZtnCsqcshIKlzJ4gHmYPyao1gCD1EDc7/y@vger.kernel.org
X-Received: by 2002:a05:6122:1352:b0:4f6:aa3e:aa4c with SMTP id
 71dfb90a1353d-505c1d368ccmr5013070e0c.3.1727347376895; Thu, 26 Sep 2024
 03:42:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925110044.3678055-1-fshao@chromium.org> <20240925110044.3678055-6-fshao@chromium.org>
 <b3842173-7074-4bcb-80f4-1f6f8cb38a52@collabora.com>
In-Reply-To: <b3842173-7074-4bcb-80f4-1f6f8cb38a52@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 26 Sep 2024 18:42:21 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhs4EUR78HunNnz=Z-cG4GgAZ=7JFyJmj6he96Z=GuxOQ@mail.gmail.com>
Message-ID: <CAC=S1nhs4EUR78HunNnz=Z-cG4GgAZ=7JFyJmj6he96Z=GuxOQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: mediatek: mt8188: Move vdec1 power domain
 under vdec0
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 4:33=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 25/09/24 12:57, Fei Shao ha scritto:
> > There are two hardware IP blocks in MT8188 video decoder pipeline:
> > vdec-lat and vdec-core, which are powered by vdec0 and vdec1 power
> > domains respectively.
> >
> > We noticed that vdec-core needs to be powered down before vdec-lat
> > during suspend to prevent failures. It's unclear if it's an intended
> > hardware design or due to power isolation glitch. But in any case, we
> > observed a power-off sequence here, and it can be considered as an
> > indirect dependency implication between the vdec0 and vdec1 domains.
> >
> > Given that, update vdec1 as a sub-domain of vdec0 to enforce the
> > sequence. Also, use more specific clock names for both power domains.
> >
>
> As far as I know, yes, there is a sequence:
>   - Cores (mtk-vcodec-core) gets suspended first
>   - Then the LATs gets suspended (mtk-vcodec-lat)
>   - Finally, the LAT SoC gets suspended (mtk-vcodec-lat-soc)
>
> ...but you checked that downstream, and your downstream misses the lat-so=
c HW
> instance, and only has the lat one.
>
> Are you sure that this is not the reason why you're getting this issue? :=
-)
>
> Otherwise, I feel like we must ask for some clarification from MediaTek, =
as
> I'm mostly sure that the two cores are independent from each other (but I
> might, of course, be wrong!).

Yes I think I should... this is actually based on a downstream patch of the=
irs.
My understanding is that LAT SoC is not always in the vdec pipeline
for every MediaTek SoCs. Although the MT8188 and MT8195 have much in
common, I have a vague impression that MT8188 doesn't have a LAT SoC
HW, so the downstream video decoding works smoothly without describing
that in DT... but still, I could be wrong, and things just happen to work.

Anyway, I'll find someone on the MediaTek side for clarification. The
datasheet I have doesn't seem to contain such information.

Regards,
Fei

>
> Cheers,
> Angelo

