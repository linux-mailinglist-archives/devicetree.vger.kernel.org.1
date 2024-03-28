Return-Path: <devicetree+bounces-50421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C97D387BA3C
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 10:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59C5AB212F4
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 09:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4026CDAB;
	Thu, 14 Mar 2024 09:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TFRhgQCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFB546A2
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 09:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710407918; cv=none; b=Z8PHFAkf1z6eHqCLYAxbJeTK01VEIK88NELSSdiI2lAVak4hTsXpI4Z0Fpdk5TdmmQDnC0mOq/8L/izLXfwETRdTKOXRhS4OO4FD/F9rLIKtC0qJO2HC51CG+BdbCkB1WjRrupPuasWvPRrWJdKjGqWIHuyDtWC+yw6KfrHKoEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710407918; c=relaxed/simple;
	bh=6LioQ8SiqW7mEySzp3oMriDdwYTagl5EUgsfGYv1WHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IX/zFtXCmdBCbxFtA8nzx2VfNOqOvS8zWcNUi6Fx6KdwS8sj7w3OLXrcUgUfNoOwWI3hp0QWrx1GboLeEN5Xwm4WfyKacMxaYUvSBDgICeKr6dh6M+zDs5vA8/VCf4EiRyHH94VXnsOGRG4N2fciMpm56DMQAVox/181JXLXUJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TFRhgQCP; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d46c99eb07so8745081fa.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710407914; x=1711012714; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=noVMlxbR0huw5UJpbPwBwYal3GKYvHZ6/X0NlMoLt/Y=;
        b=TFRhgQCP0UnLbaXB4/2mIF/j7zDXm43jtuJuGgzsL/++o6Ha0roAnh/57RSf6hTXtC
         iqVJPGrw5Ws8hWY2Pvz5wRSYWTAdAeYIVsUdUda7aITDGOH4M6I1kMiSjotHDlNhq6NV
         +qfiVLmmA0Uf9zqBX0Wh6zeYCi7DSBe/0yIlv3d3KePY/fCR8Nc4u3lss/FnpjP9zjU1
         HMRIIQwOIPhszYXmvH3WOVNGU5GaQYBar2Og4FWldCoog/vQBHuN548KoCM8baG8Quvx
         3B9xqJPXQbP2BTG2Td1CE3K0XSVTnyf/UnHBBMbp9wrnQnPr3d/MLKm6USTBOKbTk/sO
         P8Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710407914; x=1711012714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=noVMlxbR0huw5UJpbPwBwYal3GKYvHZ6/X0NlMoLt/Y=;
        b=I1FQUSStgSSE3LBhcEoBcj5eP4NQ36pYSUgrXosnj8VILEEy8Q9gSqu2VVXGIpBAX/
         yFOlW1p/vVhyfm54JqdKzz5vMBwD7q0AdSYulb0sMb2MgRnPPuxNBbQh0m5ye0fOZMx0
         a34pYW9nZq6Y3H45qt9TN54o2EgfGPi3H3TJZolAQ9OnpiYdSE4r7kLg1h23xHtDy5oG
         /nAWPQ6BFGqeya7jyyHQGkIqAjBeRxaR8JfOaeVrx3EUO/Odl3LOwkCx8SPNerCmIYrs
         wQstWllGkLsxJOF/KeHTcHAWvfgBHIAKeHGYHvzXnaoqQh7iQDcviJ2EA/Ivsw2AkPau
         jRwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsh8004bny2/WX+OXKR8ic3/GiKjgr1KxBmXP1+rCEkR/2SI1UrHN66QjKrtXU1UQ6aBj0//wzbyYyeYasKSIrMBZDRMNkIaRDnA==
X-Gm-Message-State: AOJu0YzYCvO8twzcY9V00Fh+azSUzHkVysR0ZnhrrUtRoFRMU05BQAtK
	z+sXVUuPotmSByJhy8wpAKq2okAp+XH4c9uJqW1GpkkXEmj/WO31t4hG1k364uA=
X-Google-Smtp-Source: AGHT+IEW9gCiZta7hHYCblKo4F5fpIBSlZsSIdmDSLDdyis2WfGhsR/LdESPU04YGU9cZUHjJIGy+g==
X-Received: by 2002:a2e:88d6:0:b0:2d4:25df:b8eb with SMTP id a22-20020a2e88d6000000b002d425dfb8ebmr709480ljk.41.1710407914046;
        Thu, 14 Mar 2024 02:18:34 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id p10-20020a2e804a000000b002d0bf097af1sm53315ljg.123.2024.03.14.02.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 02:18:33 -0700 (PDT)
Message-ID: <d82ab1f8-e677-485f-9a6b-4115acfd7239@linaro.org>
Date: Thu, 14 Mar 2024 10:18:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
To: Sumit Garg <sumit.garg@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, stephan@gerhold.net, caleb.connolly@linaro.org,
 neil.armstrong@linaro.org, laetitia.mariottini@se.com,
 pascal.eberhard@se.com, abdou.saker@se.com, jimmy.lalande@se.com,
 benjamin.missey@non.se.com, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, Jagdish Gediya <jagdish.gediya@linaro.org>
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org>
 <c0e10cbf-c6f3-4b0c-8616-983da2a40236@linaro.org>
 <CAFA6WYNMjCaa0FKjNv6a8VFkco3=GBfgWNDuckGZdiZ9dGmHgg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAFA6WYNMjCaa0FKjNv6a8VFkco3=GBfgWNDuckGZdiZ9dGmHgg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/14/24 10:04, Sumit Garg wrote:
> Hi Konrad,
> 
> On Wed, 13 Mar 2024 at 18:34, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 3/13/24 13:30, Sumit Garg wrote:
>>> Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
>>> Box Core board based on the Qualcomm APQ8016E SoC.
>>>
>>> Support for Schneider Electric HMIBSC. Features:
>>> - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
>>> - 1GiB RAM
>>> - 8GiB eMMC, SD slot
>>> - WiFi and Bluetooth
>>> - 2x Host, 1x Device USB port
>>> - HDMI
>>> - Discrete TPM2 chip over SPI
>>> - USB ethernet adaptors (soldered)
>>>
>>> Co-developed-by: Jagdish Gediya <jagdish.gediya@linaro.org>
>>> Signed-off-by: Jagdish Gediya <jagdish.gediya@linaro.org>
>>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>>> ---
>>
>> [...]
>>
>>> +     memory@80000000 {
>>> +             reg = <0 0x80000000 0 0x40000000>;
>>> +     };
>>
>> I'm not sure the entirety of DRAM is accessible..
>>
>> This override should be unnecessary, as bootloaders generally update
>> the size field anyway.
> 
> On this board, U-Boot is used as the first stage bootloader (replacing
> Little Kernel (LK), thanks to Stephan's work). And U-Boot consumes
> memory range from DT as Linux does but doesn't require any memory to
> be reserved for U-Boot itself. So apart from reserved memory nodes
> explicitly described in DT all the other DRAM regions are accessible.

Still, u-boot has code to fetch the size dynamically, no?

[...]

>>
>>> +
>>> +             compatible = "adi,adv7533";
>>> +             reg = <0x39>;
>>> +
>>> +             interrupt-parent = <&tlmm>;
>>> +             interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
>>
>> interrupts-extended
>>
> 
> Please see Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml.

Okay, and what am I supposed to see there?

Konrad

