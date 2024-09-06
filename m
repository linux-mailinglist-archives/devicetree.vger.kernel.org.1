Return-Path: <devicetree+bounces-100899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD0C96F5DC
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 15:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B72E11C23FFB
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 13:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D551D014A;
	Fri,  6 Sep 2024 13:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CHOcpzL0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC513B5AF
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 13:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725630737; cv=none; b=DZ5fDfrC/SS3v14jfKfy+fbP2Q5huOPmE2k61ohEtwvL8/jRDy5yFR/X8efhyXCuJBEJxAwzjcYF6OYlx3pK5cJzt5ahcMVwsjC1+Ny7zHVaDj5jEAGiLv/Q5qQqhQijx2jZ+jxvvTEu8Ydp4/b8eePb77ZBfIDLxoggk2XAKQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725630737; c=relaxed/simple;
	bh=ZnnnIr+K1A4FDAgDbTsI4z4N0wjchTOUn7euwi8txNk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=riRK+cD0WXn6QILVdurYTVa5dVb4UzMQuZHk0b8vPSyS5I1QNqik+I2DOgyOI3tvN4uzOJhrGDbYc+YCjvf73kwrgoIwrtVMqlZAXVXGt0sZFg4hI9ZhrN15FCwbAa+nrpYBRDXSweafa+VsWPalqubavs7e6fBsmXjaGICGJKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CHOcpzL0; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5e017808428so1272553eaf.1
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 06:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725630733; x=1726235533; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7F65YX/r9NBIT9OJBVYtcMbH5MfEewbpA3UhTv1Hc38=;
        b=CHOcpzL08COsi3DA8nod4leSZHxUQXENZUwPw0Z6g6mMq3bny3dfIosn1VL5RWzRBP
         J/hWTADAr+KAo5VQaCwy+dc2493tb/V572u2LuKFaefvkiO4mrpqs0wmyNWmUHCI7/zE
         v6jgHBbAoe1kYxvb/GdrP5Jk01NoV7E46yl/l1GTcCSxHVyrgD+iRqhK3Q3XCS0JGJ1v
         RzxhMY+dWb5t6ZUt0Ljj1/cbtuO3ucdGq48/gDAMEkN08K7+Z/4BpcFD8JG5NTIWQ9Xx
         xg9bp2QnYr8wx8J20hiFE8w72GU3+mpmJvi9TeFJUdiHp2O0rKjwJ77MhRHLJiyXxIUn
         UQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725630733; x=1726235533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7F65YX/r9NBIT9OJBVYtcMbH5MfEewbpA3UhTv1Hc38=;
        b=Dcd5XQ8MUOMVp++RPhAfTCHp6fDjEA3B2xPKKo6bmmgwPwxFqxY7M7DE2/P98ifxcN
         ExGDREn6Uz/CnEYd4LM8TTSrxFR+ED3j8WPWjxu2OKdRloLzbrfFUIDL3zY3/qzBuiMP
         MVzCpMr8wLoqacjgp5xo4DLqrDuKTcF/k6RDvwKKbukDhO3a2Br6SLGylgMcfnZ6UT/n
         /wn6whYo5wmEj6PtGYREAaw1qrozIquMfrsbuK4noNK2NdQ261QYqA1pE/04CT5JLGHy
         FuwdtDPTaQThLHEjj9IldkyzMTPnpJyxT2yAx4wPldEbpZvibbJxIlGF/KGxkS8T2c3X
         m5wA==
X-Forwarded-Encrypted: i=1; AJvYcCUw+8xShZAYG8oXVtG3AnbgXo+uxaYUWZMk6zRCcyoAKaNsz6FtbKKUWIBfLf2o4BXxQHdxTbysuZNW@vger.kernel.org
X-Gm-Message-State: AOJu0YwJCfjddxlKD0TRytImyzvs0WM1MD93yEjqX+5uPxll3vUcfl4r
	wE+bYz45LMKAFiyk1BgYXIIeOUltG1Ui/MtrJsAyhH2bTdwNrdT/qCSX6zIlEn8=
X-Google-Smtp-Source: AGHT+IER7xfw1Yyx+nyfJspkCGKpanLKB+G2/swE0L8dMzDsGxWsy0bEMNxwH5FdtTBW88Syu8yO2w==
X-Received: by 2002:a05:6820:621:b0:5da:a4a7:8f6a with SMTP id 006d021491bc7-5e1a9cd68damr2960294eaf.4.1725630733327;
        Fri, 06 Sep 2024 06:52:13 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5dfa04bda37sm2981801eaf.21.2024.09.06.06.52.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 06:52:12 -0700 (PDT)
Message-ID: <b8dfda0c-11fc-4b2d-b47d-f234cde87cfa@baylibre.com>
Date: Fri, 6 Sep 2024 08:52:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] iio: backend adi-axi-dac: add registering of child
 fdt node
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-4-87d669674c00@baylibre.com>
 <7bd162bb-dce8-4aff-9f56-1ab73b091a28@baylibre.com>
 <35d882417c0a9c37e51b878790e2fa31dd0a1d63.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <35d882417c0a9c37e51b878790e2fa31dd0a1d63.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/6/24 12:42 AM, Nuno Sá wrote:
> On Thu, 2024-09-05 at 14:19 -0500, David Lechner wrote:
>> On 9/5/24 10:17 AM, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>> Change to obtain the fdt use case as reported in the
>>> adi,ad3552r.yaml file in this patchset, with the DAC device that
>>> is actually using the backend set as a child node of the backend.
>>>
>>> To obtain this, registering all the child fdt nodes as platform
>>> devices.
>>>
>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>> Co-developed-by: David Lechner <dlechner@baylibre.com>
>>> Co-developed-by: Nuno Sá <nuno.sa@analog.com>
>>> ---
>>>  drivers/iio/dac/adi-axi-dac.c | 15 +++++++++++++++
>>>  1 file changed, 15 insertions(+)
>>>
>>> diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
>>> index cc31e1dcd1df..e883cd557b6a 100644
>>> --- a/drivers/iio/dac/adi-axi-dac.c
>>> +++ b/drivers/iio/dac/adi-axi-dac.c
>>> @@ -783,6 +783,7 @@ static int axi_dac_probe(struct platform_device *pdev)
>>>  {
>>>  	struct axi_dac_state *st;
>>>  	const struct axi_dac_info *info;
>>> +	struct platform_device *child_pdev;
>>>  	void __iomem *base;
>>>  	unsigned int ver;
>>>  	struct clk *clk;
>>> @@ -862,6 +863,20 @@ static int axi_dac_probe(struct platform_device *pdev)
>>>  		return dev_err_probe(&pdev->dev, ret,
>>>  				     "failed to register iio backend\n");
>>>  
>>> +	device_for_each_child_node_scoped(&pdev->dev, child) {
>>
>> This should use fwnode_for_each_available_child_node() so that it skips
>> nodes with status != "okay".
>>
> 
> device_for_each_child_node() already only looks at available nodes IIRC
> 
> - Nuno Sá
> 

Ah, you are right, I did not dig deep enough.

