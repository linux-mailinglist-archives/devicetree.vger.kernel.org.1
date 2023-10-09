Return-Path: <devicetree+bounces-7020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BC67BEA7F
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:22:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9D051C20A62
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B3F3B7B4;
	Mon,  9 Oct 2023 19:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dAcMgpiN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB49BA4B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 19:22:43 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C4BAA4
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 12:22:41 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9ada2e6e75fso893409266b.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 12:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696879359; x=1697484159; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W213PjLTqM3JEmBmT6cQ0NV691A2RnRzmI4p6V+/cyA=;
        b=dAcMgpiN0LWvK66wLQsELTxUO3nl3flvQzKo216b7GkR2f/vq8ZAWjvuXCG32cH2pm
         32VkSc19Bwnn+CSlo9WnwzPVvHnL6Vjdr9bl5O7fSQLhSzK4Tog6rz7XG7T9BnzlhDad
         gtU+UhPWdNs9X+J0Aeqgs8+T80hfRaKP/Bi0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696879359; x=1697484159;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W213PjLTqM3JEmBmT6cQ0NV691A2RnRzmI4p6V+/cyA=;
        b=ZFoWcX+PSzKGrLFvkIvukYP8eubh7p8CR3DPLJ2ce1kRxtEyBzYmrzlMNjPdLHZsns
         QHWvWJz0Ozf+s84/A3Xe/lmYupr0pDKWfkM+DmQWtnxR1FdNhoRCpV5xeeS5yzPOYfG9
         +zbjNSP7qVTIfhxMMASxzx8jhIhgztdH2XZ6mYP56jgHAF/eo9BdJN0mKXYKzKceSQ9H
         5xlBmgsRXK6PSrhGCqMiq5L3mfVQHKgq3jkYZcdQv0WGThEEqxFslLglH+IQHD0gh3Sm
         jGLw8102TioaSOfAuMs37elgoKLebSE11pCkbnkffPSda8aq2zYrMktxhLDqDTcBFsdm
         N/Bw==
X-Gm-Message-State: AOJu0YzWmG9v6WLqeDOOMgTpkUZLWC1qnM7G6Vf9Mtst1gNR+gzN8YFo
	0xrNU2C/ixVWP71+HeN6To/hUNygja7en+dBEoHF4tXpS+s3Tw+1W1Y=
X-Google-Smtp-Source: AGHT+IHc7jcdlWh8LiRicdltTnLDX2OAGb0AbRSSrZm/5DGfpUC/nMASnv47R9hAghm2qceVMSwbZySZxRl5RqG6+zE=
X-Received: by 2002:a17:906:3012:b0:9ae:4054:5d2a with SMTP id
 18-20020a170906301200b009ae40545d2amr14184483ejz.16.1696879358971; Mon, 09
 Oct 2023 12:22:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926194242.2732127-1-sjg@chromium.org>
In-Reply-To: <20230926194242.2732127-1-sjg@chromium.org>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 9 Oct 2023 13:22:21 -0600
Message-ID: <CAPnjgZ1WgOB08C32PWdhagP5CRuBou8Z0ZPfxdAmRKD5uxKQJw@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] schemas: memory: Add ECC properties
To: devicetree@vger.kernel.org
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
	Lean Sheng Tan <sheng.tan@9elements.com>, lkml <linux-kernel@vger.kernel.org>, 
	Dhaval Sharma <dhaval@rivosinc.com>, Maximilian Brune <maximilian.brune@9elements.com>, 
	Yunhui Cui <cuiyunhui@bytedance.com>, Guo Dong <guo.dong@intel.com>, 
	Tom Rini <trini@konsulko.com>, ron minnich <rminnich@gmail.com>, Gua Guo <gua.guo@intel.com>, 
	Chiu Chasel <chasel.chiu@intel.com>, linux-acpi@vger.kernel.org, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Tue, 26 Sept 2023 at 13:42, Simon Glass <sjg@chromium.org> wrote:
>
> Some memories provide ECC detection and/or correction. For software which
> wants to check memory, it is helpful to see which regions provide this
> feature.
>
> Add this as a property of the /memory nodes, since it presumably follows
> the hardware-level memory system.
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
> Changes in v7:
> - Drop unnecessary |
> - Add a blank line between properties
>
> Changes in v6:
> - Use a number of bits instead of a string property
> - Fix inidcates typo
>
> Changes in v5:
> - Redo to make this property specific to ECC
> - Provide properties both for detection and correction
>
> Changes in v3:
> - Add new patch to update the /memory nodes
>
>  dtschema/schemas/memory.yaml | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/dtschema/schemas/memory.yaml b/dtschema/schemas/memory.yaml
> index 1d74410..b3bf3c9 100644
> --- a/dtschema/schemas/memory.yaml
> +++ b/dtschema/schemas/memory.yaml
> @@ -35,6 +35,19 @@ patternProperties:
>            For the purpose of identification, each NUMA node is associated with
>            a unique token known as a node id.
>
> +      ecc-detection-bits:
> +        default: 0
> +        description: |
> +          If present, this indicates the number of bits of memory error which
> +          can be detected and reported by the Error-Correction Code (ECC) memory
> +          subsystem (typically 0, 1 or 2).
> +
> +      ecc-correction-bits:
> +        default: 0
> +        description: |
> +          If present, this indicates the number of bits of memory error which
> +          can be corrected by the Error-Correction Code (ECC) memory subsystem
> +          (typically 0, 1 or 2).
>
>      required:
>        - device_type
> --
> 2.42.0.515.g380fc7ccd1-goog
>

What is the status of this patch, please?

Regards,
Simon

