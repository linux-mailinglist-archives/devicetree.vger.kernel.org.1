Return-Path: <devicetree+bounces-253803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E05D11727
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4112F3001FC1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1AD93090D5;
	Mon, 12 Jan 2026 09:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="kVutKpmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F723081B0
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768209418; cv=none; b=O0VygYsoSrGKvj7AcDeDj59qjvOtZ1fJ8uAZpXOq/CWD1mdpMxwUcaIimchR/wTqtioE4X5g0205ZuVv9OQvi24VpWx74TvTukS2PTqDzkqGqG6TgF6PH61xWzdtu4AmLr4vNBFj/Kn8q4GGQnxCDo/aawaCiel2G+w7vYnhW9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768209418; c=relaxed/simple;
	bh=u0GGHXEJAz7Pf+BtJn/Th1MG4SXv/ycropgdnfn+55M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZErN1HJ0vQkmHPad/vpELdbRzNsjbTyFtn3u4UYJ0WVYBRhodsywqv31b6nU9myjBJD7HKFZOJxoYCB7E9ukR8U+92UBntZ02Qu0mna0W9uy8wOLHiiVld95GdIoxs4jOgesVJxgCp+2ZXzcfOxGmoyq/OGKld+FO3W/w1LN0/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=kVutKpmD; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b87003e998bso207570466b.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768209416; x=1768814216; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u0GGHXEJAz7Pf+BtJn/Th1MG4SXv/ycropgdnfn+55M=;
        b=kVutKpmDC9nVs+HPDM7bexkYJ6XDSoA9f6VFaGP19wkKCiFbXJQ6NywESxKOa+Wb89
         lzBfsF6L+G7U6rCt2n9j88RmxwxauiVQ0a9O0LVjkGtCDJbgQn3rQMdkEAfIx9O7EEqW
         RZZ5sTnZWaB0e8/GtnJjGHmJXvFuQgtSskQB/RfCKSB4AZR0kuf0QHQcc8LSA027QboD
         KRJac463/SNAtu1ZCx2z/dxBbgd9R1pgu+C2LhUG0SEpELzjS7Ifr/NUUNRppyiqZd4x
         XyvSjnRvVC5x+u+u9Zn24Uj0rxOtPRgqkjAoR83rqvgSFG6V81/ExGu83necN1Gg9pdF
         GpZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768209416; x=1768814216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u0GGHXEJAz7Pf+BtJn/Th1MG4SXv/ycropgdnfn+55M=;
        b=p4U4zNsZSYsYayu1FL2a9bQmef6XflVTuA4W/uou7CtzR4e4VL+HrXRU/NZUawHdrU
         sY6gTQJ2PMis9qnkQh1R5yTaxjf4LpjTuDwbabPzNzGPvaoCLtKxYiWGZp9KEeizGZ8q
         4UnESc5RovIIPxS1BHI9Zd3HlsvZ5VdX/pedFsNMfPAiva9dGMKSY0Evj6o41FIKjCX/
         zjvWLh8igqI4yndVUFljkwrCplWsK9AkKLI9qxJ2Wvv+y4EJGLSUobf/L+wePuqmKi8V
         UYpikhIINHlVlyptn0D5nvAxiDPtJMS9ucbnQN5rY0B9zPJgFlyzwN+MO5AtAAw5gq6H
         XFfw==
X-Forwarded-Encrypted: i=1; AJvYcCVvTJpbYwR9ANVU750sMHD6EM5QVQJ9qMS4S/brvbVWhbz5L1wEXRKxofImA01BcxmxOZ8d1a46JQW+@vger.kernel.org
X-Gm-Message-State: AOJu0YxL56tLTziBVFPFTK57+SOu45NikzY34WOvK4TTSmak0JcZLPWq
	fP1I2+/tWfEpPSbb//eUCT3NkRuicUr5m0JUq1B2u6RIeWgVxHsxcjYoWBWfVj6FtRnAaRpFcSo
	5Post/37BKCt3NT+fHC+z3q9GHEV5XpV1U5V99141cw==
X-Gm-Gg: AY/fxX4iivaZTpy6f4nspmny6L/1xCMrMbw1xgqY0WxFc00GOOzh0A9UprfNa2TPjUi
	lFjoO73OB9jgzoffeCyooIHkeY1gKZdrhGJPQl3FeKMyi8158pc/QW8bNbC+Mqe5fW0Pd0HllyL
	iZF0cODUFNcGdtTJXI2022MnYaeiOJ3aEJlLaVN/F3nU7cL93tlwisELprxC5cqYm5Othc1/KjL
	6ZTld86qEwPf78CIG3o8JJzGtkquOQDIPWG57Lby1XHqPCD+AgXpzJFZa5KAmvtJn2ugk9q/bSm
	VDZqsGDJ0K7YteAtnikCi+jF1aJ2D0bqk5JPVtyvz08Bi/TNCA==
X-Google-Smtp-Source: AGHT+IFHWUmXBqYFWkoxhby2HESDUHxTxYnU+lh7xX9jszT6NKX4oqxb1HJTdb0EDGnRzY8jtCO1EEyaY1QSU/5+IR4=
X-Received: by 2002:a17:907:b02b:b0:b7c:cc8d:14f4 with SMTP id
 a640c23a62f3a-b8429853178mr1679895466b.4.1768209414984; Mon, 12 Jan 2026
 01:16:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112064958.3837756-1-rdunlap@infradead.org> <7a8ba1af-0b52-4174-8d8a-97d4c050b8bd@kernel.org>
In-Reply-To: <7a8ba1af-0b52-4174-8d8a-97d4c050b8bd@kernel.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 12 Jan 2026 10:16:44 +0100
X-Gm-Features: AZwV_QgJFIQsC5bApjQoDp0v7G4fYmiIJbi_qXU_A6j6rYh_MDNBvOQtasjcXF4
Message-ID: <CA+HBbNGT+7x0Bs9p5=bNVUSHt66vd38RuFdjm_GxPWX6C6XDNA@mail.gmail.com>
Subject: Re: [PATCH] reset: remove the reset-tn48m driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 8:26=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 12/01/2026 07:49, Randy Dunlap wrote:
> > The reset-tn48m driver is useless without the simple-mfd parent, which
> > is not present in the kernel tree, so remove it and references to it.
>
> I don't understand that sentence. simple-mfd is present in the kernel
> tree, so the condition is clearly false.
>
> Driver has proper instantiation mechanism, thus all out of tree users
> can properly use it and there is no ever requirement to have in-tree
> DTS. Otherwise you would remove half of the kernel drivers...

The simple-mfd driver itself exists, but all of the TN48M drivers
depend on a symbol
that sadly, was reverted in [1], and thus you cannot build them, nor
are they instantiated without it.

I am sad that was the case as the drivers work, and they were planned
for expansion for more
switch models but it ended up in this limbo state.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20260109&id=3D540e6a8114d0

Regards,
Robert

>
> >
> > Fixes: 5cd3921d16b6 ("reset: Add Delta TN48M CPLD reset controller")
>
> No bug to be fixed. Or at least not explained yet...
>
> > Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> > ---
> > Based on v6.19-rc4.
> >
>
> Best regards,
> Krzysztof



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

