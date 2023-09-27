Return-Path: <devicetree+bounces-3661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5547AFBA8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3B47F2818BB
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 07:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220F71C28C;
	Wed, 27 Sep 2023 07:04:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348DA1FCC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 07:04:46 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABBBAA3
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 00:04:43 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9a9cd066db5so1379580966b.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 00:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695798282; x=1696403082; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mUfHtwwTDrHdk2HONnb9D4bIQEZmaUosI6XyqFoIeCw=;
        b=h7ejs9G5jolI4yR6tEuVOR21QF0jr7ZdqbXKFFDs/RoOu/5FVDsfu5lKoN3Y4nsvsR
         xL0ysBw2oZKFWkyr4SZTWN5zoRMKqsOmRhfzpLDZ0LOuFGobbDsyoVKk1XMJt2lsBkis
         0cY1SAZoVJ4A1urn2RX+V0jrnNZoNrB1Z6L5G3dqEXl8Oc2nwTV60BfaeV8iehZOvaO+
         Zgx7vQAIyaxkrNsLmXbqv+tVnP4rTRhhdaNv/emS0U255O8iRZwTQHi4lcnckBzvm92E
         7d3woFOrKjeXDgUn1YxGkj7r/78a6KqmRSBUI5bc0b1gB7LtswgRi+fgG2eHFrXVKkjj
         Qc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695798282; x=1696403082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mUfHtwwTDrHdk2HONnb9D4bIQEZmaUosI6XyqFoIeCw=;
        b=KqLm9vH8OPoaWu1Y4+OkpC7xUlBGaVPXkwHmJmN4WbZa6XXIzArNyW8D33zNwvw81C
         PSPzHaIV9BTQjniIAWkoyJiKby2JB/kjskqavIrQvscztapWwxMkOfpw9VblLbvraNNo
         1S7wMH51AyWoU9l5jrwDiLrHSKbKfvhdyQG/O7uHQhSo1dBGgJz5jsTIkkWB0w4nuDTg
         URs37rE+AmJbWQkg0NMma9KgmP+DT2QMVy6apZ/fl95iAHGNPLThSFM0pnbYunKtAxoV
         zDhCcRoTbXFncd9QPby6Ft1M5pa3wXHyWtZl6zHow7tBgA/yCK527MnXaswy4WpNjqo1
         Pt8g==
X-Gm-Message-State: AOJu0YwJrQ0UR1rQOH7QUxhSDv5ag3eEFto620/jKzHb8149NSltfKns
	VwWQxvhboioQ4to+PekAnOGM6g==
X-Google-Smtp-Source: AGHT+IGPRTkGC4Od1WoatDcn89FvS49OIiWfhQoFMm0Di906wf3KEkkApp3YAheBlq3xlop70aMjRg==
X-Received: by 2002:a17:906:21b:b0:9ae:46c7:90fe with SMTP id 27-20020a170906021b00b009ae46c790femr891826ejd.72.1695798282161;
        Wed, 27 Sep 2023 00:04:42 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id l9-20020a170906230900b00993004239a4sm8743056eja.215.2023.09.27.00.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 00:04:41 -0700 (PDT)
Date: Wed, 27 Sep 2023 09:04:40 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	greentime.hu@sifive.com, vincent.chen@sifive.com, tjytimi@163.com, alex@ghiti.fr, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: riscv: Add Svadu Entry
Message-ID: <20230927-d524858b10298a4e338cde02@orel>
References: <20230922085701.3164-1-yongxuan.wang@sifive.com>
 <20230922085701.3164-3-yongxuan.wang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922085701.3164-3-yongxuan.wang@sifive.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 08:56:48AM +0000, Yong-Xuan Wang wrote:
> Add an entry for the Svadu extension to the riscv,isa-extensions property.
> 
> Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index cc1f546fdbdc..b5a0aed0165b 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -147,6 +147,12 @@ properties:
>              ratified at commit 3f9ed34 ("Add ability to manually trigger
>              workflow. (#2)") of riscv-time-compare.
>  
> +        - const: svadu
> +          description: |
> +            The standard Svadu supervisor-level extension for hardware updating
> +            of PTE A/D bits as frozen at commit b65e07c ("move to Frozen
> +            state") of riscv-svadu.
> +
>          - const: svinval
>            description:
>              The standard Svinval supervisor-level extension for fine-grained
> -- 
> 2.17.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

