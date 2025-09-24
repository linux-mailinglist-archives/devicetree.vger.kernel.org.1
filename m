Return-Path: <devicetree+bounces-220743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDBAB99DCB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:34:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94BBB16F34D
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698F92FC038;
	Wed, 24 Sep 2025 12:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nKFN8r8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B9B1F3BBB
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758717275; cv=none; b=ZBEOUB8/x5nZ2QgLVWarxv758ON31eLf+n5M00LA2+mfECBa9RIj65SVgRY8pd8rSuEVsyPzn0ttTpOG0NFegMXTCrO35KlgeOMaUwR1vN7S612mc3qYH0Lja0RIjpIEPhE37koVmxHogTsCYAFch2nrWGrN5plJMVP4Mb/qpkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758717275; c=relaxed/simple;
	bh=w/Y7hFj+095plLmyj6F//RB0JJaVllnXem2h/GAL5DM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fT31hWZqgmi+mw0XTyHpAImdPqTSAZebYLnCYAl35eQCyKmxUjVlKOLpKtZPcdQu3m2nT+bcXBOLGQ91wJQS4sb2YVrlroM3e12IWdoInn/VViK8n6evlrDrh9Z5eKOwM1A0bQAP45kK7VRBEn6GDkOsvav/nj7bSptHHbqEmBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nKFN8r8p; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3327f8ed081so3582268a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758717273; x=1759322073; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTDFZgAdQghFMqYnaQQne0DSQg8eYDQbEUoZypuZEl0=;
        b=nKFN8r8px+pzegy2l8GzbujA3yONawgNDtwnTyjN3MVG+becplTcAFlrefsHstjep3
         Uub109iAJRU1KOEBZRFhm0MlO5B/XDZ5204pKV5O1S25FAmW1hjAuKLsZY5D9yBOgue1
         wzQzZpyoAs3gMYfKOBD0twEMueSvXUHwcdvVcfy/Venut+jIUoEBvOw0k88ejbw3FyaL
         OXjj5SaAg5Axb1gReX4SUBHgktHAlvjF6sQQatvc5qdtB7sraWLw5SR+ezqLf+E6B1oy
         GPhrXvwiHxtcwplCpwNX4Nupiar2cWlj1pbTEcCXNi6Pe4jSUNFvZfNpRgbj680D9TDu
         /CSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758717273; x=1759322073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTDFZgAdQghFMqYnaQQne0DSQg8eYDQbEUoZypuZEl0=;
        b=D5XmeGn1M+NztP1T3Gy9/oZelvAmY9xMi/YMd0NvAaXmQC3fJm6GAWxGOg31unE7uP
         nteucMwYlaoMD+DbDzAXmnJA8cRkUBJppwlxZN4N00etTSeDtCTGNSkK3ZtWCPeHFJn8
         cnR++6vUJQic1sIoKOWfSF3teptL/Lu/c+YmZaIkeMMOUuNJ2MmiVq7rWrGG0TGStzvK
         Qs1APQ8q5xLju38+3ZmmTbWoINvSt+Vfy19k06GFSFumXjBZ1Oo0JM+uNDJNf+S3M7B5
         L2m622Ajg2okDSghHdhfUwSaI3MXnwSdoAsfgXvP8ep3YE/ADR2TV57MA5EQYO0pZRVq
         fkig==
X-Forwarded-Encrypted: i=1; AJvYcCUQBPfo34ptNunkdAshAnW+a6cdhXZd/gwclBneyZ92najxhUz7tIEBt2lZp0EYa4MHHy81Ni8FmBY/@vger.kernel.org
X-Gm-Message-State: AOJu0YwntOQzBM9lOksYdmAA87OHj216umIYxuaYSJ0x/loH/E8iuYo/
	juBWRH31ZDu2Tx/2/d2zqP+GBAb49MB4DfEJptKUyaXSr2FvRoQCVpt7HwXNAyWTNznle5sSi1i
	9SC0dV1jZs84YTy+lgjLACBnimmyg9Xs=
X-Gm-Gg: ASbGncv6i6HPHtbqrC1bOUD4SdRkKTptDHlfDZyYzVHk2JqsQgLC+Ha87dBF7/8P9uh
	PtTELRaMvv12rHoeDntyAphjhkLws+wNWc6j/evsDkQAA37k8/q5nG4n1qH5IJ7olXxPoompHP0
	Y+WMf5oa6/GPM0Wg/+84pkr5MrO3LI3GuIykdEblKHu44/0Zqx7hEVN1u+r4y/tFyEE2MZZjGc2
	NzWyYqpmfKQ3t6mFLFy3TtSzSwdGJTHF2uzChK+
X-Google-Smtp-Source: AGHT+IHdx5C/tIG+bo3u5C0cXUba70Ijx6a94OsvdZgP19XusiUpG+AOBXv8usuNF4dJmHieFVzFc321rHyvoQrN75Y=
X-Received: by 2002:a17:90b:58c5:b0:32b:dfdb:b276 with SMTP id
 98e67ed59e1d1-332a98fc381mr6768390a91.34.1758717273147; Wed, 24 Sep 2025
 05:34:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922131148.1917856-1-mmyangfl@gmail.com> <20250922131148.1917856-6-mmyangfl@gmail.com>
 <20250923174737.4759aaf4@kernel.org>
In-Reply-To: <20250923174737.4759aaf4@kernel.org>
From: Yangfl <mmyangfl@gmail.com>
Date: Wed, 24 Sep 2025 20:33:57 +0800
X-Gm-Features: AS18NWBjGVWilxW3m5lF33pWes0iHg7AU_L8xzuQ8IGPKI3mtuMEre2fBRoTZXw
Message-ID: <CAAXyoMNBHgG-DFv16ua-T__iBXg=chFQ6TNoXdZvk4VP2aYESA@mail.gmail.com>
Subject: Re: [PATCH net-next v11 5/5] net: dsa: yt921x: Add support for
 Motorcomm YT921x
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Simon Horman <horms@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 24, 2025 at 8:47=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> wr=
ote:
...
>
> > +static void yt921x_mdio_remove(struct mdio_device *mdiodev)
> > +{
>
> > +             cancel_delayed_work_sync(&pp->mib_read);
> > +     }
> > +
> > +     dsa_unregister_switch(&priv->ds);
>
> The work canceling looks racy, the port can come up in between
> cancel_work and dsa_unregister ? disable_delayed_work.. will likely
> do the job.

Are you sure about this? There are many others who use
cancel_delayed_work_sync in their teardown methods (for example
ar9331_sw_remove). If that is true, they should be fixed too.

