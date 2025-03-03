Return-Path: <devicetree+bounces-153884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172E0A4E26F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D9077AD1C3
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 15:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D22B27CCDB;
	Tue,  4 Mar 2025 15:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbGDHeNQ"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF32327C17C
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 15:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741100447; cv=fail; b=TYWEEENdKuS0zue3aDy5hV6clAzPjMpTy+q+JdNGLAPYNPY1KEXmDM9nep6IJvAdO5QuVf4L44h5Bu43NY4lZyRg1Htc0txDaWYdRBTx7EAkWmHb0+djNzEX+iROb0MHwU5Usm1LhdNWyYleancNVA6dA4jZf70YwEvA0NSZgPM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741100447; c=relaxed/simple;
	bh=MC46LanJmI28bDf53mq7O5Fs4cOUyz9luxJNn4DKSOg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WQ0UVTup/+5G2XP4HYVH0aP294aJrKKyaRLjmSzoYNQhNKVrWUkV4IepsJtBRY9AtyidPG29Bmk3adjStOVYC/kpDwtm+C6ofrVu5swB2zi9golv7HpxxQLR/8kP66Cqu3s9h3d6GsSO8NHzOU5aAkjjg/WnTAEbNeI+UEQcOy0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=fail (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbGDHeNQ reason="signature verification failed"; arc=none smtp.client-ip=10.30.226.201; arc=fail smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id 39D0840CEC87
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:00:44 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Authentication-Results: lesvatest1.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=tbGDHeNQ
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6f3p0mVCzFxwC
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:59:50 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 85D204275B; Tue,  4 Mar 2025 17:59:41 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbGDHeNQ
X-Envelope-From: <linux-kernel+bounces-541131-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbGDHeNQ
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
	by le2 (Postfix) with ESMTP id 46EA6424EE
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 11:18:35 +0300 (+03)
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by fgw2.itu.edu.tr (Postfix) with SMTP id F38862DCE4
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 11:18:34 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D5DD16F3B8
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 08:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D84A1EF09B;
	Mon,  3 Mar 2025 08:18:17 +0000 (UTC)
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDD47083C;
	Mon,  3 Mar 2025 08:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740989894; cv=none; b=J0xcE+JZFPded99ciL1PK0wZVRRAzE9BH37zoKGXXsSRkExy0PdSK/MtnyIYumK8N3SRD953Rptg4fsfKCdVwkP0QUHM3CDGwl6j7ysiFrb0Uvo6O8jtNZg+Hg2OerabXtv6rMCeT91LdDfHlhpqbcX/GrzPWNredxgwtgJMEOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740989894; c=relaxed/simple;
	bh=lsSwmwzKwKEFqzEBwDCIkRvNTrenry6xGvPaOarbA9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=db3XKjbjTAIBi1OV1DQVLs2HivC82Go+uzFyNtN1J0ul8MerGkgbPVTlmZW6H2wsYuqEQkSjNaYr+ulgpjsrxGp2MNy/bFVno2r9W9sLH3m/9VjXZyCvDWVNtC8mba0deQP+cK1ygkEjDs+GMyQqjGPF+pGxxopYdXQimh5qwHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbGDHeNQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 073B7C4CED6;
	Mon,  3 Mar 2025 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740989894;
	bh=lsSwmwzKwKEFqzEBwDCIkRvNTrenry6xGvPaOarbA9c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tbGDHeNQpKWJi4/ycf7E7vEQ0vhBq6LZFbg5giQYjELPvTfEakFLO22w1p1Fhhk2h
	 aQHahr+nq06GmwzcBrvNCxh/vIdlFwXH/hj6BRNgSmlIswxm26E4R6buGEcX8LXzlG
	 yveABu+wdmZAyJIisrWw8sdCnd2xO34WCxd98j7Wo2yqJ58lWwpwk9JlyAqNMp9lx4
	 MU+Kw+2B2DOeNltdNBl6VFhY7TvA0IGkMT2BG+sEpACbSb3Zytk1bm4CRLJQqOg0/T
	 5BKVJu1wvYJ7OcuR0X7EAf4BUK6eT4uj7T0EKht7gH5NCdnsMbW5zXUV4MsOFxWoFD
	 FY+mGfC7OdKLQ==
Message-ID: <0b2a76e6-ad64-4c98-b6ab-e1f41cb54684@kernel.org>
Date: Mon, 3 Mar 2025 09:18:08 +0100
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: power: supply: Document Maxim MAX8971
 charger
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250226093700.44726-1-clamor95@gmail.com>
 <20250226093700.44726-2-clamor95@gmail.com>
 <20250227-cherubic-mantis-from-betelgeuse-86f5ff@krzk-bin>
 <CAPVz0n0ygR=ygsvG2+z-zST7kmJ_P3nxf29tqdgHpRs_Nw6D5Q@mail.gmail.com>
 <fbd307ae-1dfa-497b-a597-d15b6baa30f4@kernel.org>
 <CAPVz0n2no1EJnf4GKSJWfYA_8h8x6BRk_ducufie90YPZR-k3g@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <CAPVz0n2no1EJnf4GKSJWfYA_8h8x6BRk_ducufie90YPZR-k3g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6f3p0mVCzFxwC
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741705195.94998@1vuqnVHU9iSPYQPs75aIqw
X-ITU-MailScanner-SpamCheck: not spam

On 03/03/2025 09:11, Svyatoslav Ryhel wrote:
> =D0=BF=D0=BD, 3 =D0=B1=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 09:54 K=
rzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>>
>> On 27/02/2025 11:55, Svyatoslav Ryhel wrote:
>>>>> +
>>
>> Please kindly trim the replies from unnecessary context. It makes it
>> much easier to find new content.
>>
>>>>> +  maxim,usb-in-current-limit-microamp:
>>>>> +    description:
>>>>> +      USB Input current limit
>>>>> +    minimum: 100000
>>>>> +    default: 500000
>>>>> +    maximum: 1500000
>>>>> +
>>>>> +  maxim,ac-in-current-limit-microamp:
>>>>> +    description:
>>>>> +      AC Input current limit
>>>>> +    minimum: 100000
>>>>> +    default: 500000
>>>>> +    maximum: 1500000
>>>>
>>>> Half of these properties as well are not suitable and duplicate exis=
ting
>>>> sysfs interface.
>>>>
>>>
>>> All these properties allow configure the charger to suit the device o=
n
>>> which it is used. None of them are required but are a nice addition.
>>> Why you are denying me an ability to fully utilize hardware I have an=
d
>>> tune it to the device? All those values represent hardware registers
>>> which can be customized for the device, not for the end user to mess
>>> with.
>>
>> Because you put user-space choice or OS policy into the DT and DT is n=
ot
>> for that.
>>
>=20
> Those are NOT user-space choice or OS policy those are vendor
> configuration for a specific device and are NOT and NEVER were exposed

Then look at existing devices. We had these discussions in the past and
these are usually exposed to user-space.

> to user configurations EVER. User messing with those may lead to
> device breaking.
>=20
>>>
>>>> And for remaining, still no battery.
>>>>
>>>
>>> reference to power-supply IS included, hence the battery option is
>>> there as well.
>>
>> I don't see it being used at all and you explicitly duplicated
>> properties which means that reference is redundant and should be dropp=
ed
>> with such binding. So how did you solve my request to add reference
>> which then you make redundant? Add reference and use it.
>>
>=20
> Which properties I have duplicated?

All the current limits.

>=20
>> Best regards,
>> Krzysztof


Best regards,
Krzysztof


