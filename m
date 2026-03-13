Return-Path: <devicetree+bounces-274892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCQBLw6us2n1ZgAAu9opvQ
	(envelope-from <devicetree+bounces-274892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:26:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D66527E0D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E7D31779A1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F959364948;
	Fri, 13 Mar 2026 06:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="acmQIefg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2302342538
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773382692; cv=none; b=d6R4h32bO3vMR2D/Ch6D8X1Q8y8mJXfAUJ4Z/oq8cs46ssiuNUTo7wkldos94/FDWvOj0rvHUk3WHmW3HoaalT6hwy4y5fOw9sm2yngC3wPB/q4K0wfoOmT7aDSnmWG5cV32aQ3GD+DGJQTW+J8WD3gEHh8U59pvsO/TcmMBIY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773382692; c=relaxed/simple;
	bh=6ZWQY4ymrBGJ8hYNeyFqtRtQF7QKPc3nK2vfrQJD4sY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZsjA5vDFmJG3rHNKh7PgmpVEMvQWoIyhgHB9gtLweat4DI1b3TE27AU67k5Bp7uy8XLlEIYjVS3zTA7wyZ+ght2ZUB7rNbU4LavKFfQKQVTg5m+KOGOF8m94g2O9hzMuCUQPY6Nj2MKxz07OkOeOoFMp3K0ukOUDEZFU8G6CuMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=acmQIefg; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c73a5473bbdso700814a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773382690; x=1773987490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zmh5HzaCjwFFl1hth5ZY2QU6iyHPHYjmE5iTWZ5JFAE=;
        b=acmQIefgK0C9TPYg911+7dfh/rixy9ccWBEjNEp0FJAUt9RzIdnHtVBKo2wmrAHqgu
         EenbCbHzDbluas5av8mr5oLD0u+dP3aPiBO+YqNTViZRBNtUuqLAYeLa11TEspnqE6i6
         mS+vNRY+wG/Mr/nKozjcQ5+riNnBmJhfvJ6EhA3dYGDkLS6eaL8Uf0mxxHgiL/XmjY3w
         zDfdGQT4E+3+Em2ueqITCmezr6LKqEu83RpFAGKMuquQAyItUXq7Z2N1+vEe7oZsThB8
         0QxW8jetROf8vh+hgQLHUVgB+PTab8jPFc5MTUo6qId+/J985gXkqOQCMZzPC2Zjng3h
         1Wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773382690; x=1773987490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zmh5HzaCjwFFl1hth5ZY2QU6iyHPHYjmE5iTWZ5JFAE=;
        b=E5GBLiscudc0C5o6LO8Ymje/PlxG8dt8nABS9vAhuiSYDn1dwvfagixaMGZhWn0Ly5
         2kDbblLUO7MOf7NKTaHtylTkFdd4gQSGwf/an6g+3pxOBMsKou9K80SWtnLZMtE5Q3UF
         AMZ9Lm1hL77ye8Gk2N53/aIse0HNRrhwe+NW0Nmw1NtQdaXf4RdQuZDWVsg86zGsreI5
         ssf7kHx3OT1oeOD0jvfmd4+6zoSde4rchIQ+gDDLMWx2iCbpd2tZDoHEgGA0ILGo6/8c
         7ACiJMw4OlXIXXB/loqOtV47D4KZUVRzlXTgBf+uWyaQEQbTsGOl8OCgptjHFRl4MZlR
         SMiA==
X-Forwarded-Encrypted: i=1; AJvYcCU6LUEdF8QjYK7FtaDdTIRkwB4eBAQi+th3UZo3Ir+n5gE/wtyCpWoOMotAPG16p7mmitoIGjXgVczJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzHzJrKrQSx+92RPzFjPnzMFSQbBVzkJyEmiBE4Muh/CzrXs44a
	7uWf8Ndu93fQgC8LJjpEK9gvHfJOK/fXdzF2wB1aeRN2NeRuG4SfESeP
X-Gm-Gg: ATEYQzzbTy/1qVzFgn7mZi/JZE4L/Y+HO3IHYBkYhA7SkI0FYcPP5BjRvQkqdVnPIyZ
	7ppQF4Bcky2F8T8kRI4FrWTX+QyxYbE/MR6p3HCZGt1abpiRSB42pIAF3KNPey3GpzyxoNPe3Ek
	KnfNn7a+H1GgZJus+efzkIE73K6xC2qfLfDJZkaf3tGBPQFYmPTkBI2axZsUEUx4uhnKcOXP8Y8
	QKys93vUwt6F3zc1aGQiXK4g4OsVtS7Zas4hELa/6DmfDD3JV4TG3LeQ++NcywsAIEnYk8YDmZL
	QzYAKX5UsUCbNdodRX+4GK++X6ab9+d9M4ojMiMKP42Hi5DNDbjv+UrF3I9MPVDIVrnJbbGv6Oc
	DxQXlUO0M25+GtzkvuOeNAbm4th4v1ImdHoQ4+03+Eawh4K+TRiKEkOE5sR7IkYRx2GgX+UGRAK
	gNvyCmrOZUYcLYjX0B/MuK72SsRMzoSgNVPXA/fba/PE+wMAPFKBTsECgv1hApnD1OqDcVS4PC0
	oGtaB3RFvWt4l01OjY=
X-Received: by 2002:a05:6a21:618e:b0:398:8dbb:d2b with SMTP id adf61e73a8af0-398ecdd56bamr1753374637.58.1773382690097;
        Thu, 12 Mar 2026 23:18:10 -0700 (PDT)
Received: from ?IPV6:2401:4900:892e:1f2a:440a:1550:d03:380c? ([2401:4900:892e:1f2a:440a:1550:d03:380c])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebb76f04sm915634a12.26.2026.03.12.23.18.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:18:09 -0700 (PDT)
Message-ID: <cf3adca8-adf1-4163-89a2-e00cafdc2973@gmail.com>
Date: Fri, 13 Mar 2026 11:48:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: hisilicon,504-nfc: convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
 <20260312152851.GA3190071-robh@kernel.org>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260312152851.GA3190071-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274892-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,devicetree.org:url,0.61.87.32:email]
X-Rspamd-Queue-Id: 1D66527E0D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 12-03-2026 20:58, Rob Herring wrote:
> On Sat, Mar 07, 2026 at 04:43:56PM +0000, Akhila YS wrote:
>> Convert Hisilicon Hip04 Soc NAND controller DT binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../devicetree/bindings/mtd/hisilicon,504-nfc.yaml | 90 ++++++++++++++++++++++
>>  1 file changed, 90 insertions(+)
> Convert implies the removal of the .txt binding. Where is that? Could be 
> missing? If so, say that.


Hi rob, yeah the removed .txt binding is not added in this commit, i
will add it and send that in a v2.

>> diff --git a/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml b/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml
>> new file mode 100644
>> index 000000000000..805ef0af0e04
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml
>> @@ -0,0 +1,90 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/hisilicon,504-nfc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: HiSilicon Hip04 NAND Flash Controller
>> +
>> +maintainers:
>> +  - Miquel Raynal <miquel.raynal@bootlin.com>
>> +  - Richard Weinberger <richard@nod.at>
> This should be someone with the h/w. I would use the HiSilicon 
> maintainer from MAINTAINERS.


Okay, sure.

>
>> +
>> +description:
>> +  The HiSilicon 504 NFC is a NAND flash memory controller used in the
>> +  Hip04 SoC. It supports hardware ECC for NAND devices and provides
>> +  register and buffer regions for NAND operations.
>> +
>> +allOf:
>> +  - $ref: nand-controller.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: hisilicon,504-nfc
>> +
>> +  reg:
>> +    minItems: 2
>> +    maxItems: 2
> Need to define what each entry is.


Okay.

>
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  nand-bus-width:
>> +    enum: [8, 16]
>> +
>> +  nand-ecc-mode:
>> +    enum:
>> +      - none
>> +      - hw
>> +
>> +  nand-ecc-strength:
>> +    const: 16
>> +
>> +  nand-ecc-step-size:
>> +    const: 1024
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 0
> These can be dropped as the child (partitions) doesn't have an address.


Okay.

>
>> +
>> +  partitions:
>> +    $ref: /schemas/mtd/partitions/fixed-partitions.yaml#
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - nand-bus-width
>> +  - nand-ecc-mode
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    nand-controller@4020000 {
>> +        compatible = "hisilicon,504-nfc";
>> +        reg = <0x04020000 0x10000>, <0x05000000 0x1000>;
>> +        interrupts = <0 379 4>;
>> +        nand-bus-width = <8>;
>> +        nand-ecc-mode = "hw";
>> +        nand-ecc-strength = <16>;
>> +        nand-ecc-step-size = <1024>;
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        partitions {
>> +             compatible = "fixed-partitions";
>> +             #address-cells = <1>;
>> +             #size-cells = <1>;
>> +
>> +             partition@0 {
>> +                 label = "nand_text";
>> +                 reg = <0x0 0x400000>;
>> +            };
>> +        };
>> +    };
>> +...
>>
>> ---
>> base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
>> change-id: 20260306-hisi504-1-d7aa09c70d93
>>
>> Best regards,
>> -- 
>> Akhila YS <akhilayalmati@gmail.com>
>>
-- 
Best Regards,
Akhila.


