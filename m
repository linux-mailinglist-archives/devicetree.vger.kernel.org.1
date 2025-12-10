Return-Path: <devicetree+bounces-245536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B1CCB1F03
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF1B2303D307
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EC42D5C83;
	Wed, 10 Dec 2025 05:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SFAhVD9r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8842A26FDBB
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765343211; cv=none; b=jW4dVu/GLqQRSFNDaZCTsixqvGA/jIpu+qIqE2nJsVYjizO3+B1m1h4D3k6Zt/F5WnpC0OT2BV0+IUprrGvDdbmnMqO/mYsLnM+dPBoz7gMhoTwohH4ZKZVl1Y1qFZvDrQVOmQgi4dxy6rbhfOSLYy/aka7vegZXWChpmI572BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765343211; c=relaxed/simple;
	bh=J1mCaVxdHq5uB6Eo60OXrHAj6qDbeR6ep4VsMHoBUws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KYALldoC1qgKVMUHjbjIxFeAGTvvWMo+odMfSttR90P/v7chCZX9M4asyHOvBBWMkRAbXH1gj+xbU54zurRK8GVMhtkP6Bc4/gPGRYRkBsc48O16DtmncLrm7PIo1x+Zt4ho2icDkZOao18zS0+phoFAOMxi5i7OKChZMSli+HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SFAhVD9r; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-37a415a22ecso5256341fa.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 21:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765343208; x=1765948008; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cILwPL07kmVMgs2qEzjNirTOJ78Hi53PQg9DcT1cFUs=;
        b=SFAhVD9rhmIaazNZkSJe0Z/+wHcTGG5aAB7zdpJ2uDF01JlfqOPPDO//PccSIRiY9j
         sHUs9qqQJtw1l8HuuKaJnDUgWQRRPf/+9PWlvjKJBAAeyIsPEn+XwCJ9THr+A35Q3yh2
         lXC6N8r/5cQJ1DS3FB/QvB/5QxFtrkId36JcGCcgf8y0a7vuBCXk2tn0W4L6vAShdC0M
         +P+XLiQssDMmAfDsGhNlAmSjd4nQdHFN3jOebGCCgSKUmxc/Wy5lApRkNlQN8oUNRilc
         3tiPek6ro72lrCEgeBWCQ4ndAVuc+pENE0LgV2+o7PFd1akO4yni8O9pkk2z6Yo3pguk
         p47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765343208; x=1765948008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cILwPL07kmVMgs2qEzjNirTOJ78Hi53PQg9DcT1cFUs=;
        b=G4y3BLdZQjtkIhifbbFbz/mR4DkJDPgq96tGpI3rfZkqT3VF/hmSDswaS+HkvwP9Pu
         TOL2+Z0lU/rrjcLciJ4oUg4eIDabgSXttB2hWyeZBfY2lfWBEeSpNb/3sP3ijZ7l17CS
         IfKxb6qJSp162dstF9foCWCc/yW5pycZr5JfoLxPdUd/opDhuVp4Am/3P+YQPRgGXVis
         UZ0DBmsMmAF0ChRCzIVeCUdTItC36Ur5YcYUqywkfMVxHo7CdsozXK+e5UuCucUE4Cio
         /UjqXQiIzWYMGy9tC2yk+kqNySiWxDi4wu4jVSYkA80/5ZeFHzkuOiY5Q941c6wjMMN0
         LUSw==
X-Forwarded-Encrypted: i=1; AJvYcCXuqrP/lrOIuJ3rYuBSkm2TR28u4ft2g/KIuCigd2SZe1IXWcsT95sF5IbT6Yrtnegb2ECpE37xvGZN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe4s5cRzNYXuQQ2ee37EwLyuS9ajjs3F7EIfFo0uPMaFW3MhOQ
	s0YIqNRwtoAaWEsvv75DgYd4qOK+hJfDRv1q+fZbc9NjtO66NN3g0cjn3nUDCbevnKlUt2ycrfx
	ZjJesiqjfOk1thRiWEu9Y6mYjx/R6dKonsg8O
X-Gm-Gg: AY/fxX4Xby9e+X8QP/+hNoAm6je3mlFymMIAVsMq5ffqY3+I0GADJna0VCLPloKFLAC
	bAGDrM1UyWzDuwTymuCPMegqaOpj8G93AjZu1gwc0JUV73ME8FzwqSLt5/lHM8JwFyzFvBgbetH
	yxAfUWhSezI1GPR3pE9ZKAgQ9fv9BVerInODx5wxAkJHb97rSbNKRVv1hIUJn6OYnoX4HYLIRLU
	rnBq+D9WDwz8Mr9GVkP0yIhz4E6LqxBKxK4FVjTFUMJRE4Usnzn9WRuQlBJlGYBsYuHGlU=
X-Google-Smtp-Source: AGHT+IEtD51pVgfyEoZs16zdlkS5zOCHps39l1VDJ6qAeRTKqL8udHWBgVhfQdit4f38nYtvHD+3Y4GH3SE3RhssnNo=
X-Received: by 2002:a05:651c:1508:b0:37b:98d3:7bc8 with SMTP id
 38308e7fff4ca-37faa664722mr12420771fa.20.1765343207258; Tue, 09 Dec 2025
 21:06:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027-tegra186-icc-p2-v4-0-e4e4f57e2103@gmail.com>
 <20251027-tegra186-icc-p2-v4-3-e4e4f57e2103@gmail.com> <82c8dda8-6fcb-48f9-bdaa-f3d1431e41ae@nvidia.com>
 <CALHNRZ8nCojreFCMXfbBBhWAMtmWN-04XtuW8fEsVD9bw+-AzA@mail.gmail.com>
 <CALHNRZ-CO5i9jeLkEG2cmHxcW1bcLhxcBSxjmL2euHfQy8yr-w@mail.gmail.com>
 <e6ce190e-6df7-4c36-abca-f09df3cc80e7@nvidia.com> <99ca4992-5736-417d-854e-379542549bee@kernel.org>
 <7f3dad08-cff5-40c2-8e7f-f6441a3d6b91@nvidia.com> <d5d23eb5-f43c-4e4b-9926-3fba6ffd3acf@nvidia.com>
 <CALHNRZ8vFJyfFXbxFehWA9TGkdrEUy9Wsm-DxEOT=tVbYTcU5Q@mail.gmail.com>
 <249bbe7e-e2da-4493-bdd5-8f4b17aff8fe@nvidia.com> <CALHNRZ8uPaKqSpFWkmYZn==Xw=rxh95Xm0_6LPN1HDj20zofqw@mail.gmail.com>
 <d16803e5-7b6d-4472-b50c-aa324cf52736@nvidia.com> <CALHNRZ83Q2Ha8VYoWAnqoCZQ=Fd9rtVRVLwRFxAY68ePQ29GHw@mail.gmail.com>
 <29cf2c16-3a0e-42c5-a083-16f77ae5d09a@nvidia.com> <CALHNRZ9KAv-hL6+6Uiaz2O2odm1rqMnjNxNVPsbCOdqX15KTuw@mail.gmail.com>
 <856447ae-4338-471d-a71f-a34aed749ac7@nvidia.com>
In-Reply-To: <856447ae-4338-471d-a71f-a34aed749ac7@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 9 Dec 2025 23:06:35 -0600
X-Gm-Features: AQt7F2p8HV3-IIxyA2es5G8USNAvQnuSmeVt0nyJ-nZ6wfxM32pOyTDXFbd106o
Message-ID: <CALHNRZ9y0n6JNfeDUQgZoECkxo+We0_G8TP0H4advcSqrX86kg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] memory: tegra186-emc: Support non-bpmp icc scaling
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 9, 2025 at 10:08=E2=80=AFPM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
>
> On 21/11/2025 18:17, Aaron Kling wrote:
> > On Fri, Nov 21, 2025 at 5:21=E2=80=AFAM Jon Hunter <jonathanh@nvidia.co=
m> wrote:
> >>
> >>
> >> On 12/11/2025 07:21, Aaron Kling wrote:
> >>> On Wed, Nov 12, 2025 at 12:18=E2=80=AFAM Jon Hunter <jonathanh@nvidia=
.com> wrote:
> >>>>
> >>>>
> >>>> On 11/11/2025 23:17, Aaron Kling wrote:
> >>>>
> >>>> ...
> >>>>
> >>>>> Alright, I think I've got the picture of what's going on now. The
> >>>>> standard arm64 defconfig enables the t194 pcie driver as a module. =
And
> >>>>> my simple busybox ramdisk that I use for mainline regression testin=
g
> >>>>> isn't loading any modules. If I set the pcie driver to built-in, I
> >>>>> replicate the issue. And I don't see the issue on my normal use cas=
e,
> >>>>> because I have the dt changes as well.
> >>>>>
> >>>>> So it appears that the pcie driver submits icc bandwidth. And witho=
ut
> >>>>> cpufreq submitting bandwidth as well, the emc driver gets a very lo=
w
> >>>>> number and thus sets a very low emc freq. The question becomes... w=
hat
> >>>>> to do about it? If the related dt changes were submitted to
> >>>>> linux-next, everything should fall into place. And I'm not sure whe=
re
> >>>>> this falls on the severity scale since it doesn't full out break bo=
ot
> >>>>> or prevent operation.
> >>>>
> >>>> Where are the related DT changes? If we can get these into -next and
> >>>> lined up to be merged for v6.19, then that is fine. However, we shou=
ld
> >>>> not merge this for v6.19 without the DT changes.
> >>>
> >>> The dt changes are here [0].
> >>
> >> To confirm, applying the DT changes do not fix this for me. Thierry is
> >> having a look at this to see if there is a way to fix this.
> >>
> >> BTW, I have also noticed that Thierry's memory frequency test [0] is
> >> also failing on Tegra186. The test simply tries to set the frequency v=
ia
> >> the sysfs and this is now failing. I am seeing ...
> >>
> >> memory: emc: - available rates: (* =3D current)
> >> memory: emc:   -   40800000
> >> memory: emc:   -   68000000
> >> memory: emc:   -  102000000
> >> memory: emc:   -  204000000
> >> memory: emc:   -  408000000
> >> memory: emc:   -  665600000
> >> memory: emc:   -  800000000
> >> memory: emc:   - 1062400000
> >> memory: emc:   - 1331200000
> >> memory: emc:   - 1600000000
> >> memory: emc:   - 1866000000 *
> >> memory: emc: - testing:
> >> memory: emc:   -   40800000...OSError: [Errno 34] Numerical result out
> >> of range
> >
> > Question. Does this test run and pass on jetson-tk1? I based the
> > tegra210 and tegra186 [0] code on tegra124 [1]. And I don't see a
> > difference in the flow now. What appears to be happening is that icc
> > is reporting a high bandwidth, setting the emc min_freq to something
> > like 1600MHz. Then debugfs is having max_freq set to something low
> > like 40.8MHz. Then the linked code block fails because the higher of
> > the min_freqs is greater than the lower of the max_freqs. But if this
> > same test is run on jetson-tk1, I don't see how it passes. Unless
> > maybe the t124 actmon is consistently setting min freqs during the
> > tests.
>
> So we don't currently run this test on Tegra124. We could certainly try.
> I don't recall if there was an issue that prevented us from doing so now.
>
> > An argument could be made that any attempt to set debugfs should win a
> > conflict with icc. That could be done. But if that needs done here,
> > I'd argue that it needs replicated across all other applicable emc
> > drivers too.
>
> The bottom line is that we cannot regress anything that was working befor=
e.

Let me try to iterate the potential issues I've seen stated here. If
I'm missing anything, please fill in the blanks.

1) If this change is applied without the related dt change and the
pcie drvier is loaded, the emc clock can become stuck at the lowest
rate. This is caused by the pcie driver providing icc data, but
nothing else is. So the very low requested bandwidth results in the
emc clock being set very low. I'm not sure there is a 'fix' for this,
beyond making sure the dt change is merged to ensure that the cpufreq
driver provides bandwidth info, causing the emc driver to select a
more reasonable emc clock rate. This is a similar situation to what's
currently blocking the tegra210 actmon series. I don't think there is
a way for the drivers to know if icc data is missing/wrong. The
scaling is doing exactly what it's told based on the icc routing given
in the dt.

2) Jon, you report that even with both this change and the related dt
change, that the issue is still not fixed. But then posted a log
showing that the emc rate is set to max. If the issue is that emc rate
is too low, then how can debugfs report that the rate is max? For
reference, everything scales as expected for me given this change plus
the dt change on both p2771 and p3636+p3509.

3) If icc is requesting enough bandwidth to set the emc clock to a
high value, then a user tries to set debugfs max_freq to a lower
value, this code will reject the change. I do not believe this is an
issue unique to this code. tegra20-emc, tegra30-emc, and tegra124-emc
all have this same flow. And so does my proposed change to
tegra210-emc-core in the actmon series. This is why I asked if
tegra124 ran this test, to see if the failure was unique. If this is
not a unique failure, then I'd argue that all instances need changed,
not just this one causing diverging results depending on the soc being
utilized. A lot of the work I'm doing is to try to bring unity and
feature parity to all the tegra socs I'm working on. I don't want to
cause even more divergence.

What actions need taken for which issue?

Aaron

