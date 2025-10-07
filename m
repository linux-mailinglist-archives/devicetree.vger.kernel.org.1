Return-Path: <devicetree+bounces-224228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E39BC1D2A
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4357E34D675
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E0B2E229E;
	Tue,  7 Oct 2025 14:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a4fYmzd/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D31970808
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759848995; cv=none; b=TmbPaTMnRCPhzVsPoUxbhNHUoIQxqjSgUX8Lfqlefz35fXbsJg+UuqagHymKQHmbIwbIKgbizCNaSj40sur3AKpMLqqMpWrMUI741AEwmyoyMPpt81Ara/16eybm+lSfCExGrdRlHaYUEmcEw2uND8ljT0E4pEzXdt8ovsPc5JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759848995; c=relaxed/simple;
	bh=ENDqyO+GBOTd7fOpBp9AzXSrQiEB5GrAN3MzmVDHS2g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uwDq4Ru3UsUypOuArhGuCSPWpnTyo+cyFZIQ+2ypdnAE6jIUlOCP5d6OrTjyUvZ2Khj33A8As/13ux6SmCgT5ctvAViRRSgSrxwiSGDk7a/K5g0rY3di7jJRUMWNYtjuXmRQOqBPo4FNCXSceyAmKgGDOhu43gmQqPihT/Wkw5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a4fYmzd/; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-78ea15d3489so56821026d6.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759848993; x=1760453793; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GhP8a/ZKQuCgI57gL3YaLW/ubXrMPM4jolOkHKTB/I=;
        b=a4fYmzd/tCLJ4KuR8CdghIDGboNkAYUZ6gkD5bHvmWWLdZYT2oXkzz7o6bhTGr/NG3
         ZwYXsILqkh4mDVWTM0yeL7/Lla/eRazX28i6W929l3uY5pGfGYObneQrsx/Nb1M3cli3
         7N8JKzD/2bUcrM2i4QSXEGq7rTAIlDE6FjgDtNdXKijadJjmqZr1+A4IPb8ANxWbMlqj
         XPPH/74KpkkOD2avAC6EhLQSy5sMkxwp+rnhcMDQEYtArtHLwln2XVZNYd1HqVRpkmK0
         odxmnCivwA4MomSyg1hvWrIW65zTG0ywIoHQ5R09ahg+rJYGNzbg90Y8F/0p+OFbWGHG
         v8dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759848993; x=1760453793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GhP8a/ZKQuCgI57gL3YaLW/ubXrMPM4jolOkHKTB/I=;
        b=NpPKDx1ygAsMra4Pk1NUcT7xRQd5bo6iKKcRAKDSvLiefqDmEsjmuPRJOMo2WFO2mk
         3BBdbzzmuSTfnqDc6VvfDF28zR8jJ53o4KUfbyr8ec5+ePvRm6QAYBJZvJQt2K0RmumV
         G2pGEEmkR6Q+sFf9p6RwA7ZZQolfMQtxAtlnSGUFJqXYzQyjOEWwPBv/7WHu0AtIdOTe
         EoT7oxugl2Bgu8M615TRx//cyif+PJac6jp5P7djQDyrmPzMnZ73YhFVWLc5ri77NNED
         CNEfkYAtrtcGuDFYlfcja54uRX9UObYATnLjHaJFMgFg88FJDK5Ir0Qv4L70IgupDMTO
         iyRg==
X-Forwarded-Encrypted: i=1; AJvYcCWp9IIywPYutPx8czE8zMkAA2FERfV0Vq2a4JvVOMlK+Id9xZoQHy2djpVhJei+++Vn+lffVRkOavH5@vger.kernel.org
X-Gm-Message-State: AOJu0YzIQ+DwCR1JAnAhHUcdH8Sw8NP1n6vd/kejuzd/Zxvwhi8ksFJ3
	z4nAt2XitED7HfeOX8YWvovz18TFKobN63g3m8CHFwAwXGhhg43yZQXDKzo9klGkop9D9HZVUjA
	4nZaGef6BD7dwO9BQnfCcsXkAQveKmCA=
X-Gm-Gg: ASbGncstfHlc5BXuB42ps0JWaojkvFZZdS/f6DIfghW+QHEW0uwDkdi2+z3qHuCReih
	fCmavouMSxgBZmPAKeVe2VMxhFpsWykltg/rNdeJ5XrbBLuml4ZxiMR+c8wkgPE00zn3KtiNjFK
	GKxlb9CVy31eIBig1lDHZKJBBdoTvj+SZu4CuM0q+FBd0glFsl1GM6zN9yuCx9dL5N1115OMD/S
	3f6yO3fxFU/mqBR63rrfiCmIhmc+Sup
X-Google-Smtp-Source: AGHT+IFrXi3dEsVh64oUPSZQJlGSlVMkDxHPAisOxAhnbSx/xiMMXQ/o7YtNW7v7WGp9iWQQ9a0t5dArstXdxIY4V5U=
X-Received: by 2002:a05:6214:1cc2:b0:78d:5f57:e91a with SMTP id
 6a1803df08f44-879dc860afcmr228051616d6.55.1759848992842; Tue, 07 Oct 2025
 07:56:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-3-jjm2473@gmail.com>
 <5700676.tIAgqjz4sF@phil> <CAP_9mL6e8ekL14xycSfPmVSkL7pANLeyewWd=rjxbtMgMQXxxw@mail.gmail.com>
 <6a5b9e68-4f23-49b9-b744-e84fc28a96b0@lunn.ch>
In-Reply-To: <6a5b9e68-4f23-49b9-b744-e84fc28a96b0@lunn.ch>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 7 Oct 2025 22:56:21 +0800
X-Gm-Features: AS18NWCQpv-6neUw-wCX8BxmrQo_hHgklBBZppkW0N1Nfv2AVai07jEpSNzQRn8
Message-ID: <CAP_9mL5C1vKJq=bGM6DoK47vU4p-qvPeF-k6kztdnEp3y=kUhA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quentin.schulz@cherry.de, kever.yang@rock-chips.com, 
	naoki@radxa.com, honyuenkwun@gmail.com, inindev@gmail.com, 
	ivan8215145640@gmail.com, neil.armstrong@linaro.org, mani@kernel.org, 
	dsimic@manjaro.org, pbrobinson@gmail.com, alchark@gmail.com, 
	didi.debian@cknow.org, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Andrew Lunn <andrew@lunn.ch> =E4=BA=8E2025=E5=B9=B410=E6=9C=886=E6=97=A5=E5=
=91=A8=E4=B8=80 23:43=E5=86=99=E9=81=93=EF=BC=9A
>
> On Tue, Sep 30, 2025 at 02:20:57AM +0800, jjm2473 wrote:
> > Heiko Stuebner <heiko@sntech.de> =E4=BA=8E2025=E5=B9=B49=E6=9C=8829=E6=
=97=A5=E5=91=A8=E4=B8=80 20:28=E5=86=99=E9=81=93=EF=BC=9A
> > >
> > > Am Montag, 29. September 2025, 08:57:13 Mitteleurop=C3=A4ische Sommer=
zeit schrieb Liangbin Lian:
> > > > LinkEase EasePi R1 is a high-performance mini router based on RK356=
8.
> > > >
> > > > Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
> > >
> > > In v1 this patch received an
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > >
> > >
> > >
> >
> > In the next version, I will add 'Acked-by' to the commit message
> > and then run `git format-patch` to avoid missing it.
>
> Please consider using b4. It will automagically collect all these
> reviewed-by, acked-by tags and all them to the patches for you.
>
>              Andrew

Thanks for the tip!

