Return-Path: <devicetree+bounces-1426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B86C7A6335
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB8721C20CAF
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EFB11381;
	Tue, 19 Sep 2023 12:39:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1371FA1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:39:26 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D061F3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:39:25 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5310a63cf7bso2851937a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695127163; x=1695731963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7KPj36MbfSKWyVnSEtl1DKIjrmkge+O7pPsjetRL4rw=;
        b=yklkOb3yQypfqNXQ6B4IOQfbm9dTo8Y/VI0nXBuR89AUQH7ci5ByeTS7ANdr0qGnY/
         LCwSDp606FfITjP0FPH3QZsNwxj1EGiazm63P2q1UGpmaTgaDgRDGDRqsgPXed6nAiCq
         Yr3ufnHTYGBx9SZY15uOUGwfWuop6EHVACV7nLKIZz9cjKEK3fVUkTU/ZmWJjp1W670r
         3m8INioZLX/SvWtyHDFX7X7J+iR625e5VONubaaob3N7scETjwl5rJcTCBGn7wK7a0Oh
         Or+NUiOt31ZUvsLkxqHOyeyE4JO8U06aVi2Sf02rd5bci783k+qNgWjXrD4Pgz/5c2ax
         1eDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695127163; x=1695731963;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7KPj36MbfSKWyVnSEtl1DKIjrmkge+O7pPsjetRL4rw=;
        b=rsaWQm/qjx7q7MpU7BhZyLtE8rpIbI7pOjpF6ODU+g6+Te2SCrGV3a4ufGPcPgG12o
         DyUdf5+So4ccI6s03E9PWvR1aZCdMSwoep6mMXelPuh7jFu0dSWuFwrtqRyNuSVwmZw+
         lY1xGCeLsgJaqY90G3Pt/wo9sU4P1VjOGXudYyt9bdndsrOukeKnrBjVUvlxczGP7NO1
         1+pGgePQnVaAqZHzQbv2fEhOTwVC5vx6B54pW1xPFcIGNl2NfGcUwKZGayd/1wMy6twZ
         gPaVczEO3jiyuQMpIx9xRY/XOyIts9JUUudr2SfGOaMQ0bJOdtbFG7zOvFlb4TpYnfTv
         JLJQ==
X-Gm-Message-State: AOJu0YwBXTjy/l/B8lYYtpD0u4H/A0xbjP7tCE+j0GWalyODeGvlEtie
	8g+kF7I2zYEMCo8tJdmZxsqZIQ==
X-Google-Smtp-Source: AGHT+IFTtdB3ZYAylEmFZOXVN2m6qAW8iQgQcPlnCno8Y8GycSpjLb7BHWT8HDL8LVmBpL+UOJHcKQ==
X-Received: by 2002:aa7:d4d7:0:b0:530:4967:df1a with SMTP id t23-20020aa7d4d7000000b005304967df1amr8442803edr.17.1695127163528;
        Tue, 19 Sep 2023 05:39:23 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id r16-20020aa7c150000000b0052fe12a864esm7296339edp.57.2023.09.19.05.39.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 05:39:23 -0700 (PDT)
Message-ID: <e0d42d13-b307-9915-97c8-948261b39ce1@linaro.org>
Date: Tue, 19 Sep 2023 14:39:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 1/2] dt-binding: usb: ci-hdrc-usb2: document Nuvoton
 NPCM supprt
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: peter.chen@kernel.org, gregkh@linuxfoundation.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, xu.yang_2@nxp.com, peng.fan@nxp.com,
 avifishman70@gmail.com, tali.perry1@gmail.com, joel@jms.id.au,
 venture@google.com, yuenn@google.com, benjaminfair@google.com,
 j.neuschaefer@gmx.net, openbmc@lists.ozlabs.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230918165958.2659-1-tmaimon77@gmail.com>
 <20230918165958.2659-2-tmaimon77@gmail.com>
 <b7a337f2-a810-d14c-e7cd-15e33a9ecb5d@linaro.org>
 <CAP6Zq1gSJYsNUuD-bexFW_1VpAUuF_WZkicNzZms6hVdo9LnMQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1gSJYsNUuD-bexFW_1VpAUuF_WZkicNzZms6hVdo9LnMQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 07:14, Tomer Maimon wrote:
>>>            - nvidia,tegra20-ehci
>>>            - nvidia,tegra20-udc
>>>            - nvidia,tegra30-ehci
>>> @@ -325,6 +326,20 @@ properties:
>>>      type: boolean
>>>      deprecated: true
>>>
>>> +  nuvoton,sysgcr:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +    items:
>>> +      - items:
>>> +          - description: phandle to syscon that configures usb phy mux.
>>> +          - description: offset of usb phy mux selection.
>>> +          - description: mask usb phy mux selection.
>>> +          - description: value usb phy mux selection.
>>> +    description:
>>> +      A phandle to syscon with three arguments that configure usb phy mux.
>>> +      The argument one is the offset of usb phy mux selection, the argument two
>>> +      is the mask usb phy mux selection, the argument three is the mask usb phy
>>> +      mux selection.
>>
>> Sorry, you miss phy driver. Don't use syscon instead of proper hardware
>> devices.
> Sorry the role of nuvoton,sysgcr property is to handle a mux between
> the different devices and not the handle the phy itself, handle the
> mux done in the GCR.
> Should we move the nuvoton,sysgcr description to another place in the
> ci-hdrc-usb2.yaml
> or
> Should we use a different driver to handle the mux and call it from
> the ci-hdrc-npcm driver, If yes which driver should we use?

What is an "usb phy mux"?

Best regards,
Krzysztof


