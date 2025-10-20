Return-Path: <devicetree+bounces-228783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D801BF0B18
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:58:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 84F0E4EFD70
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ABE7259CA7;
	Mon, 20 Oct 2025 10:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FNrUILw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2BC2561D1
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760957873; cv=none; b=QS7uJig15gN0164GFgyeXY0cSD7xXBt+I3f9fW/HwY45h1Wahpq263Ovz59bBux4G2pGUsgRN6QJJ1Fds4QY55DpeqDWAG3710ndKRwwUD7uDIAEEOfmWGMMfu1k7iu8Z+wfCt5JKlmEUlUZgAkUKR1j9AkcULmT457jE0U2zUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760957873; c=relaxed/simple;
	bh=Bla6ToecjH8EIjNTcUj1wMY0Ir7o6x4mV6qZgP7BkbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K51i9zg77lLt5WekeUHbFJiAVKI2kFTSWR0kqPHwDjpikj63kkInPQf1NA39DQQ8Ejw3d737E/g8tOgApzgS2qQzZCj/AiCLSBGrSvWtpNnneNYc9bcz3g5/ogGTF6NROx8c2x768+1WZBIlKa0ZCbGZT1XEemPP2EDLHE9awoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FNrUILw6; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3c2c748bc8so536989266b.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760957870; x=1761562670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PufIutwJX/MUqRq87e43IN62sjFrJG1C0t3fcKqtI5s=;
        b=FNrUILw6LOtaHQihoIE9wHkvYgf9oOMFbx2ZNVlx2/RxMcvvlSC5+OJZhXVgvUhnY2
         OvYeHf1m9G9WXkg4POX2hnk/P043OVsTtV57DDR3GJmnTDFoG2Sgjxvx47b/uA740Gha
         QErYg3bjncYMJzc3PaReMIczVBARZbS14BrI2lgIsgZWlVU0atZXU+M/QE3/fz4MBWSW
         ldA9S0EGg9qz+K2JEfhKba0SLl+i5oZZoKzc3XlWAsq72s0BvaQkaLaLCfXWmBsFH5dQ
         sRXlMq1wEnOPPGWWP9kQNMsysFO35GzDoI0PwR2VVsMmHDEAqiFSAHnNTwPIAjDyNup6
         54OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760957870; x=1761562670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PufIutwJX/MUqRq87e43IN62sjFrJG1C0t3fcKqtI5s=;
        b=AffC8MNinNzR00DwdBzL2yJJvCfLetABgPLAzW4AlaVSuGsnFp7dgy6gw6/Iut0ikv
         Qq35ur/9Y/junpxVmXOrrT+kJITYtZoJ4YvJX0iXQ6mpsfeOFEgw+WM9PfBEsIUPQzzH
         BKEzVJRpnyBUcyXeH1ce+Mfm67AUDcNeEwfBU2WbOx+57V1IS11+pTnbYufql96FThid
         duBBden2Sivm4SfRjJq3UTPeBxZKGpfF7aJ/JVN+hW/xJdapLsBEQwA2rausobDeh+Ht
         Vz95L32nlV0RryFx9uS3a6RyzWgalPrVbKMr6VR38CeWlJoVRMGk96DG4RgufFVp7H5T
         V67g==
X-Forwarded-Encrypted: i=1; AJvYcCXlf2bqcaffRV8JOp8oN3B5Ez1coRppDkfEKZUkUo9K7w5HakMUZUHzOa+U9FF3n79tt2Fyd/kyMoET@vger.kernel.org
X-Gm-Message-State: AOJu0YwBGTjhFSxE3eqirFIfvegCaTCJn6LP7R152tAN7+MRVjKHXXOf
	BA4V7IA4A5w+0i1Ul04Xn57EjhMZOzz259dbV0ifPNU+WbZzbMpnK0I0
X-Gm-Gg: ASbGnctPRFu4NCCSoZ2U9Bvh2kt3oMarCSdlKi+Nh2hEoT5wYvW97MLNcNuX58hhqjd
	rZQH6hzMIcosKxxbE4JLk5gGu3IYOh5N8iRKbegSQFR14eYphxkYPag5Q2NB/saMyDHqt4rZEu7
	1O6QGPcjHNsv8XqnhHnqAZz2587lC4vORUxzNvcal7oj7OgzUIFITcPxoPDY63KyFY/z8Ei7pQe
	SmUqu27MRrUnIGi1eurWV0jwAt4U5eDDu9tyV9ZFRyejffNXbZgzrimLFfFnKIpcFkAqz6ljvL3
	yI4IYsbITJneJNvAVYDd8xJHJYN+6E+CpDYUpe42UCkspp1xnb3/J1Sn/vNfl/UyNlIQgXO5oWK
	snzEeKBCmS7aCzkQ8vnHVDmAA942J5wA9E3NL0exQrCo9NVFZ1dcofFH93wZb5LEc0+0hlARl5p
	jLSK0qsrK23ORuJ+tsNNBSFEoHNddUmyTR4TLVEvvsOAc=
X-Google-Smtp-Source: AGHT+IEGNGRqyCA4oo2Whj2ekIc3ahNm9oAu93O5XQjpUk9MWXWOqPcdHqIk3lFTx8TLeoPA3wFzBw==
X-Received: by 2002:a17:907:2687:b0:b57:78fa:db46 with SMTP id a640c23a62f3a-b64764d7dabmr1614004666b.43.1760957870288;
        Mon, 20 Oct 2025 03:57:50 -0700 (PDT)
Received: from [10.25.213.231] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7e984f2sm749179166b.13.2025.10.20.03.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 03:57:49 -0700 (PDT)
Message-ID: <26f1b9ef-2e90-476c-8f95-6bae08f69eb1@gmail.com>
Date: Mon, 20 Oct 2025 03:57:46 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] reset: imx8mp-audiomix: Fix bad mask values
To: Frank Li <Frank.li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
 <20251017112025.11997-2-laurentiumihalcea111@gmail.com>
 <aPJSk2spnihEEkas@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aPJSk2spnihEEkas@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 10/17/2025 7:28 AM, Frank Li wrote:
> On Fri, Oct 17, 2025 at 04:20:18AM -0700, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> As per the i.MX8MP TRM, section 14.2 "AUDIO_BLK_CTRL", table 14.2.3.1.1
>> "memory map", the definition of the EARC control register shows that the
>> EARC controller software reset is controlled via bit 0, while the EARC PHY
>> software reset is controlled via bit 1.
>>
>> This means that the current definitions of IMX8MP_AUDIOMIX_EARC_RESET_MASK
>> and IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK are wrong since their values would
>> imply that the EARC controller software reset is controlled via bit 1 and
>> the EARC PHY software reset is controlled via bit 2. Fix them.
>>
>> Fixes: a83bc87cd30a ("reset: imx8mp-audiomix: Prepare the code for more reset bits")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> Just curious, why previous version can work?


good question. I assume this was never tested so I don't think the question

of this working in previous versions or not is applicable here. I also looked for

the usages of these macros in the DTS and there seems to be no consumer.


I discovered the issue while testing the patches from this series. As for testing,

I used a dummy consumer driver/node and manually checked the register values

after each reset assert/de-assert operation.


>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
>> ---
>>  drivers/reset/reset-imx8mp-audiomix.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
>> index 6b357adfe646..eceb37ff5dc5 100644
>> --- a/drivers/reset/reset-imx8mp-audiomix.c
>> +++ b/drivers/reset/reset-imx8mp-audiomix.c
>> @@ -14,8 +14,8 @@
>>  #include <linux/reset-controller.h>
>>
>>  #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
>> -#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(1)
>> -#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(2)
>> +#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
>> +#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
>>
>>  #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
>>  #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
>> --
>> 2.43.0
>>

