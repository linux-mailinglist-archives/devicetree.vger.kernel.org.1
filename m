Return-Path: <devicetree+bounces-6437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6155F7BB5CE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:03:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14B9B2823DE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72EFD1BDF3;
	Fri,  6 Oct 2023 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e3yUzQd8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF35125B7
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:03:30 +0000 (UTC)
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F449CE
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 04:03:29 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so1429440a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 04:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696590209; x=1697195009; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zxFEgt05/Om310YXHqztn12qfKEglhAS71n4alSmu1w=;
        b=e3yUzQd8CmCbQ6hVTGYl4tVVxHeaJ56vwmjPNSrfz0ZxwgR7/DmL8g5lD3NedI1n7C
         Va3Nu0iNwHN9UEmIikDyvuaAnh93aYttSGzY00gxtNCOGNRdaLW18pIHAG1Irk+zRa/g
         EjCImSUFFq7BgSizT8B0hL2tP7Li2r8uHu16iD1bBMLy280sy1QvE4arWyll6pk83X3i
         OLa8rEzwJ0VrNv3GiUZgJSmRy2vY064xZtSFk/Vot0bfY7WR9SDNvE0P3o8biFnG62vy
         GxnlALWDMk1tEha2x8nueu+5vzWiCmoJrW9XKJHJw0tdcSAHOc8axaOOcwNlWqw7M7r0
         QqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696590209; x=1697195009;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zxFEgt05/Om310YXHqztn12qfKEglhAS71n4alSmu1w=;
        b=TtPiYAvjlbheIzZ3GjQ9b/1Akl90axZNUK7URNZNVAiTBpU7oselUyhvZeDEGKYDZ2
         T7w+POzU/asbIl5ipj9doi/qx79kdLk7ViJtlqT5m839Q0nJJflK4hmZ5xm7BuA/Jo8x
         B09yzNEln/0I7lfEj23bK/SXqvrGP74ntUHDXX5YToC6fgxTGWGxZSSgZe+Rq1zLYmRA
         Sak77jvM5g1jbgZJCS372453g+p/VcHatNvNAajVrDI5JGl4K7ADuS1joaKiUJkKDhXB
         PjQS2knZWSivKx6TO5QSg90+6A9sOdJTg5Rh981zO9BFELoM8K0NAccXNoCha+kEBGo/
         ReaA==
X-Gm-Message-State: AOJu0YwU/Y32Gq9CdocZKNGnYTwi3keU+H1SU+JSh3JgJksk7F2w2y2q
	0sB6gnDcw+4Gyo3M1/53bAjqwgQjizVDBd+8x5ivLg==
X-Google-Smtp-Source: AGHT+IGMeleG8BhIDxGOoRXVXqrxaKbP2xb5o3A0nxBRYxw9lKmKLkt+Rpnbik0fai3k1AB+dOAJvhFzxodtaomXtss=
X-Received: by 2002:a17:90a:9513:b0:269:46d7:f1db with SMTP id
 t19-20020a17090a951300b0026946d7f1dbmr8304821pjo.32.1696590208682; Fri, 06
 Oct 2023 04:03:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929133754.857678-1-lcherian@marvell.com> <20230929133754.857678-2-lcherian@marvell.com>
In-Reply-To: <20230929133754.857678-2-lcherian@marvell.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 6 Oct 2023 12:03:17 +0100
Message-ID: <CAJ9a7VhzARGmywQFPNCZ27D5UKEEPSR9_hmL5fo3daFWpB26Vg@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: arm: coresight-tmc: Add "memory-region" property
To: Linu Cherian <lcherian@marvell.com>
Cc: suzuki.poulose@arm.com, james.clark@arm.com, leo.yan@linaro.org, 
	linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org, 
	linux-kernel@vger.kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Linu

On Fri, 29 Sept 2023 at 14:38, Linu Cherian <lcherian@marvell.com> wrote:
>
> memory-region 0: Reserved trace buffer memory
>
>   TMC ETR: When available, use this reserved memory region for
>   trace data capture. Same region is used for trace data
>   retention after a panic or watchdog reset.
>
>   TMC ETF: When available, use this reserved memory region for
>   trace data retention synced from internal SRAM after a panic or
>   watchdog reset.
>
> memory-region 1: Reserved meta data memory
>
>   TMC ETR, ETF: When available, use this memory for register
>   snapshot retention synced from hardware registers after a panic
>   or watchdog reset.
>
> Signed-off-by: Linu Cherian <lcherian@marvell.com>
> ---
>  .../bindings/arm/arm,coresight-tmc.yaml       | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
> index cb8dceaca70e..45ca4d02d73e 100644
> --- a/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
> @@ -101,6 +101,22 @@ properties:
>            and ETF configurations.
>          $ref: /schemas/graph.yaml#/properties/port
>
> +  memory-region:
> +    items:
> +      - description: Reserved trace buffer memory for ETR and ETF sinks.
> +          For ETR, this reserved memory region is used for trace data capture.
> +          Same region is used for trace data retention as well after a panic
> +          or watchdog reset.
> +          For ETF, this reserved memory region is used for retention of trace
> +          data synced from internal SRAM after a panic or watchdog reset.
> +

Is there a valid use case for ETR where we use these areas when there
is not a panic/reset situation?

Either way - the description should perhaps mention that these areas
are only used if specifically selected by the driver - the default
memory usage models for ETR / perf are otherwise unaltered.

> +      - description: Reserved meta data memory. Used for ETR and ETF sinks.
> +
> +  memory-region-names:
> +    items:
> +      - const: trace-mem
> +      - const: metadata-mem
> +

Is there a constraint required here? If we are using the memory area
for trace in a panic situation, then we must have the meta data memory
area defined?
Perhaps a set of names such as "etr-trace-mem", "panic-trace-mem" ,
"panic-metadata-mem", were the first is for general ETR trace in
non-panic situation and then constrain the "panic-" areas to appear
together.
The "etr-trace-mem", "panic-trace-mem" could easily point to the same area.

>  required:
>    - compatible
>    - reg
> @@ -115,6 +131,9 @@ examples:
>      etr@20070000 {
>          compatible = "arm,coresight-tmc", "arm,primecell";
>          reg = <0x20070000 0x1000>;
> +        memory-region = <&etr_trace_mem_reserved>,
> +                       <&etr_mdata_mem_reserved>;
> +        memory-region-names = "trace-mem", "metadata-mem";
>
>          clocks = <&oscclk6a>;
>          clock-names = "apb_pclk";
> --
> 2.34.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

