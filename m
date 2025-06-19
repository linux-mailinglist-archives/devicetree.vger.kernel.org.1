Return-Path: <devicetree+bounces-187518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B5FAE042F
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:45:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D912188551C
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 11:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611B022DFBE;
	Thu, 19 Jun 2025 11:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CkqPDTsX"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC76322B8A2
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 11:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750333428; cv=none; b=JfXIRr16HduvP+N75jNopbsmHE4xlWQHkweS/f+aTXmEAdwFicUTlJDpN5aKxDKWlA7wnw+mQTbNXfp74NeyTDxt6maBUqh/xnzX5y9fZDMbiHFz/TLO6BZLj+JE1KZPpd5kkxaxN0pNeHOmIDUxqareWfVlWlvrxMjttgLOIQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750333428; c=relaxed/simple;
	bh=ka2YSkd/50tKtAy/Sw1F5sNt6obV6O6uUBbncHAvZq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uC7bILr5EX+sz4nxvv8569LlM58a19L6EAgoWIwh7yzvPrYsHE5BLc+9nNPTi/3hS2LP8Igl/wa4UKgkJbAU/5Ge6twDv+jRK5hDVqd2AZEMo7IUhPn/kH5+YbzZNjZd8NjNMeQdtdW8AJwRlB89Qb/Lih4dmtZEEr6x/HfBfcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CkqPDTsX; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750333423;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ir5AYNLTrc0GzMJeSFP3PI0RqKk+EXKa8y1NWCrMv88=;
	b=CkqPDTsXxTiU7c9SLf1QmaZfa4IK/XgsJ18iG9RyqHGwWpea/P0/7T52XGuMnjRMlmDe1n
	mpRi+ky6fTLLHPvbo6Osrn+LXmys7/arwnrgnGNe+1lOOQo4UXsuXJ1SzNC57iTz9KgTFp
	PkfNUYFUx7xpt/DqQdh1y3VRXPJRZ2A=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-466-XCCzyAkVPPmYRPbEduyb3A-1; Thu, 19 Jun 2025 07:43:42 -0400
X-MC-Unique: XCCzyAkVPPmYRPbEduyb3A-1
X-Mimecast-MFC-AGG-ID: XCCzyAkVPPmYRPbEduyb3A_1750333421
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3a4f8fd1847so255805f8f.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 04:43:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750333421; x=1750938221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ir5AYNLTrc0GzMJeSFP3PI0RqKk+EXKa8y1NWCrMv88=;
        b=LdmyyO5qXdtWxKhc9ropsUpfWE+dj4/OxYDE8AKyxXYjQjpvYEjqChCvqJbc+00RIr
         eJpUFbRyZ6X32mWRqvKh2+mdylZHgoqHUTTLXXZWZhRg+WlLm+8jxi8T/SsPUfGWXCes
         PBWqFEi46JvqC9JpR2nGCE+Z4GZyilu9w7Bo583UHE44YZVQUW962k/SRZ/SgL7SuygM
         qyhqY4iPwwiBDtJN+tSSJfk40j/VwU348u07VWH7IjoZcmx4qbVULrU1vcrEJLv72RGx
         Ql8LuNOMyuXiR3p0fPHe9OLAAemV4FDImsIeYe0EkZ69C6/Z/VkHsCiuhq8Gt36AV5A5
         qXHg==
X-Forwarded-Encrypted: i=1; AJvYcCX7qLs0t7sR+B+oQpUVVt1I7RJD8Ty4qntutox6TSBcqo6IVQPADj0G3Ekkh/WSqf+VfLKdXoSeKOn+@vger.kernel.org
X-Gm-Message-State: AOJu0YxL+qF9qwQp53eA5obQMLmxZdYR6fEkT/zI4yYHusOmxHcCouA1
	ktHlkNHRTzd3pzi4Dgjo/yGoxwgFz4Lapq9FSi+rec5wST9a529J6ZrpSJT+USfoylWnLYb6g99
	Okp7p9WVL3e+LVoZkMYARq1L5xjQhY3GK2n6Mj10ki7toVDxCKJ5HbxHbbVejPOQ=
X-Gm-Gg: ASbGncu9dcdTJrTEMWPVM+vDuzf5mS5WIdV7MXm3ZNgV3X8GbonAKCzsD3mbXFiKVrj
	9QzWaOlMLq2SKSOFaKDTvXitXKOsXZo4K0K8kjyq/gm5923pypXlDkIwmu0lt4kjbc+FlMncaPz
	HrZ4R4g1hWGM4D3KgEj4pq+xEgOR6eiZ29/1IPLmP4RwcoWrvS2N3BdhFAXdDyYjC+jGcnOpdUY
	krQsvADU+jK0xMQAoetmiwxn+OdUAwMKt8cI5IdJFXkoawuCM/uOtDRESiemotoaA3NB0IXSPzw
	zWhm+pdET7lGuEbnxrTesYY9BU0VqaBLLH8DIUaKoF2nNbNfkZx9RAUhHzGpJw0cal+CJw==
X-Received: by 2002:a05:6000:310e:b0:3a5:58a5:6a83 with SMTP id ffacd0b85a97d-3a572370c21mr17233771f8f.13.1750333421181;
        Thu, 19 Jun 2025 04:43:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0K+Q0JwDwTLL6eL8TmMJg3/Y1q/iQX/C0mLF/RXcygjsYcsKNMqXFMDf/NmEIVFEjZ5Prcg==
X-Received: by 2002:a05:6000:310e:b0:3a5:58a5:6a83 with SMTP id ffacd0b85a97d-3a572370c21mr17233741f8f.13.1750333420729;
        Thu, 19 Jun 2025 04:43:40 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:271a:7310:d5d8:c311:8743:3e10? ([2a0d:3344:271a:7310:d5d8:c311:8743:3e10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a5405asm19680062f8f.13.2025.06.19.04.43.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 04:43:40 -0700 (PDT)
Message-ID: <15618298-4598-472e-9441-8b1116a34de2@redhat.com>
Date: Thu, 19 Jun 2025 13:43:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v11 03/14] dpll: Add basic Microchip ZL3073x
 support
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Jason Gunthorpe <jgg@ziepe.ca>,
 Shannon Nelson <shannon.nelson@amd.com>, Dave Jiang <dave.jiang@intel.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>,
 Petr Oros <poros@redhat.com>
References: <20250616201404.1412341-1-ivecera@redhat.com>
 <20250616201404.1412341-4-ivecera@redhat.com>
 <20250618095646.00004595@huawei.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250618095646.00004595@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/18/25 10:56 AM, Jonathan Cameron wrote:
> On Mon, 16 Jun 2025 22:13:53 +0200
>> +static int zl3073x_spi_probe(struct spi_device *spi)
>> +{
>> +	struct device *dev = &spi->dev;
>> +	struct zl3073x_dev *zldev;
>> +
>> +	zldev = zl3073x_devm_alloc(dev);
>> +	if (IS_ERR(zldev))
>> +		return PTR_ERR(zldev);
>> +
>> +	zldev->regmap = devm_regmap_init_spi(spi, &zl3073x_regmap_config);
>> +	if (IS_ERR(zldev->regmap)) {
>> +		dev_err_probe(dev, PTR_ERR(zldev->regmap),
>> +			      "Failed to initialize regmap\n");
>> +		return PTR_ERR(zldev->regmap);
> 
> return dev_err_probe();
> One of it's biggest advantages is that dev_err_probe() returns the
> ret value passed in avoiding duplication like this and saving
> a few lines of code each time.

@Ivan: since patch 13 requires IMHO a fix, please also take care of the
above in the next revision, thanks!

Paolo


