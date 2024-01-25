Return-Path: <devicetree+bounces-34890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FAB83B93B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 06:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 094721C23114
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 05:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8490101FA;
	Thu, 25 Jan 2024 05:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="C4p7mfyS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB7A101D4
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 05:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706161990; cv=none; b=rYh0x0ycHx3HpgxmyJ9bkFY0voVHwBiy7PQaV7JlsDTaoa7TOrT/tOmt7NflLoBaUIoEnpFLUbhBNen3ozMyFP5f2lO1O39bA0yAW0CmbbUpLZkazwFwwx+YIWCWvSujqXcI9kVqdl7UZ7e9aC0DHS45iVSK4wCJbsEH++DwJjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706161990; c=relaxed/simple;
	bh=y4YiITEiXkJuypeaqWZY/EMkckgLMcZM093ODuOqc0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N9JVVQw+d+8DJ7NzURtX03jFuMsKyYuA6yOkaJxkJ/ukveuxMy0JKPRnsQDhGv/UUPP3dFpRwlV9JAtuU/C1QCpVVbEbe48OwbtOtmgTcgTXmGQx6JkXvV4Te9yBs5tbEBBkTq2rQ1ktgVexh2qXqu5SXUASO059S4Db9Xo+6UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=C4p7mfyS; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6ddcfbc5a5fso173289b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 21:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706161988; x=1706766788; darn=vger.kernel.org;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YfFEjzpmNQyjtXoXu9oemWTlPAd2KmM12dHly/pQNfE=;
        b=C4p7mfySbPP3jKpnlSbNiyKwRbCT/uoamIB447ZWjSPycrO4n0V5ZFNs2IOweyHfA2
         OaUwq8Fg06sdr2qObv5QDvycqgeJkCtY2KVeLlw8HFDnvXJPBMcMegP098j9DqczZXMN
         Ir4d0TPNXcBDzFO2JIoDg89dtgWcje/6pR1H0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706161988; x=1706766788;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YfFEjzpmNQyjtXoXu9oemWTlPAd2KmM12dHly/pQNfE=;
        b=DFsBmL/j3weKo/I7WpSAiBmnKVPRVRRvSd1mdJAQg39Ccsjc5EX+V7tuKjiJVBlC5L
         kT4gH/6i2m0LGwgnCsZHtFVOqES5eMd9wmjbCviL0j7MwvEox8JilI6RbyZ7cbpehIcV
         M4/PFUDY0aOMfSaDd9ArdBARfWjUtPCoS2qRy3fZaUF85BHgbgawCCtcEU6YiN1OUw+4
         B17dFWnByjeTBeEQ0i9porYAAnrEnKXbAZ6uchmqcexCw2+V+waCjLPshASNNDZdyYvu
         UBI03TGTVxB0orSpyv757PdfCzAIDCwKPAO+/5sCb2PuQa2vzl1R/7UnTP+cADplVJf8
         BnsA==
X-Gm-Message-State: AOJu0YyFzyoxXPP3FgAdWc3rZ61Ka5hbzwJ3pD+rghRf2VTTuUiiPMwu
	NlM99sg1auQ6KNhIT2PuTovF680pkB3HTNGo4o9chStDTbo09wDNlHkpA48Rng==
X-Google-Smtp-Source: AGHT+IFVZZecFQgKFmbxLksLm9steK4CrnGesnj0C2WA/gOoAGVP8v7NT6I3Q1CUsJzodIEyTbcpPw==
X-Received: by 2002:a05:6a00:3d04:b0:6d9:a20f:a796 with SMTP id lo4-20020a056a003d0400b006d9a20fa796mr411213pfb.60.1706161987881;
        Wed, 24 Jan 2024 21:53:07 -0800 (PST)
Received: from [192.168.52.129] ([192.19.222.250])
        by smtp.gmail.com with ESMTPSA id x21-20020a056a000bd500b006dda214d296sm2237069pfu.124.2024.01.24.21.53.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 21:53:06 -0800 (PST)
Message-ID: <722d6bdf-9a43-436d-a9e2-4c21e1deb8c3@broadcom.com>
Date: Wed, 24 Jan 2024 21:53:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/10] ARM: dts: broadcom: bcmbca: Add NAND controller
 node
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, David Regan <dregan@broadcom.com>
Cc: dregan@mail.com, richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, joel.peshkin@broadcom.com,
 tomer.yacoby@broadcom.com, dan.beygelman@broadcom.com,
 anand.gore@broadcom.com, kursad.oney@broadcom.com, rafal@milecki.pl,
 bcm-kernel-feedback-list@broadcom.com, andre.przywara@arm.com,
 baruch@tkos.co.il, linux-arm-kernel@lists.infradead.org,
 dan.carpenter@linaro.org
References: <20240124030458.98408-1-dregan@broadcom.com>
 <20240124030458.98408-3-dregan@broadcom.com> <20240124183008.04a1bcb0@xps-13>
 <2c10a764-f74f-45b2-8bba-77c40468f4b5@broadcom.com>
 <85c97d00-a973-46c6-974c-3dfa587ae873@broadcom.com>
From: William Zhang <william.zhang@broadcom.com>
In-Reply-To: <85c97d00-a973-46c6-974c-3dfa587ae873@broadcom.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000003d5f48060fbecbe8"

--0000000000003d5f48060fbecbe8
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 1/24/24 19:34, Florian Fainelli wrote:
> 
> 
> On 1/24/2024 7:09 PM, William Zhang wrote:
>> Hi Miquel,
>>
>> On 1/24/24 09:30, Miquel Raynal wrote:
>>> Hi David,
>>>
>>> dregan@broadcom.com wrote on Tue, 23 Jan 2024 19:04:50 -0800:
>>>
>>>> From: William Zhang <william.zhang@broadcom.com>
>>>>
>>>> Add support for Broadcom STB NAND controller in BCMBCA ARMv7 chip dts
>>>> files.
>>>>
>>>> Signed-off-by: William Zhang <william.zhang@broadcom.com>
>>>> Reviewed-by: David Regan <dregan@broadcom.com>
>>>> ---
>>>> Changes in v3: None
>>>> ---
>>>> Changes in v2: None
>>>> ---
>>>>   arch/arm/boot/dts/broadcom/bcm47622.dtsi    | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm63138.dtsi    | 10 +++++++++-
>>>>   arch/arm/boot/dts/broadcom/bcm63148.dtsi    | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm63178.dtsi    | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm6756.dtsi     | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm6846.dtsi     | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm6855.dtsi     | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm6878.dtsi     | 17 +++++++++++++++++
>>>>   arch/arm/boot/dts/broadcom/bcm947622.dts    |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm963138.dts    |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm963138dvt.dts | 12 +++++-------
>>>>   arch/arm/boot/dts/broadcom/bcm963148.dts    |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm963178.dts    |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm96756.dts     |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm96846.dts     |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm96855.dts     |  4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm96878.dts     |  4 ++++
>>>>   17 files changed, 165 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm47622.dtsi 
>>>> b/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>>>> index 7cd38de118c3..55ff18043d96 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>>>> @@ -138,6 +138,23 @@ hsspi: spi@1000 {
>>>>               status = "disabled";
>>>>           };
>>>> +        nand_controller: nand-controller@1800 {
>>>> +            #address-cells = <1>;
>>>> +            #size-cells = <0>;
>>>> +            compatible = "brcm,nand-bcm63138", 
>>>> "brcm,brcmnand-v7.1", "brcm,brcmnand";
>>>> +            reg = <0x1800 0x600>, <0x2000 0x10>;
>>>> +            reg-names = "nand", "nand-int-base";
>>>> +            brcm,nand-use-wp = <0>;
>>>> +            status = "disabled";
>>>> +
>>>> +            nandcs: nand@0 {
>>>> +                compatible = "brcm,nandcs";
>>>> +                reg = <0>;
>>>> +                nand-on-flash-bbt;
>>>> +                brcm,nand-ecc-use-strap;
>>>
>>> Describing the NAND chip in a SoC DTSI does not look relevant to me.
>>> Even more if you add something like this nand-ecc-use-strap setting
>>> which is very board dependent.
>>>
>> I am not sure if I understand you comments correctly but are you 
>> suggesting to put this whole nand controller node into each board dts? 
>> We have other ip block nodes like SPI, uart in this same soc dtsi file 
>> too.  For all the bcmbca soc dtsi I am updating here(and its board 
>> design), we always use the strap to for ecc setting.  So I thought it 
>> should be okay to put brcm,nand-ecc-use-strap in the default dtsi 
>> file. For any board that uses the raw nand nand-ecc property, the 
>> board dts can do so and override the brcm,nand-ecc-use-strap setting.
> 
> I read Miquel's comment as meaning that the nandcs aka the NAND 
> chip/flash part description should be in the board .dts file, while the 
> controller itself can remain in the .dtsi file with its status = 
> "disabled" property.
> 
> Are there customer boards, that is non reference boards that might chose 
> a different chip select number and/or not use the strap settings?
In BCMBCA SoC, there is only one cs and customer design also have to use 
strap for the bootrom to boot up properly.  They can override it with 
dts in linux but I don't think any customer would do that.

Maybe the nand-on-flash-bbt could be possible item that customer may 
have to set it differently if they don't follow our reference software 
design.

I will move the nand-on-flash-bbt to the board dts but I would like to 
keep the other default nandcs settings in SoC.dsti if that is not too 
out of the conventional rule and Miquel is okay with it.

--0000000000003d5f48060fbecbe8
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
YDZuuBJwnyCzevMoPtVYPharioL5H3BRnQi8YoTXH7/uRo33dewYFm474yFjwwnt82TFtveVZkVq
6h4WIQ4wTcwFfET8zMkELnGzS5SHCl8sPD+lNxxJ1JDZYwIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUq65GzwZxydFHjjYEU/9h
xHhPWlwwDQYJKoZIhvcNAQELBQADggEBAA2hGG3JPAdGPH0ZdohGUCIVjKz+U+EFuIDbS6A/5jqX
VhYAxZlzj7tSjUIM7G7IhyfqPC46GKJ/4x+Amz1Z6YxNGy71L68kYD6hIbBcA5AM42QBUufly6Oa
/ppSz3WoflVyFFQ5YXniZ+eU+2/cdnYZg4aVUnFjimOF5o3NfMLzOkhQNxbaDjFUfUYD8hKmU6v4
0vUBj8KZ9Gi1LIagLKUREn8jku0lcLsRbnJ5Ey5ScajC/FESPyYWasOW8j8/1EoJksmhbYGKNS6C
urb/KlmDGfVrIRYDbL0ckhGQIP5c6L+kSQZ2sHnQK0e0WgIaZYxaPYeY5u0GLCOze+3vyRMxggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxuh2XG3FXRL1W
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIA2FbqlycFBo3srA3g21sbmM57UX
7AocF+HoSkYLHLDAMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0
MDEyNTA1NTMwOFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQCRIj8V1J7yrBylLGVWDP1ZRYaNNJAueX4jJtZ1PDaeS6sj
b6ZZ+s2EYsWG/681LOsDq6I82DvWhXSroTay5tuVwndjUj8J4kMJ/6/eFWD1MQdkFDffRcF8PJeg
iQISHEx7CM2xb3Chh++n7fsxu7WmJJjl5s4vdZeVOTMb0bNFOgo4oW7k3WL1kX78LQ+1XkMUL3LU
C2tTT7dkCyivuUnellJD0ZODS//kl1+pkaGrF9/+mR0LG7rU98NSNTmokkmiIkGA4fWJdY53f9BR
aGJmhxpXGgWWbpaLsU8ajKNgsgt8vNOxp+mEXFM+1UmfWyAo7o4Dnm7oP3bX0lOamEDt
--0000000000003d5f48060fbecbe8--

