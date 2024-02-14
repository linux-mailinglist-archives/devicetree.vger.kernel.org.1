Return-Path: <devicetree+bounces-41582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4872F854549
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 10:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D4251C2731A
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 09:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDFD12E6F;
	Wed, 14 Feb 2024 09:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VyPm8dBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2E112B9B
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 09:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707903052; cv=none; b=eWFLElNnB3HtxOwOUXhJ1gOf6kPSgt/235xIvtBbQK5a5OwKOb/GZGI1sX+j/k/plrvaRpv+wFAaIAkVbRKQaY8YCeLolXPMoLYV7cRQHeRnVurryVPvnLWfezfSbSnJRAe5Fg5YnrUYBVzYvDHC1A6ZqufFyt0w90s13GgpKjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707903052; c=relaxed/simple;
	bh=bEsQlPE5RIAyD7pBQ/6WMKh5pZq8CVxEwmmLdDNEVLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SyXX1QWJoaszZm7hBBEOYP9a6natq8i+G+40TwmhhXLY9hDqZCAww6pjwsIBMtj5UIArRTPJfiI5ZylnxKYUtT1zFrjh/i9+QaB1t3Puy9SIew/s+6/7QiIK5PuY/2fktIXF++lahSRLfemrx4zc0zdw6skr3/oBJMu5oN4JWRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VyPm8dBT; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-60777552d72so21204347b3.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 01:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707903050; x=1708507850; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zr9eNuCtqZel8i0NQyKBthfU107AzSAzEz24uVU7ovk=;
        b=VyPm8dBTwtJOJcnEV19T16Jitucke3DHFcGcggItadQ397qvHlRFG2TSgSNqgBjaGM
         EQiczKzBRvtZOd4D+6ztGSuuMIywxXmJG3i/CoWhLAqwzhXoI7qjm8tI/nOUgDiZK36l
         N1Maod7/LxE8sbHsxbs0WQ+KDG8D53LBM3CKYc9QDDWh0egXTOipQHrHhtVaByL7i8e3
         hmo3RQDwSNdxuyxBb4ZpmYALCIWwmHVBIsxK4NcXkjAW9p3rNwqHhD72YnDZxc5SrH+4
         SJq8+cLWScWUxrMbKafkVWEor99WQe6fG6J06S8dFcqvTsd9APNHUXouJRwaSOSMdCkH
         1RPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707903050; x=1708507850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zr9eNuCtqZel8i0NQyKBthfU107AzSAzEz24uVU7ovk=;
        b=SRpu23chAQmJi2lfPMv+ImDV/oUDLo4XMF9ykPCdY4MVayISDgsIYFXNVko4TDCRqa
         +tYc7j2LyGHCDn9ZEebuZZtr0BimE6vOeyx8YXOlIMmw4YYYz64z6w3LRh//uU9iF5G+
         95E5dNizet9Mf+IfGOfvmt1YkZqBptSjDZTQkzZElqB9S3ynfdbNFk5iWpfW7/nHKRLA
         u6ekkNnV4lrnBgaPfxmIDH72zUrsyISOaSn7wGwHkc2hxPCRzBZxzTRAsEegO1d0nNYA
         R8TvPCO+71U6R+14Ekn28+uEGCdmTCtrRMEmNxstcEkBXuv+lJutWoi+79/hqt3MvAwP
         tODw==
X-Forwarded-Encrypted: i=1; AJvYcCWDP/cf9TmEem8/C3Ka1ltHyX++w4/vuOfZAj5jAA4T8FqF0hwLax0ow4vWQLt9XBs+lbBFikAHfq5nD70dH3hiJ6/wVmIqpyCSFQ==
X-Gm-Message-State: AOJu0YzUJTg2/P+27NHPGKFR2J60wqkCzb/zldvdTnYxNxzf2z+OosvQ
	fpzUD3sso0sdelnTaK4wgvvI4H6eO04+J9KYiw/1kyjFEZ8pc6+Z+lRpefpVUNW9VkIVPvUtjcd
	GCZM0AEOFXSylIOUhwiYKg5L7Q0q1Ji7VJH5NjA==
X-Google-Smtp-Source: AGHT+IGvoZw4u7rELrvqF5+2wOW0HhuqkxVUe4rIjn5LzGwT489C+Zi0funewTKGDJ9HADdmYQDCZZXsijEcutUDh8A=
X-Received: by 2002:a81:91c3:0:b0:607:78b8:2a57 with SMTP id
 i186-20020a8191c3000000b0060778b82a57mr1986509ywg.24.1707903049918; Wed, 14
 Feb 2024 01:30:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1706194617.git.geert+renesas@glider.be> <CAPDyKFpxaEUHvKKb+spxV6HG2P2gLx5qM1mLPxJie+PdkmTL4w@mail.gmail.com>
 <CAMuHMdUswhJ3BQLnOQZC7X7qc7SFCqsr9Uy65LfBT_BNWfyhFQ@mail.gmail.com> <CAMuHMdX1tjgPJ8t+XoASuMvzvSognu7q2=aGfBO8r77JsbR82w@mail.gmail.com>
In-Reply-To: <CAMuHMdX1tjgPJ8t+XoASuMvzvSognu7q2=aGfBO8r77JsbR82w@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 14 Feb 2024 10:30:13 +0100
Message-ID: <CAPDyKFrTZPv+9sVtCgB2i+U-kS4R+qC_r3q_hQ-dVbHM4yDyKQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/15] arm64: renesas: Add R-Car V4M and Gray Hawk
 Single support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Cong Dang <cong.dang.xn@renesas.com>, Duy Nguyen <duy.nguyen.rh@renesas.com>, 
	Hai Pham <hai.pham.ud@renesas.com>, Linh Phung <linh.phung.jy@renesas.com>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 14 Feb 2024 at 09:35, Geert Uytterhoeven <geert@linux-m68k.org> wro=
te:
>
> Hi Ulf,
>
> On Wed, Jan 31, 2024 at 3:56=E2=80=AFPM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Tue, Jan 30, 2024 at 2:11=E2=80=AFPM Ulf Hansson <ulf.hansson@linaro=
.org> wrote:
> > > On Thu, 25 Jan 2024 at 16:34, Geert Uytterhoeven
> > > <geert+renesas@glider.be> wrote:
> > > > This patch series adds initial support for the Renesas R-Car V4M
> > > > (R8A779G0) SoC and the Renesas Gray Hawk Single development board.
> > > >
> > > > As both driver code and DTS have hard dependencies on DT binding
> > > > definitions, most patches in this series are supposed to go in thro=
ugh
> > > > the renesas-devel and/or renesas-clk trees, using a shared branch f=
or DT
> > > > binding definitions, as usual.  For the PM domain patches (03, 04, =
09),
> > > > Ulf already offered to apply these to his pmdomain tree, and provid=
e an
> > > > immutable "dt" branch, to be pulled in my renesas-devel tree.
> > >
> > > Patch 3,4 and 9 (I dropped the copyright line in patch9, as pointed
> > > out by Niklas) applied for next, thanks!
> > >
> > > Patch 3,4 are also available at the immutable dt branch for you to pu=
ll in.
> >
> > Thank you!
> >
> > I have pulled the immutable branch, added the remaining DT binding
> > definitions, and queued all remaining patches.
>
> It looks like you have applied copies of all commits on the "dt"
> branch to the "next"
> branch, so now there are two copies?
>
> See the output of "git range-diff v6.8-rc1..pmdomain/dt
> v6.8-rc4..pmdomain/next".

I screwed up - and thanks for pointing this out! Problem is taken care of n=
ow.

Kind regards
Uffe

