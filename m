Return-Path: <devicetree+bounces-252809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 225DFD04672
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86B3A35252DF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1D748C3F6;
	Thu,  8 Jan 2026 12:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S646laUd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED65487576
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875290; cv=none; b=iFpGPCgvihRX7CpLUCKBJuMv1FpuXp7K3drM2TF9E+nvx7jqy6tF3d7JXf8T4eFbr/6ekOFRguu92Ch6EOOZ+N5ue2iiE6n+boG7DyebCPWNtDqJ1oCmA36Hhq008z0z9pgsnREjJepZ2JX4+ifKFHviq9Qi0/sFESd3HGMQ4A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875290; c=relaxed/simple;
	bh=BvQS2360feeTza8DE/YrVlEdtvUQg36GrpyVjPLlASA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bzW4uoh5ube42dahOofzT2wJEYMfKX+ASTVHLf0eVGk/XoKb11+ShumXdlIXX6Ljd+nuJ4zuo2NvkZ0pNlLtuLMPKBHyswVvhmI1c03QpC7xtIvJzcm4rydcMZVfC07XC4pRaLhv0jE0h9pkDAUbWl105KL/F/HSwYs7bcWLznk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S646laUd; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9371f6f2813so998208241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767875287; x=1768480087; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H9S8tc6VoR4ctabPhilr7FUP40tlzBUwrCfmoiHtz9U=;
        b=S646laUdsGJyIv+b1hw5rsVaDzdj01FE2hsbhwEh/cSZilr/YuM49XcK6o1fm7RWnm
         ii1aZUvPKsxESmlEKrUP3IHjLNaK9wY5ITQDQnjegcsr3dGhuv5n9lCx6eSVflDh67GN
         dT5x+uQntg16yuj7cLJ5KsBI7EZUH2rfTvGRXriCOFsYO5hvwKertfwsE2sRcWN1SbZe
         BByVdKTsM4P3sLxWDdSq0s/fZT4c9yEqtFlkyQzxOw1R/I4I6y8Sh4mBFirppTLyMdEp
         NlS1JC/u3cahMWysdS3pbSmSErYCLAuvh6gj7VhYWL6e+48sWUm/D4d87rnGeCgNQIFQ
         EAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875287; x=1768480087;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H9S8tc6VoR4ctabPhilr7FUP40tlzBUwrCfmoiHtz9U=;
        b=mDKc06mFgfoj9ZKquxR9tIDr6Oa5owlqld8b1R9Aapg2QJi9CCzCAvw5ZJ+pYsfdpZ
         4GoR/x1WdlR1g6QI18pw2UivCufdRYNQLNYlam0edk7pJHiPkgjtFDk5N8vUMUJhHSq8
         bOQNd6bZ+lvpUGfcP+GAWHz+CaFI4ToGNeLH4SQrzYr9bqR7KCzvw08YhWmjMrAnf+pu
         fyfOxuEJm4x2Oz3vYo+BiAzlR/gxTZnXwSRdMnanTwWs76EudHk6Y/7lvvZXJjeMFZMx
         SzitrDFJ5ayeLFPAjAjsgbB++QfQYZ+SpZIVrglefVrYak4xgcwBWA8V9yh9qjtmNW2b
         m1rQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8ZDzLdYxWGZdm8ZFFSYvmvGgylqBDpknqN2kKHnyjfSJjrbDFL2V0cOFk/u3mZhOd+RrNENMkhE1G@vger.kernel.org
X-Gm-Message-State: AOJu0YwSpb7DKr6vrNpNK69wrTF+YGx9Gi1yncNIDJ4PiXcDBCkNs4d3
	V857NBodeL5EKFlYYD10vjtC6AkMVx0PEEJ9wBtHlU6Y4XWQP92yI8xo
X-Gm-Gg: AY/fxX7QJRDlgAf1OXyiswbJ1UtMaS2IAavmZBhdYttkIFQ8QE+9eVqEqQUIlJC22Zy
	dXjPdFETSbX70GafRNLieoeKxuUJeLQSdsqhkC3TBeszbH4PuQECu5gy5k0bSWgANp2lIOFw7VI
	Wxa8SFRDcPm5a6YQxmtI1NW7cBCGjjKf7AJ34KlZHHsBCjw5NFA4t1DIVj/fcKzMfJ6MiXimQ6l
	Vex8JXZ2IB6OXP20QSxo7hr/foJ/EhGVEcFuStOdR7NEIMUulkw6SDE+62kZYHyhuy1CavjEQIK
	+jETwVgqxLvWr0BeoIoHZzvEFWLs0JuWxL2pxS9vUq3W0HeIftsaYfpnqDfGcmKXlS5LJestJ5E
	T8Z6lZG/6nGcSQYABnbCa1EOmAzQT8dNleoAyJOXCf9lVhJqqRZw2FHhBX2IiKDnkgD8ZRVQ72G
	sN43GcgWFQcwqV3XairgI=
X-Google-Smtp-Source: AGHT+IGTB3XDlXgQY840gBEBSdFTlkqqqTvmyuMzepMgpXMZdXcNFo9y6KtrPk5n+BTlSCi4IzSK9w==
X-Received: by 2002:a05:6102:1594:b0:5e1:866c:4f8e with SMTP id ada2fe7eead31-5ecb698cac0mr1848863137.39.1767875286647;
        Thu, 08 Jan 2026 04:28:06 -0800 (PST)
Received: from localhost ([2804:30c:2766:a500:b70:8c42:f792:bef6])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772e3300sm6068771137.14.2026.01.08.04.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:28:05 -0800 (PST)
Date: Thu, 8 Jan 2026 09:29:52 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 2/9] spi: dt-bindings: add spi-{tx,rx}-lane-map
 properties
Message-ID: <aV-jQImroXxFqj3Z@debian-BULLSEYE-live-builder-AMD64>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-2-145dc5204cd8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-2-145dc5204cd8@baylibre.com>

On 12/19, David Lechner wrote:
> Add spi-tx-lane-map and spi-rx-lane-map properties to the SPI peripheral
> device tree binding. These properties allow specifying the mapping of
> peripheral data lanes to controller data lanes. This is needed e.g. when
> some lanes are skipped on the controller side so that the controller
> can correctly route data to/from the peripheral.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> 
> v4 changes:
> - This replaces the data-lanes property from the previous revision. Now
>   there are separate properties for tx and rx lane maps. And instead of
>   being the primary property for determining the number of lanes, this
>   is only needed in special cases where the mapping is non-trivial.
> ---
>  .../devicetree/bindings/spi/spi-peripheral-props.yaml      | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> index 59ddead7da14..2f278f145f78 100644
> --- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> @@ -75,6 +75,13 @@ properties:
>        enum: [0, 1, 2, 4, 8]
>      default: [1]
>  
> +  spi-rx-lane-map:
> +    description: Mapping of peripheral RX lanes to controller RX lanes.
> +      Each index in the array represents a peripheral RX lane, and the value
> +      at that index represents the corresponding controller RX lane.
These are peripheral props so I guess RX is from peripheral perspective.
In that case, those would be routed to controller TX lanes, no?
Could maybe use MISO/MOSI or COPI/CIPO (Controller Out Peripheral In)
nomenclature but that might become too verboragic.

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    default: [0, 1, 2, 3, 4, 5, 6, 7]
> +
>    spi-rx-delay-us:
>      description:
>        Delay, in microseconds, after a read transfer.
> @@ -99,6 +106,13 @@ properties:
>        enum: [0, 1, 2, 4, 8]
>      default: [1]
>  
> +  spi-tx-lane-map:
> +    description: Mapping of peripheral TX lanes to controller TX lanes.
> +      Each index in the array represents a peripheral TX lane, and the value
> +      at that index represents the corresponding controller TX lane.
Similar thoughts about the tx side.

