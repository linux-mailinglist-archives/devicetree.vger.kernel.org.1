Return-Path: <devicetree+bounces-7584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884C7C4C08
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:37:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3372028216B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D433199C2;
	Wed, 11 Oct 2023 07:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FEIR9eJq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD8BCA64
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:37:04 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6027D6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 00:37:00 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-53dd3f169d8so725857a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 00:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1697009819; x=1697614619; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8O8oPKWtl15M441He8arxID+J3pb7XNKVUDjACOuXKI=;
        b=FEIR9eJqFRNSHZeVsjXUJr8Pl1GWd2t/QK/4N/uBCbBPmhfPNLDwkjbm6ZlWjqNmyk
         P1LChBqpRjEA+aSCr/glx+VG3wcNbJeIL3jLKyJEZPgLaaL5rzH0l3lQ2ORMMoQfvFon
         Agw2/z0/CeuIrZOIjqXuKttXPV/jMQ4DQQxEmih1IE8LftvPeTA8Rl3NaFqkr8YByJbA
         ac8y3OBzmkRPUaj3qUgf+39tkNBeuid6eXXzknzUs4Oix08rGWvC0nmkFTr32cKmAbaz
         lEnAsnm3UJUAuLm0BWrH1zYHlKUPxDMj2l0TKi4LM/F7aB176uo9mldA3o3TaJnNPzal
         Akew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697009819; x=1697614619;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8O8oPKWtl15M441He8arxID+J3pb7XNKVUDjACOuXKI=;
        b=RKvr4LJWppeL6+ji8CWvfO6WZ9TQl9MuFuvZcpaTuCT+NRqdCCjLsbpXC8jw3rNBvY
         Avu8kNgqQksG0fBjpneEhfSyf7ywOdNQ3NJcExk3IqcO1rtV+NE4Ux7KcyPxT8+jfXoV
         1KhJLo+bCT0OiSqN0W6RnMt4XESOd+o8T2LWL3qnfeK9XJh5IPzEjzA4AxI8pc0gvIDv
         /GJHZrIF1sdStcYPp6lwIZDGrBAbWHNOTYa6CDSxbD5lLmXSu4M/TCVCMFi0Z4qgF1f/
         QwS9dVTj9HEk7a6kJg+LewlWxrM+84DMTZiGJ8r3ix40RIw7dQMMyz3+0HlIpWd/DYIr
         qc1A==
X-Gm-Message-State: AOJu0YyM9vpBlaXaUdcT6PcJJoWFeKqBjFDZxxxGR4K1NV6EYb6WOZsx
	HSPhbi5+yl6gAWh8g/rPDHtNcA==
X-Google-Smtp-Source: AGHT+IGPCvFjW76cfmqCtl7WbzqASU2eiF1JgyrYFLGhxTxSHTcBmV91JwIVpGFTPmPJRWNoiqYilQ==
X-Received: by 2002:a17:906:100e:b0:9b3:47f:1c05 with SMTP id 14-20020a170906100e00b009b3047f1c05mr16022372ejm.64.1697009818718;
        Wed, 11 Oct 2023 00:36:58 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id l7-20020a170906a40700b009ae587ce133sm9496699ejz.188.2023.10.11.00.36.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 00:36:58 -0700 (PDT)
Message-ID: <e1c9c2ca-144c-49fe-940c-9ca8ad40e377@tuxon.dev>
Date: Wed, 11 Oct 2023 10:36:56 +0300
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
To: Sergei Shtylyov <sergei.shtylyov@gmail.com>, geert+renesas@glider.be,
 magnus.damm@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
 <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
 <8226bd48-4297-0b32-c733-2e569114a934@gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <8226bd48-4297-0b32-c733-2e569114a934@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Sergei,

On 10.10.2023 17:52, Sergei Shtylyov wrote:
> Hello!
> 
> On 10/10/23 4:26 PM, Claudiu wrote:
> 
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Use %x format specifier to print CLK_ON_R(). This is easier when
>> debugging as the value printed will be hexadecimal like in the hardware
>> manual. Along with it "0x" has been added in front of the printed value.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/clk/renesas/rzg2l-cpg.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
>> index d62f1bc1f60e..764bd72cf059 100644
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -1213,7 +1213,7 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
>>  		return 0;
>>  	}
>>  
>> -	dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
>> +	dev_dbg(dev, "CLK_ON 0x%x/%pC %s\n", CLK_ON_R(reg), hw->clk,
> 
>    Perhaps "%#x" instead of "0x%x"?

Yes, better, thanks!

> 
> [...]
> 
> MBR, Sergey

