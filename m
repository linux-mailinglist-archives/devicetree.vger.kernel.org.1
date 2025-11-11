Return-Path: <devicetree+bounces-237306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE221C4F2DE
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A51D53A5D22
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B21377E8F;
	Tue, 11 Nov 2025 17:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AaOuoCkX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACCE5377E82
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762880694; cv=none; b=pjUBoSAdDjeCSJJ/mY6O4dZZgmvkLX6zzGlxoZV2LGJLllOBj9JAEiSxB9CAw223OyOcnRBMbBp8EqqH3dMo/58TxXk3DYU8NdFzZTh4WdVxSCSLi3owpim0pfwRxOUSRzNqWuGu3nZIOnG8mEdqCi20wqmFDVokKhHdV3L9ZiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762880694; c=relaxed/simple;
	bh=YubFhKnH81TLGfMHxtluWgwaoXScPwc2G5XHJdHKjtw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V1guH4qSlTvDJXlQ0wxuSAORwaQukNXiBb1aQF9j+BF8loX39Bg34jNyt7Evp2s2rPJJCdpUT4Z7Me3yT9lK4EVnn6/AQNKRebT+9nAoVis823ay4XcmbwJU4QaUZvUkkjw1PQEn32sAy/lKHYgRNTp4hoOK/bVy02HEHzpeMvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AaOuoCkX; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59469969bfeso2560606e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 09:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762880691; x=1763485491; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YubFhKnH81TLGfMHxtluWgwaoXScPwc2G5XHJdHKjtw=;
        b=AaOuoCkXjxB52QlvIj2bOAsEsuz1Aqp22e3xc9jQZs2a8JC1P0XD3DCdMVIK1UU+Go
         Pu/yWivC9nAzzxvemn5iAcNRzxfBBRzMmmP6pFxopvI9OYDUdj9uqnSwan3yqQFRr6SZ
         cHvJwQMgCQPmldu+Wpd/5mk2vvW8OuzDfXrWT/uqJpsMb1QanZj+dkoJRNNsayzjADJ7
         gvUPuLWi4JSOvyK+A7VosMBmhwErY078GpMHiweF4fcWVn79ntC97z9U+fbgdxseZeW+
         LPDATIpHxYcZvthdzwf19Y40WxMjWIaix7IF9RGbDE1qK+Ave5Nymt0l7awCMd+MroT4
         7HOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762880691; x=1763485491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YubFhKnH81TLGfMHxtluWgwaoXScPwc2G5XHJdHKjtw=;
        b=BqmBYn09HW0hkwxjKMpx1o7qv/g4jRLNn3w+kH4OinVXlyfR3vGQDDIapTn8yUavLD
         UtyYw08Kv+7PdSbUP+CMCzGo8CbjZ8PHcYLp/TcFNeavMzcBmttzDFN5MkZitxYwXbbu
         BnDvgdiFchu1pmyFNMqgBLywTzT6QitYY3TDM386uK9wVgYordeTPF0n51aMBU61jhLx
         vEzIIj6cK15aZoaFC0Msf+Eob75aLqJxWL+DDQA0/Uu8VO4+azNYEYEOQ95mIVYhTxJu
         KV/nJXDH9IHhV6oQ5/h05r6MdRolJbccc+Xtn/i3MaI1bAoYdJWIlnSWFkAwPsHN3nbS
         Bibg==
X-Forwarded-Encrypted: i=1; AJvYcCVHlP2MMqCBpghuhbXuTpuGZr5o7LH2zBb4Dwzx7Qg0ktxzHH7AGfk0RElGkh4KYrFlqsLpFg2KNAib@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd4H81Z0Me1xi3NDv4cBHy7w8V1fdRtxpJl0k+3V3NHEJBUCIL
	foer9gYJBEUoUyN5whDp/UGnOt6AJuH7qodno53HPnIjCTQLqDkoVPdTJm2mMhf4kBr2H5WQ6OE
	HSvpx3d/jzCzhGOPuNNV4milxaBVF3fE=
X-Gm-Gg: ASbGnct7ikEANSCTehOUAQOJB/1aXJInkBTckHP5nkcaVqvnOKm75e1s/QzXHzygsvj
	vm9jz27MzWKvWTxTbHWOXpAOmPSc+i5UD4BME6bbnGf5KFcMopczG6J4ELz/QWxcjNvW7JtvcG9
	goqBLoMvfnW8EyAuwl0es6oVv8+rmCdhZ9gLp+ZtS5bINWVUNVyDVNKAfYunp0RwCFKKY9D+38N
	5bYzVKN7+JXzECUPn4LrqEID7trzGo/rIreHiYuWT5AM4EELiM1tvPvSVxfXHI7H1zN9Yw=
X-Google-Smtp-Source: AGHT+IEZlH0mtpomAoYHWcXslTaT22aqDtc9zJerr/PD7lSoxf1ylVfrl0l274mOZbaW4dhFxUMeL2NxxO5NcXsCaD4=
X-Received: by 2002:a05:6512:23a0:b0:594:7492:8ac9 with SMTP id
 2adb3069b0e04-59576df8d16mr23940e87.24.1762880690492; Tue, 11 Nov 2025
 09:04:50 -0800 (PST)
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
In-Reply-To: <d5d23eb5-f43c-4e4b-9926-3fba6ffd3acf@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 11 Nov 2025 11:04:39 -0600
X-Gm-Features: AWmQ_blP3BFSBsAjGIzab2QDvUj_EpEv05TJkH9xstMTHLX-1ZR-K3Sg-X-4BUw
Message-ID: <CALHNRZ8vFJyfFXbxFehWA9TGkdrEUy9Wsm-DxEOT=tVbYTcU5Q@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] memory: tegra186-emc: Support non-bpmp icc scaling
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 11, 2025 at 8:35=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
>
> On 11/11/2025 12:05, Jon Hunter wrote:
>
> ...
>
> >>> Thanks for testing. Something is not right because our boards are
> >>> failing. So may be we are doing/testing something different. However,
> >>> this should not break. So there is a problem here.
> >>
> >>
> >> Did you meant: "So there is NO problem here"?
> >
> > Nope. I mean that this is a problem here.
> >
> >> I kept these for 10 days in linux-next and yesterday sent them in pull
> >> request. If some patches are needed on top, they can still fit coming
> >> merge window if sent soon.
> >
> > Looking back I see it started failing with next-20251103. next-20251031
> > was fine. Reverting this commit on top of next-20251110 fixes the issue=
.
> >
> > There may be a difference in the firmware being used. Our testing is
> > based upon an older NVIDIA L4T r32.5.1 release but nonetheless, we
> > should not break that.
>
>
> OK, so I see what is happening here. The boot test that we are running
> has a 2 minute timeout and the board is now failing to boot within that
> time.
>
> Adding some debug prints, I can see that initially the EMC clock
> frequency is 1600MHz and now after this change, on boot the EMC clock
> get set to 250MHz. Hence, the booting is now taking significantly longer
> and the test times out.
>
> We definitely don't want to increase the timeout of the test. Any thought=
s?

My setup uses the boot stack from L4T r32.7.6, though cboot is source
built and has had changes over time to support newer Android versions.
There shouldn't be anything there that would affect emc clock, though.

I'm seeing the emc clock stay at the boot value, namely 1600MHz. Per
both debugfs clk/emc/clk_rate and bpmp/debug/clk/emc/rate. I don't
even see 250MHz as an option. Debugfs emc/available_rates lists 204MHz
as the closest entry.

I'm trying to think what could cause a drop in the selected clock
rate. This patch should only dynamically change the rate if the opp
tables exist, enabling the cpufreq based scaling via icc. But those
tables don't exist on linux-next right now. My test ramdisk does
nothing except set up sysfs/procfs/etc just enough to run a busybox
shell for debugging. Do the Nvidia regression testing boot scripts do
anything to sysfs or debugfs that would affect emc?

Aaron

