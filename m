Return-Path: <devicetree+bounces-180805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 704BAAC4DE6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF7777A42AD
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD0C26159D;
	Tue, 27 May 2025 11:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b="mylwXSrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B232925A2C4
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748346856; cv=none; b=dEtvJXKSZiFoli1XOkiU0nyDctreAgnM7g4Dlecwx5+K4D/xz+wLjWI+aNa7uCJ5LFKpWLXA6arkzyuInkuUkvqPIkcpLS+A9hVGt/szhDU1p8XGVi+DMxD2WgGrRnVIt0+J+VFTp4ipjuy92QgD7Jw884DLV5MK4h0yT0hc1eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748346856; c=relaxed/simple;
	bh=PJ6soXTmDT3YZ0f42M1DkP7vVxsdSiOpE2I2xmRdYq8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tgP5Tqxh4t5J4mik71AAUZQCS1ZVTZYhwMZz5KRKwjVfh1EKv/+BWe3uWa0Bd+zppmqMy+VmumYu0MO+emhcM3g+dKbtcmhhJH970LkQR1a2dxK2ZpCf5nnuv2LnT08Czv7DEs26y0YmrNGgQn6HFtikYU1LyhH3qmA9X3PERLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com; spf=pass smtp.mailfrom=geotab.com; dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b=mylwXSrm; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geotab.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-85de3e8d0adso74441539f.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geotab.com; s=google; t=1748346854; x=1748951654; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PJ6soXTmDT3YZ0f42M1DkP7vVxsdSiOpE2I2xmRdYq8=;
        b=mylwXSrmvX1pNFbF7wpOm8fJnId6kGvzXC93/8ud+/fkidNhjXGPqXhRlm1kkavnaG
         11EFnHTFkdwE2Y6c5djdTNWsDt0jBeP4lHE8B9fZUilx5ReeuNrCFYNOwloXUgrqJhhb
         VFdWo8PfmejtkjpPnMRhfNIeZR2CfPEsrB3/fCsOsIVsiCHJD75+sQKjHb/KcVuj7el3
         75SDrFnW+hgvlRE+7WyD1N7Apt6twkrTveIGqzC/Vu4b2T0S7UNBSsff8FxAO6WuaHrC
         ED+y7AtnUf253wNOwene4ljdAfxOHb+qlZzj29wnLznliaORNg65MhU2tseCtCFxryq5
         fY1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748346854; x=1748951654;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PJ6soXTmDT3YZ0f42M1DkP7vVxsdSiOpE2I2xmRdYq8=;
        b=xQkdkoaYY7E+BibnfilUKxrlicrpw4IBmA87zS1XVjP2+ePvWWFP/3oHYvC+lqnl6H
         MJcmpeqrz+Ot/GAkjPcelpsFWGvEZ9tyatZ80PDX6hjrpuHptUn2Vfu0Wbs3ZttvLF0H
         yumOmKBE/eudITql2Khm2T176h76SG2kT44e/98tgukfEKnC3FVIPxkGKMWUD0GDF0ro
         VdJcBnh9gwIOojzR/aozLD7PK3LW+7aXaVz3M4oGGXd7Wi7uaGi8IDhdp1Gh1c9lQMcd
         VbbneSxv/uMSf+VcqFKGtb9XoXnkexZRRWllubplJCTHmcCnmxYnmGnDAOHuaIis8/UE
         ftMQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2k9U4TPFsYi0HybspJEGB3EjGdMY468X9dOfb8QxE+ao3nlP02t2SawK5C3r0+YbeY9CGR+6cJySK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1nTfKKcTPqTDiYfZ7H8s2P5Bcxzo7PudGADTJvZ/11xVCWdlp
	PzuLFf67KKMe4fnKDxkP0AZ2qC81dF+Z2EBKH8XKR4ZALxlKntkqumLqS4830hHcSHMW2lde65g
	UWu7OLCqR0uCkEr3t7Aafpg7JYInkXiPzrp4egsrT/g==
X-Gm-Gg: ASbGncsMLdxd/8O3AnrOyBU1yLW3Y0e4GyUH+AiAmIvkwv1xTM0U6nE/y/vbapbaUJz
	n84+GyFtyK9/zR9lGHqyP6D0yW9DgyHIp5EnLLa1JXcVC0y8z6Jw8Y7F4DbA6U4JTBrwpkQigjw
	dIvNN3kuKgy5dMCfQBCYCd8CoY1/h+gbHb
X-Google-Smtp-Source: AGHT+IHesfHStYNK+RKnXcpNq0TgXDBWVZ4JQF+Ro/XEGUcvOTT1IJlVJKYa4IT7lXXEAwmx8MsCDzRmQWcsqjvUR8E=
X-Received: by 2002:a05:6e02:2513:b0:3dc:79fa:ed5b with SMTP id
 e9e14a558f8ab-3dc9b6884fbmr100866225ab.11.1748346853755; Tue, 27 May 2025
 04:54:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-ubx-m9-v3-1-6fa4ef5b7d4a@geotab.com> <dfd63c64-184e-4e48-9344-a3db0612036b@kernel.org>
 <20250527-ubiquitous-super-bison-babfac@kuoka>
In-Reply-To: <20250527-ubiquitous-super-bison-babfac@kuoka>
From: Alejandro Enrique <alejandroe1@geotab.com>
Date: Tue, 27 May 2025 13:54:02 +0200
X-Gm-Features: AX0GCFvruvCSIpHvq0-b0fqRI9Afm8E-s8eNbMN3vbyOYO0UHqm6wji_D6aB4HQ
Message-ID: <CAN=L63qT6_kVrSJudv8iecmSit1CveZzFEU-2T7Tdpw_aiM4mQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: gnss: add u-blox,neo-9m compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 27, 2025 at 8:27=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, May 23, 2025 at 01:52:06PM GMT, Krzysztof Kozlowski wrote:
> > On 23/05/2025 13:19, Alejandro Enrique via B4 Relay wrote:
> > > From: Alejandro Enrique <alejandroe1@geotab.com>
> > >
> > > Add compatible for u-blox NEO-9M GPS module.
> > >
> > > Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>
> > > ---
> > > This series just add the compatible string for u-blox NEO-9M module,
> > > using neo-m8 as fallback. I have tested the driver with such a module
> > > and it is working fine.
> > > ---
> >
> > I assume there is a user somewhere?
>
> This question is still valid.
>
> Best regards,
> Krzysztof
>

Yes, I am using it in a board I am working on.

