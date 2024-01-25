Return-Path: <devicetree+bounces-34873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 620B583B79F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 04:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E58441F25570
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 03:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D019A79F1;
	Thu, 25 Jan 2024 03:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Gc3Bc1yv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97EFB7469
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 03:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706152171; cv=none; b=j518piluqWU+uFL3IMHx+Qjy/+6KSt5EFZO867eLcsCpK9u0WdaURfCsb5fThL6GiE+6YDyk854R61HaD7NofChWL/JXR0uNnQA/Et3GmuF+tdUjaDuxeq8UMFDkKl7kxDyh5310mAoZsg5swGA3HaVSAZdNNBxiX3+QVW+efJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706152171; c=relaxed/simple;
	bh=NfRj5SWCQGFXhpUONgbFEXfY9FaY1YiTY6kWPkLeUmk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nga6Ha6HajIYiI7v1tlzty5RzF3p6u0OZJ0sSyPNO1KBZ0y8L+CHT9GzHQcah+qMpEwk7IkHkRTioll0Y/J1M3GgvY5fJEq9AnE8IfpR+gverfITUYSlsBIaPX32EUBdTikfJsuW7tU+Rb+ShSPRQp/edPyD8y5Tn6BPChSqB7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Gc3Bc1yv; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-68195c0c8d1so25719316d6.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706152167; x=1706756967; darn=vger.kernel.org;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=k9JIXoqgXeldtL8y/xNsnl03tRRTapun8IkDP93uGno=;
        b=Gc3Bc1yvy+PwjtkzDi/w6i3R0Qzf4xqWTHX6o1NOCnGYoICUfQeeydhr1gFg1Jtkuj
         VxiDQtxlUQbtcfXqPm9PmAr1K/rVAKlPYcBpP4LIAD5T6cbeQ63ZjVq2fH4MGA0o1ct+
         VAto0HOsKH1PzDQBOFbbDGba7ztI3VeRH2LxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706152167; x=1706756967;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k9JIXoqgXeldtL8y/xNsnl03tRRTapun8IkDP93uGno=;
        b=hNZ4zP5wfVgUFyFCdOM9vt2uTEcopxg4y8P6xOqECtq1T5y6E2WLY5xWPKwhlDteUm
         Erni/LK+FSjEHLkdUd6FTAJvJDJnYA/Dr6Erk0qQz5v2KNnw/KjAh3QkhMcEOPCs9uQ6
         DTngvjWA0lFbm4H76j5aJznXAeay7DCH5/lOaIWvFei+Wxrx9N0EK4bvxpz5zon9isWe
         PEl7Dnbe2A9VO1xwT2PYHFN1ehs9bJvVPZuMV3A5v5SxYcXllk8GRR45zvbu3dJ4CFzw
         VWSMN0jrXiGWtmbuKolmfqOFS8IiYD5S7BjvsZ2Wo4xB3RnYf2fJCD+tRtYXqilJSKYP
         pvhw==
X-Gm-Message-State: AOJu0YzZBpDp94tQKiWrCLdPIDNUKwFaneD1Cen3tL0zZCfA+VwHS+SG
	KtL+jYN7HzVz0FFNX8ND9SAdf/z57Cp5njT0L0GdtayScBZA8BEV6+VXqd2AEw==
X-Google-Smtp-Source: AGHT+IGHIcaR10wAy1oLSkFX9yj58DMOeAS/3thtetvd4xVAzd/h+7n/dyvXiORzeM0NMBsnNqZClg==
X-Received: by 2002:a05:6214:1c07:b0:686:5412:f6e with SMTP id u7-20020a0562141c0700b0068654120f6emr293746qvc.96.1706152167406;
        Wed, 24 Jan 2024 19:09:27 -0800 (PST)
Received: from [192.168.52.129] ([192.19.222.250])
        by smtp.gmail.com with ESMTPSA id nh12-20020a056214390c00b0068174386320sm5108228qvb.19.2024.01.24.19.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 19:09:26 -0800 (PST)
Message-ID: <2c10a764-f74f-45b2-8bba-77c40468f4b5@broadcom.com>
Date: Wed, 24 Jan 2024 19:09:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/10] ARM: dts: broadcom: bcmbca: Add NAND controller
 node
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 David Regan <dregan@broadcom.com>
Cc: dregan@mail.com, richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, joel.peshkin@broadcom.com,
 tomer.yacoby@broadcom.com, dan.beygelman@broadcom.com,
 anand.gore@broadcom.com, kursad.oney@broadcom.com,
 florian.fainelli@broadcom.com, rafal@milecki.pl,
 bcm-kernel-feedback-list@broadcom.com, andre.przywara@arm.com,
 baruch@tkos.co.il, linux-arm-kernel@lists.infradead.org,
 dan.carpenter@linaro.org
References: <20240124030458.98408-1-dregan@broadcom.com>
 <20240124030458.98408-3-dregan@broadcom.com> <20240124183008.04a1bcb0@xps-13>
From: William Zhang <william.zhang@broadcom.com>
In-Reply-To: <20240124183008.04a1bcb0@xps-13>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000e4713a060fbc81a6"

--000000000000e4713a060fbc81a6
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Miquel,

On 1/24/24 09:30, Miquel Raynal wrote:
> Hi David,
> 
> dregan@broadcom.com wrote on Tue, 23 Jan 2024 19:04:50 -0800:
> 
>> From: William Zhang <william.zhang@broadcom.com>
>>
>> Add support for Broadcom STB NAND controller in BCMBCA ARMv7 chip dts
>> files.
>>
>> Signed-off-by: William Zhang <william.zhang@broadcom.com>
>> Reviewed-by: David Regan <dregan@broadcom.com>
>> ---
>> Changes in v3: None
>> ---
>> Changes in v2: None
>> ---
>>   arch/arm/boot/dts/broadcom/bcm47622.dtsi    | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm63138.dtsi    | 10 +++++++++-
>>   arch/arm/boot/dts/broadcom/bcm63148.dtsi    | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm63178.dtsi    | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm6756.dtsi     | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm6846.dtsi     | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm6855.dtsi     | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm6878.dtsi     | 17 +++++++++++++++++
>>   arch/arm/boot/dts/broadcom/bcm947622.dts    |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm963138.dts    |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm963138dvt.dts | 12 +++++-------
>>   arch/arm/boot/dts/broadcom/bcm963148.dts    |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm963178.dts    |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm96756.dts     |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm96846.dts     |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm96855.dts     |  4 ++++
>>   arch/arm/boot/dts/broadcom/bcm96878.dts     |  4 ++++
>>   17 files changed, 165 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/broadcom/bcm47622.dtsi b/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>> index 7cd38de118c3..55ff18043d96 100644
>> --- a/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>> +++ b/arch/arm/boot/dts/broadcom/bcm47622.dtsi
>> @@ -138,6 +138,23 @@ hsspi: spi@1000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		nand_controller: nand-controller@1800 {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +			compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.1", "brcm,brcmnand";
>> +			reg = <0x1800 0x600>, <0x2000 0x10>;
>> +			reg-names = "nand", "nand-int-base";
>> +			brcm,nand-use-wp = <0>;
>> +			status = "disabled";
>> +
>> +			nandcs: nand@0 {
>> +				compatible = "brcm,nandcs";
>> +				reg = <0>;
>> +				nand-on-flash-bbt;
>> +				brcm,nand-ecc-use-strap;
> 
> Describing the NAND chip in a SoC DTSI does not look relevant to me.
> Even more if you add something like this nand-ecc-use-strap setting
> which is very board dependent.
> 
I am not sure if I understand you comments correctly but are you 
suggesting to put this whole nand controller node into each board dts? 
We have other ip block nodes like SPI, uart in this same soc dtsi file 
too.  For all the bcmbca soc dtsi I am updating here(and its board 
design), we always use the strap to for ecc setting.  So I thought it 
should be okay to put brcm,nand-ecc-use-strap in the default dtsi file. 
For any board that uses the raw nand nand-ecc property, the board dts 
can do so and override the brcm,nand-ecc-use-strap setting.

> Same applies to your arm64 DT patch.
> 
> Thanks,
> Miquèl

--000000000000e4713a060fbc81a6
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
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIGqfU57EdKNCu2yg0nuCvKap+Xvp
8jqh+PgLC81P8AbUMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0
MDEyNTAzMDkyN1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQAgvF5BaqR1o0V27m975QrGiGYwp9B0FeiSGcp8ZRt9c33h
H2MGoBruGkscGPZgLoaAMko25E7fkzJdoO1kG7twEFY0MrHU6kpfJ0C/qGgb78yvEcmEDJaMblIt
Rghs0F0e2CoJbNegZOsJjR+JKAK7eJmmRcKOkfYluTwKJVTPhS9nN7wvOc3JuauqtJz0zpoo7rRO
TSWvI8ncdqJEUSpjE6VSsCXPgdd4L8uEzt9mV/ceOUO7p1/DEcx4oC5/jkW0t+sUXcyzkPZnUYhC
2iGPMZWqLR7nOWrKsKtBU0ArLfDSBFUVqCKTkDhaGowDcc6MkrqUvcGImJDNXo8VDwUG
--000000000000e4713a060fbc81a6--

