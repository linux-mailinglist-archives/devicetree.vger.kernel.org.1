Return-Path: <devicetree+bounces-12907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5CD7DBDA3
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7BAB9B20DB1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F6C18C3B;
	Mon, 30 Oct 2023 16:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akFbJv95"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC7518C38
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:20:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07FFC433CA;
	Mon, 30 Oct 2023 16:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698682799;
	bh=8CB+A7ObhubnYvuahBzqn4eJLvBHVOjnBhZVrb8dFnk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=akFbJv95dTuqKRsQGo+Ea3m0Vhr422EcQxSOn0ZcR255YMvsmBVPDO9mdcUiyZxsA
	 q6aaKFs0gGobVTTRtFt2Z5nUxgrGi++AQf5Fv1UbPKcnrM9Z888+oscuK0I+Ghj6+s
	 eqUqEEJD+TyoM1gNB0J70dhFEOhOL5c+TJj048QxK/4+o89rHAnIQYEPiqBQkDB+K0
	 r9o0ulTJd2EQi7rSlSzEJ9cQDeb9Yn61wDeVCUhQpw63vR26nFwRmeRfAQ5rPsdeUo
	 MNwnkWi2rjaZRQsxjctavnfwmXzXDtEJjTZT1STHFY5GyLSCKZbGNya+ko9tcJooyk
	 VVMWWEQGSRwqw==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-507bd19eac8so6745416e87.0;
        Mon, 30 Oct 2023 09:19:59 -0700 (PDT)
X-Gm-Message-State: AOJu0YwSIONLziGJ8FCmfVYtwNw5OO947YWWoXEuQ7OYahZQqm/T8Unj
	GFZXylCOxsdCP5B52LZ0wuiBwbINXpEKyPWSYg==
X-Google-Smtp-Source: AGHT+IGhPodCnfPRw3kjgKtqbysRQzHuB1pJlVdyRGdREeej24r6SiIpuQ7qVUxVicmLsS83yHmtCdlKXyWAJYJCfUw=
X-Received: by 2002:a05:6512:3b97:b0:507:9777:a34a with SMTP id
 g23-20020a0565123b9700b005079777a34amr10517948lfv.39.1698682798032; Mon, 30
 Oct 2023 09:19:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231026093029.3122573-1-kris.chaplin@amd.com>
 <20231026093029.3122573-2-kris.chaplin@amd.com> <20231030154015.GA1141490-robh@kernel.org>
 <df37f8db-a8c7-4a99-8828-3cb123afed1d@amd.com>
In-Reply-To: <df37f8db-a8c7-4a99-8828-3cb123afed1d@amd.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Oct 2023 11:19:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+SMY+C3=e=zbdrP_Ekj3FkRs7QQyg2pqmjrcz_0AvmBQ@mail.gmail.com>
Message-ID: <CAL_Jsq+SMY+C3=e=zbdrP_Ekj3FkRs7QQyg2pqmjrcz_0AvmBQ@mail.gmail.com>
Subject: Re: [RESEND v2 1/2] dt-bindings: w1: Add YAML DT schema for AMD AXI
 w1 host and MAINTAINERS entry
To: Kris Chaplin <kris.chaplin@amd.com>
Cc: thomas.delev@amd.com, michal.simek@amd.com, krzysztof.kozlowski@linaro.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	git@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 30, 2023 at 10:48=E2=80=AFAM Kris Chaplin <kris.chaplin@amd.com=
> wrote:
>
> Hello Rob,
>
> On 30/10/2023 15:40, Rob Herring wrote:
>
> Is there a device side implementation? I can't really imagine that
> 1-wire would ever be implemented as firmware on the device side given
> its limited nature. So adding 'host' doesn't make this any more
> specific.
>
> There are slave drivers as well as master, although these do not have a d=
evice tree binding.

My question is whether there is slave/device IP for implementing the
device side in software? The slave drivers in the kernel are for
handling those devices, not a slave side controller interface.

For comparison, we have SPI slave in the kernel which is for
implementing the device side in software (running Linux or another
OS). There is no such thing in the kernel for 1-wire and I would doubt
there would ever be a software implementation. Could you, yes, but
given the limited nature of 1-wire why would you?

>
> The IP device from AMD is called "axi_1wire_host", and so we are hoping t=
o stick with this binding if appropriate as it relates to the IP name.

Okay, I suppose that is good enough reason.

However, the versioning comments in your first v2 have not been
addressed. I believe the conclusion was to mention the IP has a
version register. And Conor's R-by tag was not added.

Rob

