Return-Path: <devicetree+bounces-2567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 278207AB61D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CD29B282019
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5975341763;
	Fri, 22 Sep 2023 16:36:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61BC3D986
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:36:12 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1010F1AC
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:36:10 -0700 (PDT)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id F00FD3F1D9
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695400568;
	bh=RKbV4MhZk6b87JTksm1ZK/ObuKYUjj6Uoe+MaWe9BjM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=rIjqUa72Z3LF5BRUTPdsNrvzQ/haANLlYh9WYp4/ADzNN1SQE94/63zTE0/cvQ1zf
	 EN2ZZRGOScNHzyotoJkDAYGeKbKwcqMVhZ5JJhf+vb5x7xewX6IGMqgP1Z8DXUUcmu
	 En3UKojfsVmMvAeMdb+1IR1LcXKAOZl7Tje8TZ8QBBKtnjx9wTyd8tYDvE2GFrs9Gd
	 l/ErmkrtUd/3LrxeqgroRdIIwUN0OX2WZ8Ir8hUFRdgHf1Ox6btxD7pu5f4QrhQomH
	 dU8TR/4rxdiDOcHz4DnjTWBVmRKxA6p4Z+IhPaCSjLi8i3KgHEybRU4xx4elVvycZZ
	 sOqp3AhmhCSxQ==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-412eee4b64cso24925931cf.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:36:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695400568; x=1696005368;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RKbV4MhZk6b87JTksm1ZK/ObuKYUjj6Uoe+MaWe9BjM=;
        b=g8WXL+BoDOnu7R2OsYeEc3P0k+/XMEXZR541DGNbCQl1TA+ks+DHmXzU6Vw0UMrbcg
         V2hV1v/jPnYW8XVWu94MoGzfs5JON9TBDc6vBDx5IsJ9+rQ2KMbOap465uX2zwPLmGbB
         Sm0DYyO+y4da5/KGa4WDYC2fLcEIFhb0eLFDqloXdYikcAOBR38U9cZH3Rt+UW7jvY3w
         fJWzgUnuHYMAsFIhSCXvkxh88g6so5wVfPwq6DSr7fds4FhSh3+s6meO3upfy8E/KxE5
         22lugLNF48nReDEdOXxs1hJDZUfMMReLsKtCeYdYTZxULTIJ9hCVhMcfabIU/M1ulhA+
         VSRQ==
X-Gm-Message-State: AOJu0YwnBWUF9cV2fdaccmW3KVXRxSmy+g0Zm4n4JcrZ/O3Sfw04cLry
	0sWeFuJ2sZqP40RoQy+gO97IPwO5qGR9Il2ubgUH8tATu5QADJa0L7cFT2lOzYJ6ryImvXoCu+i
	X98NyZNUFoToejbJBmYuaVM6Zdsduyom8aUShZ+x5BavOJpE5X+oqfos=
X-Received: by 2002:a05:622a:1a9b:b0:400:9c4e:2abe with SMTP id s27-20020a05622a1a9b00b004009c4e2abemr9153624qtc.13.1695400568101;
        Fri, 22 Sep 2023 09:36:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtMOJCOBegPGfmaYPe4P541XIPb9WGKoNNQRopHdNvUyr6IlUhMeHDT069xvrKjurwJHkDV/lgU//1vjPUCGw=
X-Received: by 2002:a05:622a:1a9b:b0:400:9c4e:2abe with SMTP id
 s27-20020a05622a1a9b00b004009c4e2abemr9153614qtc.13.1695400567857; Fri, 22
 Sep 2023 09:36:07 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Sep 2023 11:36:07 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20230922062834.39212-4-william.qiu@starfivetech.com>
References: <20230922062834.39212-1-william.qiu@starfivetech.com> <20230922062834.39212-4-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 22 Sep 2023 11:36:07 -0500
Message-ID: <CAJM55Z-huG6KSLywzA0Zih=MtzqvL0w+CxrqN7CKUrzor_A65g@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] riscv: dts: starfive: add assigned-clock* to limit frquency
To: William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-mmc@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

William Qiu wrote:
> In JH7110 SoC, we need to go by-pass mode, so we need add the
> assigned-clock* properties to limit clock frquency.
>
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>

Thanks!

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  .../riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index d79f94432b27..d1f2ec308bca 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -205,6 +205,8 @@ &i2c6 {
>
>  &mmc0 {
>  	max-frequency = <100000000>;
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO0_SDCARD>;
> +	assigned-clock-rates = <50000000>;
>  	bus-width = <8>;
>  	cap-mmc-highspeed;
>  	mmc-ddr-1_8v;
> @@ -221,6 +223,8 @@ &mmc0 {
>
>  &mmc1 {
>  	max-frequency = <100000000>;
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_SDIO1_SDCARD>;
> +	assigned-clock-rates = <50000000>;
>  	bus-width = <4>;
>  	no-sdio;
>  	no-mmc;
> --
> 2.34.1
>

