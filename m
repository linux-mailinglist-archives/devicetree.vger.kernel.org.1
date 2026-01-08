Return-Path: <devicetree+bounces-252873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 888B7D03DED
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE15E31256C8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FBB22DCBFA;
	Thu,  8 Jan 2026 14:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGtUZC4o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BACA2DAFD7
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767884227; cv=none; b=ABkY3hmLaTzJTX5XrPLd4i1ayN0gYluqe8nTLbB/HgBnYxEqcTvbihH7GAU1izm09UWavvT9il3VAZ3fTqTa46KiSmqRjfPjapK5UxO/Ud1fl8KVeCZUuqpzfDM/rRSMYFIPsFfhtZ6j3mfy4YnvQz11YsShu+FayJYyUnjWKTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767884227; c=relaxed/simple;
	bh=DnQ/yW9Yt6BJKqL+B/dE/IYvWBhrwB2z1MZrYDFRvIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AnbPg0PDNHT+7MfLP59tGHYWRZ4yKVdJQ1EV6qpE/UYHZju1NMuJSpkaJT5S/NF0F1qTBY8nUan0ZNXYOZPA4KHSwUZXOtA+gxRUvO7Ju8nBrd9TlP93dz+jzXHF6EWgVtfn1U+TU5QfoRdOb8Ym5FKGZyqEPRp13vP0vcPe+uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGtUZC4o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2F43C4AF0B
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767884226;
	bh=DnQ/yW9Yt6BJKqL+B/dE/IYvWBhrwB2z1MZrYDFRvIs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QGtUZC4onf+ad/oH3z0uSgHtyk1DXv5bPyVDzFLRhglGKICHU9I+tK/hoh1X8JgPK
	 kxp+y8IDlShg4DYkrdJisJxHRY62zll0q2Nd9cJvnqcmr2ihkfEn/Im4iVukOcqQ9Z
	 WI3VJoyVsljfAnBRsMwp5UpwLRbapbINExoMQTuh8z5e1IzBdtHCCgsqaDshpiKoe2
	 7OAaosQp5y62feE8OLUxhaAb/118D3Wg2b3qLSoxw6iEJQnJxPSJtbVtZg8mECs4+2
	 T4qP/VZSaQTC7GXv+wRPIxPmvHLv/EiyvWnFpzeRLWBHZ6RZN35zLRdNT+iBgXgIfx
	 CpKjHU/BKaI9A==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so5209637a12.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:57:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV/JP21DrCkt/Y8zPZb5TRCTGq456YOgGAyqoP49v80qH1Z3POr9O/UeRiAyD0cHWozpG3BMSS/0oK6@vger.kernel.org
X-Gm-Message-State: AOJu0YwkG+rWXLMrFit3kLNnMLXXh9s8lJ+1GkiIRE+pVwaxdGLi9OPY
	mf9hCSSvp/P/oGXXRJD0h2TQhFmuay7Cbh3xA2OsprWNlEEZuxHNdv1hs/qp5hr3Acj6lpBqpvL
	f8US653GLGBPBRsKE0aJrVeLH7MuDBw==
X-Google-Smtp-Source: AGHT+IH8tmcrpioHdEXlv//9XeZHVgTYmZpW8KTSYGrex2JjF0CGxtJ9povY/7UWSwzu79Ov8qEz1Af+LJLHJruaSk0=
X-Received: by 2002:a05:6402:2755:b0:64e:f6e1:e517 with SMTP id
 4fb4d7f45d1cf-65097e90f77mr5912597a12.32.1767884225209; Thu, 08 Jan 2026
 06:57:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260105193232.3167128-1-robh@kernel.org> <176786448160.1407469.7623777355686519631.b4-ty@codeconstruct.com.au>
In-Reply-To: <176786448160.1407469.7623777355686519631.b4-ty@codeconstruct.com.au>
From: Rob Herring <robh@kernel.org>
Date: Thu, 8 Jan 2026 08:56:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL2ZS_D-ZUGRmJ6=dhuAAfoTUoC3CNsP4_FBat160dCVw@mail.gmail.com>
X-Gm-Features: AQt7F2oPT26RPKH9Ri2pcGhrpmWXdmje7bB16GvsWdhqPFVUb3V7ELNmqUtbXXM
Message-ID: <CAL_JsqL2ZS_D-ZUGRmJ6=dhuAAfoTUoC3CNsP4_FBat160dCVw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add missing "device_type" property
 on memory node
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
	Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, openbmc@lists.ozlabs.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 3:28=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Mon, 05 Jan 2026 13:32:31 -0600, Rob Herring (Arm) wrote:
> > "device_type" is required for memory nodes, but is missing on Nuvoton
> > npcm845-evb.
> >
> >
>
> Thanks, I've applied this to the BMC tree.

I didn't realize Nuvoton and Aspeed are 1 tree now. Should MAINTAINERS
be updated?

Rob

