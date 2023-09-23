Return-Path: <devicetree+bounces-2662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FD27AC159
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 13:46:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EBCF22820D5
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 11:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50ED515EBC;
	Sat, 23 Sep 2023 11:46:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAA4612E
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:46:17 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0380019A
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 04:46:16 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-986d8332f50so449492566b.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 04:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695469574; x=1696074374; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=38HTal4f4sXppv8oLqqAylKmEA9yjUTc4W6rtp1s3qw=;
        b=bR4F/CJXaDrRO73kPTdk75S6knjhpkVarRbKE6QbyAmkyfN2wrWcbKenECJD5hBmlY
         CZI4vmn/wBFZYxT/Rbqp44WWrrhVDGJXdRi7toH1qeizPx3IyOrbvZD4KCseblgkSTMt
         CH2PxqZA839uY1Kq65Ci69EFBRq94HiJ0QmbEJSgOhFpQuxquPFueLKf4uu23i8Pe99f
         YzzxaABn/TniOtfZKsYiVCQDnouH86oMcHkJaaQuQ+z11MkVt/Idxx+qJBHd8l+ZJ6vu
         Gzc42qKVkmt3MgmEgCnw00G1l28IZsk6TErSK3E8vuhTMQDOcldjjlpPpSAgZy/RSIlu
         AWPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695469574; x=1696074374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=38HTal4f4sXppv8oLqqAylKmEA9yjUTc4W6rtp1s3qw=;
        b=f4C2XwI4LgQINZFzc6Yq402CRetmncX8C9iJKX5pqunBAPA6qtCIM4rQGWY2LBjcB1
         mClWX8+R2IClivLYeA2M6ivJzWgaA7MSG6a4j94R1anoaRppEdufXoq/h6Q5im1lc7X3
         qU8gvmLC1Z/9STVLpBXu7j0wAu018O/AqifRKykWvUMpTIU9cIf05fFFhUtOSPnAEZxf
         2dHn7BnIylq8tpOrZkqrsfDbTNXbOOpLmDEFAxcn2YZnvvvIV859myoyvD6svHGu0Xwo
         JFOzPYjkc/MfXJnJ2kMLy8Ijfgf3cBptfY7gbDnI+OOcmm+AG1xfh3WXoTrGEh2wJmSO
         hfsg==
X-Gm-Message-State: AOJu0Yz2RXPTEd0UAGXm7i/CyC6VFD7g/qZqCtmQHVScU5HDD89uaXK8
	R5YwxPaJMaZWJbvRqRZB3Lg3IQ==
X-Google-Smtp-Source: AGHT+IFDTTWMl5LfD8ts0lIxg/ZnEsVdvLyl7AspAxapn77Cf42Oh5qIo0YQDFfD8whAi2yr/C3HJQ==
X-Received: by 2002:a17:906:9c2:b0:9ae:5492:640 with SMTP id r2-20020a17090609c200b009ae54920640mr1472224eje.32.1695469574497;
        Sat, 23 Sep 2023 04:46:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id j19-20020a170906051300b009937e7c4e54sm3879169eja.39.2023.09.23.04.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 04:46:13 -0700 (PDT)
Message-ID: <fea4b205-a0d8-9c40-4fa8-29340c41aed1@linaro.org>
Date: Sat, 23 Sep 2023 13:46:11 +0200
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
To: Tomer Maimon <tmaimon77@gmail.com>, Rob Herring <robh@kernel.org>
Cc: peter.chen@kernel.org, gregkh@linuxfoundation.org,
 krzysztof.kozlowski+dt@linaro.org, xu.yang_2@nxp.com, peng.fan@nxp.com,
 avifishman70@gmail.com, tali.perry1@gmail.com, joel@jms.id.au,
 venture@google.com, yuenn@google.com, benjaminfair@google.com,
 j.neuschaefer@gmx.net, openbmc@lists.ozlabs.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230918165958.2659-1-tmaimon77@gmail.com>
 <20230918165958.2659-2-tmaimon77@gmail.com>
 <b7a337f2-a810-d14c-e7cd-15e33a9ecb5d@linaro.org>
 <CAP6Zq1gSJYsNUuD-bexFW_1VpAUuF_WZkicNzZms6hVdo9LnMQ@mail.gmail.com>
 <e0d42d13-b307-9915-97c8-948261b39ce1@linaro.org>
 <CAP6Zq1g0=-h0PFg2a8bqao+XjdNHoxGMdYSRRPAnfY_6WdemAw@mail.gmail.com>
 <20230919162837.GA4051010-robh@kernel.org>
 <CAP6Zq1hJPPAtKw8auC22wViHGQHTi0SufPJoBiqYtGWomnNUYQ@mail.gmail.com>
 <CAP6Zq1iUj8UfLZutyOVxbKgF42rMoF9ig3dViy7ApTHcqVoP7g@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1iUj8UfLZutyOVxbKgF42rMoF9ig3dViy7ApTHcqVoP7g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21/09/2023 15:17, Tomer Maimon wrote:
> Hi Rob,
> 
> Again thanks for your suggestion I took a look at the
> drivers/usb/roles and I am not sure it answers NPCM ChipIdae case.
> For example, in the NPCM845 we have ten UDC ChipIdea modules (UDC0-9).
> Only UDC8 and UDC9 are muxed with USB host0 and USB host1.
> NPCM UDC and NPCM USB host are different HW modules therefore different drivers.
> 
> The ChipIdea driver uses its own internal USB role function to switch
> between ChipIdea UDC and ChipIdea USB host and we can't replace it
> with a unique NPCM USB role function also we need to set the mux only
> at the probe stage.
> 
> This is why I have added nuvoton,sysgcr property to the NPCM ChipIdea driver.
> 
> With the above do you think I should do it differently?

Your entire rationale above explains drivers, so it is not proper
justification for bindings. How your probe stage has anything to do with
bindings? If drivers do not work or miss something, change them.

Best regards,
Krzysztof


