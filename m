Return-Path: <devicetree+bounces-237625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8DAC527D4
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0CDA1887B95
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4412E337B9E;
	Wed, 12 Nov 2025 13:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RZoKNb94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50F3335BAD
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762954375; cv=none; b=kbmxi7L6HjDY/aYBQPmkPw/xuky54u25loC7Wqd2fzJP92gfLfDxAyPdx6JytMhBoJBwEj9+NcbikEsYTRYsiPoTCFv1D0DhSliPAO7gM/Uy/sxWBmXdDvcuy9MpPgFHuOMtvp5wMie955omJ3uKDO2o7HDoe2+iNgoQvQM8S0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762954375; c=relaxed/simple;
	bh=VBeqKMSy6YDlSMoYmNN3CreFZlAikXtDai7sNBXQofA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NqUu4EJJ9YXVN+OX02LM24w2Z6QyvbQFTBSYrQe78Ww+3haXHCU7gjFJPPJCpeMkPNGuXH5VJziGbJ04Jqc9ExVzXxP9x5fG+sKraX9ZMzXC4aYWo7vx93eoBkAg0mpu7s/Mo2kyAq7baSOmD/imHOKS8wjw4Os6hpdNY4nsW10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RZoKNb94; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7af603c06easo823694b3a.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 05:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762954373; x=1763559173; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9YGhgYj3na3lBzf4w1UXosrLsby9qm0K/6mBJebDsWI=;
        b=RZoKNb94EC8aatCUnxUg2AoMIT9yQf03X4vJZLq5NIOK8d1qs1IPKKR7gIkmiSKxXT
         eUT+jmCLBkJiwdSYnyfrIylUBQYozaBSOgfVvYGfQOeVFQNIIlJy2JoH1yid4cXb3T6T
         9Ft+x995AXHyqmgrVYz3MLSF8VcxLs+25jPnujUzqTmmpIhD0x8AyztfInNjKBoL55pI
         u8O5DzZnqT9o/BBP0j4zh+ea+IXx4ZaLNgFXyQ6DrPTv7yHugGc3DwVpMpCoizJKvyOP
         MvNyqlPWLDUypOLszQed7cwtcy1Zsf8YMzGDU3Wbb1kkUQDLjhZBKp/OJWnGGAS+9qN6
         nHaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762954373; x=1763559173;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9YGhgYj3na3lBzf4w1UXosrLsby9qm0K/6mBJebDsWI=;
        b=ZdIU1X9M4HvHw8dZ1sPm7iqBurwOI4J+m+I8N1cDMk+Q2ZznmlxY3yT1QpYwb7Oz6w
         u2vRx/Uc13YkfrCaApHqrVY2dc9OBgv/NDMhNcA6LUOWZFWrH30i44hDsS7OJCfh8hwc
         rWvCmrIrThItMFBgbRDECG7+zw/vhUh+EH3psV8EPO+qDpkkdTmwZklLu5aYJLn+KXxU
         3QAvFaDAY7CyKFKzKTJEyTbT99NyEDI8unx8SCdJxSeWTGJXaaf4OWJeBmCiNc2k4E0w
         qPKVDkZZR204XEM5T9waQzdZmkinZIFeWHFzqlI0NhRCatqpvLyb65w3AgcIJTRIe0dv
         /axw==
X-Forwarded-Encrypted: i=1; AJvYcCU2yxtucpb0cBNZNgnBO05EyKVEVkVoc9OtMGsJqrMfRQBA5TQ0HVj/xT3FbOUiHLnscxIK0GAMY1WZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyEPYGP3l6P5MMoWHiSwMr9kkeprZ3uWrrkx4SFPMPt8blf1oh4
	hp2VwaDQvEKsHGAB3yKi5DswBkQKC8Rml2OcvWkQ0g+LyECP+cY0pFjBf/wZBuzvT0td1+GfM+Z
	ecPH3+Gyt+YiElOLg3j+2YWDFzoIqPEo=
X-Gm-Gg: ASbGncupMtRYoN62+U30+RvkMkfjyAxYpl1UQd+B+bu0L6GX1Ts7Cm1JDkbJUmB/kn4
	fCHt+O9Xyqc/rGjfASFGO1cIkk1ABfBUSigRz+DhlCYWz6/qeoKoM5V05CsrBsQgrwxYMgd51+g
	Cu2IU57nnDU9+K4V525Q0fh2sVBVdOcwiohgqV0RNivaQX77YHnkFX0hi7HZwJroosffmEQJYfJ
	AElSIgBy0Bt4/EADr3fX13mA998ejDS1Hnx6iYzK11ErGfKgvMfggVNkL+15//o29NL
X-Google-Smtp-Source: AGHT+IH0s1R5FFxg23gO4NcrxeoCruOm0w1P1EMsauVWBqLInIEKMlkyeUh1Nk79roAPnbvPjJADnE2pjL0vjVVJ+WU=
X-Received: by 2002:a05:6a20:430d:b0:2e4:3c9:2ca4 with SMTP id
 adf61e73a8af0-3579b7a2f1dmr9348903637.16.1762954372919; Wed, 12 Nov 2025
 05:32:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251104203315.85706-1-shenwei.wang@nxp.com> <20251104203315.85706-4-shenwei.wang@nxp.com>
 <20251112125741.GB1319094-robh@kernel.org>
In-Reply-To: <20251112125741.GB1319094-robh@kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 12 Nov 2025 15:35:16 +0200
X-Gm-Features: AWmQ_bksp5_b2fKuYqlFUSD5X1hhR6adsSbKyYke1gTN6bbO51U9xJrjNuoDAyM
Message-ID: <CAEnQRZB4ymvSERKhJW=PAk5xA2JYD=i4wzkbumj_g5S8BjONjg@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] docs: staging: gpio-rpmsg: gpio over rpmsg bus
To: Rob Herring <robh@kernel.org>
Cc: Shenwei Wang <shenwei.wang@nxp.com>, Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 2:59=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Nov 04, 2025 at 02:33:13PM -0600, Shenwei Wang wrote:
> > Describes the gpio rpmsg transport protocol over the rpmsg bus between
> > the cores.
> >
> > Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> > ---
> >  Documentation/staging/gpio-rpmsg.rst | 202 +++++++++++++++++++++++++++
> >  Documentation/staging/index.rst      |   1 +
>
> Why is this in staging when none of the drivers are?

I guess that's because remoteproc.rst and rpmsg.rst are in Documentation/st=
aging
and that's because when converting them from .txt to .rst the author
didn't know a
good place where to move them.

Would Documentation/driver-api be a good place for these doc files? I
can move them
and then Shenwei place the gpio-rpmsg.rst in the Documentation/driver-api a=
lso

Daniel.

