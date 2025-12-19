Return-Path: <devicetree+bounces-248261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994DCD0659
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B74D0310DF78
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDDCE328632;
	Fri, 19 Dec 2025 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMoPDTYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CDC2EBB90
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155739; cv=none; b=jdM+5x6cywuzxZajiYVL4Uv2dmuhSRg4s90ZZ6vzwpbASME2HgmdnQfiY0Un9XfAYXC6JuRz460tEaiZbB85jZgF+3KJAo7mNVagiGkeOnRe0dYaPXPcjRzYOv1eyyvYER4So4V4wMA8ePpp3mvGakcSwHeKsoXbdN1N49DLTZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155739; c=relaxed/simple;
	bh=eniGh6DTvWohh9mk2+UnT/ZdmNg6vUqU0Bss+l3hteY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k7Vu6p75NvUdaWpZcHiHBXu+krxFNrK8+ZpWTfD/idLSPdJwqtzsPe8O9I1uF+iIUP5nfJKJ/OtX7IJaxBHIxunmmY9C7Ra+MvNrjKQRSbfp9Cc0aYH8yjV1ndEyrXRy1E+cQmM0lc5iNqxTaI5OP7aLz6pji33TnbinFEmN2WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMoPDTYZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D6E3C4AF09
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766155739;
	bh=eniGh6DTvWohh9mk2+UnT/ZdmNg6vUqU0Bss+l3hteY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bMoPDTYZuXwKnlWgYq5uX3HcNGUGt07tus1CYLBl+Ip34PUxR48wDS8o/ALXLk2e7
	 27CRiHUVn6q6R0KXnYvkzaU82WbIHP3UCifluiMSo/l1ANE9AEFlsBWOvsEaT2DX5y
	 Fwx6FjYKurjN5vjD8GL+RkP+r3JdbZSiKipGqNw8IVtOuCKsFY80SaK875GxCpT0Ew
	 /laGcRa3tClA5iJhmaXeqCUfBxPibuqsyRcRM90epLorhHiwzaVhzKCuS0BKjjkmgN
	 O9m5+nVuceMinHZ/45u6U8/xzLg7MtGUVhk9xtyeRW6crU9kBszJRXrqtwOrgDXiAs
	 8wEGegOW/SWCw==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64b7318f1b0so2135854a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:48:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWAwP8HE55DGOWy9cJbBVHaJQfBBIJWLpDuoTctWhEY6t7sJqN917mVUUQqjOCjZPk0ME7XbGhNE00X@vger.kernel.org
X-Gm-Message-State: AOJu0YzqSumY5ojT50ovOMTbY1Cqkhrv41ppxNVXnCpWAHCRgbiNsNmP
	ew9nTxM1H6LFBhm15qtdZcPjjgJJHrPFsEIHfX4YT9nxnZxEvQIK4fE5IwVwENAd5d7Rb6HOage
	1T1XAdgUhHIlr/phCtyT87g7xxZX2Ng==
X-Google-Smtp-Source: AGHT+IG+ykC6NOPLfFYyOlnaz6J9tC59ZbJlxBoiYkTe4mOfwTOi7sU8iMh8LX5z8dvxYbzWBLGPpJK5OYhgFYOnw+Y=
X-Received: by 2002:a05:6402:b15:b0:649:aec3:a78d with SMTP id
 4fb4d7f45d1cf-64b8ec9073dmr2296246a12.15.1766155738023; Fri, 19 Dec 2025
 06:48:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216175914.2791200-1-robh@kernel.org> <aa064ecf-1714-4d40-8658-19952392cae8@amd.com>
 <CAL_JsqKdrN5UpUWQVQXpJjbTy1gN9_FhhwOoX6zVpG+zZVAptA@mail.gmail.com> <29b45cc2-e0df-4411-bfb9-cfe51ec4ec67@amd.com>
In-Reply-To: <29b45cc2-e0df-4411-bfb9-cfe51ec4ec67@amd.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 19 Dec 2025 08:48:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLYz8ZyCGGB_NjyrPdq0P-wjeSfwWPxu1kqCo0qbYFgbQ@mail.gmail.com>
X-Gm-Features: AQt7F2q5Nvw93FL2VWWRbBK2CqqdK6rBwdO2JDLlNaq512v7LrM-rPvX532g8Ew
Message-ID: <CAL_JsqLYz8ZyCGGB_NjyrPdq0P-wjeSfwWPxu1kqCo0qbYFgbQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: xilinx: Drop "label" property on dlg,slg7xl45106
To: Michal Simek <michal.simek@amd.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 18, 2025 at 8:15=E2=80=AFAM Michal Simek <michal.simek@amd.com>=
 wrote:
>
>
>
> On 12/17/25 21:41, Rob Herring wrote:
> > On Wed, Dec 17, 2025 at 6:39=E2=80=AFAM Michal Simek <michal.simek@amd.=
com> wrote:
> >> On 12/16/25 18:59, Rob Herring (Arm) wrote:
> >>> The "label" property is not documented for the dlg,slg7xl45106. Nor i=
s
> >>> it common to use for GPIO controllers. So drop it.
> >>>
> >>
> >> Correct it is not documented but it is at least used in Linux also by
> >> drivers/gpio/gpio-mmio.c:810:   err =3D device_property_read_string(de=
v, "label",
> >> &label);
> >>
> >> which is also not documented in DT binding.
> >
> > It really should be for all GPIO providers or none of them. IMO, it
> > should be none of them as we already have "gpio-line-names" which is
> > essentially per line labels. I can't see why anyone should care about
> > a label for the controller.
> >
> >> I don't have a problem with it because I can't see it used anywhere.
> >>
> >> But there are other devices where label is the part of binding. And IM=
HO this
> >> should be more generic property.
> >
> > "label" is the generic property. Not sure what you are suggesting here.
>
> That schema should allow to define label in every node or some class of d=
evices.

I don't care to enable it everywhere. It's allowed in some classes
where the use of it is well defined. I don't think a GPIO provider is
one of those cases.

Rob

