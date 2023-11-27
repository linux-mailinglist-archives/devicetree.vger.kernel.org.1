Return-Path: <devicetree+bounces-19385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D947FABA8
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 21:36:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9E74B21288
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 20:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CCF3BB55;
	Mon, 27 Nov 2023 20:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D4491;
	Mon, 27 Nov 2023 12:36:51 -0800 (PST)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-58d956c8c38so535860eaf.2;
        Mon, 27 Nov 2023 12:36:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701117411; x=1701722211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FC+FugQldxH8ozFUppzyiz48ydYS76ZkBSAy4uUEC3I=;
        b=n8rUxRvWDRDJTvRyTWI3CExF3DqvToUuQbm9vrhPZMI8wlf8+BWEh8AVAMpj4DTCOY
         M95f/H0VWJ/OVxlipEd5d9AsPlj1KnNWJm7vJA6z9Vw95FEtM3FqSVra9T6NfIEaRnat
         55xkPHVyycyilqT8a66WeRb9hZ8ZZmRuiSeGWL8oww2+Knzv4L5xokLXfnGp7PsumnsK
         aoznBaxf6S4jlEkxnv4xtqX5IQrySPKCBhx+N8zteGZbHF3wXORlBWyWRNJR1HbkNlou
         uHei6JKozkkS+qzwiEChzczL3aF8wQVgJBDLz5zd3dzV9BL0yKC5fx6TG2cwbcS/L+8R
         qUsA==
X-Gm-Message-State: AOJu0YyLfDa2g1NZ40at4J1k7JE5zL90oHH5bSh0mNWsinazZy6a47t+
	PKvuIbFrsvtGeYDlMJfygQ==
X-Google-Smtp-Source: AGHT+IHZRrQ6avLBuDCqee8jWm6NVmmBIMYAZVCC1trSeLZ24qZkYvVy9lfibseNEz8WUf5rtqrYbw==
X-Received: by 2002:a05:6820:2225:b0:58d:5c9e:ebe3 with SMTP id cj37-20020a056820222500b0058d5c9eebe3mr9420861oob.0.1701117411030;
        Mon, 27 Nov 2023 12:36:51 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 62-20020a4a0041000000b00587aaf6add7sm1695922ooh.9.2023.11.27.12.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 12:36:50 -0800 (PST)
Received: (nullmailer pid 3226763 invoked by uid 1000);
	Mon, 27 Nov 2023 20:36:49 -0000
Date: Mon, 27 Nov 2023 14:36:49 -0600
From: Rob Herring <robh@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-stm32@st-md-mailman.stormreply.com, devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@foss.st.com>, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] dt-bindings: arm: stm32: don't mix SCMI and non-SCMI
 board compatibles
Message-ID: <170111740896.3226593.5878779539402327826.robh@kernel.org>
References: <20231122185235.2017642-1-a.fatoum@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122185235.2017642-1-a.fatoum@pengutronix.de>


On Wed, 22 Nov 2023 19:52:33 +0100, Ahmad Fatoum wrote:
> SCMI-enabled boards may restrict access to resources like clocks, resets
> and regulators to the secure world.
> 
> A normal world bootloader or kernel compatible with the non-SCMI-enabled
> board is thus not guaranteed to be able to deal with the SCMI variant.
> 
> It follows, that the SCMI-enabled board is not compatible with the
> non-SCMI enabled board, so drop that compatible.
> 
> This change is motivated by the barebox' bootloader's use of bootloader
> specification files[1][2]: barebox for non-SCMI DK2 will compare its
> own top-level "stm32mp157c-dk2" compatible with all compatibles
> listed in the device tree referenced by each bootloader spec file.
> If the boot medium contains a configuration with
> compatible = "st,stm32mp157c-dk2-scmi", "st,stm32mp157c-dk2", "st,stm32mp157";
> it will match, because of the second compatible and boot a kernel with
> SCMI enabled, although no SCMI may exist on the platform.
> 
> [1]: https://uapi-group.org/specifications/specs/boot_loader_specification/
> [2]: https://www.barebox.org/doc/latest/user/booting-linux.html#boot-loader-specification
> 
> Fixes: 8e14ebb1f08f ("dt-bindings: arm: stm32: Add SCMI version of STM32 boards (DK1/DK2/ED1/EV1)")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../devicetree/bindings/arm/stm32/stm32.yaml     | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


