Return-Path: <devicetree+bounces-325749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qsAKDHJAVWpqmAAAu9opvQ
	(envelope-from <devicetree+bounces-325749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 21:45:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8206674EDB6
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 21:45:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=ZUEuJUZW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325749-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325749-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B8A4315019F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 19:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434F035838A;
	Mon, 13 Jul 2026 19:40:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEF7357CF8
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 19:40:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783971633; cv=none; b=JFsev9BicXy4WU3JB4wS1t8MR6tUrDRqurR1wJhEUhetfPyRIIBYgK0iLPXhATMOIHgyleJu793pY9sqT94bLsHQC5eeDd+Y7d7+eu3mSQ6GOUVpeliZvs22tHIruF0v2xCoBNJRiXIuBSApoi6ifjl95vzworXEWCyEGt7eUtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783971633; c=relaxed/simple;
	bh=OzNlGnYi9Q21pWLQDCHdgjEM5JLFkymdE6BoRXE4Svo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rx0J+MV/q0/muU5+ROUgrrAS5Yctq+m15hULef9es1KUBnFfwulmfKj3lqzAaFn4Hp65XjYoV3ed/UDOXfX+9bChusnFY4kUHK1Wi9PyfNcALM8rSfnqYGRxu1N2KVVjV99ZQ9A3m7DCIj8wBPNBbo7IH22bI8eQDcjN1AAlLmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=ZUEuJUZW; arc=none smtp.client-ip=209.85.210.47
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7e9f829d75aso207449a34.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 12:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783971630; x=1784576430; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YzkRgDINkoy1AhrvZYmCykpgao/Mcghq5LHWpOQp6yw=;
        b=ZUEuJUZWQUzblZNkOdz64PLXhQGw5g5RLbOzvnruxFNMSbc/cf14VeLfixWEhD2JkD
         EZD6C9SPLzlDt/F7se6xqWwwLIQUBhChmx4lIx4p1K84HcWOSk398L/GhWqMGDxR54KX
         qfX8qtsirEdeQtiJ3iq6nVByOZ9tpab2wAdCJmhj0AJgUQfbpSMmlxCXFR89o7L7Acrw
         PIoshaq1VVHo22HyY15O++xRJDqGqLp0v82LZn8DB2AuiVYSzLj88GBo7rCAFkmgqlF8
         GM2L8c7hyY358BmsDknq1eybNsLtDntdFEcshfczpEnEPP+Kf4yvX/AD2JxA+KLFGAY/
         WApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783971630; x=1784576430;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YzkRgDINkoy1AhrvZYmCykpgao/Mcghq5LHWpOQp6yw=;
        b=YqQYN9BRrabgrGAE+kVFBqgn6mwYbdEWftMWMTFzd1Rn3kP+EcBL1BZatotLnuiwJe
         kYxKLBTgC8f6j3O8YK98o81hZWJevqq2HqsdlDtv28Hk2+Sn64dY7eNTBFWPhGKRukLu
         JaX46fHzCtigxcBp+hz1Bllo9EwfeblHR96uPBZAJiPWi1vVI3IblJ1M+FD/eeokYY6K
         M4eC/+aYvFVYUgzFX2VgVmqiqCz1YBr6og2PYt6xc7PB4PK3E6xNbB+zntAGGQHzPIfJ
         EbOuafuTbRKufYhARTCzsP6u+vIgGxBiOA+gs7wVDhgHXT30+uiv3km2oPLG3F2YSO1j
         xr/w==
X-Forwarded-Encrypted: i=1; AFNElJ9HEEgGrhT16thQF83f1a+3g8DnTufQ+7VJnMZC4HMtWM4BAlfC1uD/M5dJuZBYaJ4e0qXeQCvLHpas@vger.kernel.org
X-Gm-Message-State: AOJu0YwMYIcqj3k9m7xUd7L9thgxla4M3ouP+5nCoAimy/G8UheWXCDZ
	duIdvpdTqFGbxaCL/0+cnCAelVMIy5c6x1dceMEovfdcfAknBrC1xPY9cXQrPJc9Ew8=
X-Gm-Gg: AfdE7cmQJe4ZwBIGsFwJMPFHxYm4caZncm0E/xjCAFyY0CTiX6AN4P7nfRkGUW2zazO
	5lQOPVuIZ5sALe6QWBZxcHTPz2FGrGP0qA8I6o98rqVkd2BuWSZFZOGf2zFakNRxT8LwrHXw3BX
	VM0T1FDQYAqQc7tba8buQAj3vxOkQp0LXLkfG0y5IIKuziMOKN6Xk/PQb3W3I2dtI0+LmW8/Kd8
	P8I/sMo7lLtUQH+n84hhvQrNN6cqD7dGJwkeM+eJdVXzLH//iyUelctMMY4J+ycUzPO3h1q2rsM
	LK/9ABLAD3ghSF03eppQF4sGFgtH8PQqIOI0JNQ0mC5RdXpa9tCvvuXNhXUl2Z1MwJtmJlBR93N
	+JUmhhJ3qSvwvR8AIwB/lJDemzRzuwDANe/4WeQuBYQCtU12MnNAB7EMeuvwxbS2zv+uqDAcfE0
	2U0L/2l6Pr73NvACFxLJQmWRwhxx6k+quaNq9pMKYw77efsYs6kUWBxVD/W8/g2hM=
X-Received: by 2002:a05:6830:67e3:b0:7e9:f1f2:720c with SMTP id 46e09a7af769-7ec098b0a19mr6684100a34.32.1783971629759;
        Mon, 13 Jul 2026 12:40:29 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:610b:e45c:5e0c:e14b? ([2600:8803:e7e4:500:610b:e45c:5e0c:e14b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcaf73c87sm14018192a34.7.2026.07.13.12.40.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2026 12:40:28 -0700 (PDT)
Message-ID: <f8bb35a6-a898-497a-96eb-7a76a1fba16c@baylibre.com>
Date: Mon, 13 Jul 2026 14:40:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] iio: adc: ti-ads112c14: add measurement channel
 support
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
 Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
 Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
 <20260710-iio-adc-ti-ads122c14-v3-8-746d52cbf1d0@baylibre.com>
 <alI-a6nkGvXp6sDo@ashevche-desk.local>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <alI-a6nkGvXp6sDo@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325749-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,ti.com,gmail.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:from_mime,baylibre.com:dkim,baylibre.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8206674EDB6

On 7/11/26 8:00 AM, Andy Shevchenko wrote:
> On Fri, Jul 10, 2026 at 05:50:41PM -0500, David Lechner (TI) wrote:
>> Add support for parsing devicetree properties for measurement channels
>> and doing direct reads on these.
>>
>> There are quite a lot of conditions that have to be met for each
>> measurement to be made, so quite a bit of state and algorithms are
>> required to handle it.
>>
>> Channels are created dynamically since the number of possibilities is
>> unreasonably large.
> 
> ...
> 
>> +struct ads112c14_measurement {
>> +	const char *label;
>> +	u32 vref_source;
>> +	u8 iunit;
>> +	u8 idac1_mag;
>> +	u8 idac2_mag;
>> +	u8 idac1_mux;
>> +	u8 idac2_mux;
> 
> I would group this slightly differently:
> 
> 	u8 idac1_mag;
> 	u8 idac2_mag;
> 	u8 idac1_mux;
> 	u8 idac2_mux;
> 	u8 iunit;
> 
> I haven't seen the code, but names suggest that most likely one would read
> *[12] together or close enough, and less probably mixed with 'iunit' reads.
> Current layout might lead to interesting code generation complications on
> the unaligned-intolerable architectures.

iunit is scaling factor for *_mag, so logically gets grouped with
those. (These are all datasheet register field names.)

> 
>> +	u8 iadc_count;
>> +	u8 gain_val;
>> +	u8 burnout;
>> +	bool global_chop;
>> +	bool bipolar;
> 
>> +	s64 scale_available[ARRAY_SIZE(ads112c14_pga_gains_x10)];
> 
> Also this can be moved upper, but I think it won't save any bytes in this
> layout.
> 
>> +};
> 
> ...
> 
>>  struct ads112c14_data {
>>  	const struct ads112c14_chip_info *chip_info;
>>  	struct regmap *regmap;
>> +	u32 avdd_uV;
>> +	u32 ext_ref_uV;
> 
>> +	bool refp_is_avdd;
>> +	bool refn_is_gnd;
> 
> Here is a definite gain in memory if booleans combined with u8 below
> 
>> +	u32 ext_ref_ohms;
>> +	struct ads112c14_measurement *measurements;
>> +	u32 num_measurements;
> 
> Something like
> 
> 	struct ads112c14_measurement *measurements;
> 	u32 num_measurements;
> 	u32 avdd_uV;
> 	u32 ext_ref_uV;
> 	u32 ext_ref_ohms;
> 	bool refp_is_avdd;
> 	bool refn_is_gnd;
> 
> ? (Don't forget to run `pahole`.)

We've had the discussion before [1]. I don't think it is worth the effort for
structs that only get used once and doesn't have performance implications.

[1]: https://lore.kernel.org/linux-iio/20240318124041.0000032d@Huawei.com/

> 
>>  	u8 sys_mon_chan_short_gain_val;
>>  	s64 sys_mon_chan_short_scale_available[ARRAY_SIZE(ads112c14_pga_gains_x10)];
>>  };
> 

