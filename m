Return-Path: <devicetree+bounces-229034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C34EABF335E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:31:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78892402455
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB4A2D0636;
	Mon, 20 Oct 2025 19:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W5f2gyqc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0BF1D5CDE
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760988691; cv=none; b=J9SPEmj59FsmVnxubRkAk1H3ooQSwrnan9W8PyigBwdyDrqULl1LMNICoRKT+D+J50ZoDE+Hc3yfD0sMCLYO3RUVDPBFhAiQY1ssgowmZSMTAlIP4qF93MBCCD96GuQhJ30i8Rko6ouruNV4H5fj6sSLeCLqM35aViZNzwTnWmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760988691; c=relaxed/simple;
	bh=aTcaRUS1UlBkq+JExmVgQCLsZRPKUNCnlYRfvsA4aNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WcmC8o7DkfB163Fa1/4D1mSp666Vs5yjgsj7G69ksNYk50+NW1TDuoqT/UYtBXrJW7BJyOegggI4XcU6YNl+uEs+xcurDXwha89wHpSZSpswl3nXGrvmEfPfMcuDWjz8yU7kWenO++0hY5ZvSuskBPkPRF52ueFKc6bV+AgoQCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W5f2gyqc; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-57a960fe78fso6172468e87.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760988687; x=1761593487; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Mdwdpp2f/axMvp/dEbL/3UQlTUav37QZe40IGTcygk=;
        b=W5f2gyqch3zNrZZK4hCIFifX5ZNHksmIb3tThS6TYOvAjj5baykWb+bkc48kS4Ro0V
         g6s7i/chiwTn66nw1Vb9roDwMVKpNp7sblClPoAarHIu0hVZ5F398abQw+9OZG9b4d/G
         XcJI064dyQYflDo91Kx5DmgDz1Og2PEDUrThzMDIEHFDrcy00unfrf/mCAqusUsovvZm
         qVr/Rt/+x3n3rcNwYv4F0taaytXi4Zc5oNE1j+nA5tEpFpj7RqE7I3ww7aVteJWi86MZ
         7mPKsHe9O6FSHoYVnJWv0im5uvkZErHQJ4moCFjv4jOXTmv0zVLnlJRlfW1OuZYQZNMh
         AJkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760988687; x=1761593487;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Mdwdpp2f/axMvp/dEbL/3UQlTUav37QZe40IGTcygk=;
        b=pSWIidE139P7QqUFa1KuSCrSzBo7X66VtDgnjV/kmMg3HnJtUSmYCuk6j9woKLbFK3
         fII/v7X9eKSmdOPRjcnWoH0KIB3J989BFMoV2PjZGULkZl3Fd3uRTS3wtPcfBJkYQ068
         aptnZGJH7DaHmryKeC36k65B3iAW6u2UtTmtPA3Nx6GAYLarmsGNcJ5QtXwnsW2NtJOZ
         BhI1LyiOoevL6dA7gyeISGgrgoYtxTObFYbt333pz63wCUGi3e06V6mBhSSmRx5QyvD/
         snTzov0tRBJjGB/HZefNq3jOeuDmuuei9fXqQtcLE6PV6Ff5jbg7SI2ychej/1B8pFIM
         UAEA==
X-Forwarded-Encrypted: i=1; AJvYcCVsk7e4tXIbUvuQHMhg66rXsUfGh7eFTgy+XboftCHo9indHCO7oIh8afSxZED+y0auNq9tkaxJHihx@vger.kernel.org
X-Gm-Message-State: AOJu0YwvGWYXEO1TwMFwe94nMNmqzo+DjHIuHGNtidFqW+AdU1R82QK5
	aqyGgHHsG8DlDDPLYR6zjeIWuKZDhDzYAolYWi+YfDodbyv2WO30EiDpL/ho1S8Q5rLBn6weLtl
	6e14FBnjPPHHlbFrMFPo2JWZ/jqyitQ4=
X-Gm-Gg: ASbGncsF3xS18FCNCDj+XAvA1iNvTq0y5lYzW9nIro7IFMv10g7rJs9HdACtBxF9MLG
	ca72/VI9zT+CYk0bhV+KyhPrnvT6HZbIwsgOSivB7HSzB+ePjw37vm9pJhrDiu1veOtQnM9kUvr
	Ch2F6PeiTXhnRDEz5r0j6h3pD3IKU3SnYiXxiSroRF06dSQyN+xJkKpsLiiGn2a4tsnSJrBFXsz
	NVXQOPc5JJ24+ggUNEfrL6/90r8PkLek8U69zvPWAsCW1BO1lB6SBDkph28MSz3x0TGF9ZP/A59
	1P+qRMtFK60ioonJhKI5GXgJRziX
X-Google-Smtp-Source: AGHT+IHdGwIKt6MJuzuxrsoOY50td8plGo6SoVslGHkoluMxGkCxNGFJX1kD08wOSpAr0cRn/WoTptP7RBokhdk2X8Y=
X-Received: by 2002:a05:6512:33c3:b0:57f:7baa:b9bf with SMTP id
 2adb3069b0e04-591d8533c8emr3937465e87.23.1760988687245; Mon, 20 Oct 2025
 12:31:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611-p3452-v2-0-fd2679706c63@gmail.com> <CALHNRZ9tjJo3LRmpaGsEsf2=Him0O2J-ZaJf4UZ8bcbz1119BQ@mail.gmail.com>
 <CALHNRZ-mUb1Yv6WTeq50ddBS209uWUkv2ivdEMqfBBUtw+SU2Q@mail.gmail.com> <CALHNRZ9H=kPLAJ-YZN8n307uAMbGYOHF55-Tc5=uN_y46USYBg@mail.gmail.com>
In-Reply-To: <CALHNRZ9H=kPLAJ-YZN8n307uAMbGYOHF55-Tc5=uN_y46USYBg@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 20 Oct 2025 14:31:15 -0500
X-Gm-Features: AS18NWCP4zTcV1mtQIKq9eumpUifV2HKRJ8W3men4P7dGM-jZ393xwdpaub5vUE
Message-ID: <CALHNRZ_QFsqhtR4ME9TcDUc8oLqjv0uSdrzv5HdA_0wzTta_Ng@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: tegra: Add NVIDIA Jetson Nano 2GB Developer
 Kit support
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 31, 2025 at 4:41=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com>=
 wrote:
>
> On Mon, Jul 14, 2025 at 12:36=E2=80=AFAM Aaron Kling <webgeek1234@gmail.c=
om> wrote:
> >
> > On Mon, Jun 30, 2025 at 2:37=E2=80=AFPM Aaron Kling <webgeek1234@gmail.=
com> wrote:
> > >
> > > On Wed, Jun 11, 2025 at 1:53=E2=80=AFPM Aaron Kling via B4 Relay
> > > <devnull+webgeek1234.gmail.com@kernel.org> wrote:
> > > >
> > > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > ---
> > > > Changes in v2:
> > > > - Fix usb power supply to align with downstream power tree
> > > > - Control vdd_hdmi with gpio pa6 and delete unused vdd_hub_3v3 to a=
void
> > > >   conflicts
> > > > - Link to v1: https://lore.kernel.org/r/20250608-p3452-v1-0-4c2c1d7=
e4310@gmail.com
> > > >
> > > > ---
> > > > Aaron Kling (2):
> > > >       dt-bindings: arm: tegra: Document Jetson Nano Devkits
> > > >       arm64: tegra: Add NVIDIA Jetson Nano 2GB Developer Kit suppor=
t
> > > >
> > > >  Documentation/devicetree/bindings/arm/tegra.yaml   |  5 ++
> > > >  arch/arm64/boot/dts/nvidia/Makefile                |  2 +
> > > >  arch/arm64/boot/dts/nvidia/tegra210-p3541-0000.dts | 59 ++++++++++=
++++++++++++
> > > >  3 files changed, 66 insertions(+)
> > > > ---
> > > > base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> > > > change-id: 20250513-p3452-059708ca9993
> > > >
> > > > Best regards,
> > > > --
> > > > Aaron Kling <webgeek1234@gmail.com>
> > >
> > > Friendly reminder about this series.
> >
> > Re-reminder about this series.
>
> Yet another reminder about this series.

Another reminder to review or pick up this series.

Aaron

