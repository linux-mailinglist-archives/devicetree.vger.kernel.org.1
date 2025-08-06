Return-Path: <devicetree+bounces-202318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C5B1CEF0
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 00:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D0A358025F
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 22:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96ED721CA03;
	Wed,  6 Aug 2025 22:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3voqUq4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E1320E6E2
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754517899; cv=none; b=WMkgwcFkAuxKwCVkL6um3YHbN5obZcGDqGVMHx5yiuW1u5PZnD+5mwWs+X3Qq/SR/RvBhFMUvZ/fd/UqfutQxX/48f7qptGN+Hev5tKbDSV4cQiuEvNN2zeW4nv72GgiuqWveyLkvMf4bQrXJVip453XiWOVYwue0cucCHVHmu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754517899; c=relaxed/simple;
	bh=XBXy9h0RXe8emjEbqbC6m8TfTRYUSfPZsoPdx3xkiIk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OZJxifaEEyldD/aW6uTh1P2w7AUtYpf/DvQFYa/3IsCCgEZTZ/LiaTcn4aErg/CE+1q+qkMfGNyjJ7yl76q+BIjSyY0cZIlkaBDzW5K80K8OcZBGGYXPpb3z3RFJ0ZHcpNCSvufKeNmbbtDFAs6PbYj4vGRRfFHWJWHMc7oi6Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3voqUq4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDDAFC4CEF8
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754517899;
	bh=XBXy9h0RXe8emjEbqbC6m8TfTRYUSfPZsoPdx3xkiIk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=m3voqUq4pbj9IvLrzRDWmNX+prfLLkBo9JeM2h8yiYeteaxNZa2IAFv75LWePcHvN
	 2k3bx4pkgIjXSA6aReOd+bXT7RUqU99FkIdUblGhO2zGvZLZZEeF+OkssZGgJbXuAj
	 Q9b2HJSLYrmNFAxjZFj/trz5Vb6GkmzeRuLFDm4IH68JaqiXQMZlUIouVUV6q+Ol8u
	 yncvgcxhG4m3tiENd3n+HmFpiCQe7uhmtN5/eJGop5w7JUPZWciKTJbdLy2nMx78so
	 6TJVLDioYYC+Y48/r7sU0/2XnEb7Z8TMnHl6IWo/d2vYjWPVkC3n+ycicTS6EBdZML
	 c9GAcB0Xw4auA==
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-af95525bac4so70828266b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 15:04:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBzwt/bElSbwyrb91s9VUQVlXD17x09SAaPTZosvc6tJZ/uxu+uMuYVzhu1TYyYiq3Dpwu6zmzWvKa@vger.kernel.org
X-Gm-Message-State: AOJu0YzDjU/zfoH+JUTlBNZjVvbcYZn2Z58Gn1tav1R1kxvaHSb9QaDt
	0VVRkvgzQ/XCJT6/cn8PtKPiQWlrgfvlYcWzBiHhDovgHbP3kmUX/KMcCVgmJjDidZJ0IGbK83u
	d0IaXnWDudL9D+5y8jSuxmK5xPybl1Q==
X-Google-Smtp-Source: AGHT+IGFO0C2oNNbI+/5/qV/5y6ZPflABnvWU9g3w+x8P6ViZNqC5D1y568b/N9TTteKYidrHHo2/ik5ZL5D6prIWTs=
X-Received: by 2002:a17:907:7207:b0:af9:8064:21df with SMTP id
 a640c23a62f3a-af992c2dd55mr371863366b.53.1754517897517; Wed, 06 Aug 2025
 15:04:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250806184711.1882725-1-eajames@linux.ibm.com> <20250806184711.1882725-4-eajames@linux.ibm.com>
In-Reply-To: <20250806184711.1882725-4-eajames@linux.ibm.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Aug 2025 17:04:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+JBhak=YS33tG=KFtbb+Ckz69s5Chz6daEUY0O95QOSQ@mail.gmail.com>
X-Gm-Features: Ac12FXyfR0wieXyxBEYZwoqcWgBwyaJLFglgRDqYs5T6n-aS5DrGLQU4aITSK5A
Message-ID: <CAL_Jsq+JBhak=YS33tG=KFtbb+Ckz69s5Chz6daEUY0O95QOSQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: trivial-devices: Document max31785 sensors
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org, 
	andrew@codeconstruct.com.au, conor+dt@kernel.org, krzk+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 6, 2025 at 1:47=E2=80=AFPM Eddie James <eajames@linux.ibm.com> =
wrote:
>
> Remove the old .txt max31785 documentation and add the compatibles
> to trivial-devices.yaml.
>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../devicetree/bindings/hwmon/max31785.txt    | 22 -------------------
>  .../devicetree/bindings/trivial-devices.yaml  |  4 ++++
>  2 files changed, 4 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
>
> diff --git a/Documentation/devicetree/bindings/hwmon/max31785.txt b/Docum=
entation/devicetree/bindings/hwmon/max31785.txt
> deleted file mode 100644
> index 106e08c56aaa..000000000000
> --- a/Documentation/devicetree/bindings/hwmon/max31785.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -Bindings for the Maxim MAX31785 Intelligent Fan Controller
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -Reference:
> -
> -https://datasheets.maximintegrated.com/en/ds/MAX31785.pdf
> -
> -The Maxim MAX31785 is a PMBus device providing closed-loop, multi-channe=
l fan
> -management with temperature and remote voltage sensing. Various fan cont=
rol
> -features are provided, including PWM frequency control, temperature hyst=
eresis,
> -dual tachometer measurements, and fan health monitoring.

While technically the binding is trivial, I don't think this device
really is. It has got 6 PWMs and 6 tach inputs, a reset line, 2
interrupts (alert and fault?), and an I2C master. Not really trivial.

However, better to have this documented as a schema than not, so I'll apply=
 it.

Rob

