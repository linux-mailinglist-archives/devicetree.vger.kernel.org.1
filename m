Return-Path: <devicetree+bounces-213707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 728BAB464D8
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 22:44:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B81C7B103D
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 20:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 836BA2C3274;
	Fri,  5 Sep 2025 20:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TwH2Sa3f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FC12C2ACE
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 20:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757105064; cv=none; b=UMyDAhpkk/05uycWZ1RalJU8hHx5bHvCNJPR+Qtzr8l7TJE9s7eYYVKlBoiLR58EFTFVCJJiP+n+eHHSeHygycahQ6LsL+hioUj29YA1GMrvpe1tO2rk1oZIIdGjxwjX31DtgDjphIKxSgmGZhdKhp9iQPY1e1qHY7ezmRYqQcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757105064; c=relaxed/simple;
	bh=ApOwx+C4GPW1w+fc4btEB0bVzkSsM5ryEFh3uzDHGmc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gx4DV4UteUuHYL7A/Y4w0K5GRMkb2Y6BULNl8GHJ3mSR4egkBRod1XJyQ0K2teB99i2DL++qTur3lxOy0d9PxH0ql0jDygUmXM+mCMelb3jM4VNlbrtePm46XFL006rzyvy/heQsVl8vIbD2obGHgGT7FaY1kqNvOLLubLjHTK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TwH2Sa3f; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-61ff35a56d3so1066690eaf.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757105062; x=1757709862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W2y7uXdo2cD2jmFDUwngNqvN1kUm23yCeo5iGVu6II8=;
        b=TwH2Sa3fTh3W1jLclmYqc4Ns/bi+LL5oIf9HxOw67BbzCk2UIktflKEWXIPmgQm+Va
         Q8MyVfhHJ/96xLjh2ERfA6tjzwib/OTvM07s7MSeHiC4Ja1jNy9ycAtE96g3D/dWnny8
         WnGel9SrShx+k74bOIjpyVKGf0Hhqz+tJsvLWpIoRClZJb7J7fNu6+VMxlU+HvO07ySL
         +D/nz60C2yns13qAxHXAp8t8faVGOx5X2gla7x9CIvcxix6CowzOBJr83QPbuyHY6hGM
         7GCSIWA2dxe3EKN1johzpKLicb0KUoou5NaJk6uCPN/3KX1tRjnBHxShelbI772hWNTV
         ghYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757105062; x=1757709862;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W2y7uXdo2cD2jmFDUwngNqvN1kUm23yCeo5iGVu6II8=;
        b=wAKV5x5IOKZyfuVUraPqhjkQPwrRyLGxtsMx1KHBTGYumVO53sKNinbgH2fiDidmHW
         KOZdfLHC2K+b7iE1jr3syrzHlC+CgCaxnYgC14UUFoAJ0MPIALBvx/IBsuzIgKbiTrMr
         f583HFxuSWGLAiv3bqKWganCJ3vrLZLDFx9Zb1kuV8aelMIVeoPjGdNQGyy1QX00W3bs
         Kuyxd+p0qj1d9OZX3w3+u1p3wV5OtoX1Zo2ku+yi1gC/MKSiwXftwySV1/RLP7mJTjdB
         cpXzxF/ft+TQJ1yJd8QtE1Qz1r/4sk4kHV9ZCQJ9b37G/2Qo95dixjeAJt6v5p6MR57n
         nBQg==
X-Forwarded-Encrypted: i=1; AJvYcCVDJqccrfmhClc7MjJrNitbCUNlBBcGg81q1NkFQslrIHRuoWRDf8P3Ome9rl8mn1lDP9mFL2QMYqbV@vger.kernel.org
X-Gm-Message-State: AOJu0YxNv9MYdGROmqJgZgPgiVOq5yN5SGCeB2gx4cstmxySOO1EYz+c
	WeTIQyKdfj3WjpgYnq4xIrJ3Ong6mTk/nG4tVMzqkIjtgL6gHkjhjNUVA+/Kmj+nh6s=
X-Gm-Gg: ASbGncu5sHSDpdEKlN8MzRnqXxwP76oxt8jrc8cKDOsMu+g0sSD79eAZGKXunVdABvD
	Yby35oF225nPTAjxIm39pbi4mgIKhLff4mdPVo11XU/+L34cAHvqnZOHu0pKMSHMHec1DMt3Z83
	c21tuHnipxpRVCXOw6ybdnq0vfhRamwI8Sfwezc0Xrt5Pl9tpXhn8nAX9G95qOhjdiOopja6iXm
	o5Ni23OBYzQVcRyrv7DoavYEzashUq1kc1EDs82ak0nVagWtJQVSKMZ9A4limVmMnDPUY8ic45m
	+gQXNPrCXfy8tPIJfsfs/Y8QIGaP6gwLUMuAPf8xaSyHgF2lXxzotJLvADOU4tJ4frJLoDW/fPw
	N+RQX/gOYeYKAhq+TYAfJyH9K++e0JKqUsnctYVE9swIV0uZO+Q6g8icJhgxWsiTwNi7Sfuz0
X-Google-Smtp-Source: AGHT+IGY0jJKZuzg5cBn6OWbG6R201uLBsrUBGqGjWJDq5fPatZkBW3CCePUn7xOulrpnVL4dKdqdw==
X-Received: by 2002:a05:6871:29d:b0:29d:c764:f873 with SMTP id 586e51a60fabf-32264c1b8ccmr8882fac.31.1757105061686;
        Fri, 05 Sep 2025 13:44:21 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:52e:cda3:16cc:72bb? ([2600:8803:e7e4:1d00:52e:cda3:16cc:72bb])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-319b6062719sm4050901fac.23.2025.09.05.13.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 13:44:21 -0700 (PDT)
Message-ID: <fec12cd9-4709-42ca-b0e5-38f67b63a41c@baylibre.com>
Date: Fri, 5 Sep 2025 15:44:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: iio: xilinx: Add Documentation for
 Sysmon
To: "Erim, Salih" <Salih.Erim@amd.com>, "Simek, Michal"
 <michal.simek@amd.com>, Jonathan Cameron <jonathan.cameron@huawei.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "monstr@monstr.eu" <monstr@monstr.eu>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "git@xilinx.com" <git@xilinx.com>,
 Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>,
 "Kadamathikuttiyil Karthikeyan Pillai, Anish"
 <anish.kadamathikuttiyil-karthikeyan-pillai@amd.com>,
 Andy Shevchenko <andy@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>
References: <cover.1757061697.git.michal.simek@amd.com>
 <610690b9cc4ab3854b56df550b688b4cc72a5653.1757061697.git.michal.simek@amd.com>
 <20250905123006.000031a9@huawei.com>
 <5f21169b-39b8-4fcd-b7d7-e5bcb1885549@amd.com>
 <IA1PR12MB7736D056E505103AC246DC2E9F03A@IA1PR12MB7736.namprd12.prod.outlook.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <IA1PR12MB7736D056E505103AC246DC2E9F03A@IA1PR12MB7736.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/25 9:21 AM, Erim, Salih wrote:

...

>>>
>>>> +
>>>> +      xlnx,bipolar:
>>>> +        $ref: /schemas/types.yaml#/definitions/flag
>>>> +        description:
>>>> +          If the supply has a bipolar type and the output will be signed.
>>>
>>> This is very generic.  We have it described for ADC channels already
>>> in bindings/iio/adc/adc.yaml.  Why can't we use that here?
>>
>> no issue with it.
>> And likely
>> Documentation/devicetree/bindings/iio/adc/xlnx,zynqmp-ams.yaml
>> should deprecated it and start to use new one.
>>
>>
>>
>>> That binding does rely on matching against 'channel' for node names though.
>>> Where a 'type of channel' has been relevant IIRC we've always added a
>>> separate property rather than using the child node name.
>>
>> Is this related to supply/temp channel name?
>>
>> I think one issue with the binding is that current schema allows to define
>> supply@1  and also temp@1
>> but both of them have reg = <1> which is not allowed (duplicate unit-address).
>>
>> Salih: What does this reg value means? Is it physical address where that sensor is
>> placed?
> 
> Reg is offset index to offset base of the memory addresses for each. Supplies and temp values
> are located in different offsets.
> 

Sounds like the .dts should looks like:

	adc@f1270000 {
		compatible = "xlnx,versal-sysmon";
		reg = <0xf1270000 0x4000>;
		...

		supply-channels {
			#size-cells = <0>;
			#address-cells = <1>;

			channel@0 {
				reg = <0>;
				label = "vccint";
			};

			...
		};

		temperature-channels {
			#size-cells = <0>;
			#address-cells = <1>;

			channel@0 {
				reg = <0>;
				label = "aie-temp-ch0";
			};

			...
		};
	};

