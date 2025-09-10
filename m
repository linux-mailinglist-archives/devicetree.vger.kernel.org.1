Return-Path: <devicetree+bounces-215652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FF3B523DD
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 23:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1EF9169DD6
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 21:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C2A3101A3;
	Wed, 10 Sep 2025 21:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lUCMaj25"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4C83002C0
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 21:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757541072; cv=none; b=GQ8sqmw7yesSs/zSqNy6pq2nMB6WsetSQux3ta8dxXPKS1K8PGtpqPaOyBJjhDNw1i9moXJ7SKd94NZt5I3jPRDjihE8ry9I0IvUYiaP0DLKHMnIuZ/VztRkP34tX8tfX8/AyX/Nc5AK4uLxAF4bDLajwdPBRJa2tEanFBlHhi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757541072; c=relaxed/simple;
	bh=o95v/+Gki1KYTrPyXr39Fj4FLKk98Q6CUu2/j+SJkls=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S10Z824kAnDBJuxa1UyyicdY+3B4Q1S7ZaE+cgdxl7UT0AtHntfBU9qcEhw3G495Kpe/BjzkihKSC1D2Lr4pw8XZmeFfcNjlx7CLVIeFXyRMyERS5/55DPA1Wc7I81unhyUP8N9LFaTg/sKaWyUbTvOVVEper9diKYrLNjTK4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lUCMaj25; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-336af6356a5so645871fa.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757541068; x=1758145868; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o95v/+Gki1KYTrPyXr39Fj4FLKk98Q6CUu2/j+SJkls=;
        b=lUCMaj25tQhXcGFY9D49JqORZtpH3UmMIfCSRICie6AeBAXTG2ucmQFL5J3kyTOjMr
         GqN5k6s7s7bdpSWx8c5oCiSYU4Sbc6GEHlF78Pe3p50GUHvC+ALN45xW6bZJEHXwEuSE
         DhTp8AdigzSmAzdS+VKPE6zo0Ynywrra60+YIEPpRqYg1kOILa9FD9TyqWYFyoGcCUPy
         qCvARQTTJ5mBd1ShV7sIUoEvzSfQmvPWDKIo6crDJFWaZRY5aexfXHkLJY3PBoZH24IG
         WAhkw9c+ntdcIANOIQdwSG/ZX2iqKWzt1TVpVB46ZLdEs4/H45yI9hN0YG9B8Uk/njKI
         5Mbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757541068; x=1758145868;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o95v/+Gki1KYTrPyXr39Fj4FLKk98Q6CUu2/j+SJkls=;
        b=w/Ah0NFdmrfz+MoWKvXFjo17mWU/vm5p50n0IuVUEy+mO4jx0Kr6H2oQHETCiMjWf8
         wkOLrT0yQlVdnnUv9OG3w+Y2kODIHpkYVVm+tas7lBhq5mkXsJiik1RzcJNQauxnGtrm
         9sqHA7jLxvbpQ5Gkh3QiORZXihGk8Rm8RusiMCjx57sEoxxjBR0VOxJ8rM8rd8yEqic3
         PEA+tkuvbUh/d+A/h2eTxZND7mRwzZ5bxtaExu4FewWOSb4rgJX9fxtDdQSLiOaEG1LJ
         S4XPQ/bAAMlYE32P0+fWA8HC+IUGHn4tFRNDOf7aUws3qruArUVuapB+RdW8CqANb2YC
         RCJg==
X-Forwarded-Encrypted: i=1; AJvYcCVB2iRvw5qwe1f97sNePvloo02nyNpRvh1tC9GzVKEo/zSX2nBRLVFzNs8PxmNvPt7pR6ha8+d4VU5S@vger.kernel.org
X-Gm-Message-State: AOJu0YwyvZ1CMfHp81FnEj0rU8F44fD7XvsKgQfboYQyleEEJbotCKZ7
	45+G1lFpH4GqEbjiPYyuTsHZMi2HSg0nXslJ2mCs89aFkMFTpB10AKFdW3XV7R7Kr6arSx+uCSu
	wgnDxWdhp8SkSjETs32aODAhocfr4ySftxJS0xxskNA==
X-Gm-Gg: ASbGncvA0wE6U2oMl5VL+VBeb6KrS6jhhNCSEsyd8HEshKQ4u8SurN19XmNwBiv8+2F
	n9HFVCcYC2RUKYU5AFtDeZP+IJHU0TVDeB2Yttw8DnsU2H/1aQUkY79z72qGrZyK+bWCmqwMEXH
	1P2ewd47kNfiz0m6sDjhgCr0KMVgmN7ZmgajAV1gW87VKjfDiW/mGjiA7CIXS9o+As7pMJLgKMW
	HxkQwE=
X-Google-Smtp-Source: AGHT+IEJlIdE5osVu7CFRz1B+V23ahz3lLGypCenTLhiP4qfmKZkgsEstnnmYSdvYj0hsFA8e+enqb/RwpOwngd12h8=
X-Received: by 2002:a2e:a54b:0:b0:337:9e3b:895f with SMTP id
 38308e7fff4ca-33b43430959mr48580621fa.0.1757541068033; Wed, 10 Sep 2025
 14:51:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250827024222.588082-1-gary.yang@cixtech.com>
 <20250827024222.588082-3-gary.yang@cixtech.com> <CACRpkdaX2VPAb+vihZ5BEAsGy+jNUdQ8q+3c3Q78uWmqZYeu=g@mail.gmail.com>
 <PUZPR06MB58879640C5849ABA55EF0C34EF0FA@PUZPR06MB5887.apcprd06.prod.outlook.com>
In-Reply-To: <PUZPR06MB58879640C5849ABA55EF0C34EF0FA@PUZPR06MB5887.apcprd06.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Sep 2025 23:50:57 +0200
X-Gm-Features: Ac12FXwBa9ZOv5SOk4OUSUTF518ns1CoJ9PMufbvw3-fq3nVHK7Qp4WDBqsYJOQ
Message-ID: <CACRpkdZzqRo9LRkF8=BSDANweWd0ccWtu5_nznDUn_FS6Fb0BQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: Add cix,sky1-pinctrl
To: Gary Yang <gary.yang@cixtech.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gary!

On Tue, Sep 9, 2025 at 5:30=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> wr=
ote:

> First share a good news with you. It's that We have verified the new sche=
me pass on Radax O6 board.

That's great!

> We just have a question before submit new patchs. As you know, there are =
some macros defines in dts/dtsi file.
>
> Where should these defines locate? We found these defines locate in inclu=
de/dt-bindings/pinctrl/
>
> mt7623-pinfunc.h on MT7623 platform. We don't find arch/arm64/boot/dts/*/=
* -pinmux-props.dtsi.
>
> What's your suggestion? Please kindly remind me if I misunderstand and mi=
ss anything.

Yes these are old habits from Mediatek platforms which are bad.

Since they are not bindings, just convenience defines, I would suggest you =
move
the stuff from
include/dt-bindings/pinctrl/pads-sky1.h

Into
arch/arm64/boot/dts/cix/pads-sky1[.h|.dtsi]

I am not aware that using .h or .dtsi has any semantic difference,
maybe the DT experts can tell. Maybe use pads-sky1.h to be on
the safe side.

Yours,
Linus Walleij

