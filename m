Return-Path: <devicetree+bounces-93365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA96950A0D
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2703128254E
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 16:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19ECC1A0AFB;
	Tue, 13 Aug 2024 16:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="dDAbphc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87AB61FCF
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 16:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723566182; cv=none; b=SUwpCkZ4E5aUPldNXuT0MOYx6+bpUCcKz3OO2FK0QfMNA2z/XHrYIBjDeBmBLt7bnIb0Nx0hMpSTXZF7Q15PtpFI2I+3dJd+AHX+zJdHKj/MCVac23h6IQ2txuvHW4PlTdZiyjMk4O5ld4WQlgOFWzyLtI2ukrOrHSps7n2lCzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723566182; c=relaxed/simple;
	bh=yQk+RTC6Dxt1y5RGBBeRO7rR22gywMkNtyR//bDgGF4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lZ8TflAQIn0OZNLA6Xg7GXkgpAT5RHX4QE+tzkbo/xObnP+XWjuCnm7A/DS8xJWqW6RJVpVTDjolmKRKdyDm8NVM+Nf0UTmIMOl5DZVk6FgxryvUnk7S8DbJP+MsKFJcYo4VvVGPZzdIl0iq9C168HZIThzVS961OJ3o+OJYbks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=dDAbphc9; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a7a975fb47eso111294966b.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 09:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1723566178; x=1724170978; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxyojJA3xVBWvdttvq0RoDn5RQuKbHWOiyGGcSP2iqo=;
        b=dDAbphc992NVD3c2gYlBJh4jia+qmXLDcBZvlL0+asvGAkELJ5hBFb6eAsN+3K3sC0
         S2SA2ocDd8bQ/1o0bkhZa4/9ucIlZIfW2p9teZjkTwZUqhfM8tlYiqJxM8cJBtv9EO4c
         oEKF0tgdgQ7+QFCTZbqmBgFKcZ8L79onU/q3RNCzPSJMVEz0YgfqTQR4VrT9rPyE1FM2
         j2hxyuwczzonIv+L5bYNFYqzdl4X43UyCNM76vGvsmOYnB/BLJbGkYb2FdKq89OBV2dL
         KxeX5VCdq6vczvky98qXsyP2Y15SggNCwn8J97LtkLra7XvyBakpVSF9IghfkPQ/tVDh
         AIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723566178; x=1724170978;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxyojJA3xVBWvdttvq0RoDn5RQuKbHWOiyGGcSP2iqo=;
        b=ayKoCKn4Vp5WqB8PoZu1B1OmYjOlntMJ/r2k8ol6+t9JPpwLSkPxi5LCZSPu38UDId
         zibI5k3DpzpgacDEuERQoXAPnHH+zoaoquBMcMC/ol7WSGf0f6rc3rK9eK6BfS9MmKTM
         juRIGVE8PpDYJ42WJm9JytHBdikoV7Fg/G/n5SK46EVzLDMqCGFgcLp3dS9npsLdFa8h
         mvUIMMyreRen2bTyWgte8BuKET0UInkprqkpYY8MF7uNF2xYkuSBWz7m+iBwiXSwHUtb
         WKtafhA5DqPeKR9ysTnVha9OXgNhgbPOw0RJNuPqYlovWHCcj+fGt5l/BWR8OJDSc/ry
         vj3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUuavwFxWRYH7NtPbH+mgC+wQYKSp86N7qroMfdHTH6clA0L/bWSkHd6NB4svkPcYVkXrSayioDYCUnkvdxpAZQ3Wq831w6V/WZAQ==
X-Gm-Message-State: AOJu0YzG1lqcBw87RTZ5RRQwBC99IEMBbQ6xnIZkt79WCkrehV4ATvD5
	Ln1rLHRzE/gA7wp0b8jKPhRXUYEFyjeIT/fuPBgYKPH7oxEZpjEjYlSxpk97NXGUSHo2UAHFzpD
	/QA1w9jndL2l5Qm0xgIyZBmT80uh772qRGaBihA==
X-Google-Smtp-Source: AGHT+IGKDWGdNxQGJZweiajid/dw+zVC/Oau+vnI5Q4PQPRCzknA/C8QO3ydNGB8zLXwAPoaa6wStVIUJ/W5OifBOtQ=
X-Received: by 2002:a17:906:c143:b0:a77:dbf0:d22 with SMTP id
 a640c23a62f3a-a80ed2d6494mr294578266b.65.1723566177512; Tue, 13 Aug 2024
 09:22:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240522215043.3747651-1-tharvey@gateworks.com> <CAL_JsqKtc_65tDMFWT0WroNPmW2R0Dd-4Jw101PnyJcPb=7tJA@mail.gmail.com>
In-Reply-To: <CAL_JsqKtc_65tDMFWT0WroNPmW2R0Dd-4Jw101PnyJcPb=7tJA@mail.gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 13 Aug 2024 09:22:44 -0700
Message-ID: <CAJ+vNU0LBEET=y40BT4OE0zWsu6DxT-SYOrx7qD-h=HH2zENzA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: rename gw7905 to gw75xx
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Li Yang <leoyang.li@nxp.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 7:13=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, May 22, 2024 at 4:50=E2=80=AFPM Tim Harvey <tharvey@gateworks.com=
> wrote:
> >
> > The GW7905 was renamed to GW7500 before production release.
>
> Maybe some summary of the discussion and how this changed from one-off
> to wider availability.
>
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Hi Rob,

What is the status of this patch? I'm not clear what tree the
Documentation/devicetree/bindings go through.

Best regards,

Tim

