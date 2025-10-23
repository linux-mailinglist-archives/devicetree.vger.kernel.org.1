Return-Path: <devicetree+bounces-230396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E0421C0232F
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:43:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E45144E5455
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD59C2FD1DA;
	Thu, 23 Oct 2025 15:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BoO3daVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DED309F17
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761234045; cv=none; b=RsvEDsky6jfFUJOA9WfWG7zivdQis1P+rxe9PDp9GTOIcqLAP1uXehAwgsasefppOMyBgRE5uFxdmG0NNABr21mgjSoLwlJUOSFxb2huscLG41Fmg6vK2mo10WIygUsvjght3G/1PvJ6MKhvBdqFxZ8tGWBU6Aas8zP3MVYragM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761234045; c=relaxed/simple;
	bh=wo+q7gVJ0lDPvk3xTlIPPAEgAAs6cPPFBZRIlPTAefI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uZXXWijuGYSn9L6SBAWXBobkB4luuNWH8IBKUotjrV26jrM5pmIo+4JO879e8UrUtLK8irMhTfGF6FRphKbrmnZ9METwyEdTiU91AGF5uV09Q4kDHfelyXm2ae+QphiMdT5ln8nbksWspHlk3c48BehrCDLgMuzrWmkC0ixp/BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BoO3daVA; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-290cd62acc3so11367435ad.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761234044; x=1761838844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lXJXpPmoDUJ02UXvoOXxjG7CEpQb9FPd/0KUDwpNI4k=;
        b=BoO3daVAWDIewXv5Dr8Qdw/6c/vn/DDn+MdJhJKnXe1cv5cSM8DnCml/O0S+8l+pBp
         9IYxqKArEqk93D4Dt0XEI4CqYEdt4BAXd5Hu4d4JVhpJQ1HtSTsiz03v49P2u7VLidJR
         hy3w9moHuSsdiq/yujrnclIQ5zeNv/uKpfE4rNGoMxQhmksdqsf1/AaQYb8R6ImC6FiP
         ii57HM3zmPP1lbGtdv+OFWznCbNk6QllPDs0JMVBuxkYXQdsFFeoZxcMIxSXHBdh6nRN
         Ti5+r0X77k3ZKAQvklX57wN44w/EbSZvYcRCc+0PLOJbu7wqkgktHi1ONxyWpAwqmzeH
         lBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761234044; x=1761838844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lXJXpPmoDUJ02UXvoOXxjG7CEpQb9FPd/0KUDwpNI4k=;
        b=XBpaR6xuyxZfg43/34hVlcyB4pJBFWYpCbGbPJkqni5hGcj5kBWabdBLsDiejL6xqV
         zSvexCd1bU9f8DQsDFY4kRv2izYTYQ4lXkvNyZCsF9rVaOr7gIHbvvdAVsKZ4+j7mkXP
         2vU2QNEb2hmguR9ykLbdnxtbW4QyBFcFjbbkFlbCp5BHmsVRLZmfhoSvOjh9lrTK74U9
         MC9n57XgUH+jsNJo4iTJHHYniVFDpetN34NosLN82RRc96VzHvtMMg+zRhfTEXR18V2l
         iY83CIn7jCFze4SjasT+tMuyrL40SvciWYg3JegNvNkbr9hsYazeidPUCQhksA5V7DdJ
         R/Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXIP24qIg+bbDf/rgUeqLtO3w8dMDl5CVsw8Fr5gGzsDOCzg71xUAHSNPAnLTgkY4AwMn4DYeHiPhWl@vger.kernel.org
X-Gm-Message-State: AOJu0YwNqxsM6mWA4ge/nqsV3ek7rGbJgzwKtCHggdQZnfU85lEdNzYH
	DIINS+M+9gWZPObSYOv+qyNoaiWCpecTukYfqETQAWpZeFcQ3Ezu4wYp
X-Gm-Gg: ASbGncvVBfXbeIxoKvLKGXsgn0v0xWEeel1xzIh4xAwQE0VJp0BH1/rePYeFTFY1ENv
	CJyGjRnyslwDY9WbrCtUHDxh37s3ZecYp+ACkjQQm7Dz29r7LhN6Y2Y8COnDHstkF49DNbJDdKg
	z8Wgd4rtZk44LmPi0g4aqE91u4cqdl10+zDa0JtQ4h3cj/3SvP3Pd1RL37zNsxqaiUY8o2xBT2X
	kM4Tr1vMyfHhqiQ/SllE5RXS15xsmZZLOrN7Cn9RQ1ZduXQDonp2YHFKTrAMEYjPo7whzDeswc6
	68lvX2k1TFic95trDFaTO9FDYWIB6H/P5AwCHDKi6QAYl/idGeyDfAFHLrUR1T09KMjtF7zD1C1
	NeaDy4oAgtcxAc5dB8MT0vY7oz508rFhldoI6QtudTPgYAaFL2KI7bfM53iHXlhQtC1HYtoFiT+
	glRjxrf78AZg6nzt582VXkK5MoTIzXMluB
X-Google-Smtp-Source: AGHT+IFArWijSKHwpar8JwYxB7WZc8vpMdPPlpUQNI5RWkup0YN+rTI2t69HTMgDeXnxkhaW+vdAkg==
X-Received: by 2002:a17:903:3546:b0:267:e097:7a9c with SMTP id d9443c01a7336-290cc6d4ba8mr326690025ad.53.1761234043638;
        Thu, 23 Oct 2025 08:40:43 -0700 (PDT)
Received: from [192.168.1.5] ([27.7.191.116])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946ddee569sm27029435ad.31.2025.10.23.08.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 08:40:43 -0700 (PDT)
Message-ID: <879da8d0-1ea5-4495-90e5-03b55aa91362@gmail.com>
Date: Thu, 23 Oct 2025 21:10:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] dt-bindings: mmc: ti,omap2430-sdhci: Add json
 schema for the text binding
To: Rob Herring <robh@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>,
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
 <20251020142710.GA576827-robh@kernel.org>
 <46aa84cd-63cc-4263-9061-021fa3205b87@gmail.com>
 <CAL_JsqKH2NTvXGPoimpVp=-yvcQgbXSoxKY6AO16WgJHSeOT5A@mail.gmail.com>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <CAL_JsqKH2NTvXGPoimpVp=-yvcQgbXSoxKY6AO16WgJHSeOT5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 20-10-2025 21:28, Rob Herring wrote:
> On Mon, Oct 20, 2025 at 10:44 AM Charan Pedumuru
> <charan.pedumuru@gmail.com> wrote:
>>
>>
>>
>> On 20-10-2025 19:57, Rob Herring wrote:
>>> On Sun, Oct 19, 2025 at 01:04:36PM +0000, Charan Pedumuru wrote:
>>>> Create a YAML binding for ti,omap2430-sdhci and fix vmmc-supply
>>>> property typo for a DTS file.
>>>>
>>>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>>>> ---
>>>> Note: The property "ti,needs-special-reset" was not removed from DTS cause it will
>>>>       disrupt the compilation for other compatibles as the node &mmc is used for all
>>>>       compatibles for some DTS files.
>>>
>>> I don't understand. AFIACT, "ti,needs-special-reset" is only used for
>>> the hsmmc driver/binding. But this series for for the sdhci
>>> driver/binding. So shouldn't the property be removed from sdhci nodes
>>> (and the binding), but kept for hsmmc nodes?
>>
>>
>> Yes we can remove that property from sdhci , but &mmc node in DTS is common for all mmc drivers and this "ti,needs-special-reset" property is defined there for one board, so even when I remove it from DTSI for sdhci nodes, the DTS file still contains this property in &mmc node which is also common for other mmc drivers, so even if we remove that property for sdhci node, we still need to define it in YAML to resolve dtb_check. The issue here is not removing the property from sdhci node in DTSI file, but to remove it from &mmc node from a DTS file which is common to all mmc drivers.
>>
>> Here is the DTS node (ti/omap/am5729-beagleboneai.dts) which contain that property and is common for all mmc drivers.
>> &mmc2 {
>>         status = "okay";
>>         vmmc-supply = <&vdd_1v8>;
>>         vqmmc-supply = <&vdd_1v8>;
>>         bus-width = <8>;
>>         ti,non-removable;
>>         non-removable;
>>         mmc-pwrseq = <&emmc_pwrseq>;
>>
>>         ti,needs-special-reset;
>>         dmas = <&sdma_xbar 47>, <&sdma_xbar 48>;
>>         dma-names = "tx", "rx";
>>
>> };
> 
> I'm pretty sure that's not how &mmc2 works and you are confused. I
> would suggest you do a dtb->dts pass and compare the results.

So, I can remove ti,needs-special-hs-handling and cap-mmc-dual-data-rate properties from a similar DTS file along with ti,needs-special-reset as these properties are not used for sdhci-omap driver and are no longer in use, I will remove these properties from YAML too, if this is true. Can you confirm this?

> 
> Rob

-- 
Best Regards,
Charan.


