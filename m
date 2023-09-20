Return-Path: <devicetree+bounces-1731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEE37A7BD0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71EA628161F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E61827EFE;
	Wed, 20 Sep 2023 11:55:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D233220B19
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:55:35 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC8EACE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:55:33 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso863826366b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695210932; x=1695815732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UW8N+KeoRBbtzYhOGJomwLmPo9kvmA2DLIA6YpijZTs=;
        b=ucMMjhUdGZxTaql8dpRJYooTztxB7IpYttHY6iDM30QvBbTHw0psZVrTvxpWzHNQrp
         iFUzScUGIYmnDMwBMwDkU1tN0fMHxtR4+deGTje4HIDMKDuO73jmlgcV2hkcOusAj+P3
         GQb8w4l6MWxB6H4aZ2GzPpfgIjp/8w1vI3c4moq5/lU6WP4kD081NLwQH6GN6g0OLxpc
         xnRz56SRtSscOmy70t3K8Dfg/cqMeYfPp6fFvSPO5YrDW4BWTTYMQZg6Cu+gw4VcPpVK
         V8fSYtJAOwHiJb0iWf4vhW9dO9MEYI5VRvaOaZLZBrF0Uq6i2/CmDMSU2DMoW1SzUOHd
         JJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695210932; x=1695815732;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UW8N+KeoRBbtzYhOGJomwLmPo9kvmA2DLIA6YpijZTs=;
        b=Ba4X5gtmAVJAxywoXyCl+qyTXFaeMKDxisu2lBTCWQ+MrcdDWn3WhMO3JiepdJcgjE
         Ukyf1Wj/PeQxlOaP5M1ccZOlp0iJm0Uh3ptC8KpIQdZYjbIlGwiaNgvczt18y4ZqzzpK
         gckplf71PiZcFxR2/lkgWe9Guq+BWxzYjTxaRaSsHBVy05GVcm99FQONPRNpue54T2gE
         eHu5JRXVQgrawoCnRFiw4orBsWRrT1N4JGR8xeKavOj9zELz0jz5OBERCE5YITAh1Ema
         BGMM7zHlLu3QlucJacWSI21ahUYHngzExURylD+C3YHrE0JQIzL7b1hJGoIJO6SPR+hX
         B+Cw==
X-Gm-Message-State: AOJu0YzYQjgZ9CRYJRfp3DAu+hGkgM/nDgNcHuhsges+nKHvtmqGHsIK
	/HDV11PwIOIRhh3hU1hDjYmS7w==
X-Google-Smtp-Source: AGHT+IHdCynh+x46AKAMnLAwGdoI29Wy7NyQlaXU6tFEhUkwzwooMPkfiZE8Hj3OCNEur1xDIctNjQ==
X-Received: by 2002:a17:906:b1d5:b0:9a1:e233:e627 with SMTP id bv21-20020a170906b1d500b009a1e233e627mr1862460ejb.42.1695210932442;
        Wed, 20 Sep 2023 04:55:32 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id rh1-20020a17090720e100b009ad8ba6976bsm9307629ejb.9.2023.09.20.04.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 04:55:31 -0700 (PDT)
Message-ID: <ec11eb6a-c37b-08bd-5997-8fc390fd58c8@linaro.org>
Date: Wed, 20 Sep 2023 13:55:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 03/11] dt-bindings: riscv: add sophgo sg2042 bindings
Content-Language: en-US
To: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu,
 chao.wei@sophgo.com, conor@kernel.org, devicetree@vger.kernel.org,
 emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, robh+dt@kernel.org, xiaoguang.xing@sophgo.com
Cc: Chen Wang <wangchen20@iscas.ac.cn>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 08:37, Chen Wang wrote:
> Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
> Milk-V Pioneer board [2].
> 
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
> [2]: https://milkv.io/pioneer

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof


