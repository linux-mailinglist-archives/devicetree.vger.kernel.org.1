Return-Path: <devicetree+bounces-2471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C25D17AAECE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 105DAB20A16
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704AF1E534;
	Fri, 22 Sep 2023 09:53:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5941E527
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:53:18 +0000 (UTC)
Received: from imap4.hz.codethink.co.uk (imap4.hz.codethink.co.uk [188.40.203.114])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 628E98F;
	Fri, 22 Sep 2023 02:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=codethink.co.uk; s=imap4-20230908; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PfpXL8SqEtEFQf0dEBQ/e+lrPG0zgFX2nDS/MPjPwEY=; b=UjINRbUSHXIn4r7OlxYG4uiN0m
	7U8XsaU8T4IaLIdP3i7lNl4cmqTPaXoIUH0dPZ1V9SHCfoB30b3bIpZM66FLSBFBrdTO1zHFahwRt
	EUO30V1px1Bcle0XIsZBbSx075lhWrGA9+bc/6ZLquCDcMtAQIhiLzgWrGWjq57yOzGt/cxFqqAXB
	I0nwsi+px8dpkbfmsZXo+s2YLTzuJwZNGBWuU1T44bnqIKUVrEkZleJ4+AWjIeCoCAPBEOD54PsYK
	+fAiRJLIjYzYXIYcM+WEIz0Vg/IbTIud6rUlWeA33ylbeWOTA85NuB52/oE8dKsBcArrEMaz95Ib9
	w743t+UQ==;
Received: from [134.238.52.102] (helo=[10.8.4.124])
	by imap4.hz.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
	id 1qjcqN-00CZPi-Fr; Fri, 22 Sep 2023 10:53:03 +0100
Message-ID: <0bd1742c-fa39-4f63-a594-6d325dc6b062@codethink.co.uk>
Date: Fri, 22 Sep 2023 10:53:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] serial: 8250_dw: Add Sophgo SG2042 support
Content-Language: en-GB
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com
References: <20230915072558.118325-1-wangchen20@iscas.ac.cn>
 <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org>
 <CAJM55Z-GMm5Hmk7-QWt8Prvp7qyFzOrQVjOjB7jfoX-oiT_C1A@mail.gmail.com>
 <862905cc-48c3-2dc9-6032-6ee189a629e6@linaro.org>
 <CAJM55Z8WDcjRER3ffnj+6V=QWEmudZyaO9z2iPUvreU1okq27A@mail.gmail.com>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
In-Reply-To: <CAJM55Z8WDcjRER3ffnj+6V=QWEmudZyaO9z2iPUvreU1okq27A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 11:23, Emil Renner Berthing wrote:
> Krzysztof Kozlowski wrote:
>> On 15/09/2023 12:02, Emil Renner Berthing wrote:
>>> Krzysztof Kozlowski wrote:
>>>> On 15/09/2023 09:25, Wang Chen wrote:
>>>>> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>>>>>
>>>>> Add quirk to skip setting the input clock rate for the uarts on the
>>>>> Sophgo SG2042 SoC similar to the StarFive JH7100.
>>>>>
>>>>> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>>>>
>>>> Missing SoB.
>>>>
>>>>> ---
>>>>>   drivers/tty/serial/8250/8250_dw.c | 5 +++--
>>>>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
>>>>> index f4cafca1a7da..6c344877a07f 100644
>>>>> --- a/drivers/tty/serial/8250/8250_dw.c
>>>>> +++ b/drivers/tty/serial/8250/8250_dw.c
>>>>> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
>>>>>   	.quirks = DW_UART_QUIRK_IS_DMA_FC,
>>>>>   };
>>>>>
>>>>> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
>>>>> +static const struct dw8250_platform_data dw8250_skip_set_rate_data = {
>>>>
>>>> Why? What is wrong with old name?
>>>>
>>>>>   	.usr_reg = DW_UART_USR,
>>>>>   	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
>>>>>   };
>>>>> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
>>>>>   	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
>>>>>   	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
>>>>>   	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
>>>>> -	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
>>>>> +	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
>>>>> +	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
>>>>
>>>> So devices are fully compatible? Then use compatibility and drop this
>>>> patch entirely.
>>>
>>> I'm fine with this, but these are two different companies and SoCs that just
>>> happens to have both implemented the Designware UART with an inflexible input
>>> clock. So if fx. a real quirk is found on the JH7110 then we'd need to either
>>> change the compatible on an unrelated SoC or change compatible on the JH7110 to
>>
>> Wait, why? The compatible is still there, so you just add here proper
>> entry, if ever needed.
> 
> Sorry, I messed up my example by writing JH7110 where I meant JH7100
> 
>>> something like "starfive,jh7100-uart-with-quirk" and "starfive,jh7100-uart" will
>>> forever be a quirky way to spell "dw8250 with inflexible input clock".
>>> Is that how device trees are supposed to work?
>>
>> I don't get this part. But anyway if the blocks are really designed or
>> done independently and there is no shared part, except the DWC block,
>> then indeed the compatibility might be just a coincidence...
>>
> 
> It is. Sophgo and StarFive are not the same company. Sophgo are using RISC-V
> cores from T-Head and StarFive are using cores from SiFive. They just happen to
> both use the Designware UART in the same way.

Out of interest, what's the issue with just providing an fixed clock in
the device tree for these machines?


-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html


