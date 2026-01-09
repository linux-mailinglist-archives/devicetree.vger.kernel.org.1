Return-Path: <devicetree+bounces-253255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D1D08F4B
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1521F301997A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 436BF330307;
	Fri,  9 Jan 2026 11:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P/8nubK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8200C2DAFA5
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 11:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767958302; cv=none; b=J8Zkuwv0EfKLW4roc1SoLEUbqq7Rosoo15LjhexvHgHUkeB9OoDfecTi1e4dj409U46VJH341XUa5DgszAaE75qk06Hda7RWftd3tP76sStzs0yaq/HVPnmhxys89fSRY/xzMKhDmc1psfe6rqF2YLZQ4dCxRhT4rxgN21YQTj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767958302; c=relaxed/simple;
	bh=sp8PgJ6KrhUSecexwuXpfnQcwIOHxluFhx5bgoab62Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jtPPfTcLNibHRNIEp2la9WbXQm2oOTcOTth0fjwJVQzNe9NtEBU52WkpZodGJp2sFGKS3FgMod9TPnY6MSmC23xrHaWkyhrk8l24cNVSVScRbwbeOaOetNLWpP9rT1/dFsPEX7mPH2wKI0cFl0mZeavTUuUCVT54rdkhH5j756M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P/8nubK3; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b79d6a70fc8so779947266b.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 03:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767958299; x=1768563099; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSCRQjzqMxlthpyK0S39/a+ZFZYJpJPm7XHV1APkAxI=;
        b=P/8nubK3kVwecNv0vO0/Qxr9pqzk3amMxZkOzNcYWEdN3UvFa55s7AqIjW1icXWaOO
         uTGbehpNvAMMIsZmma22ox6D1rThc+5qSJ0Edhe8fNn5xifb/duK4lcxS0wiosfv0xip
         vUMYJK+WnTz6wLybvT3jBMZNWBaBlfOUQsBt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767958299; x=1768563099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BSCRQjzqMxlthpyK0S39/a+ZFZYJpJPm7XHV1APkAxI=;
        b=R/kCIlOg44HpChxDJ3xYnEUtRPEMWGrkMVpkggSQkUd/UeIlHy+ufxqYEgFWfBfLtp
         afDBvER4CLJxZUofmLaPzPTXqDkjtggx6+qauHuBgPgx2kg6z9AXNfT/dwiupHw3h/jA
         T8VOKWqy3rkwb7g51b1IyT085PFUp5ufGzQECzED6EALIARSvElQeg5C8bIWB3GILCyX
         IyWn04OnGBZjuDQ2EJFdl/5j+i5ir0A0csQ/iNfigSBqzM7b9pVQIJ7u6cpIsEcxVEmJ
         EoWFS9rRA5IKgADKj1pbdtY6MRO66AwP+DrXhw5k1t1y870obrs+CkfVJRuuMxbEqv0y
         9PnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLe8XKMhnu2Tz+aeMmY8GniYhVTnZ9tMo7LgLLXEp1kXru4YtMDPT7D2WRra6cPjn2TDRp+ZZeu3Fa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg9gc4liV/U4znomWqdpg3zAMCk+EiC3UZd9IHBAaNfV72PbeG
	+tlX49uwII8DtW5QPw2s7NB6xMLcONM5HH3Jw1Fkf3sV6sIXCpHvaAR7G+BTB/+Z3j9HKgVbtdV
	ZK18V3o6tbQyDrw0T1wVg4ARa0u3GThQazYTVRx0L
X-Gm-Gg: AY/fxX7Ejiw/s/di6D+ADIm1gRQDJtREWDXz/pqnoi5GF8ZsHaiNqVoIxfToS1LbKQb
	eQAVsrdy0H5tvjabft91e/0h6ntLw509gXYa+HTXhUZ9tdbZFH9AZEibeII+H9Jt8kx5QV56FAQ
	8Bu2AqpDtQkIcfhGGrVb4yMZIouXS38tXEPEiq0aQA4OSW/QnJhsNQ+sO/u9daykJGGF0GLcyCy
	AHJ7WmrQjxNGV5jDn52pmFh/qwu8gylbx+sNG1KKMCkgh1Pcu9aLnAyJVLHlMxyDDXcMA==
X-Google-Smtp-Source: AGHT+IHumhVv8KY3Bg6JqD87gTvWI3jsSjLoKc+3DEfmoml5eVr0Pj1g8bymo8Pdbt3rhglv42hKSAoAOoLafZYaLB8=
X-Received: by 2002:a17:907:960a:b0:b7f:e703:fd77 with SMTP id
 a640c23a62f3a-b8445179dadmr816433766b.11.1767958298734; Fri, 09 Jan 2026
 03:31:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-dt-mtd-partitions-v1-0-124a53ce6279@kernel.org> <20260108-dt-mtd-partitions-v1-2-124a53ce6279@kernel.org>
In-Reply-To: <20260108-dt-mtd-partitions-v1-2-124a53ce6279@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 9 Jan 2026 04:31:26 -0700
X-Gm-Features: AZwV_Qi5Uf9IK7jzzaMO9Hhv7qu9_klerMUU60soC_dP-R-35zHLoPW9f0oY_TU
Message-ID: <CAFLszTj+L02si4C6TUymVQdx5fcvP_o-nMeYBAkKw_GvZhdt=g@mail.gmail.com>
Subject: Re: [PATCH 02/10] dt-bindings: mtd: fixed-partitions: Move
 "compression" to partition node
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Brian Norris <computersforpeace@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>, 
	William Zhang <william.zhang@broadcom.com>, Nick Terrell <terrelln@fb.com>, 
	David Sterba <dsterba@suse.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Linus Walleij <linusw@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Marcus Folkesson <marcus.folkesson@gmail.com>, Tony Lindgren <tony@atomide.com>, 
	Roger Quadros <rogerq@kernel.org>, Hauke Mehrtens <hauke@hauke-m.de>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 8 Jan 2026 at 10:53, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The "compression" property is defined in the wrong place as it applies
> to individual partitions nodes, not all nodes.
>
> Fixes: 8baba8d52ff5 ("dt-bindings: mtd: fixed-partitions: Add compression=
 property")
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/mtd/partitions/fixed-partitions.yaml      | 18 ------------=
------
>  .../devicetree/bindings/mtd/partitions/partition.yaml  | 18 ++++++++++++=
++++++
>  2 files changed, 18 insertions(+), 18 deletions(-)
>

Reviewed-by: Simon Glass <simon.glass@canonical.com>


> diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-parti=
tions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partiti=
ons.yaml
> index 62086366837c..73d74c0f5cb7 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.y=
aml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.y=
aml
> @@ -29,24 +29,6 @@ properties:
>
>    "#size-cells": true
>
> -  compression:
> -    $ref: /schemas/types.yaml#/definitions/string
> -    description: |
> -      Compression algorithm used to store the data in this partition, ch=
osen
> -      from a list of well-known algorithms.
> -
> -      The contents are compressed using this algorithm.
> -
> -    enum:
> -      - none
> -      - bzip2
> -      - gzip
> -      - lzop
> -      - lz4
> -      - lzma
> -      - xz
> -      - zstd
> -
>  patternProperties:
>    "@[0-9a-f]+$":
>      $ref: partition.yaml#
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.y=
aml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> index 80d0452a2a33..0b989037a005 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> @@ -108,6 +108,24 @@ properties:
>        with the padding bytes, so may grow. If =E2=80=98align-end=E2=80=
=99 is not provided,
>        no alignment is performed.
>
> +  compression:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: |
> +      Compression algorithm used to store the data in this partition, ch=
osen
> +      from a list of well-known algorithms.
> +
> +      The contents are compressed using this algorithm.
> +
> +    enum:
> +      - none
> +      - bzip2
> +      - gzip
> +      - lzop
> +      - lz4
> +      - lzma
> +      - xz
> +      - zstd
> +
>  if:
>    not:
>      required: [ reg ]
>
> --
> 2.51.0
>

