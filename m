Return-Path: <devicetree+bounces-174564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA240AAD8EC
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 09:51:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 405151C24A7D
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 07:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 184FF220F56;
	Wed,  7 May 2025 07:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mhrnPEFH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552EA20FA86
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 07:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604148; cv=none; b=E486b7d2iZuSoFKJp0j8Do4Y44eTK834VdYRSlCUFp7AfSMs9c5rmwmmLPxDa5+/MV4yRYxZVGNIf+cdPp17Rknr9z2i82DwJL2/d5NCJTW/Fh0M/+8X1uE+b0ali38Xh4KXsPgOczPq7sEsmQKpPxcM0xAV14i5dVYkyyBEjdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604148; c=relaxed/simple;
	bh=tWI5HjmnaAvX3rKLOw+VlT5HYZ0VV1JDXBn/CF3fvwo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ceZ4KkbN73b8kzVQuBTNyzvKhafTSwdDeSvm2GRpUxKRTft9ERSk/iOx1Eai3U6hTybheUutH+NPgRr2CsaYIu+fVCwHY7iqJoQFol/SsNVmZS3l/DEzwekJGzK2WKnCm7LQ9+Lnm+OgiX52Ylakp0JZbhQ3oydVnEwaTAs5OfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mhrnPEFH; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7406c6dd2b1so630670b3a.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 00:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746604144; x=1747208944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uBQhgtS9ybuOxHj6AdnuF/Cq3dS0a7fHWP3yItbSd2c=;
        b=mhrnPEFHTNO7iyaPgYI+tD96+oXpIccKdMpKzufwTepE3tnTGX7kf4MaXFviBt0dBa
         s7A+7oyL/mTPe/sSLq7AWuUzalBrP/RHt9HWr9VZBNZKZCbPi4UnmWt7huSjhRSgmi6m
         PFf+2C6ZyNdcvjAByiw4+Mp/QXBGEmjE9JSdBi7iyFn4d0UdXB/kGNp5hrTor0Hvw9RV
         omK/bGtsZVfLVBrODuOk2rq1xCl3buB16KKaenaDR8QdZU7rjNY82XlQSX6qGMjtaXHx
         cnnNuUt2uOn33ScUb5u9tAltFWJkk+UXi/u9K5UGzOYXuNDO9KEj2/wyIX6goYHVOoMV
         r6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746604144; x=1747208944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uBQhgtS9ybuOxHj6AdnuF/Cq3dS0a7fHWP3yItbSd2c=;
        b=GTZwD3T3ySAgFnWkiu8grq49GTrrFhqsGOrmWt4Y7XclUuFFDexZ0PNHP88+49f2uH
         7kpMjbXZMC/mXcjmO0DNRQLyUFffvuEWPL9hmYWLvsmIZGBnqy68yAIR/OYUD5/0adFr
         8/14wSteJfIxbFMjyvP6pNQZ+qMw7P9Hv0530Dic1AqIFONTJyucVEfGPBxuXdndMMZS
         9htDtFNU8kLu+7k/90YGpVsiiEQPSb+8L1uFC00TXrrdQbN2l0vLd5fPy9D9dNAgp3Is
         /lh0Z2V+SIRESDGO/iJ6O94lnsBObZoZ+qLVdSiiMmh+m/vqlgRHS6mV3T6xXS1Ve3Mz
         26GA==
X-Forwarded-Encrypted: i=1; AJvYcCXaWLaR48CUwrLRvXQJtvbOQ6lCiiF1bepwSLsb1ty3LzvW4abiWg8DcRB1lNTsSAAkLlQ/fpCLUupi@vger.kernel.org
X-Gm-Message-State: AOJu0YzVGafZoEdIaFADly5gsMBcuRw1dj6S9VHcp5oqjuu6ATmhOm9O
	m7TDQbJRyPxeCIyF3FiTQyXB0Ob/tHOWHXeb6hXO/2SwPhbPKhqdWQXU6DEuKFY=
X-Gm-Gg: ASbGnctXUVIdHC0hBu4/egNU5LqmIRP/MimlZzLwmyqQ6sMbECdrSdZv8CKHnwmUZ7X
	qBQ8lK13uiVitqPaHoFyNQW79O99SOMWQaUHGXI6xE47mkzPigQOKnue2icrrvjdeCiM3Wi4yac
	PS/xrIrwWmrzv6dmT/ffx+NgWXby1vHbxY0RCC8vxtT2BIQw+vV2bWJ/zhyrOp/xImuCuV87JH5
	v3vTdxG9oyOBkQixteQ71cV7z7zu5Jndqq84tpikFqDgfq5LvxYbzoi01oTeGB77AQtRf/0JX+g
	zTXngCnUEBSJE8TaJUvBc+UblI+m91ry0Gs3vG0diTkNMOupf6W9NStvfdaP1/1Cqy7o1cc7RBd
	6IFhIIjTly4vP4Jg=
X-Google-Smtp-Source: AGHT+IHjHRiwgANkAJ3S9Z01d1Zgt2+B4LvIz1I6F5aV28W7g29cSTSyqCEScOdJG7/V14ux2621Pw==
X-Received: by 2002:a05:6a21:101b:b0:1ee:a410:4aa5 with SMTP id adf61e73a8af0-21496321efamr2808776637.17.1746604144528;
        Wed, 07 May 2025 00:49:04 -0700 (PDT)
Received: from [192.168.5.157] (88-127-185-231.subs.proxad.net. [88.127.185.231])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dee10bsm10442690b3a.76.2025.05.07.00.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 May 2025 00:49:04 -0700 (PDT)
Message-ID: <50ef47ca-1054-4b5a-a7d7-56e6cfcb863e@baylibre.com>
Date: Wed, 7 May 2025 09:48:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt6357: Drop regulator-fixed
 compatibles
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fabien Parent <fparent@baylibre.com>, Conor Dooley <conor+dt@kernel.org>
References: <20250502-mt6357-regulator-fixed-compatibles-removal-v1-1-a582c16743fe@collabora.com>
 <174652097090.119919.16240846809714782858.b4-ty@collabora.com>
 <99febf26-2ada-4fed-b4b3-596ac4abf581@baylibre.com>
 <1e8b80c9-d491-4b71-b424-e2322c711fd3@notapiano>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <1e8b80c9-d491-4b71-b424-e2322c711fd3@notapiano>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 06/05/2025 23:20, Nícolas F. R. A. Prado wrote:
> On Tue, May 06, 2025 at 11:30:08AM +0200, Alexandre Mergnat wrote:
>> Hello Nícolas and Angelo,
>>
>> On 06/05/2025 10:42, AngeloGioacchino Del Regno wrote:
>>> On Fri, 02 May 2025 11:32:10 -0400, Nícolas F. R. A. Prado wrote:
>>>> Some of the regulators in the MT6357 PMIC dtsi have compatible set to
>>>> regulator-fixed, even though they don't serve any purpose: all those
>>>> regulators are handled as a whole by the mt6357-regulator driver. In
>>>> fact this is the only dtsi in this family of chips where this is the
>>>> case: mt6359 and mt6358 don't have any such compatibles.
>>>>
>>>> A side-effect caused by this is that the DT kselftest, which is supposed
>>>> to identify nodes with compatibles that can be probed, but haven't,
>>>> shows these nodes as failures.
>>>>
>>>> [...]
>>>
>>> Applied to v6.15-next/dts64, thanks!
>>>
>>> [1/1] arm64: dts: mediatek: mt6357: Drop regulator-fixed compatibles
>>>         commit: d77e89b7b03fb945b4353f2dcc4a70b34baa7bcb
>>
>> I'm surprised that patch is applied after the Rob's bot reply.
>> Also, I've some concern:
>>
>> On 02/05/2025 17:32, Nícolas F. R. A. Prado wrote:
>>> Some of the regulators in the MT6357 PMIC dtsi have compatible set to
>>> regulator-fixed, even though they don't serve any purpose: all those
>>> regulators are handled as a whole by the mt6357-regulator driver. In
>>> fact this is the only dtsi in this family of chips where this is the
>>> case: mt6359 and mt6358 don't have any such compatibles.
>> This is the only dtsi in this family to do this, yes. But according to
>> all other vendor DTSI, which use regulator-fixed when a regulator can't
>> support a range of voltage, IMHO, it make sense to use it, isn't it ?
>> If other DTSI from the family of chips doesn't, why don't fix them to be
>> aligned with the other families?
> 
> Well, but this isn't just like any other regulator-fixed in a DTSI. In this case
> it is part of a multi-function device (MFD) and so it gets probed by a parent
> node. That's the source of the issue, because then no driver gets assigned to
> the node itself.
> 

Ok, thanks for the details. After Quick check, Maxim does't use "regulator-fixed"
in the MFD too.

>>
>>>
>>> A side-effect caused by this is that the DT kselftest, which is supposed
>>> to identify nodes with compatibles that can be probed, but haven't,
>>> shows these nodes as failures.
>>>
>> I lack of data about kselftest, but according to what is reported here, it
>> appear to me this is something which could be fixed in the test itself. It make
>> sense for a DTS, but not for a DTSI because it expose HW capability of a
>> device, not the board, so it isn't mandatory to probe all DTSI node.
>> Again, I'm not an expert, the test shouldn't show the DTSI node as failure,
>> but maybe more a warning.
> 
> The DT kselftest is a run-time test, so it wouldn't be able to distinguish
> between DTSI and DTS. But in any case, we do want to check that devices from
> DTSIs have probed, a lot of the devices come from them. When a particular board
> doesn't actually have a node from a DTSI present then the node should be
> disabled, and in that case the kselftest ignores the node.
> 
> It would be possible to ignore this particular compatible, "regulator-fixed", in
> the kselftest, if it is a compatible that can't be expected to be probed. Of
> course that would mean that all the other regulator nodes that aren't MFD
> children and do get probed by that driver would no longer be checked by the
> test.
> 

Yeah this isn't the wanted behavior.

>>
>>> Remove the useless compatibles to move the dtsi in line with the others
>>> in its family and fix the DT kselftest failures.
>> If you remove compatible from these regulators, I think mediatek,mt6357-regulator.yaml
>> documentation file should be modified to be consistent and avoid dt-check error.
> 
> Ah, yes, totally agreed, I seem to have missed running dtbs_check on this patch,
> sorry. Indeed now either the binding needs to be fixed or the patch reverted.
> 
> I believe the most reasonable option would be to update those regulators in the
> binding to reference the generic regulator binding, ie:
> 
> diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml
> index 6327bb2f6ee0..9308008f420e 100644
> --- a/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml
> @@ -33,7 +33,7 @@ patternProperties:
> 
>     "^ldo-v(camio18|aud28|aux18|io18|io28|rf12|rf18|cn18|cn28|fe28)$":
>       type: object
> -    $ref: fixed-regulator.yaml#
> +    $ref: regulator.yaml#
>       unevaluatedProperties: false
>       description:
>         Properties for single fixed LDO regulator.
> 
> as well as updating the examples in the YAML. The fixed-regulator.yaml binding
> doesn't seem to provide any additional checks compared to regulator.yaml,
> besides enforcing the regulator-fixed compatible, which in this case doesn't
> serve any purpose.
> 
> Thoughts?
> 

Yes, IMHO, this yaml change should be enough.

-- 
Thanks,
Alexandre

