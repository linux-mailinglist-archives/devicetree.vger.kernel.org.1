Return-Path: <devicetree+bounces-2107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 419E97A9A80
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE2E21C210F2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D325179A9;
	Thu, 21 Sep 2023 17:49:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74C1168D2
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:05 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58158905E7
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:46:44 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c108e106f0so21508841fa.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695318402; x=1695923202; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WE8LH19pPsCxh8naHG8n/k7q/gLXUPSjuv+tzgJMdcg=;
        b=arvvToUO17vNm44otc9nY1hyv7luQ8tcCbyC3ClDznwIYZZ+3UYLiZ/f6uqYcNg6BL
         sWxMEAfAJXziRY0HQKRiwI63poJkrch8aJ8e0lAH7TouomOGvUUFIxoY2HBOczO++fJE
         7MBWz/lIidRMBVGKvl36w3EdTpku0XaeaXrq2l9IgPzLWWZs6DNjqQHcgCUbflziqqTh
         CpTg7p6b7HXROMc6FM+qI7XWZpxNDkKkVfzAtj21CcrCm6zTaWPKHukrRCbIvFsA5cY4
         zQ6IsfbfxSRG3+j7/MHg7gCir7W1+lseCKOhhoTdMny4MM3afH9pdaCkvZQno2EGmfDz
         unmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318402; x=1695923202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WE8LH19pPsCxh8naHG8n/k7q/gLXUPSjuv+tzgJMdcg=;
        b=b4Z2HAZGOSdneVSuEi7RXXIa9KFTWmc3tEtCjIPcJTED5gIoXVO1RpRO75jOkb9BDH
         d3tNNk3f96cbbgsywmHC8T/AZsZckZGF14QnjjOdEN4SS1pBv5TuSWqitUgFYoFJ68SO
         glotmV4YrDgfNix03A7lR4f3BNd7gTBxVKHxUI2vasSt496q9M1qgbvfjTIHcwPNW6HH
         +Odhnf4c1JwntCoYqmvfiTAPGnZKzAlVBZfIeJ+BtmW8DXn3SxnFYKnDajK1yFYipdvi
         10tTkHjozuOfOfN1hq1W3NCuePo3Sp/y4ppKueWAYOxjadjpZHL1ZSr1RBqyhdJA3Vp9
         dPSw==
X-Gm-Message-State: AOJu0YzSZuhzdWYppRmvis5/4zNqGZ6Hw9QGepabEzqUTnfHkkWUpPZn
	zLM7HOIFjaTFDS4DIjZQnABdQ1m58ThuhBqIsdD99A==
X-Google-Smtp-Source: AGHT+IF+ICUJJWSZmNyofI+iEUUXe8X6vnYcAKgG6IrHyBC4yFSz0Cb6KzUEVL7HuLUkgj98UgC9fw==
X-Received: by 2002:a05:6512:281b:b0:503:256a:80cc with SMTP id cf27-20020a056512281b00b00503256a80ccmr6519101lfb.42.1695307553102;
        Thu, 21 Sep 2023 07:45:53 -0700 (PDT)
Received: from [172.20.34.61] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id g4-20020aa7c584000000b0052e2472f884sm930316edq.21.2023.09.21.07.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 07:45:52 -0700 (PDT)
Message-ID: <ee03d150-51cf-4e12-ae2c-9475a192fb6c@linaro.org>
Date: Thu, 21 Sep 2023 15:45:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: jedec,spi-nor: Document support for
 more MT25QU parts
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>, Rob Herring <robh@kernel.org>
Cc: Michael Walle <michael@walle.cc>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Pratyush Yadav <pratyush@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <363186079b4269891073f620e3e2353cf7d2559a.1669988238.git.geert+renesas@glider.be>
 <1503a3857107e3a4f34e0c7fb5dada39@walle.cc>
 <CAMuHMdXN+HJb=zGeG=3t=Pie9cVpnBLYuEb_qX6=oSxG8eTkAw@mail.gmail.com>
 <20221205163306.GB2012644-robh@kernel.org>
 <CAMuHMdUcrh26MNYuiqiC0_FMkeHtq1YnJrZKHEV_WQm5Dgzoaw@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAMuHMdUcrh26MNYuiqiC0_FMkeHtq1YnJrZKHEV_WQm5Dgzoaw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

Sorry for the delay, I just noticed this while cleaning the patchwork log.

On 12/6/22 08:32, Geert Uytterhoeven wrote:
> Hi Rob,
> 
> On Mon, Dec 5, 2022 at 5:33 PM Rob Herring <robh@kernel.org> wrote:
>> On Fri, Dec 02, 2022 at 02:56:01PM +0100, Geert Uytterhoeven wrote:
>>> On Fri, Dec 2, 2022 at 2:50 PM Michael Walle <michael@walle.cc> wrote:
>>>> Am 2022-12-02 14:37, schrieb Geert Uytterhoeven:
>>>>> Document support for the Micron MT25QU256A and MT25QU512A Serial NOR
>>>>> FLASHes.
>>>>>
>>>>> Merge the new entries with the existing entry for MT25QU02G.
>>>>>
>>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>>> ---
>>>>> mt25qu512a is already in active use, causing "make dtbs_check" errors.
>>>>> mt25qu256a is supported by the Linux spi-nor driver, but there are no
>>>>> upstream users yet.
>>>>
>>>> Is it encouraged to use the specific compatible with SPI-NOR flashes?
>>>> As far as I know it isn't. The spi-nor subsys tries hard to identify
>>>> any flashes at runtime and any additional information in the device tree
>>>> is used as a last resort (just for flashes which doesn't support the
>>>> read jedec id command yet). And usually boards have different sources
>>>> for flash chips, so hardcoding a particular part in the device tree
>>>> doesn't make sense.
>>>
>>> Thanks, I am aware there have been pushbacks when trying to
>>> document more compatible values.
>>>
>>> IMHO either all or none of them should be documented.
>>> If device-specific compatible values are discouraged, the bindings
>>> should be updated to reflect that, and document a single compatible
>>> value ("jedec,spi-nor") only.
>>
>> That's already allowed, so there's your answer.
> 
> It's indeed allowed, but the alternative is documented, too (for some
> values).
> 
>> The caveat is don't be adding them later to your DT when you find an
>> issue and new quirk properties will probably be rejected.
> 
> Adding them later to your DT when you find an issue makes no sense,
> as that breaks compatibility with older DTBs.
> 

We won't break compatibility with older DTBs if we use a list of
compatibles. First the vendor specific one which will use some quirks,
and if that's not available, have as second the generic jedec,spi-nor to
fallback to.

Cheers,
ta

