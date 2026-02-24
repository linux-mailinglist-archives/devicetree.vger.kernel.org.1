Return-Path: <devicetree+bounces-267936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMWQBkq5nWntRQQAu9opvQ
	(envelope-from <devicetree+bounces-267936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:44:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A89E118897E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 069A330961F9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945313A0B1A;
	Tue, 24 Feb 2026 14:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m5ZGfrUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB00376BE5
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944235; cv=none; b=ALcFKozhOo8juQ7DccelbF7I/df9JStKejVuwTiXIqt865xJ/7ElvPeP3Misu3L7VGyVASMh3Nm01w3sNo66k2+5XSAWW4iKLEoTqMaoLNjSeH1XyJvZ/3wB5pK0kpXUMUPGTbV4LkKMRoV6H5Mdsm+GeoQKmgwe0/JGYommJZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944235; c=relaxed/simple;
	bh=Pj2ZhtGMdY8yno6LXstB42bGEn4C8y8uFO62cbXumPg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eEblWqFUN/mCLdAui1ygQSrZl+vbjxZq+g0pABtzbfRdkZa06xkQldequ5KfkUF80VU7bOjo0mKA7wV2TQzKPBA8hSLSM9vcODZ+qoFmG6nYMEIgKCu/7oYpNVZgVm6cWcuhkzk50Ze8APYTR5e27lHlqT/U9U0FLzqTxdRPmo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m5ZGfrUr; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-8249cb73792so4969199b3a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944233; x=1772549033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bvX0SGdTDgx9is4OThGZv30sDL1OeUbOOJkKXMALxvE=;
        b=m5ZGfrUrv0tFlTJwAduh1dmzelklF+fHxXEpP1Uu6ZvXhKMSH34HUBXOc7RI6cbRBF
         8WG/032cMadomKNAL3rBN+o6wq/lWU7Fn+KRNmeejOMLMocaj0K2U0T09F2WWq5YMoVD
         IyWU78eu6cqqznEqvxvygX8v9ytqFOWPbrS3ELk6kPGRs4hxDvfoXEOIzZDkJBCR/DtM
         ykbubZqBTRq7SmG2OWh5jwRb7k/rN9lGQQ0WIm66ut6QNdITiojoKhNR7CXhSjJxAn9D
         0KNe5AL81ZDdNPHMI0eipr51N4iglRie9J1l+CP/WKC2/gpLv0ZLdE7aLPV4eWOF4th+
         7Zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944233; x=1772549033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bvX0SGdTDgx9is4OThGZv30sDL1OeUbOOJkKXMALxvE=;
        b=DO2MVROmKIIVAOcZ1m+Mp4VCySqRTFXhRNO+1+7fYtVL7bTEpuduIs+Kn/rdHamNM6
         5lcuezqqLCaccYlkIqa/mk7Bz2bMkYfnsqYdqF9m8XBJQhDIAZx6Wa6VgFqJVo3sGmV0
         q63kiW4ezFaMhqkj/EOTulkgDNbWoW0bJhBZn2XhKiEEPzeNt3Bsz87xheC3fsJRm/jR
         zm/atQs8TwaLEx2OUzLBGKWJi2z84tQqHF4jjrFMgp9XYk1b+O3x9T45O+y8t3iNePnh
         FOryxYG0hK0a2kPssbb3YAjGcZIinB9hGH8T/To/z54gYdH0r0a0qs0UGh9DxpmBtvjB
         WrJw==
X-Forwarded-Encrypted: i=1; AJvYcCVk3DWeacJ30h/xUsKF3B/p+zNZx0/JB0qGLV26w4a2/TQGJ7AtJM1XowxV1y7Kin9vRmYfsHYKHe/B@vger.kernel.org
X-Gm-Message-State: AOJu0YzTKZ3Fdxww0yTk8yb1zo0nnBGfDjlz9aBIGkLPH/HN+ITo/ixe
	2Kz1hYXA9VXCwx3Mv/BaHXHkLyr/kW1XRCmakLd0nFxvnVOuGAGhBTZH
X-Gm-Gg: ATEYQzyFNLi875j8ABDfZraIn7Q8Z8PE0j7PODpFnT9lTmpGUBRLpdu0UzwSTq1bpdQ
	KtsKTiabGfDF0wBI/lv/P8OOeml1lJ1lITMbxzHMpBLRlVvE/u6OkQ1Tkhi3erTynW1jD1zR/46
	IbgsD8NsKfr4YZGejLLmDRwRcqdr35vyLbbfKlTPmpuvmc8tBmgE2j8uqdoh8chM1Mlthug50DD
	3b9gKCa3K1KMlhsCLlsrdATO5x7fowKGXzMMcwnvp+vQL7yHw5ZE+PPlJTzPHEcQrpl9l+2Y6Dv
	BsPqXGChD0UrXH3mnhp05vz/+c9PtiKIvvzFnJfmMsEPMJcg4tviwflJ/1T+Dmp2lHL+TG3nbwm
	Bq+ARc8f4AFiVUlZSU0UouMNjX+5TLzCJg4q3NQQdHkDYX5Teze5IHtdo6wwG90bIT/GPyCN6Ui
	sRLIdzJHWZ0QKbjoblfS8SbH4UlB/5JeN/FY6UcThITy24lnEHV8YYbWOW5h4T8OjPFXKE+CJDA
	FOoMEWYiDqkr6RQnvM=
X-Received: by 2002:a05:6a00:2382:b0:824:3725:1493 with SMTP id d2e1a72fcca58-826da90766dmr9980214b3a.19.1771944232918;
        Tue, 24 Feb 2026 06:43:52 -0800 (PST)
Received: from ?IPV6:2401:4900:8f4d:6bb:6d92:919c:951b:7d96? ([2401:4900:8f4d:6bb:6d92:919c:951b:7d96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd68c0b8sm12123724b3a.17.2026.02.24.06.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 06:43:52 -0800 (PST)
Message-ID: <27eb620e-3924-4a78-ad31-0412e938e7e6@gmail.com>
Date: Tue, 24 Feb 2026 20:13:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: arm: microchip,sama7g5-chipid : convert
 to DT schema
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
 <20260217-arm-microchip-v1-1-ae5d907e10e3@gmail.com>
 <20260217-fleshy-giddily-80987f509638@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260217-fleshy-giddily-80987f509638@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-267936-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,tuxon.dev:email,devicetree.org:url]
X-Rspamd-Queue-Id: A89E118897E
X-Rspamd-Action: no action


On 17-02-2026 23:21, Conor Dooley wrote:
>  Akhila YS wrote:
>> Convert Atmel system registers binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++++++++
>>  1 file changed, 41 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
>> new file mode 100644
>> index 000000000000..4227f308d43a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
>> @@ -0,0 +1,41 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Atmel/Microchip RAMC SDRAM/DDR Controller
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Claudiu Beznea <claudiu.beznea@microchip.com>
> This email no longer exists, think the new one is claudiu@tuxon.dev.
> Look it up in MAINTAINERS.


Sure.

-- 
Best Regards,
Akhila.


