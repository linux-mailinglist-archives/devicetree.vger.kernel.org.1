Return-Path: <devicetree+bounces-244538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D703CCA625E
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 06:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D94F6304F0B4
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 05:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD812DC76D;
	Fri,  5 Dec 2025 05:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AsWPZpwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B681514F8
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 05:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764912509; cv=none; b=lERw+0E5eahnWPl2bXlURHJ4lODRnGmKIc21JzDfYCvx+1FGjmSvs3C3tdabB5Uwe+WI638k6zejmYp63W3PU9Khws59VZgUnVCbsElhE8R7q8pgWAN1B2S1fgTsYW0sesLvTtcY5zUo1Kkk3G9k7Ea9ehRXZu9ZtMH3mnV7+0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764912509; c=relaxed/simple;
	bh=7gXapAmmg7JO5h5KwY3a05VY5D9/ieP/cPlJk8qhjEk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L34z3xv33GNJhsWypba/dBf0Cx1Dh8P5Gl0vcBXmv9Q6z/72u0Zs40DO2VzHuDP9fna2pPfGBY7N7HDJTjdOOk20Wg2DKDFwdqvqhiUEwMQRl4TQBtNuIbP8aNoIxcjlJWfokBHYeSP3BPs8w3r1UJuH09Q1uClpbgdMfxUzpyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AsWPZpwk; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2984dfae0acso29589925ad.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 21:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764912508; x=1765517308; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r7ukqL3aXDaN3u+bo8BQ1doi7S9aNK9IMN6SCGWsRl0=;
        b=AsWPZpwkHo2dSntuvVs8VHaIIVQ+sFO40+BZEzbcjJoZYalV5mW1l35U7P5QQxwjDF
         /tmbezy1iSXpUv5n9qz4+A2M9TUgUTfHeFY8i1A9VuOR71L6LnK9j5dlS+mMxhTUt0Jj
         yk79DggWert655ZqEiyAECoZy2N2JyKNRObwJdB5drLuhlp57f8Q2NbrXSc0et6nkblW
         q/h7IBw9sliLuMFxI1dOShDRbpa3/o1ghFLOJzsM4Ei1Q9giE/2Xe4NsaUpvwpt3oPfR
         olZzwNTtKTBjWrDEXfheMfi8BLaQJS/i1HUglVtqjXD+qBxKT7zSMvJ5SLbUK+h0moE7
         Qs3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764912508; x=1765517308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r7ukqL3aXDaN3u+bo8BQ1doi7S9aNK9IMN6SCGWsRl0=;
        b=RxK9ozY+e/PEjzJGG5p6r6kaCcC4v9qwfWrBawZTPCePVKMBGZExYZ/tAP18B7XVMY
         bJCS5Cxwg6CRAMR53V/70Y/XeAsbWTzXLLM5Gq5tL+E6FQaec/UUubpOqdQC4Ufmi3gf
         1hGffMMVyDlfy7xhLnglNbNpU6VIM6Vgbb7slzvdE6N1HNzFRh1Ri57ti8Tjk913Rn+R
         jMl4b8qJFMyUe90FNHz2JofHBY3yOaVvDKYVcd3CdBYdsnV8ronBQ+Ib+ZAtpscWCDtl
         PaPJHMIFwpPKJzvteyWreO09qdp4Mja1GNF+3/Pz15kqQjfpeAoC9fQ1904IXRmdFEDw
         ChJg==
X-Forwarded-Encrypted: i=1; AJvYcCXRY/+7J4CkmCreQHcQc2zKh2y/JXKDcJuO39D0NYWMnACbyLN8Rlc4oKc75y0rklhb2h9628ZN9zG0@vger.kernel.org
X-Gm-Message-State: AOJu0YxSLO/KuReGluAuSPO9s5jS9Tqfspp9UtEw6ILx9CUnqrmxnE7v
	MpZUM50w2watv0MT2V0pSGuiHWuCmLblJZoHYPw4frZbkxkTRwb0N0ER
X-Gm-Gg: ASbGnctkJVqvtpW+yvnRXwjQmPf5T0aJ77IFCJKc3Q9ZeKAdY101GziCUPa0qrkRr39
	O0iwG5Du2Ue1IwlQXgU+H0CUSqP//GBVCH0QKDJihppMhqVdIrblrGDbyAoV1UiGfxoXosu3V1O
	OFyvyIXzvfNkRq4GSzQWe0bSmX4u3NqSZjKjXspgGzPeuE1Izxvtd9DLC3ieK68iQj5qRdYFeQ3
	3pQpds3mZZT7rwrvicf1TTZj3Gx42sTA4XAk7kGp3+OTcSgBzqZfDiFh7rpzZp5L2Ox4fLZ/5yu
	c1NrzgdEKv1+OnVLlLDoMsdm3zFbAGorRft1Bb1hyH/lAvn8Kg64dw+gMQLg495N2DGxZxX4dZo
	nOQQowhQPgcYEiF8fww0Rb342/2jE0o4Jf7lIWIEzXnPEH0/KaRnAY0F1yDgoAXrLJjZQGMXDdk
	iOhmUCDKeZXzr6W35IYMH57hOxLaRo2C/026Q=
X-Google-Smtp-Source: AGHT+IHlHZvA4y6v+ARlFqNBbUIVjTd9uUIJEqpgZP4hHxgtuG/UijD7JAA4UG4LD9m1uwGAWQhsTw==
X-Received: by 2002:a17:90b:1802:b0:343:e082:b327 with SMTP id 98e67ed59e1d1-34947f0a2f2mr6100920a91.31.1764912507772;
        Thu, 04 Dec 2025 21:28:27 -0800 (PST)
Received: from [172.16.20.12] ([136.226.244.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494e836bc3sm3400589a91.1.2025.12.04.21.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 21:28:27 -0800 (PST)
Message-ID: <9b0c7cac-3577-4190-883b-7de26790b8bc@gmail.com>
Date: Fri, 5 Dec 2025 10:58:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251107105735.1491273-1-tessolveupstream@gmail.com>
 <20251107105735.1491273-3-tessolveupstream@gmail.com>
 <badmoityubqmjsxune27vrh2e6htwkhvnak4uj7iiixnxhjpkm@qi56e6kilyt2>
 <db3edb31-4a1c-4512-ac46-ca3b4e9f187e@gmail.com>
 <CAO9ioeUVx_qf3no9aLgZ3OQQPQ7nG-2aTx8SHaEN5DUf02USWA@mail.gmail.com>
Content-Language: en-US
From: Anusha Ajithkumar <tessolveupstream@gmail.com>
In-Reply-To: <CAO9ioeUVx_qf3no9aLgZ3OQQPQ7nG-2aTx8SHaEN5DUf02USWA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03-12-2025 02:36, Dmitry Baryshkov wrote:
> On Tue, 18 Nov 2025 at 12:16, <tessolveupstream@gmail.com> wrote:
>>
>>
>>
>> On 14-11-2025 01:38, Dmitry Baryshkov wrote:
>>> On Fri, Nov 07, 2025 at 04:27:35PM +0530, Sudarshan Shetty wrote:
> 
>>>> +
>>>> +&uart0 {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_1_hsphy {
>>>> +    vdd-supply = <&vreg_l5a>;
>>>> +    vdda-pll-supply = <&vreg_l12a>;
>>>> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
>>>> +
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_qmpphy {
>>>> +    vdda-phy-supply = <&vreg_l5a>;
>>>> +    vdda-pll-supply = <&vreg_l12a>;
>>>> +
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_1 {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&usb_1_dwc3 {
>>>> +    dr_mode = "host";
>>>> +};
>>>> +
>>>> +&usb_hsphy_2 {
>>>
>>> So, the labels are usb_1_hsphy, but usb_hsphy_2? That's not logical,
>>> please fix one of them. Then please fix the order of nodes here.
>>
>> The node names come directly from the included talos.dtsi, where they
>> are defined as usb_1_hsphy & usb_hsphy_2.
>> To avoid breaking inherited definitions, we kept the same labels
>> in our board DTS.
> 
> Please fix them in the base DT.
>

The inconsistent naming originates from talos.dtsi, which is 
outside the scope of this patch series. Modifying these labels 
in our board DTS would break the inherited node references 
from talos.dtsi. >> However, I will reorder the nodes so they appear in a logical and
>> consistent sequence.
> 
> This is a prerequisite, no questions.
> 


