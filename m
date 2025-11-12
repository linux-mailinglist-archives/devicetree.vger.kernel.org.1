Return-Path: <devicetree+bounces-237420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAABC50E84
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:22:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 275C24E21BA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 07:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBCB92C0F90;
	Wed, 12 Nov 2025 07:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JXF1JAOL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003FB29C325
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762932122; cv=none; b=W2Lfw5OSEa+eQa1CrV/YzKjqDU02GF5EBWCceCmdOrDiwMBd1jMsU5PUO3sJU0ia2P6UBHJU0VC2wEQ3Z47YepzgNFnhyDnAtxuXeErNgSUey/4J3IK4E2BJ+JNTchNuuX2dFMrU/U4DaqeW2rx4mS/HwOQgJ74pKX2Y8/OXhVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762932122; c=relaxed/simple;
	bh=12V/Ex1NA8ngHjuLf60hQOORJ8uq2fI+RfvGlBv+SI0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GZs5ibJpz7pTHOKihNoIngcjbTb6LkHdLpqyVb33qpVuRdChBKOZnZ920TQJrnfU32CsuW2az6kbzVNMWfXnLjGW8a6Wvqmvn3l4EREItJTxCYHlQQV68xmDdisapHzbVJ+zcg8RGz50TmcgGh8dLjg4HEdEBXKooo/h77xhjO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JXF1JAOL; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5942e61f001so496748e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762932119; x=1763536919; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12V/Ex1NA8ngHjuLf60hQOORJ8uq2fI+RfvGlBv+SI0=;
        b=JXF1JAOLOeHrHFF0KyraFyXTy6rXXiwWZm4Y8osRWqCLdltoX8CV8vvNBmNXLWDdjL
         u5CKUU3gfMSXJ8oroqZXRzwkECqXh8RIM+d5YMkc3LfHtdsCpADWeNAg+gPNDf16uKgo
         gzqIKu7ZMa0c3rKAMf5mSwY4e7XTMZO2I3MTX/BI/ZMdc680kuda0p/Z6WEyt4Xx4D85
         Mk8Vg/8efiD0bE8ei7irHwDC9ZLPH93SDWN88ioWKI2Qg+d/2Mb5giAPla5/ilEI+cfV
         swoA0/re5gl2qq8mwddo39neDD3UOO5tPqa1t5WHvjKTQNEcwjqIpuUd6wPuykJdjSFJ
         IGuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762932119; x=1763536919;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=12V/Ex1NA8ngHjuLf60hQOORJ8uq2fI+RfvGlBv+SI0=;
        b=cK36cSyspCX4AQKjin9XnfLJfP7OuL7biJabZLCDnSxtGCuKlMNm/7C3L5FkCFj5Yl
         /ie1EB/oKb8qNCKCrXvhXlqXkN9SQNEnSwwu3/iUjstVVc/h601LhEjG9kZ6jVLf3L3M
         Iuh5hOMzPNx8USP4dBUNCn0UQ0782IjNKB4kpzkcjUqMu6l7y372ODQ8KFtOb2AhVj1a
         LNuhhtZyrPGbx7qTD9wLqdq/Y8zb5OuxVPJXt8oIq0hjNqTzWfWYCMnNeNCisT8pd9nm
         en14bRPM4JQ0KA9UAcQ20FJ0kQgUYQajhBGHAAmjJA88cNhRzqUX6dA5dGOoqktyXfFF
         uXig==
X-Forwarded-Encrypted: i=1; AJvYcCV1ZjKESKrmJXtl1wIYbqkD2dIsN0JdeFTE64voZRIqRVWyIixsbnXWgsFbdXidnKJ1HEjRYLKF3hZB@vger.kernel.org
X-Gm-Message-State: AOJu0YydP+vSOOs09dwRZIaB0oe/26r76ZTQIVO3dKcvd11zyPiKaSJD
	eMiZen+J0LTHZCXlKaVIFhtdd7uBX6RJybg/0JIsQKOwoHQ65bgF5URWkIvIpWKhxhXU6KQKHFU
	yntzcMKJC6Vd+3kAKm9BK8x6XaBrbNoU=
X-Gm-Gg: ASbGncs1p2ZSQKgj68Rbg53DjeB/ZfW3ER1Ohibq57VKpgx4xVPgvgASkLLCwOuX2Ug
	Iprsv8untxeO1RjMDWRXbh4eg/GyYP05Gy5FQrWkcWb54X/Ui6nTtptHHnzE5KHXUlX5ppRf9Rr
	fszgD0fY52Sfufz0JLN67uDW4KlMNnEoJj5KzbD5DQR7UvkVhQyGdtfd/+M0VAd52fSDZjt4j7j
	3bHvSBFf5AB5JgeKszHtfUaohTdcTqSVf4h/eYIHhhHDX3ZIYAKY+xTjgKB
X-Google-Smtp-Source: AGHT+IHdgCiAv0GnSWd71CcbTy++P6uvGOM/tKNn/jo0rdp/VWF5xhf+QcYOB71dJSyzp3Z/KGWejz6sSR9wT1zIXeI=
X-Received: by 2002:a05:6512:3b09:b0:594:5644:db94 with SMTP id
 2adb3069b0e04-59576d99e84mr620181e87.0.1762932118887; Tue, 11 Nov 2025
 23:21:58 -0800 (PST)
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
 <d16803e5-7b6d-4472-b50c-aa324cf52736@nvidia.com>
In-Reply-To: <d16803e5-7b6d-4472-b50c-aa324cf52736@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 12 Nov 2025 01:21:47 -0600
X-Gm-Features: AWmQ_bl20GzsT3Dfl9ZcMU_CZRyE4oXltua3SXL7weT7oMmUhOEAQcvgowvaLnI
Message-ID: <CALHNRZ83Q2Ha8VYoWAnqoCZQ=Fd9rtVRVLwRFxAY68ePQ29GHw@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] memory: tegra186-emc: Support non-bpmp icc scaling
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 12:18=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com> =
wrote:
>
>
> On 11/11/2025 23:17, Aaron Kling wrote:
>
> ...
>
> > Alright, I think I've got the picture of what's going on now. The
> > standard arm64 defconfig enables the t194 pcie driver as a module. And
> > my simple busybox ramdisk that I use for mainline regression testing
> > isn't loading any modules. If I set the pcie driver to built-in, I
> > replicate the issue. And I don't see the issue on my normal use case,
> > because I have the dt changes as well.
> >
> > So it appears that the pcie driver submits icc bandwidth. And without
> > cpufreq submitting bandwidth as well, the emc driver gets a very low
> > number and thus sets a very low emc freq. The question becomes... what
> > to do about it? If the related dt changes were submitted to
> > linux-next, everything should fall into place. And I'm not sure where
> > this falls on the severity scale since it doesn't full out break boot
> > or prevent operation.
>
> Where are the related DT changes? If we can get these into -next and
> lined up to be merged for v6.19, then that is fine. However, we should
> not merge this for v6.19 without the DT changes.

The dt changes are here [0].

This was all part of the same series, keeping everything logically
related together. But on v2, Krzysztof said that none of this should
have ever been together and that each subsystem should get a separate
series, even if the changes are related. Which I did, and now this is
split across three series. The actmon series for tegra210 is in a
similar state. Split across four series and only one has been pulled
to linux-next.

> I will also talk with Thierry to see if he has any concerns about users
> seeing slow performance if they don't have an up-to-date DTB.
>
> Is there any easy way to detect if the DTB has he necessary properties
> to enable ICC scaling?

I'm not sure there is any simple way, given how I set up tegra186 and
tegra194. The new dt properties are on the cpu nodes, there's nothing
new for the emc node. So the emc driver just unconditionally declares
itself to icc. It was doing this before too, but wouldn't do anything
on tegra186 or tegra194 because the set_bw function was just a stub
and the real logic happened in the bpmp bw mgr, which only exists on
tegra234+. Now the set_bw function will directly calculate and set the
emc clock as long as the bpmp bw mgr is not supported. Offhand, I
can't think of anything existing to check to skip this, because
nothing new in the dt has been added in the scope of emc.

Aaron

[0] https://lore.kernel.org/r/20251021-tegra186-icc-p3-v3-0-68184ee8a89c@gm=
ail.com

