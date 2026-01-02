Return-Path: <devicetree+bounces-251017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 988F7CEE208
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B980530054B7
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB4422D8DB1;
	Fri,  2 Jan 2026 10:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mP4yLnmS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610391F7580
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767348538; cv=none; b=oBL7CXRV62LYJS86TqRqX3cbAFjz4eAaEQAwhMvBJ7rn6hYOVEiIth6UIDEnEiMJ0K8LjPob6e9B2PcZuohw5bJd4BgXm921HQtBMR54o1ihwaTMIIxUAjMrfdg/2yNTxsfIJwU4EiEZgV0QR4px8nfVxJthCSHS+eK3iEtLsU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767348538; c=relaxed/simple;
	bh=L4tcvySOgU3eAEJIA3ih73atfdDG2PceOZkHL6fp/1E=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=F5bAKVnKSIODQA275Z1Tuis41EqGTjWGIdBwisU4+AYfOx8IOOpJVFoXqN5NjjmYKgy+UD+I04C7lrq2PE4q3SGrQMXuKSclZTnD12L+VteZKBaxFK6We3B2n42Q5ujeuFy1XI6WZ/lKoGvFMy9jmBzIuRJT19J3cRFOLS3uZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mP4yLnmS; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso12383007b3a.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 02:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767348537; x=1767953337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fe815HykdJZXA/fdLXFlCD8aMFUo2cB4//CLLF3EANo=;
        b=mP4yLnmS+ZlMo1IhR3s3yyZbzK8L4d5Y6EdNh5QjUcrkUUMELpaVcCq2SnkXVRKwHc
         V1vxMbDkL9xEnV96ag8NOwKKzn6yQj5v9DlobRJL6f5cDkTS0Cyus5HL6+rovB1PJMEl
         sedi2NNWZSBJvrJxAjoteRD2sBeklffjMOiGUYWFlmEMlerWchdTY4T7emzuqL3ebWxY
         JddFtkiVmNVnEaZSa6FOWDjz8Zj0G96zbv4EKyozytOyiFCv40l5cu61xjyc8ckfRLXr
         73Hg115FmFzvmny1nkMLtTYujLPxa6mQUGa0f5YuLz00vgdH6LgYTBpC7YEck57D5L/s
         D5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767348537; x=1767953337;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fe815HykdJZXA/fdLXFlCD8aMFUo2cB4//CLLF3EANo=;
        b=wuMkbtXLoBonx4jdt3glUA3EEjbhyjQiOdZGhixBOxrkfSr6p6O1X9IxOeqMknV8fu
         z8yBT8OOvu8b7nxLVtJ2e10qqLjiHEYuJbceYiov6pEdGMCsLXtyVjA/gypHuNvu0mC8
         ZdeXRfiHVSuRfo0fV2YqiIv4Ip7zyE7wUqY7I3UEnruvdjIYpAENRBZrWSwGKMVVL0rh
         ZK+KntiL5ZABzA63xk5G2/rbQKjhYkIbUyWOLGroTcmoy0EGy79c0H8o3redW7D1Dki/
         Lt0JXFwZn8F8GRZMf5jZyvRvPH6Lok+GsA9j7uXWyGOacjGpYJBH5vrr8wiPBv87Ewdv
         oEUw==
X-Forwarded-Encrypted: i=1; AJvYcCUwmdrckZ32zOqrHcUb6QaBGgDBEsNdGMSM7a8zj0TavpcFk1SxHxgAEw2JxT42vbZjyRrvTmgJoOCM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2SKvxYPRAi79Y3d8AIv5pbOhdSQwXzWRIxtMtQHyks+iKIyWy
	hpT+rFG7cYvGcXCKAV9X6W0ijkQw+HdCU0qdFjWS91aKFPjpBdhhEpWU
X-Gm-Gg: AY/fxX52FGqpmtuaAGQPr8eP/2vsNfPbLhXGNpu6Oso05TNsOYUnNLJzhFCxHgd+xf0
	BmjAG5EzbSOH8ns2jqMyn1WGU+mtSbv66WcdvrIdgJeEz5O1Kb3YcZJ/KAnhWu635aspXBqX127
	eGyplHEIBtxhpHPhYT9AKrzt35AzLI2zG25qzlw7+LbCs4Yzkplh8Q34eF+vq52WyGlDmbE6CR5
	zOtn9CXGRzee9yvMiLzMjZXqwaQEbWSI/amX5ZNds2EH3ww0YnD3GXd8kWnGsHgHNMni0H5QtOv
	TE0+HzSXf5Jg6gOr31lm/bbW93Y7onhM2vQb7twkXlKvWV3YKd+dBBVZD/pOm5BnfEyB6U9Gag1
	wHeO9LjQTGfprHjs3A8jWIItj3gKYLBuGabz7Ik3L43QKTjcfQHWyVj/uDebxTCC88GcS8hUomN
	8w2pWIiE3gi0DXCGP1uRz/XdGqjVS4XbQheDs7138MoxehFL8nMejlLEUixw5E7XZ+fD5kJd8=
X-Google-Smtp-Source: AGHT+IEC3e8kZw0Xj2yo5CTUSmbZNoTyCva9yA0VvjTLMoX4LlaMc1sV53Z/kNwFsdK4byE3LWwxlw==
X-Received: by 2002:a05:6a00:418a:b0:7e8:450c:61b7 with SMTP id d2e1a72fcca58-7ff6607b8dbmr36213357b3a.39.1767348536655;
        Fri, 02 Jan 2026 02:08:56 -0800 (PST)
Received: from ?IPV6:2401:4900:883b:60a8:c545:bc1e:eac1:a2b4? ([2401:4900:883b:60a8:c545:bc1e:eac1:a2b4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48cd07sm40045029b3a.46.2026.01.02.02.08.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 02:08:56 -0800 (PST)
Message-ID: <cfe2550d-52d4-400e-903e-f32031ebd5ee@gmail.com>
Date: Fri, 2 Jan 2026 15:38:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
From: Akhila YS <akhilayalmati@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251229-nxp-v1-1-a415fe0080a8@gmail.com>
 <20251230-kagu-of-scientific-enrichment-6fcd4c@quoll>
 <0363ac61-0872-42da-91b8-78966a2537ce@gmail.com>
Content-Language: en-US
In-Reply-To: <0363ac61-0872-42da-91b8-78966a2537ce@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 02-01-2026 13:47, Akhila YS wrote:
>
>
> On 30-12-2025 18:02, Krzysztof Kozlowski wrote:
>> On Mon, Dec 29, 2025 at 12:49:00PM +0000, Akhila YS wrote:
>>> +---
>>> +$id: http://devicetree.org/schemas/mtd/microchip,mchp23k256.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Microchip 23K256 (and similar) SPI SRAM MTD driver
>> driver? Bindings are for hardware.
>
>
> Sure, I will fix it.
>
>>> +
>>> +maintainers:
>>> +  - Richard Weinberger <richard@nod.at>
>>> +
>>> +description: |
>> Do not need '|' unless you need to preserve formatting.
> Ok.
>>> +  Driver for Microchip 23K256 and compatible (e.g. 23LCV1024) serial SRAM devices
>> Don't describe drivers...
>>
>>> +  accessed via SPI. The device exposes the SRAM as an MTD device and supports
>>> +  optional partitioning via child nodes.
>> nor DTS, but the hardware.
>
>
> OK, I will change it.
>
>>> +
>>> +allOf:
>>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
>>> +
>> If this is SRAM, then it should go to sram directory. But maybe it is
>> MTD, so NOR or NAND? If so you would be missing here refs to NAND
>> chips.
>>
>> Although docs are saying it is SRAM, so just place it there.
>
> This SRAM is not generic MMIO SRAM, it's an SPI peripheral exposing
> memory via the MTD subsystem. Also i tried Yaml from sram directory it
> doesn't work with it.
>
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - microchip,mchp23k256
>>> +      - microchip,mchp23lcv1024
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  "#address-cells":
>>> +    const: 1
>>> +
>>> +  "#size-cells":
>>> +    const: 1
>> Pretty incomplete. Old binding and above cells claim there can be child
>> nodes, so please add them and test. Works? No. Shall work? Yes... so
>> either old binding was incorrect or new binding is incomplete. I did not
>> check the driver, though.
>
>
> Size cells and Address cells are not required as there is no child
> node and I tried to define child node , Included SRAM.Yaml as a
> reference file and tested it. It doesn't work.
>
>>> +
>>> +required:
>>> +  - reg
>>> +  - compatible
>>> +  - "#address-cells"
>>> +  - "#size-cells"
>>> +  - spi-max-frequency
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    spi {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        sram@0 {
>>> +            #address-cells = <1>;
>>> +            #size-cells = <1>;
>> They are redundant. Where are children?
>
>
> They are redundant, There is no child node  and i will remove it.
>
>>> +            compatible = "microchip,mchp23k256";
>>> +            reg = <0>;
>>> +            spi-max-frequency = <20000000>;
>>> +        };
>>> +    };
>>> +...
>>>
>>> ---
>>> base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
>>> change-id: 20251229-nxp-526e29da9f29
>>>
>>> Best regards,
>>> -- 
>>> Akhila YS <akhilayalmati@gmail.com>
>>>
-- 
Best Regards,
Akhila.


