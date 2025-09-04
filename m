Return-Path: <devicetree+bounces-213007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E3AB44644
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD3EA1C28650
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DB626E6E1;
	Thu,  4 Sep 2025 19:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KBgt/5sH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D10D26A0C5
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757013486; cv=none; b=tzknKYp/3pyrj1iGKgDxMh72izR6jTvxG63VCwpVdWCbjuVN6fdQ7xBEDFDA96iyO+7/r3Da19BsObuZ4WfPFaUFn132GZUOjM+T8YfXxKkRHVHRcwU3+FyVogq3AAbtQ8nXVNNlFHB0J9L4ebWTBD5AgtbPTZ7lSW/KaoskZ4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757013486; c=relaxed/simple;
	bh=gWbxFQ6x7UcC2lbZjKJgloxh5fAj8MyhODzBvH+P2P4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SP7CFeZdOJwRuwH7+i8zxjba2zIlRiU15frjMJxe1ir81jhuKC7Fj0hcCoQIZm2oV+x5SgxMJ4D44gPO7TuUtCUfzZlKSQ3hvQu1BOBFOGojQfrakTKkHOvi0JxKmFZfJbhUnWYouxnNywwGXbKQJUps8deALtcWDn3rIcKe1HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KBgt/5sH; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-336b88c5362so13525541fa.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757013483; x=1757618283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZF5lLMA7h2yx16E/Z/NbIZblFHx04/IPYs+dkVSu0nM=;
        b=KBgt/5sHrM2l3a/1CVjYwG8yfaSHV/FyGfYg5AChUS87pDvvcTk3QORGe2kwKeUcwi
         J3p5tWH6lLScGwlWOTACneelzUqEHoeTvsfj50p87SWCZWchqiWcXeX4N8tZFiLymtp6
         1mJ6g6+eSyrFg8dqurY0bLfAJWHvOqEjFcpyGT/L4swGjw2PGbOi6Dg94QLxdbI+bs2X
         0pfyV7l8sXiLW+ToKpiZ0tw9wOSfJDzG7gab4bpX1Bfk3fkj/Snpa5t68Kafo0hTGf67
         4Qe59PCmvZOwmWXpLH7ez/x1fUngriXFocomhyOLgrTMv8OioZuNkb++h7OOXNYdrNo+
         UDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757013483; x=1757618283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZF5lLMA7h2yx16E/Z/NbIZblFHx04/IPYs+dkVSu0nM=;
        b=C58ZzjuIHe1j5lTa4oTGar/RnsWj2mMjF9K+o2fgMRDiCIp9xLDu9Co5mBooh8kkwI
         KzqsL28X8tPKftLqczaKtrV9XEoenrC5eon9KoLmh20pY5AbvApmSAZAKCYPzSAd91El
         /syNHDMNUYYaIEfAfw0XMg/ll9a1oLZc7hYRkcu9MAQl87+NzouTrMiQPe7wT0EdWFrt
         wjl9fWZSPPOl09YiE+GD907iBlRKnmn+r8hkWNHRvxpppAxv51P5RPIBIIigZSITRGe8
         IsuJbaOVPZKq+SzCwPpyKExNcWiXlGGQrP/o9I84kOvWsxuLXQwoorppyymA9mK9kKS+
         a0Fg==
X-Forwarded-Encrypted: i=1; AJvYcCW6izF6pNykfxsXGyqVEVWTVPD7zy7yalEBXgjRFrlYQ20vtjyCdbp5Gi2srN6hfGlIyRhEtnAPc+y5@vger.kernel.org
X-Gm-Message-State: AOJu0YwpZYR6lOgWb0CEvYHkKllEYZIx7ywI9jYAj3eIuQLbYBmLZdbx
	6AD5XwfZ2WBdipMMU37QF8u12xG9qT9NX84jJhgfkRTTFi2IBjtquBvR+cB7MF1aniyEDs5wSFy
	JfTjKUCmk6ZYtDdeLonKCubK8wCWpZ5Z0QP/MmejSAQ==
X-Gm-Gg: ASbGncsk3VExgakYzcg95FvVIciMiqhMzcq69a/J2bVRFCW31FMCBDFATVRBHl3qi3g
	wWTeLyORZ4fkPbSNbM3GS/EcmJmmw4lpahzappCmlkR9E1QNlDOCqPKSngeHkkectzQxGyZjB9h
	J/GK2Fl0xzT6waeH8+rV9Ma4+V1/ZUgX/A7x4XhuwNaIVXCbGF0n5/NxwWeyfDP4GxLpeFuoU8q
	5Mg/mw7WNWucIN+HQ==
X-Google-Smtp-Source: AGHT+IE5rwrhvv5qZHz6lW/fqD0gYW2CFROKD+rC1PEOKV3cpUw2gd7Ym9I+S+hnXU1PgSDTxTy2pPIOFXTSby/SrY4=
X-Received: by 2002:a05:651c:b13:b0:337:e8cf:f049 with SMTP id
 38308e7fff4ca-337e8cff1b1mr41377231fa.32.1757013483147; Thu, 04 Sep 2025
 12:18:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756372805.git.andrea.porta@suse.com> <CACRpkdb8fFvgyWPAaP6AumwHUYhnvc7BXX0V5kwO4sts6zSGUA@mail.gmail.com>
 <aLf1nc20SRkWJW51@apocalypse>
In-Reply-To: <aLf1nc20SRkWJW51@apocalypse>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 21:17:52 +0200
X-Gm-Features: Ac12FXwADs87l60RXY9dk-u4dU-hiNHF0BGDc7fS0K4iRh-4CbDl_UBjzeodFfo
Message-ID: <CACRpkdYNaVQ+NgAhZCiKmU16jf6rtGL02JOJk0w=kezz=YRbTA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Add pin control driver for BCM2712 SoC
To: Andrea della Porta <andrea.porta@suse.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	florian.fainelli@broadcom.com, wahrenst@gmx.net, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, iivanov@suse.de, 
	svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 3, 2025 at 9:58=E2=80=AFAM Andrea della Porta <andrea.porta@sus=
e.com> wrote:
> On 08:58 Wed 03 Sep     , Linus Walleij wrote:
> > On Thu, Aug 28, 2025 at 2:45=E2=80=AFPM Andrea della Porta
> > <andrea.porta@suse.com> wrote:
> >
> > > The following patches add a pin control driver for the BCM2712 SoC.
> >
> > I have merged the prerequisites providing .function_is_gpio(),
> > do you want to do any last minute changes or shall I just apply
> > the v4 version and fix up anything minor in the process?
>
> No further changes from my side, please go ahead with V4.

I applied patches 1 & 2 now, please apply patch 3 to the
BCM SoC tree (Florian handles this I guess?)

Yours,
Linus Walleij

