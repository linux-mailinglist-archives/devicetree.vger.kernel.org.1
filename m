Return-Path: <devicetree+bounces-7798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A23767C58A2
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 17:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5023F2823C9
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5850829D09;
	Wed, 11 Oct 2023 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TBV6E1D2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC3F224E8
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:55:33 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24551B6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:55:31 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-53dd3f169d8so25662a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1697039729; x=1697644529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KbOpE5VKjIMjXNX7bXqdn8URAwp8xkDDntfrb/FwR4w=;
        b=TBV6E1D2JK263ZDj6oMrEJtO8JnZbEOmWj+afjWEctnm8Dsqu50FFbTmeFjo6ITZZX
         cbpRqvHFfm9IN5kBMIsVSERK+48FwXiS/KHSZfwYMvKivBRgIDLni+g0OIUfkffTDx99
         85ZTqByVHg7rIXdNejmpuPADvBgQqCS4AtDLyjER2za7wljt9FZjwHzwhurGi1AQqKxB
         TpGVeGt/sEtcRSN4pL6NaysaE7tNHx1HRDAYnYCFcUvq3MwAWoUfBzp74rx8GwVA2VgR
         KHkiM9ilp+JbkSuUhce72PiQZ0eko1VQoxayjjXmwlEcN0eGgnwKUMsDfcW8BEuRq1hY
         YZ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697039729; x=1697644529;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KbOpE5VKjIMjXNX7bXqdn8URAwp8xkDDntfrb/FwR4w=;
        b=P1xeCgqO3AtNUOBR46dCJF13c+fx/t3uE8qFJxS27LjQKU+Nf8x1PCO1h8dz7aSRgF
         eFkN7ASWljSlV9z7cZXApddvORYYKIDA6r/tncBfd6wjdXcnmSA28ExEej8qLJGz5Neu
         yOVMnS0yuCwnguFvcNWl78BDiqWPBvZdijqlqCYZJPUmfotd3Beztyg23kXTPVZmsF70
         VTBwmiwlSGXAaNmtxTbwkmQUIRvEZgRtNxOEyGzNMR58RSuISuooWVt7zmH9o7m9FyWV
         McBVAQbHIebAzMK4R3DNZ1cUSKFEhRG4Pl1YA4wEPzQccWaom1cwj5fgnjm3DA7ZyzWa
         oriQ==
X-Gm-Message-State: AOJu0YxkFkyiFARAtdljhTa8fNoitew6z5dLQsKLzJeMJDveqtp5rvGX
	YCKFDhsp3fLTU/vFuQsYz79TLw==
X-Google-Smtp-Source: AGHT+IHtErofZM2x+uE8kBiPaK1/HljWwfQi6sW2rbSCUwN2JiCvdsMVCdEYynwvsBJNVVTBtUob8w==
X-Received: by 2002:aa7:c998:0:b0:530:ccf7:37af with SMTP id c24-20020aa7c998000000b00530ccf737afmr18702868edt.12.1697039729420;
        Wed, 11 Oct 2023 08:55:29 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.133])
        by smtp.gmail.com with ESMTPSA id ec22-20020a0564020d5600b0053defc8c15asm460905edb.51.2023.10.11.08.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 08:55:28 -0700 (PDT)
Message-ID: <fe375d1d-29b1-4514-963b-7a65a645a58d@tuxon.dev>
Date: Wed, 11 Oct 2023 18:55:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] clk: renesas: rzg2l: Use %x format specifier to print
 CLK_ON_R()
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Sergei Shtylyov <sergei.shtylyov@gmail.com>, magnus.damm@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
 <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
 <8226bd48-4297-0b32-c733-2e569114a934@gmail.com>
 <e1c9c2ca-144c-49fe-940c-9ca8ad40e377@tuxon.dev>
 <CAMuHMdW7jXSFx5kU6PKr55cXw2+Hu_J-Z4NdUk=m_2AxuaOC0g@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdW7jXSFx5kU6PKr55cXw2+Hu_J-Z4NdUk=m_2AxuaOC0g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

On 11.10.2023 10:43, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Wed, Oct 11, 2023 at 9:37 AM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 10.10.2023 17:52, Sergei Shtylyov wrote:
>>> On 10/10/23 4:26 PM, Claudiu wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> Use %x format specifier to print CLK_ON_R(). This is easier when
>>>> debugging as the value printed will be hexadecimal like in the hardware
>>>> manual. Along with it "0x" has been added in front of the printed value.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>> ---
>>>>  drivers/clk/renesas/rzg2l-cpg.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
>>>> index d62f1bc1f60e..764bd72cf059 100644
>>>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>>>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>>>> @@ -1213,7 +1213,7 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
>>>>              return 0;
>>>>      }
>>>>
>>>> -    dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
>>>> +    dev_dbg(dev, "CLK_ON 0x%x/%pC %s\n", CLK_ON_R(reg), hw->clk,
>>>
>>>    Perhaps "%#x" instead of "0x%x"?
>>
>> Yes, better, thanks!
> 
> "%#" is not very common in drivers/clk/.
> 
> And to me it always raises the question: What does "alternate form" mean
> for this conversion specifier and this implementation of vsnprintf()?

OK, I have no strong opinion on this. Please let me know in case you need
me to send a new version.

Thank you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

