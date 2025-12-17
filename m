Return-Path: <devicetree+bounces-247625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9630BCC9824
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 21:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61B8E3009804
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 20:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D77930AD1D;
	Wed, 17 Dec 2025 20:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggwMKfIE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17997309EFE
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 20:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766004088; cv=none; b=qASjZ7AH2eGu13MraL53JbCR5UVgFxnIyRqRd/XZKvagVdgoG5Jr+iEU9HGy+fKll3PCrbXEP6NDRa31gIt78mSwrSFTurv0lGrRxV/VpFVZVpMvxbr0gPqn3mqxfILSRL53EvTrgHTDl9g6H4wckjTfEqYIPQJ3RpZx9yXOQOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766004088; c=relaxed/simple;
	bh=m+NGJvGmb4urpfziB2n2S8uyWajpGXAoCxUHE9tBX0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pwCpAZDifzg/V31eyyR7NpToQhwT7+uLXbeYQOlqW8dD05SnurRA06GdL92nURlZ99m/SG/LExA2lSarORiWsD7BEAwXFTYfrEa/ohJK2ZurzcBnHZAB/LjkAXaPqid1lbK8YR/HC34R7pXrzTNyzOUsCIYfn9AScNMbbyqjm2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggwMKfIE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A401EC4CEFB
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766004087;
	bh=m+NGJvGmb4urpfziB2n2S8uyWajpGXAoCxUHE9tBX0g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ggwMKfIEEVmg/z3iJ20zptR+342nL3MSwCkf1CbpqqLPxZV5WJ22KsrWwA/lr/iYd
	 6D6LzPQ4gcsahpC3nr+8Nv7fZOGGaJ2D07AaZGY4rG4RJmB7oKW8lPwZvVyhIRNX0C
	 Diztk8yUWdeNVqpyPW8RxVcVAmbckC8O5wAtYlDLx7Mi7TJEN1g2iDFRnN2M5kX6DV
	 uDbGgj3y4w2unjiVhDYxeZGkc3qpwDnbr+VdYj6/SxGrE56K8MtC8o9zIX56cRSvA7
	 LTaP3uNgAmL1R4frYIk5e0BPI4c6GKw+YWHqA2ybKMn33RioseVfEK9+kZWgiuiLqA
	 eX7IvUbDhel0Q==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64979bee42aso9004146a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:41:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVXQfNXv5JChGZ5Eb0BDdKHh/2R6YjlVnSV8t8iw60CIACVNh1JtxgTwA0rjyPXW5/hgRyO0pqUkNfH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ClIRtcedrWdfj3aOdc4VI1eYaqOfiR06EqLrYuTtGahuzR66
	YUtxWTbxf23KajpDXOACyPDlEYEvcM5AhecBfr0Y889tQ8jAY3C0JRVmgi/jJA9/w7WNACJU0nn
	UnNdPzE5w4O/66gdOJML1Y6s24vwzzg==
X-Google-Smtp-Source: AGHT+IHVj3VdlynG/5Zxp1SorxpjcAJfgTUO5NT+kBjbK+YjDVtTifflWtOBxnZqixTIPdtNI7wwltsMKCzYVtPNolE=
X-Received: by 2002:a05:6402:26d3:b0:64b:412b:a1a6 with SMTP id
 4fb4d7f45d1cf-64b412ba1c9mr3294249a12.13.1766004086133; Wed, 17 Dec 2025
 12:41:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216175914.2791200-1-robh@kernel.org> <aa064ecf-1714-4d40-8658-19952392cae8@amd.com>
In-Reply-To: <aa064ecf-1714-4d40-8658-19952392cae8@amd.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 17 Dec 2025 14:41:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKdrN5UpUWQVQXpJjbTy1gN9_FhhwOoX6zVpG+zZVAptA@mail.gmail.com>
X-Gm-Features: AQt7F2pslnRnOQwS3k8GuK0iuEWjAgkgx1SkEN3Smf-dCaJjbj1CVhpbDXoEzus
Message-ID: <CAL_JsqKdrN5UpUWQVQXpJjbTy1gN9_FhhwOoX6zVpG+zZVAptA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: xilinx: Drop "label" property on dlg,slg7xl45106
To: Michal Simek <michal.simek@amd.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 6:39=E2=80=AFAM Michal Simek <michal.simek@amd.com>=
 wrote:
> On 12/16/25 18:59, Rob Herring (Arm) wrote:
> > The "label" property is not documented for the dlg,slg7xl45106. Nor is
> > it common to use for GPIO controllers. So drop it.
> >
>
> Correct it is not documented but it is at least used in Linux also by
> drivers/gpio/gpio-mmio.c:810:   err =3D device_property_read_string(dev, =
"label",
> &label);
>
> which is also not documented in DT binding.

It really should be for all GPIO providers or none of them. IMO, it
should be none of them as we already have "gpio-line-names" which is
essentially per line labels. I can't see why anyone should care about
a label for the controller.

> I don't have a problem with it because I can't see it used anywhere.
>
> But there are other devices where label is the part of binding. And IMHO =
this
> should be more generic property.

"label" is the generic property. Not sure what you are suggesting here.

Rob

