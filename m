Return-Path: <devicetree+bounces-241232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3F7C7B506
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7018F4F16CA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 18:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85BF246766;
	Fri, 21 Nov 2025 18:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c3EzqZVM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10611C8FBA
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 18:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763749091; cv=none; b=fQ9t/h63MSgQwgKZQVtV6SgERt5h168tUDSeI5h+kUad1dZP7Pt+hAbsEhdMZDH8y6k7zbMdXAJTQdIT8QWTJQ+JiQ8JCA4Aiwj0vTRgdjWjwz/vzq7VOqpezA09UjOxDdbnL112mbik3Q0BZ7woAIDK50nQGVgubgKG9MzHAfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763749091; c=relaxed/simple;
	bh=fapj49GJlpRCvp2ytTiPQd/xb7HbjTc01jrnTJJ270A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EFm4h/E4tYG79rt4s7vqNL6ItrAZxXRxSzVdfOZZEPXJ8M3ix84DfTw71duXbI15n0oiJhgjeA6D96jmoKjKp1/rZ6tpO9cE0vmP/by38/+uCLsNGFyoTluNas0HFRtsdOlg2fpmAdecwfeZxgoG7bA+cJT1Xt40VeiZNhKxIb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c3EzqZVM; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5942bac322dso2063725e87.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 10:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763749088; x=1764353888; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ljGr7rEaaenRipeXu1dRPpnWUPLLhjxwVi1BrWUadQI=;
        b=c3EzqZVMhoOtuz/yqWsdUoY3oNiM2P5iCycjdc23udJsVNPFXmXAFfMs1ywcsduwed
         CN+qfykn901EzVnaWYb4g9fvVr8FyA5jiNv5bq7SUrRGYw5bT86iTtw8q99uoEz0pxJO
         vNFQ4Ln8Y2dlERATQOsQnmMtJwxomYS31gFt8o0i7hjbOWom3AvINZYJhWpREILD6X2m
         GVPDj/9013+Sw+jMdZXpksaDxKnHTpJSiV7KnSx796MQx00Ifz9oShUDs/KEGCnO55jz
         wktsSIn43dDo2BK4PCn362V90OnIfR1+LeoBuZvwPAaQ5jdtBDD0ALffIY3AxglwJQXD
         RQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763749088; x=1764353888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ljGr7rEaaenRipeXu1dRPpnWUPLLhjxwVi1BrWUadQI=;
        b=d8w31SzhHqWJnxWXIXJT3cJa4mwW8WwHQ3iwN8hEvS6KZskpaKTZwtOUkinM48GepD
         KNL152hUYHZLoghho+ONRM2qLrcGcKfRGC3bGueTOlOJdPNk7Od/El2sBwVMbmRKzDlE
         fCJ+3m0z3MXAztO8YYPc63jno8sRNS9hhkYV28THoZwx3Oc72n+rvAQI2YM2nlFp5+Hp
         cFIUCxX76gI6LTlsGp0BwP5QHvvFSGw2CrX+NP6/XDTCvbn7oay8kMeAzypTR0BoIVsA
         3oDJ6/KrNzAnktuuk19rl1cFwe0Wbk8+/UOUNN1HaKVXVPkbzLKSFZi9Z8NqjLctC8SZ
         c2yA==
X-Forwarded-Encrypted: i=1; AJvYcCUkVoLL/Z0RHSWYpOAjlr2h8ZdpNF+2GCkbWwFEK10sXGJJiKWmcYUkjeFR2nr/kav9GualQdugYmyp@vger.kernel.org
X-Gm-Message-State: AOJu0YzDSc9wLnn3KDB8LjmVbZ/xE5g7yha9BzpNymn2EHLWs6r/hYG7
	IUkNX/cBwIpHyR4z7Sy2IakzWWjzYuqVuNt7c2PTdhjEZVNtLL7zyPVhA9A8kSG1tCpE2RaY5M5
	Z4Me+jL0aF5o6/7ARRATjY9iFGcBKTys=
X-Gm-Gg: ASbGncvmop4/UCxwRybQqHas3VRW+DOpvUb2SXC9aPpBGr5wdFBfhqb2uYGd2YeNu03
	JAIEYcIRS2ahyanQfzmp4vd/GZCvqrAlhxe7cRY0UG8yXy3RAKyRTeJso8/CnqaAvuYAQ4fCsG+
	G8HZo+JZDqnBbJ2qyfHrLHA1Z7CpOjljMhhBoJXJmzTuHwfQ7UynJBvvw3Zb0MfNf3drkOEKCtz
	Uq30fijrPaJvijnthKigbpqO2C/W3NRuakYZVspsr9cy+FhKH8iQlBrkysraBgdwZQ0OJqUx7ou
	A2LKfg==
X-Google-Smtp-Source: AGHT+IHuoJWaKO0mr9o+3Hqq+CpirMZ+DrcVQs5CWyWfSJ7ywj+OEVgdDtGoxMsLvRvF8DG9+zbHRDV75SDdyPTHeOs=
X-Received: by 2002:a05:6512:2313:b0:58b:8f:2cf3 with SMTP id
 2adb3069b0e04-596a3eb8474mr1191602e87.21.1763749087695; Fri, 21 Nov 2025
 10:18:07 -0800 (PST)
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
 <29cf2c16-3a0e-42c5-a083-16f77ae5d09a@nvidia.com>
In-Reply-To: <29cf2c16-3a0e-42c5-a083-16f77ae5d09a@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Fri, 21 Nov 2025 12:17:56 -0600
X-Gm-Features: AWmQ_bmOU2heTlceLf_tyDdwszm0mX6wtvE4cFwl8b0KHunkvZDRhV911LQnBNg
Message-ID: <CALHNRZ9KAv-hL6+6Uiaz2O2odm1rqMnjNxNVPsbCOdqX15KTuw@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] memory: tegra186-emc: Support non-bpmp icc scaling
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 21, 2025 at 5:21=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
>
> On 12/11/2025 07:21, Aaron Kling wrote:
> > On Wed, Nov 12, 2025 at 12:18=E2=80=AFAM Jon Hunter <jonathanh@nvidia.c=
om> wrote:
> >>
> >>
> >> On 11/11/2025 23:17, Aaron Kling wrote:
> >>
> >> ...
> >>
> >>> Alright, I think I've got the picture of what's going on now. The
> >>> standard arm64 defconfig enables the t194 pcie driver as a module. An=
d
> >>> my simple busybox ramdisk that I use for mainline regression testing
> >>> isn't loading any modules. If I set the pcie driver to built-in, I
> >>> replicate the issue. And I don't see the issue on my normal use case,
> >>> because I have the dt changes as well.
> >>>
> >>> So it appears that the pcie driver submits icc bandwidth. And without
> >>> cpufreq submitting bandwidth as well, the emc driver gets a very low
> >>> number and thus sets a very low emc freq. The question becomes... wha=
t
> >>> to do about it? If the related dt changes were submitted to
> >>> linux-next, everything should fall into place. And I'm not sure where
> >>> this falls on the severity scale since it doesn't full out break boot
> >>> or prevent operation.
> >>
> >> Where are the related DT changes? If we can get these into -next and
> >> lined up to be merged for v6.19, then that is fine. However, we should
> >> not merge this for v6.19 without the DT changes.
> >
> > The dt changes are here [0].
>
> To confirm, applying the DT changes do not fix this for me. Thierry is
> having a look at this to see if there is a way to fix this.
>
> BTW, I have also noticed that Thierry's memory frequency test [0] is
> also failing on Tegra186. The test simply tries to set the frequency via
> the sysfs and this is now failing. I am seeing ...
>
> memory: emc: - available rates: (* =3D current)
> memory: emc:   -   40800000
> memory: emc:   -   68000000
> memory: emc:   -  102000000
> memory: emc:   -  204000000
> memory: emc:   -  408000000
> memory: emc:   -  665600000
> memory: emc:   -  800000000
> memory: emc:   - 1062400000
> memory: emc:   - 1331200000
> memory: emc:   - 1600000000
> memory: emc:   - 1866000000 *
> memory: emc: - testing:
> memory: emc:   -   40800000...OSError: [Errno 34] Numerical result out
> of range

Question. Does this test run and pass on jetson-tk1? I based the
tegra210 and tegra186 [0] code on tegra124 [1]. And I don't see a
difference in the flow now. What appears to be happening is that icc
is reporting a high bandwidth, setting the emc min_freq to something
like 1600MHz. Then debugfs is having max_freq set to something low
like 40.8MHz. Then the linked code block fails because the higher of
the min_freqs is greater than the lower of the max_freqs. But if this
same test is run on jetson-tk1, I don't see how it passes. Unless
maybe the t124 actmon is consistently setting min freqs during the
tests.

An argument could be made that any attempt to set debugfs should win a
conflict with icc. That could be done. But if that needs done here,
I'd argue that it needs replicated across all other applicable emc
drivers too.

Aaron

[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tre=
e/drivers/memory/tegra/tegra186-emc.c?h=3Dnext-20251121#n78
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/memory/tegra/tegra124-emc.c?h=3Dv6.18-rc6#n1066

