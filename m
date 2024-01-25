Return-Path: <devicetree+bounces-34875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD34183B7A6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 04:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0B451C24558
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 03:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 358BB7FB;
	Thu, 25 Jan 2024 03:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="RhCtccqR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA0029AB
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 03:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706152430; cv=none; b=Y16ueaoZ5S1KRPmOVaqpqLSgDMF1Xk2DP3W8RaH6cz5QSyYVv5uZ5Tr7C5UBBLNcJu0ay5Y6OJLT/lCNjezbmqHzcjBt5UbdFunVIcYPy413f2YQSNs3UtM32ysawuwbbmrHGhrN2zpP69EZbsCPsnF6/qFfHBUNkkGLs+qV5E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706152430; c=relaxed/simple;
	bh=5Tx+ND3W6XzTjH1X66YZHOvCqeAOc5aolfKz58fxGU4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ToGQ4Qdw67ArJxWQcsYo06eh3qb6+cUT56jae0u1UTm39ZszGoriiVY8Pvr5OrOOQ/LfiATobB6Silgg/51+zTvHmyElUesI2S6lWkh3ZLcmzKQr+ULZL3E0NHvWlpnNThwfYrPdVBVIyRpwQ9WQycOhZgxXRr+ye0aCRI4kaOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=RhCtccqR; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5ce6b5e3c4eso3315113a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706152428; x=1706757228; darn=vger.kernel.org;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bvEA4M7uYGQ4BrITjcs/ChpJj+1JtSDumn61WvAXEd8=;
        b=RhCtccqROPJPvJzq9G9Pmsm8p7hI60H1ro2ufAl1eG+xD/CtYt1E47/3e4QyM5oJ6j
         dfcLN0cZOwn0a1t5Lc6isTqx7tCe78fNBRclj/JJbMEL9Dx9RBmVmYUZp+nZonno+7qs
         Spm/w2puRkcedzwO5GdjILKxpFtX0l9tGM9dU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706152428; x=1706757228;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bvEA4M7uYGQ4BrITjcs/ChpJj+1JtSDumn61WvAXEd8=;
        b=Dy9VjEzLevacomsUWlHxnpd8OjFqNGhn9W0n/wWM24KtQpE6q8xLRgiudMDKskam7R
         gFrPKNWTbhoa6tO3bdEFFeX3wXjYcQ/29D+r60CmiUBFsHfp4/Ww04PmqCVr//DHubqz
         hexz/GacQFgKeh0AsvQLeOC8nVl1Qh2Fb5v1+/inDH0dM5C87ku2mGHNwa8mSZhPa96m
         CMrW/XL0NV4KJoXROL8U2T2F1C75t3BM1AenD9vKIs1Sjy304JNp45oM75assuf7+FQG
         2/n1BQFtQGrBRzmth3x+2AFEADJLLbfGUKj2vIdq9HtbKEnCaELMM+f6FND0/ROGoAQL
         9YBQ==
X-Gm-Message-State: AOJu0YxmIM/1G6ltE4dLw0AXV9h24s5fo8mjbWIHAscbOr/kmoRawqcA
	KEMsbB0tHafuI/PW9dzBK834m8KV44ndyxz1OnKsmK7GvRSsm5PE1lIHDO/uMA==
X-Google-Smtp-Source: AGHT+IEh8pPkKN39L5yFBrTbbUqwL/tWSZACJhvFXuMqscj2IrvLo4adiqYeQJujoTTLA7mrt1TYPw==
X-Received: by 2002:a05:6a20:2594:b0:19c:56cf:1cdd with SMTP id k20-20020a056a20259400b0019c56cf1cddmr416400pzd.46.1706152427836;
        Wed, 24 Jan 2024 19:13:47 -0800 (PST)
Received: from [192.168.52.129] ([192.19.222.250])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902a5c300b001d755ec4bc0sm5328111plq.241.2024.01.24.19.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 19:13:47 -0800 (PST)
Message-ID: <48f3c65f-4e27-42d8-b32a-3889329303c2@broadcom.com>
Date: Wed, 24 Jan 2024 19:13:45 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/10] mtd: rawnand: brcmnand: Add support for getting
 ecc setting from strap
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
 <20240124030458.98408-7-dregan@broadcom.com> <20240124183207.5898cbfd@xps-13>
From: William Zhang <william.zhang@broadcom.com>
In-Reply-To: <20240124183207.5898cbfd@xps-13>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000006ae7d2060fbc9145"

--0000000000006ae7d2060fbc9145
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Miquel,

On 1/24/24 09:32, Miquel Raynal wrote:
> Hi David,
> 
>> @@ -2622,19 +2667,43 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
>>   		nanddev_get_memorg(&chip->base);
>>   	struct brcmnand_controller *ctrl = host->ctrl;
>>   	struct brcmnand_cfg *cfg = &host->hwcfg;
>> -	char msg[128];
>> +	struct device_node *np = nand_get_flash_node(chip);
>>   	u32 offs, tmp, oob_sector;
>> -	int ret;
>> +	int ret, sector_size_1k = 0;
>> +	bool use_strap = false;
>> +	char msg[128];
>>   
>>   	memset(cfg, 0, sizeof(*cfg));
>> +	use_strap = of_property_read_bool(np, "brcm,nand-ecc-use-strap");
>>   
>> -	ret = of_property_read_u32(nand_get_flash_node(chip),
>> -				   "brcm,nand-oob-sector-size",
>> +	/*
>> +	 * Set ECC size and strength based on hw configuration from strap
>> +	 * if device tree does not specify them and use strap property is set
>> +	 * If ecc strength is set in dts, don't use strap setting.
>> +	 */
> 
> You would have to use the strap settings only if the property is set.
> If not property is set, the default from the core should apply I guess.
> 
Maybe the comment confuse you... I will make it more clear.  But the 
logic here is exactly what you said.  If no properties are set, the core 
value is already set in chip->ecc.strength and chip->ecc.size and it 
clear the use_strap flag too.

>> +	if (chip->ecc.strength)
>> +		use_strap = 0;
>> +
>> +	if (use_strap) {
>> +		chip->ecc.strength = brcmnand_get_ecc_strength(host);
>> +		sector_size_1k = brcmnand_get_sector_size_1k(host);
>> +		if (chip->ecc.size == 0) {
>> +			if (sector_size_1k < 0)
>> +				chip->ecc.size = 512;
>> +			else
>> +				chip->ecc.size = 512 << sector_size_1k;
>> +		}
>> +	}
>> +
>> +	ret = of_property_read_u32(np, "brcm,nand-oob-sector-size",
>>   				   &oob_sector);
>>   	if (ret) {
>> -		/* Use detected size */
>> -		cfg->spare_area_size = mtd->oobsize /
>> -					(mtd->writesize >> FC_SHIFT);
>> +		if (use_strap)
>> +			cfg->spare_area_size = brcmnand_get_spare_size(host);
>> +		else
>> +			/* Use detected size */
>> +			cfg->spare_area_size = mtd->oobsize /
>> +						(mtd->writesize >> FC_SHIFT);
>>   	} else {
>>   		cfg->spare_area_size = oob_sector;
>>   	}
> 
> 
> Thanks,
> Miquèl

--0000000000006ae7d2060fbc9145
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
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIF+VJ4d1/Lh6uSqHgwd4DnNUNCYq
nPGjLQxaHUmRQF7IMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0
MDEyNTAzMTM0OFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQBvs+9j2MZiFTsRL1fvJwy0jauuFwHMfXwm4HzVZqKVG0Zp
lVi2hQbaplVxMx6VeUz1y40HbDmoBmLIlxa0B6rSpepKX6HnCZ5mmEwd6y7nYNnuahjIsct1GEJX
GZsWiK9woJQrg0e/hR6LG0IiCvjbR3PfDUvLsiOkd8H1SRq9ZXVoJ3L4mF2f4gON1pmpsy3m7Vvp
PC8m5IK1jvZhOw7kIjtIMxU2F5Njrha2LxBn7uoQqggG0+WSPzHiXQiZaMHB/D6vfOM1mpBCJRmR
a/mtR91JoA/oPX00A+uNKbo7/N7hrq6WxaN60T5oNhyo5vP2LQkmQluwZpjD/SkWRMzF
--0000000000006ae7d2060fbc9145--

