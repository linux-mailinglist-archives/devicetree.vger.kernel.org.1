Return-Path: <devicetree+bounces-15023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4C87E7D2E
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 15:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B913328115E
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 14:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 056DC1C283;
	Fri, 10 Nov 2023 14:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="alBx0wL4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B311C28A
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 14:52:25 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA91539CF8
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:52:23 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso13935295e9.3
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699627942; x=1700232742; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1gS1wyuI8aGNfo6PKmYKdIjYheQswElfmN9q70KQxSA=;
        b=alBx0wL4iXPJUZl4hofbSqdy/Qh1/3JeDt22ATwz/CE+c/4Zdg4RhysjPMRLGSPuuR
         btUChZEBGAnN39O+i2kSoIttu4zFHvzhfe7QrWM1e3enCcGAEKSvsVH/NpCZipnj3ow7
         4mbT5elQIZ/DOyUX6mCkfxGsCbd2BCna7XkndEy2JnKm6hyaB7/qnofjVESezfOSxsTC
         axc/eSG9mLMX/ooaWpiiU2LpKN+4uInHB8p23bLVi1uE02Yn81ktUtnTHW3FR9PnxxDJ
         CwsH5REptTrh4D2SfWydzi0tKQorM/I3gZgV9kS4NnEtUfOJWRNpGbgFVod4CTvW21xT
         aY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699627942; x=1700232742;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gS1wyuI8aGNfo6PKmYKdIjYheQswElfmN9q70KQxSA=;
        b=uMA6EP7QY4O+s0mBJrF2/baX1GQmcJWahNkkg6mY9lndLnZqOdlppHKNaI59EykNf6
         ZJWcyoVSTlDu+EH7emk31uhAJ6nKWWCTxu7XmN8DDCfr2hXHVmrRE0rubrysy4RcxNoo
         kC87Ne1sxpSSyMLfnD2zhpxIW1KOPCqXDzOshuJ6AFiNLh6PkbvDnLYIfCJo27pdzYoG
         YKNZJ89HV68zHuvcLH+j6c2XuIvTOX6/JBDXKCqnNz2w13nnGuwG2ocP9XDxbwIa57tv
         Haywlx4k0cIGThDQJ+0VAILEdsaIV6JaUq+/lBgJ8I1bqxyUItJvtB4+/iBzFC2BMQXz
         Qxvw==
X-Gm-Message-State: AOJu0YwoEV5USpQOn3qH19V6wcHWWxLZeA3kgrelE6TwSU/C1kZz20xX
	oz64SZ5Lb+vL6T/Etxed/OHOng==
X-Google-Smtp-Source: AGHT+IF1IA3tdVq3xOJBj+v0ShieNBu/cCS8yER/wl8D4FRkmn+rmYKDDekN1L4VcG7NbJ+8/1LIDA==
X-Received: by 2002:a05:600c:4446:b0:408:4120:bad2 with SMTP id v6-20020a05600c444600b004084120bad2mr6775783wmn.9.1699627942103;
        Fri, 10 Nov 2023 06:52:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id h10-20020a05600c350a00b004097881d5f0sm5412328wmq.29.2023.11.10.06.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 06:52:21 -0800 (PST)
Message-ID: <ad64aa78-1874-4a92-8a79-6f45bb19dbe2@linaro.org>
Date: Fri, 10 Nov 2023 15:52:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/4] dt-bindings: display: panel: Update NewVision
 NV3051D compatibles
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20231109215007.66826-1-macroalpha82@gmail.com>
 <20231109215007.66826-2-macroalpha82@gmail.com>
 <c012c0b3-d6ca-4291-aa0c-05a192f30dcb@linaro.org>
 <SN6PR06MB5342A696F25065F9C253154CA5AEA@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SN6PR06MB5342A696F25065F9C253154CA5AEA@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/11/2023 15:28, Chris Morgan wrote:
> On Fri, Nov 10, 2023 at 02:11:58PM +0100, Krzysztof Kozlowski wrote:
>> On 09/11/2023 22:50, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Update the NewVision NV3051D compatible strings by adding a new panel,
>>> the powkiddy,rk2023-panel, and removing another entry, the
>>> anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
>>> rg353p-panel and is not currently in use by any existing device tree.
>>> The rk2023-panel is similar to the rg353p-panel but has slightly
>>> different timings.
>>>
>>> I originally wrote the driver checking for the newvision,nv3051d
>>> compatible string which worked fine when there was only 1 panel type.
>>> When I added support for the 351v-panel I *should* have changed how the
>>> compatible string was handled, but instead I simply added a check in the
>>> probe function to look for the secondary string of
>>> "anbernic,rg351v-panel". Now that I am adding the 3rd panel type of
>>> "powkiddy,rk2023-panel" I am correcting the driver to do it the right
>>> way by checking for the specific compatibles.
>>
>> I don't understand how any of this driver behavior is a reason to drop
>> rg353v. You wrote two paragraphs to justify this removal, but I feel the
>> only reason is that rg353v is just not needed, because it is duplicating
>> rg353p? Is this right? You actually did not write it explicitly...
> 
> Sorry if I wasn't clear, I did note that the rg353p-panel is exactly
> identical to the rg353v-panel. Should I add additional details beyond
> that to clarify?

The entire paragraph about driver feels redundant. Your first paragraph
should still say why you remove it.

Best regards,
Krzysztof


