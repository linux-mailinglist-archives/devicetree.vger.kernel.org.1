Return-Path: <devicetree+bounces-30984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DF5829A32
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 13:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B2CC1C2176B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 12:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D6A481BB;
	Wed, 10 Jan 2024 12:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="QMYs2aLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B823A481A5
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso4167518e87.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 04:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1704888632; x=1705493432; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/1vs93voPphmUSrk2JQhfVFtWYmTelzpIqdk59FOvao=;
        b=QMYs2aLE7xzgifiLZj6NvTH7E3Pb+SSyvHKgHn7mF257r5hrCx/v5wG0spQirpoeFL
         Rq0HhMggWXhqk9MmIg6d8vtdwyfu3Jj78x7QKwDSuHHfXl74wAb6BEMDdiZb1VKODs88
         vNqMLlz6Xnv/wsK05cKTm0H/CLESFiL/Vdvc7B4rzF3SWadQjC3Y2dDm0XxIi2n118sU
         OKnigSebZYL07XHiwagRlfPNKorMnrKpBXPALDNMuX9LwsrRWVkNf9u1uwGcWMwxZa4Q
         z5Yi/yCQa5hjImoe2j/8n9JTx1W461vSTq4p1ECexoKw1J34MPvXsUDOC+VQMGA7ZK8h
         zEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704888632; x=1705493432;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/1vs93voPphmUSrk2JQhfVFtWYmTelzpIqdk59FOvao=;
        b=M5E35fFVvsZaaWvaq043xFLmXCkE4eCE4goX2ZJ7r4W4N9GuzxzfCgO1JkHSK/VY+q
         cJ8FeB7SyOqtlUIsMmmhJgz8F0JgroiGT3Jo4oZzIIX3eNTwN/VdymYjnxkzFIzVrOkX
         DwphdocXzHTtxBqI4kmpxhOeqA18C8hiDwdsPvwbjaFWcNUFSJX3mUdy9xhYgTLinUux
         0oMKNWpG05HwPCSkKURBgOrcSOb08L9YARoU22wx3t/UeHj5NURUZ4ndE7/AXbqWbP7Q
         //OmWeikOCG2J/79k6SgTEEgWfTREy3xBVeVEJ5s4xkZNFsuB/Fw3YPz+SEfvvyc4+pO
         RimQ==
X-Gm-Message-State: AOJu0YzcGAmfdR58O9Xx1V+GQt7Yq9QVKWh2irCXEN/NsTw4wHyV0M8m
	gpIMm7OOJy5ftwZWShq9hn+Ceg5eaOmg1A==
X-Google-Smtp-Source: AGHT+IETYaVgjTsjg3iwXxE+C8ZKYcKM+s8pNHcKfrCbNbtPGnG7fgSUjYhCAwtRUVrT2MWx4hVlyw==
X-Received: by 2002:a05:6512:10c2:b0:50e:b234:623c with SMTP id k2-20020a05651210c200b0050eb234623cmr486015lfg.83.1704888631703;
        Wed, 10 Jan 2024 04:10:31 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id u2-20020a196a02000000b0050e9dab7ca8sm639237lfu.150.2024.01.10.04.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 04:10:31 -0800 (PST)
Date: Wed, 10 Jan 2024 13:10:30 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Magnus Damm <magnus.damm@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
	Cong Dang <cong.dang.xn@renesas.com>,
	Duy Nguyen <duy.nguyen.rh@renesas.com>,
	Hai Pham <hai.pham.ud@renesas.com>,
	Linh Phung <linh.phung.jy@renesas.com>,
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH 06/15] dt-bindings: soc: renesas: Document R-Car V4M Gray
 Hawk Single
Message-ID: <20240110121030.GF1625657@ragnatech.se>
References: <cover.1704726960.git.geert+renesas@glider.be>
 <3b1baf0eaf9f483308a6df1340dae51d4b88a337.1704726960.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3b1baf0eaf9f483308a6df1340dae51d4b88a337.1704726960.git.geert+renesas@glider.be>

Hi Geert,

Thanks for your work.

On 2024-01-08 16:33:45 +0100, Geert Uytterhoeven wrote:
> Document the compatible values for the Renesas R-Car V4M (R8A779H0) SoC
> and the Renesas Gray Hawk Single development board.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> The Gray Hawk Single board is an integrated variant of the (not yet
> supported) Gray Hawk board stack, which is very similar to the White
> Hawk board stack.
> 
> The schematics call it '"Gray Hawk"(1Board)'.
> The Setup Manual calls it 'Gray Hawk Single Board'.
> 
> Alternative naming candidates would be 'Gray Hawk S' and/or
> 'renesas,gray-hawk-s'.
> ---
>  Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> index 16ca3ff7b1aea146..1c8f5122bccdb5c8 100644
> --- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> @@ -354,6 +354,12 @@ properties:
>            - const: renesas,white-hawk-cpu
>            - const: renesas,r8a779g0
>  
> +      - description: R-Car V4M (R8A779H0)
> +        items:
> +          - enum:
> +              - renesas,gray-hawk-single # Gray Hawk Single (RTP8A779H0ASKB0F10S)

nit: Should that not be 'Single Board' or '1Board'? I see both in the 
documentation but not just "Single".

> +          - const: renesas,r8a779h0
> +
>        - description: R-Car H3e (R8A779M0)
>          items:
>            - enum:
> -- 
> 2.34.1
> 
> 

-- 
Kind Regards,
Niklas Söderlund

