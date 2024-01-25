Return-Path: <devicetree+bounces-34881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A80683B85A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 04:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B6421F26542
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 03:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 837178495;
	Thu, 25 Jan 2024 03:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="hiPPHMNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3D68829
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 03:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706153685; cv=none; b=QqhnK1tghM8sQvMBhJQgD/Me2Yvm9aZOfzPjg9bGDESlGClRg+9eriRxI6/vzo/wanFB4GWBjqPIySVjAvjyNEJ8fMmL0rkq4ob5HwBbd2qzi1rlHgZmiT2xIdOWuOoqRf/bu6mwPlGo3ahFaCr/VMmDFGeqMD/8uOF6WicXq6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706153685; c=relaxed/simple;
	bh=izZMSPnczApO+Z1ipscZTUNC2g2oigntC6abgEMbNjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BBC0P6QgSAm7nSb6wWFyie672wAmVbbBruBgeX+h4JAE6C3FWJgB7SVvBR6lIMUGo8w8J6p0h/8KQxkJ1a44xbs6oJi/ex0sUO6FHj8MUk2m/Q99C5H8uCbxS/TBpxZYJIMjtlarlOoGoE3d++Lws2/+BnPodHv+KS8oNZG3M50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=hiPPHMNA; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-29065efa06fso3792729a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706153682; x=1706758482; darn=vger.kernel.org;
        h=in-reply-to:autocrypt:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jeJy5agX/rbPajzpSFjPybYIA248ng33wQQwPk0Xp5E=;
        b=hiPPHMNAO1VP/lU8ZWModoeH6WFKLOtLDXIAzWiLKWS8AwHt8UpMvrZYqqb67/UXgK
         7Mdi3moP39WlOR5msj2WswFt1gVwLVAh8vhzWLj7Aj9h65uimINcjRgWdrgiwVNO7acy
         ww1zRRjtYuYwOW5DwmUMDJlM+Xf5EeQYfOjZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706153682; x=1706758482;
        h=in-reply-to:autocrypt:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jeJy5agX/rbPajzpSFjPybYIA248ng33wQQwPk0Xp5E=;
        b=PaGXSFrgSOSIz1DL4bKlVOpea3m9hZK0Kh18Qubv9zvEUgLHHEQXuQSL02gy2Et6eb
         /e7kD7pvlQTmanLzXVR3pOisuzddEY6+YUe0UO+iS/vEO7a00Uj31PnN4sA2cQVtPe61
         wnUy3NY6fZtdy8p0DxNsoyFxgTlQQP8WO5WnRi0j3rm6WzClCAy5HfT/x6Ns4Qit9mRW
         IlOeUZqSmRBgP4ZiMDmKv0fkWqjjMykDeXw79kB/Ckb8xdTuWGbIVrbnR4jWma/CC9+I
         KMMFslUUU/jDB9HnQAXcqPc2Y11HzcSfqUCtWKAWrDKwAq+1vg/Sfim/PMDOUKre0kcr
         /UnA==
X-Gm-Message-State: AOJu0YwGJfu95Xjhuxc2b6Q9jfPMt5zrfwJK8VKiXIEQRMRarNBw7cd/
	zDvxiyhtUt9pthZ3/1rUfqMhXDEg2U4338HBPSPmDcMmS2fGDUEdCsrFBCzdeg==
X-Google-Smtp-Source: AGHT+IFSie/ymxfshlypLILqg9igru5+Y9hk1YMZbjvbq/IksLaWGNB5rBxonPd7yMuGaBB40FyUiA==
X-Received: by 2002:a05:6a20:e110:b0:19c:4c51:6588 with SMTP id kr16-20020a056a20e11000b0019c4c516588mr591191pzb.77.1706153682341;
        Wed, 24 Jan 2024 19:34:42 -0800 (PST)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id kr3-20020a056a004b4300b006d9b4303f9csm14455255pfb.71.2024.01.24.19.34.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 19:34:39 -0800 (PST)
Message-ID: <85c97d00-a973-46c6-974c-3dfa587ae873@broadcom.com>
Date: Wed, 24 Jan 2024 19:34:37 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/10] ARM: dts: broadcom: bcmbca: Add NAND controller
 node
To: William Zhang <william.zhang@broadcom.com>,
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
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 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
In-Reply-To: <2c10a764-f74f-45b2-8bba-77c40468f4b5@broadcom.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000003038ee060fbcdc1d"

--0000000000003038ee060fbcdc1d
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 1/24/2024 7:09 PM, William Zhang wrote:
> Hi Miquel,
> 
> On 1/24/24 09:30, Miquel Raynal wrote:
>> Hi David,
>>
>> dregan@broadcom.com wrote on Tue, 23 Jan 2024 19:04:50 -0800:
>>
>>> From: William Zhang <william.zhang@broadcom.com>
>>>
>>> Add support for Broadcom STB NAND controller in BCMBCA ARMv7 chip dts
>>> files.
>>>
>>> Signed-off-by: William Zhang <william.zhang@broadcom.com>
>>> Reviewed-by: David Regan <dregan@broadcom.com>
>>> ---
>>> Changes in v3: None
>>> ---
>>> Changes in v2: None
>>> ---
>>>   arch/arm/boot/dts/broadcom/bcm47622.dtsi    | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm63138.dtsi    | 10 +++++++++-
>>>   arch/arm/boot/dts/broadcom/bcm63148.dtsi    | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm63178.dtsi    | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm6756.dtsi     | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm6846.dtsi     | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm6855.dtsi     | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm6878.dtsi     | 17 +++++++++++++++++
>>>   arch/arm/boot/dts/broadcom/bcm947622.dts    |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm963138.dts    |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm963138dvt.dts | 12 +++++-------
>>>   arch/arm/boot/dts/broadcom/bcm963148.dts    |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm963178.dts    |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm96756.dts     |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm96846.dts     |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm96855.dts     |  4 ++++
>>>   arch/arm/boot/dts/broadcom/bcm96878.dts     |  4 ++++
>>>   17 files changed, 165 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/broadcom/bcm47622.dtsi 
>>> b/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>>> index 7cd38de118c3..55ff18043d96 100644
>>> --- a/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>>> +++ b/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>>> @@ -138,6 +138,23 @@ hsspi: spi@1000 {
>>>               status = "disabled";
>>>           };
>>> +        nand_controller: nand-controller@1800 {
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +            compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.1", 
>>> "brcm,brcmnand";
>>> +            reg = <0x1800 0x600>, <0x2000 0x10>;
>>> +            reg-names = "nand", "nand-int-base";
>>> +            brcm,nand-use-wp = <0>;
>>> +            status = "disabled";
>>> +
>>> +            nandcs: nand@0 {
>>> +                compatible = "brcm,nandcs";
>>> +                reg = <0>;
>>> +                nand-on-flash-bbt;
>>> +                brcm,nand-ecc-use-strap;
>>
>> Describing the NAND chip in a SoC DTSI does not look relevant to me.
>> Even more if you add something like this nand-ecc-use-strap setting
>> which is very board dependent.
>>
> I am not sure if I understand you comments correctly but are you 
> suggesting to put this whole nand controller node into each board dts? 
> We have other ip block nodes like SPI, uart in this same soc dtsi file 
> too.  For all the bcmbca soc dtsi I am updating here(and its board 
> design), we always use the strap to for ecc setting.  So I thought it 
> should be okay to put brcm,nand-ecc-use-strap in the default dtsi file. 
> For any board that uses the raw nand nand-ecc property, the board dts 
> can do so and override the brcm,nand-ecc-use-strap setting.

I read Miquel's comment as meaning that the nandcs aka the NAND 
chip/flash part description should be in the board .dts file, while the 
controller itself can remain in the .dtsi file with its status = 
"disabled" property.

Are there customer boards, that is non reference boards that might chose 
a different chip select number and/or not use the strap settings?
-- 
Florian

--0000000000003038ee060fbcdc1d
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBVgwggRAoAMCAQICDBP8P9hKRVySg3Qv5DANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAxMjE4MTFaFw0yNTA5MTAxMjE4MTFaMIGW
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xGTAXBgNVBAMTEEZsb3JpYW4gRmFpbmVsbGkxLDAqBgkqhkiG
9w0BCQEWHWZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tMIIBIjANBgkqhkiG9w0BAQEFAAOC
AQ8AMIIBCgKCAQEA+oi3jMmHltY4LMUy8Up5+1zjd1iSgUBXhwCJLj1GJQF+GwP8InemBbk5rjlC
UwbQDeIlOfb8xGqHoQFGSW8p9V1XUw+cthISLkycex0AJ09ufePshLZygRLREU0H4ecNPMejxCte
KdtB4COST4uhBkUCo9BSy1gkl8DJ8j/BQ1KNUx6oYe0CntRag+EnHv9TM9BeXBBLfmMRnWNhvOSk
nSmRX0J3d9/G2A3FIC6WY2XnLW7eAZCQPa1Tz3n2B5BGOxwqhwKLGLNu2SRCPHwOdD6e0drURF7/
Vax85/EqkVnFNlfxtZhS0ugx5gn2pta7bTdBm1IG4TX+A3B1G57rVwIDAQABo4IB3jCCAdowDgYD
VR0PAQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3Vy
ZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEG
CCsGAQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWdu
MmNhMjAyMDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93
d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6
hjhodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNy
bDAoBgNVHREEITAfgR1mbG9yaWFuLmZhaW5lbGxpQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggr
BgEFBQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUUwwfJ6/F
KL0fRdVROal/Lp4lAF0wDQYJKoZIhvcNAQELBQADggEBAKBgfteDc1mChZjKBY4xAplC6uXGyBrZ
kNGap1mHJ+JngGzZCz+dDiHRQKGpXLxkHX0BvEDZLW6LGOJ83ImrW38YMOo3ZYnCYNHA9qDOakiw
2s1RH00JOkO5SkYdwCHj4DB9B7KEnLatJtD8MBorvt+QxTuSh4ze96Jz3kEIoHMvwGFkgObWblsc
3/YcLBmCgaWpZ3Ksev1vJPr5n8riG3/N4on8gO5qinmmr9Y7vGeuf5dmZrYMbnb+yCBalkUmZQwY
NxADYvcRBA0ySL6sZpj8BIIhWiXiuusuBmt2Mak2eEv0xDbovE6Z6hYyl/ZnRadbgK/ClgbY3w+O
AfUXEZ0xggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52
LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwT
/D/YSkVckoN0L+QwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIILPwuJsLOTNOwdR
btPxW8hffDBkGgLVRK3ai8exG16mMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcN
AQkFMQ8XDTI0MDEyNTAzMzQ0MlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZI
AWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEH
MAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQDODyF+ibRufgcP51J5KypExGJqNCccSYMs
NlTZ1rA3ttB6ARiLaykXtl1N4kZ3n1AtN//Avpdo0+2ZcK80PKdDPVWlVwggmL0jTG2XqVxSOgvV
jHLuOADfX//NER4FiTrRCs7Fy7d2d+ZdDPKSJ0PH/0gY1E9ezDbig0u7RDU7+REBDeYEb5VjFDPF
gwug71wh2iYOOU7Zm8tf/GE1H28ycWUzLx4cVdk1GhXXennkTx/t8dmUMBibEJsqfHpUPwQNkmbw
geNNIsbxszDWuGZwpPogVnRmWBHZizUEkwXtkYr/fb9Rte+VphDZzFzSNfFYFFS+Qifl1SM4MEip
UQ4w
--0000000000003038ee060fbcdc1d--

