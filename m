Return-Path: <devicetree+bounces-114811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFB09AD153
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2A0A1F21F7D
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB1941CEE8D;
	Wed, 23 Oct 2024 16:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="TcIM1Qxw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E51CCB50
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702176; cv=none; b=Qb4w6163f7/398ZLF2B0UMR+amumZEbj18YjbA9FQhcRG+gkLc2lsXvKj7XSUC3UbcFp8cwgMufvLlWErkAqjR3qfY/c/YM7v072Ju5GH8zr5IYtKIK36ygRK+9iLVqsNo2TjXA2KVvaDveuFlp6NlYzsPAmpjWZflguQX1ormY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702176; c=relaxed/simple;
	bh=HbnEFb3ObL/9cDeROaPzISBgD2bOMtvcCUvYiCPts9c=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=izAfRGmbR1N75rg886vND2N9z4TvPygkDvoDkUgeHD0G+UFNV3mrzcTFeui+kcdiiLmEPfMKI/pBMAgIn+GnzpqFvlCrQlerewWOW0cpyLkvRMqffLpB8eN/cyXc6NfYkViGjN6W/Mk3il5ehIFOyY681ziOB5D9qghkeJk+kug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=TcIM1Qxw; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BEE7541215
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1729702172;
	bh=w2QaCC8q/9wFycITOyNXbtjclLYtA/uPr5wOP7wkZg4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=TcIM1QxwW4QjUzAfEGswlKabrJtN5q5MQuG8bLfOdPpppveEBbIxhAqeQLDOXkkTa
	 2UAqhQSv7e8AKc15h8DAMUvt99WR5+20Xdcp9LpRJBMFtqJkSL1i2+K4Nf8j7ltPpk
	 sYhO/Tnvs41jBGxGh5idtBmTi5i4uVXwzEiwVbAgBhu3fgadIP6Dzmz0l6h5xp+fN9
	 ihGFNonS0Xx52rrZwSbY+yyvl111phJ5gCoJrjlysBE250VGAJZoYSwvL4CRGfoTSs
	 4W100BBImusM2znRHm7tfxFwEoApEj4b5ZUu+yAW4LvDvF95YT7IP7QKaW5c7yUX/A
	 I+DcNGhdWLHaQ==
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3e5f2dab4a8so71555b6e.2
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:49:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702169; x=1730306969;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w2QaCC8q/9wFycITOyNXbtjclLYtA/uPr5wOP7wkZg4=;
        b=PN2bTFyB8OrPsthFOnetBo1OY+YMv0EVtQotN/wPnZri63fxcLV024r6JfDoPgXI8e
         0xf0idMKP2eWHtp5L50vDFEMzhKIlKYDtZT7VYFoxm39Z5lgWdbK0L//QCClmoRLM9T3
         jkwzZWUh1TvdHNgg+FRNa15vq3j5E++EFj166gyJwBl+4meXq49Bub0eu9OwUVYx1gdf
         39BLWqfW2iXHthixCYeHDYjx/NkWbnA1fGxL4ixA3wHnzxadv++Upr8Pn3Fl6yJPnMTc
         /VJ09o3ORNMDfx+C5I1R+OtncE2Lt6Dcd/JCl3rR+wnxOU/oT/HFCZKHGNml6z9j/EjY
         Ddvw==
X-Forwarded-Encrypted: i=1; AJvYcCXV2M/sQDyTSR62aWYdtWqzJMmpWyc+T7LErG8S4/pddsDWi+Aq5C8wmCSIof3HSJh8C+alj6z/cdSE@vger.kernel.org
X-Gm-Message-State: AOJu0YyTDop8nJjnZJbdl+tmKqLcSvvCCPnFNjVkBdR4W7ADNLlm2aXc
	YM2naLhvanz3ht37OKjfx5A7gXHKpULlPxy1nvzl9ehL2NM4jfSfAHz+cI/I5vpkmoTcgWORgVN
	hSbRUso7wA5ifMmPWiHMqE4vtTl7P+TYqTQqUwjsHEHD7krTYXcrqhuGfGxsBF+ivwrCPpU5YNh
	W/oKBh/A6asaS9DMaDP5zQUsh/UxGVKeyMi12N0n1UvfvmDAj1qA==
X-Received: by 2002:a05:6870:a905:b0:260:eae3:5ec2 with SMTP id 586e51a60fabf-28ccb4a44e1mr3290260fac.26.1729702169196;
        Wed, 23 Oct 2024 09:49:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAONy/ra7wiBLGnnWDTFW/U6U7FnGggdnF7DYXmB3kSGSkFwOtZGKVkkKys9wyfe40jfUT0o4lf5kU/ZKjmnA=
X-Received: by 2002:a05:6870:a905:b0:260:eae3:5ec2 with SMTP id
 586e51a60fabf-28ccb4a44e1mr3290232fac.26.1729702168925; Wed, 23 Oct 2024
 09:49:28 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 23 Oct 2024 12:49:28 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241021-crimson-translate-291eaba4e640@spud>
References: <20241020134959.519462-1-guodong@riscstar.com> <20241020134959.519462-4-guodong@riscstar.com>
 <ae5gels34ozgzrcrwz53wj22hoy5cq3crn3dmkhitxlffmnavt@6lbmrcpjmqyd>
 <20241021-unroll-empower-3ab903615d6d@spud> <c048d270-7a07-4807-b816-0f4e0aeb67f7@kernel.org>
 <2b449955-6596-4c9a-9799-f15d186e260f@riscstar.com> <20241021-crimson-translate-291eaba4e640@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 23 Oct 2024 12:49:28 -0400
Message-ID: <CAJM55Z_jp7ZGUcV=4Ciq0ZMPbrf_YARpSDwWgxBa9OjbYzhiFw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] riscv: dts: starfive: add DeepComputing FML13V01
 board device tree
To: Conor Dooley <conor@kernel.org>, Alex Elder <elder@riscstar.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Guodong Xu <guodong@riscstar.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, rafal@milecki.pl, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Michael Zhu <michael.zhu@starfivetech.com>, Drew Fustini <drew@beagleboard.org>, 
	Alexandru Stan <ams@frame.work>, Daniel Schaefer <dhs@frame.work>, 
	Sandie Cao <sandie.cao@deepcomputing.io>, Yuning Liang <yuning.liang@deepcomputing.io>, 
	Huiming Qiu <huiming.qiu@deepcomputing.io>, linux@frame.work, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On Mon, Oct 21, 2024 at 08:44:16AM -0500, Alex Elder wrote:
> > On 10/21/24 7:47 AM, Krzysztof Kozlowski wrote:
> > > On 21/10/2024 13:16, Conor Dooley wrote:
> > > > On Mon, Oct 21, 2024 at 09:17:59AM +0200, Krzysztof Kozlowski wrote:
> > > > > On Sun, Oct 20, 2024 at 09:49:59PM +0800, Guodong Xu wrote:
> > > > > > From: Sandie Cao <sandie.cao@deepcomputing.io>
> > > > > > +&camss {
> > > > > > +	status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +&csi2rx {
> > > > > > +	status = "disabled";
> > > > > > +};
> > > >
> > > > You can drop these two, I marked them disabled in the common file
> > > > earlier this week.
> > > > 1
> > > > > > +
> > > > > > +&gmac0 {
> > > > > > +	status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +&i2c0 {
> > > > > > +	status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +&pwm {
> > > > > > +	status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +&pwmdac {
> > > > > > +	status = "disabled";
> > > > > > +};
> > > > > > +
> > > > > > +&spi0 {
> > > > > > +	status = "disabled";
> > > > >
> > > > > If your board has to disable all these, then they should not have been
> > > > > enabled in DTSI in the first place. Only blocks present and working in
> > > > > the SoC (without amny external needs) should be enabled.
> > > > >
> > > > > I suggest to fix that aspect first.
> > > >
> > > > Eh, I don't think I agree. Having 5 disables here is a lesser evil than
> > > > reproducing 90% of jh7110-common.dtsi or shunting a bunch of stuff
> > > > around. Emil?
> > >
> > > Why reproducing 90%? Only enable would be here, no? Or you want to say
> > > the common DTSI has things which do not exist?
> >
> > For what it's worth, I agree with Krzysztof.  In the (long) cover
> > page we pointed this out, and offered to do it in a followup patch.
> > But if requested we can do it now.
> >
> > So in v6, a new patch would be inserted before the other three,
> > and it would:
> > - Remove the status = "okay" lines for those nodes that are not enabled
> >   in this new platform, in "jh7110-common.dtsi"
> > - Add nodes where appropriate in:
> >     jh7110-milkv-mars.dts
> >     jh7110-pine64-star64.dts
> >     jh7110-starfive-visionfive-2.dtsi
> >   They'll look like this, to enable the ones disabled above, e.g.:
> >     &gmac0 {
> >         status = "okay";
> >     };
> >
> >     &i2c0 {
> >         status = "okay";
> >     };
> >
> > You guys should come to agreement, but I do think what Krzysztof says
> > is the right approach.  And unless convinced otherwise, this will be
> > what shows up in the next version of this series.
>
> Ultimately, it is up to Emil how he wants these laid out.

Thanks, but I agree. Please begin with a patch moving the nodes that are no
longer common out of jh7110-common.dtsi and into the vf2, mars and pine64
consumers. You should probably do the same with the &usb0 node instead
of overriding the dr_mode property.

/Emil

