Return-Path: <devicetree+bounces-208998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C62EB3403E
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 15:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 467D93A620B
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 13:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1901B21BD;
	Mon, 25 Aug 2025 13:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="mDLyigWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75F1E0E08
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 13:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756126885; cv=none; b=ttjmQ+Dllij0BtqImmg8PrwJcL/LRcRrovq04owzQO56GDP8Al1E9M67mA0e5T0xCUQWMD1LhJMpYqGEWwlhtdBBTPO99hfEVLmmDPKKLVYKWwCl5fcuWY64B6FTRM96aP66QJZms1vgIIcDvzkNJJGLwGSb0vdOXJAPBGF5F1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756126885; c=relaxed/simple;
	bh=dQlK3wXG7sop1i8Jgraua6l3U7jzqZIBJa/jEdUPy4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QRZgdxzf/SmOlIHVZi51RPo6M6BTWe1Ae+l9TCTuwYPGwmroCrdRPohZKmHVUHrnivV6mDoMpWC0rgV5sC5PYnR4EYgPSOJXQVb0Uvh/kWyVZup3isCv4/rvP3Zdwdq3dZBE2WrQYyl2fzWz6h5jsg50Q0+R8MSL56lkUPs8beQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=mDLyigWd; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55ce5243f6dso4702510e87.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 06:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756126880; x=1756731680; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dQlK3wXG7sop1i8Jgraua6l3U7jzqZIBJa/jEdUPy4M=;
        b=mDLyigWdXswkeZt7lRAFvB3o8gZ8PtldTvaQo7OnXliJ+zpKptVJnADL2NscXTplbj
         AwpAwxFKwGRbARZLC5jQbBZpVVL49mpfGuz+QLF12U2RupYkiki0q9/OuVRecJuUcgHS
         OLIRnOq9i1lsDRgIwdzPwjHIRDyciJODikp8ycPDNoGeZJUNqEzrGjgla6a8IXxwOthB
         5Dod/RPvnBAnm1zCIiVYSGM/aLWg3smayGEh4BNDIEKkAD9sy5aqf5/oZNqL1rGb75iX
         NtdlXHOgku9IsOaLH1si+rlh7+9TRd8icLWOZBUaRdETWVsKnGIwf3yZ3z5ze51fzm0n
         j+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756126880; x=1756731680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dQlK3wXG7sop1i8Jgraua6l3U7jzqZIBJa/jEdUPy4M=;
        b=D8JNotS3ZJiUMbAYgAxdMCYdmOkryruz62cy3Tkf3VEuCmEqTqDxp4f0PMiVtccfW1
         lg5dD3KVsp22v6xgC+oZldicyH18kFrUvWU+rUzrbvPMw5KAicUyDEhJg+FUHaXfgHWs
         i3ry6mjNyaFBkwTBNL/WdYIumrWRw11t/uMvR5kUW304vK4J4/yDoxMCvHl7R2q7Vxgd
         DSklH/vBKiP7c24COyOsNCoH9FcsknUZp9egsF+A/n6HyKX73iholi6cMSjMnaxkez5i
         EdHYeYuRGBKcd3hr/JlezvCdPlMKujJWdL9CMlGrbqskIft3wVs8gWx10p8ANinV7Bep
         ol9A==
X-Forwarded-Encrypted: i=1; AJvYcCVmiOm4uLS9wFHwPpsZDeD3Na/Z/GMjkVPZ7I6q0v2ZuUDXB7oJTueLn7ACo/vxVhBqpSsQahrlxUcu@vger.kernel.org
X-Gm-Message-State: AOJu0YwdMW9xiTVc9baIOjQyhajMx+ornv9CeLO0vUYid3+LpDxfE1Ng
	JKXpgk2bPCifmQPMDNiPBnamYjePA/XcGSFuYK7Sy911u5CAG9daN2Zq1CIIqmAEMy3ktRORuvD
	w2mIAsE70+lvoADoJhD9vsjV9ywHI3Pd146n9z6Nb8Q==
X-Gm-Gg: ASbGnctO2C/NY9RS4Dz6Mpq2XH4hHeog6DpBThC/5msKzVxHUrsujJPO1gxM1jv8dXf
	YjtaCMJMPJJ7kVBAItWtaO6K7aOGsh6VqY0+wiwU8ngHWbPxTtu3tve1YiTJIonAhcyE195FL0M
	vm4EtjHIGPAdovkC7yHS+kwE/ixcvGbi/HhWFjvzUWIeQ81NqwEfdlwNsOs8SsfkfwrS6pwQ52n
	2xGr1FsDXJYxBILOkJFqavtIyF2hfycw9SevBUJdt6xBoSiqGLlKEBT/KRe
X-Google-Smtp-Source: AGHT+IH5N5gh1e2Wid0aMR0FMRyM9pyDqp/u65+mskc935zM8TPlDDSTI+H4ckU5CTPXH5byLfWl83YU1oyPWy+p/Uw=
X-Received: by 2002:a05:6512:135a:b0:55e:11ca:1549 with SMTP id
 2adb3069b0e04-55f0c6b5589mr4032238e87.19.1756126880025; Mon, 25 Aug 2025
 06:01:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756104334.git.christophe.leroy@csgroup.eu>
 <e05a0959d794016bde79e48e25ff71253cf51aae.1756104334.git.christophe.leroy@csgroup.eu>
 <CAMRc=MfPTtdFtE63UKfbuK3h1mLEk2aUGazBsbRS-OLZzm7e9g@mail.gmail.com>
In-Reply-To: <CAMRc=MfPTtdFtE63UKfbuK3h1mLEk2aUGazBsbRS-OLZzm7e9g@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 25 Aug 2025 15:01:09 +0200
X-Gm-Features: Ac12FXwiA1VNOuENMZgX8e0TVhBXubdvgS_jWd_PUQ_1hAXM92SKRJ_pWmQYzEg
Message-ID: <CAMRc=Mcsvkt1OJfVmB2peQJPpEKqFJ=6=86m=fd+VOEoMGf8Yw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] soc: fsl: qe: Change GPIO driver to a proper
 platform driver
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Qiang Zhao <qiang.zhao@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 25, 2025 at 2:56=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> On Mon, Aug 25, 2025 at 8:53=E2=80=AFAM Christophe Leroy
> <christophe.leroy@csgroup.eu> wrote:
> >
> > In order to be able to add interrupts to the GPIOs, first change the
> > QE GPIO driver to the proper platform driver in order to allow
> > initialisation to be done in the right order, otherwise the GPIOs
> > get added before the interrupts are registered.
> >
> > Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> > Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Hi! I retracted my review tag under v1 because...
>

Ah, sorry for the noise, you did that in a separate patch, please keep my R=
-b.

Bartosz

