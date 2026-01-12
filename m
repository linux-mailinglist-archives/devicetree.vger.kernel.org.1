Return-Path: <devicetree+bounces-253678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DA8D105B0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 317A830010E8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 02:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05162303C8A;
	Mon, 12 Jan 2026 02:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JbeGBFc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95465303CB6
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768185360; cv=none; b=gMWCptduWnY1/irK3tNMYONJe1CDUfWeJbd7qmvxDHYJDyJBTHZuWCHkGkNUd/9aboyjvOSDOdGZWTBCCoQBSGH+7yvnKkyJ2NfEx1I7zwVDpzgPYS1MECkXsYb1o15O0Xfnufn19Ko07FgZKRW8zYr3/GDTAexNbg7sJZsbXuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768185360; c=relaxed/simple;
	bh=gr99FAWs+RxA2ik2A4m70vNaqd6657XcqbYV8869rN0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VOzrK/skX0ZHNs6OHvUUQUmgokHyoSB+ogiGOk8BRXzrlBZqbtTPHoIFqQuj+r7q12bNUQdGzxRBIybE/bg9yYaIO4m24bsoAlLHngOFaottYiSIGvpdUBjNmlp1JAGAfmCC8TsMrbv9i318vLCqEgR8EVTukPlq/vluHBLkhIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JbeGBFc8; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b053ec7d90so5124739eec.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 18:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768185359; x=1768790159; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fNMDVPREvTyCqFpCO4GGC8yTEzwn1qHeHys6UKrheCs=;
        b=JbeGBFc8EfFUM96IYC1P5ffG0GE4Mcmsh0lDiPkiiaIea3ifzEwNs5da8FSr4zB3l/
         CnhxoM35XLbccyrvVNDaC/pxEq6LI0SceH5wwlHxnOJhCYm6NtoshJKeeSABqgV9tMwv
         j9O9N2AMCJXfqFqWlWTXyUAHDtPSaIF/Sjifq2lmM6UvTO/fTfqdnX43taHYLREJZ6PM
         XSFoPrVIaEPl+C0jcl4r3wCCXu4fxA9J9FMOG9jHfgnuMHGSE7LHsVMYeqRmZRl4zQYm
         34hTNgg1TfLZPKPJO3wAStvMfEZCgc8Z80yOZyj0ACRordetpjC3FT4ZkyIoaxEi9Uvr
         7vfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768185359; x=1768790159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fNMDVPREvTyCqFpCO4GGC8yTEzwn1qHeHys6UKrheCs=;
        b=fgu99V9ecC2ghgi1iWEDEAaA/8U4b5WRY3PZnLvTzYsiuc+h5tyO8egVVj49mSo28X
         WafxO/o98+9QtFeoIYLX3g/i1vIO3UFT2Whh3tbF4qHsUeXmfdm8hasw9pATfBXW1W9y
         CWytAka7G4YfprAU7kqYc9ZWEUxsk0Zeq4mgHhShO+aeRapKyXRVi4UZ9t5ha/adIGeV
         VH8nnEqjUvoOXcjRqHt7fQgUQDXneFHrcGu7rrWEQW0QXMxCmSb0LOqexkEP5z6Jjh44
         sRvV+ETITWrHbl5meh4fg9WWYUlWBEbTgJ3dX6v9gmW0NMAZAnw/pj1eGCnM9FWU1rQU
         FDeA==
X-Forwarded-Encrypted: i=1; AJvYcCVWmo7/hgYeYTXHdki8jESBsN4zShSnpqExjjDOz3aEn5lHfJb10hd7jMBJfCDJ88LE0yIuTKiejttq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0H1R9y7Kt+3AESFMxAfYNi+IZwuLFEv4F7asxUuce72Uud8Zo
	7ytWxIe/fQWK+nvo45K4kaq+kVWXjeGfWvky0nmGthoE7/Ff15wdegIRpaBtK77eFyxWDticE7x
	Oh1RSTBhzqeYQwiVJaLRSs/4lnyiCQJw=
X-Gm-Gg: AY/fxX7jxN3fJCYUv914FYetHssSxxiTPdmbIUEVPvaNGIiZYOw7w6WhOPZk/z66GIE
	si/JS+23lKRNj3IHGmiBcWcSui+/47c0QKwTfnFuX2+lDCLYI7B62ldrkfA1hRXUAgiICquJ89j
	seeOU9mS+721/5pRUVjeHXeUe2iHpdxo+RRgZn9fLdz30e5lkeBBoCxQu4RFSSAoeJKPv8qYDV7
	Owx/Wm92ElgqtDN1yFCkzamlDT4gKRzW4Wi/lU1MeYHNEZ82tyVWIJPdOer0EuHYz+ia6yF5h8M
	YwT7N0MQ
X-Google-Smtp-Source: AGHT+IHqGWk88ovtC3TEuodNYX+bMcqvdaiZBR/imT8MmvR+sMpm1rfrn9QGmXdJQVUgOtHq5GsIR9y5lIaO8jo6K2c=
X-Received: by 2002:a05:7022:69f:b0:119:e56b:98ba with SMTP id
 a92af1059eb24-121f8b8ba79mr16811710c88.33.1768185358522; Sun, 11 Jan 2026
 18:35:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-3-anirudhsriniv@gmail.com> <3db927cd7ece9b0672b9e62eab64b951594470dd.camel@codeconstruct.com.au>
In-Reply-To: <3db927cd7ece9b0672b9e62eab64b951594470dd.camel@codeconstruct.com.au>
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Sun, 11 Jan 2026 20:35:47 -0600
X-Gm-Features: AZwV_Qj-g-Hn-yu4F1rRiaFK5tjlEcz8m4j6EVdmevlQ3RV8K5KL_wx3zDjzXrM
Message-ID: <CAJ13v3TmUQ8oQT6uwK_=rP7vWXy37Gzjmgv=cg_3HkgerPJNFA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: Add Asus IPMI card
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Sun, Jan 11, 2026 at 7:47=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> > +/ {
> > +     model =3D "ASUS IPMI Card BMC";
>
> I'd drop the "BMC" from the model description as well (wrt the
> discussion on patch 1/2).

Yes, I realized sticking to its official name everywhere might just
make better sense.

I'll make this name "ASUS IPMI Expansion Card", change the compatible
to "asus,ipmi-expansion-card" and the dtb name to
"aspeed-bmc-asus-ipmi-expansion-card.dtb".

>
> This looks good in general.
>
> For the purpose of review I've started requesting that phandle
> references be ordered alphabetically, because it's tedious to confirm
> they're ordered by unit address, and it's nice to have consistency
> across the files. Can you please fix that along with Andrew Lunn's
> concern about the phy-mode?

Will fix this up and resend another series. Thanks for your quick response.

--
Regards
Anirudh Srinivasan

