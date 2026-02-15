Return-Path: <devicetree+bounces-265624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id r/aQOmsCkmk/pQEAu9opvQ
	(envelope-from <devicetree+bounces-265624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:29:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B9413F373
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:29:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCE18300CC25
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 17:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 391D625A655;
	Sun, 15 Feb 2026 17:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eoOCqX0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA7617993
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 17:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771176553; cv=none; b=nKYAGB1UJSALsO4x3b9wuoJvhoGEoTiW1Woe30dyWoIFRET4eQbS/0DEMpO+VTO0+oJ6z/g7Er+rdDc2NfJzx0EU0qNCUQiOnqbGTBx0YufIsAALbd0uwObmTG1FX6QF/pMP6fH9tb2nd1OFpKr+u9W/N8T7oK5sfTu9zWowlLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771176553; c=relaxed/simple;
	bh=kRubzSeb34gMBhG/k1GBQIhV9N/5ZWh5nds6hV6yhWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ge7BimSQA0hLT6nuZ13NGKUaAu3GCSc7y5+huQt+xTEx2uFKav0plejQ6CtL2+ELdSwxSiA4q5eoOcJCp2Fcm0dPTdiIkw2s8SptQM6VRUg+FIR8w72yjGXvWfqWpn76la888fBEMKodJpGATcq7+zbMxbr6O2VcW18IkW62wyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eoOCqX0n; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-7927b1620ddso30290447b3.0
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 09:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771176551; x=1771781351; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0U5EsIEfZrt+jHVfvpA1PnJrdcLESznUrVQtE1RRsU=;
        b=eoOCqX0ndzmjxkVSpUoyZB235XkiIBNm/uZNdlBQV5u6l+wMqR3adCxol5W0736aIC
         dvn2eEO/ywRqlgPasRIWfyrBXFCKypHCgrK/NAcKZ2EqpjOILr3yd0V13rCnyj7ct8D0
         2p4sYtNAt32rG8yowCEVTSKDC0cuB3lhCTpqWn5tGskCdpYIi4scyEVZtU8PO9QUouUf
         eYWPw6P4QWUNJNoINhPDhTDZwZWznLqRztOeLIxpCM+bZLdfKNKWEbObxv4z471/IHz0
         3WrZkAqedHZMxwtnUfD5UyDanFufdzNGm4ZVeyjyOpOZ/fp8WUiBtdFCrkIx02/84XSv
         ogQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771176551; x=1771781351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J0U5EsIEfZrt+jHVfvpA1PnJrdcLESznUrVQtE1RRsU=;
        b=lBjlmvtBspWXRmzXAyunJParxXx1Xo6jtztqdvoAVk6xBhrWzirRiwvAdNtoz5UIqf
         oFE36/I7yNIq01AcqhOFsGvunimoQThJfLcYcZ7ZGE0xpHsQC3kBy6xQqVfQEMuzfezx
         P6sHvLPAWA/wnXHQDSPPh2Z80ldEwP494tcaqOHu1gd9KM653AmFQvaLEDaXQ7nXybg5
         +j9rK2/anBsB0yJ4kqHQD+dqSZwdQZVc53J6mvIAlfD1f9/mYIFJdHHiiIjBXedIP4g5
         HRmHaQCMHZmGRTavf3qPQbXjPFKpXtHdRfVOt7u774erlp1KvvAbDdMOytCN62q8s+Vv
         P9SA==
X-Forwarded-Encrypted: i=1; AJvYcCXBVjvPJFTKY29N0ebi584V9l3DEQMSBBnpZ2RraF8qTdog9X17yY07RyPCKIdntNPjF4u8vt/XaCEl@vger.kernel.org
X-Gm-Message-State: AOJu0YyVGdi6dnIkDgx4NFr/K4lX3v8P0uJJN8tFzALXkIXGDYd24CnG
	Wvhq7NmSznG1UYf0YCDmUZXAZxYSsPaR8Ig1wkwy1KxT62SbS+yxLrsy
X-Gm-Gg: AZuq6aI8KOno1RfQx2/ciNqxLtlHeTpfF3Sw0XRq7dMXqXZQ0yqgJcyZ+6WKNRykD3y
	yLrjhXQ8wyBn5pGW/+cQdNQTMZ9zNjmDUWUl9/Bli0P9s118w/bYZFW1Cyq2GalT+2toMQh+A1T
	yLVbd6R15LGvH/Dm7epJfpvK08jKRJjX+WJkVhC7NnFOkd+ZAgSHq1zvOFmL4rdY1Zj4pgDXLlZ
	EHyKlka2UP2we/qyKrOS6Oqcm08ckA6YqJS6jraws4SP/t4TA8y5hR2uaFYj+j9UNXncJ9UYJIL
	rQDKtWAxa2YyxHlUbreFRITrCErg4UGkDltKJzD1a/5/1j4YBwZ32Fzz5enn3vEK9JTgNKfABha
	kpdw7vzxxuoJfbqi05luxZCvE4BpoaNQHVzQ4n+3vW+nCVUhjbTiscmsmqDOSUumHI12x3jyuar
	mQ6jNS3CZp9adhKTP8KIIYhaKnyfC3uUI=
X-Received: by 2002:a05:690c:e3c3:b0:796:4015:94a with SMTP id 00721157ae682-797aa905a63mr48543847b3.20.1771176550933;
        Sun, 15 Feb 2026 09:29:10 -0800 (PST)
Received: from crusty-box ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c16e7b0sm92169247b3.4.2026.02.15.09.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 09:29:10 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: jic23@kernel.org
Cc: andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	krzk+dt@kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	nuno.sa@analog.com,
	phone-devel@vger.kernel.org,
	pmeerw@pmeerw.net,
	robh@kernel.org,
	xerikasxx@gmail.com,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v4 2/2] iio: light: vcnl4000: add support for Capella CM36686 and CM36672P
Date: Sun, 15 Feb 2026 19:28:56 +0200
Message-ID: <20260215172856.34702-1-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260214180919.72389701@jic23-huawei>
References: <20260214180919.72389701@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,baylibre.com,analog.com,pmeerw.net,gmail.com,lists.sr.ht];
	TAGGED_FROM(0.00)[bounces-265624-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 43B9413F373
X-Rspamd-Action: no action

On 2/14/26 8:09 PM, Jonathan Cameron wrote:
>> ---
>>  drivers/iio/light/vcnl4000.c | 40 ++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 40 insertions(+)
>>
>> diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
>> index a36c23813679..1f8f4e4586f4 100644
>> --- a/drivers/iio/light/vcnl4000.c
>> +++ b/drivers/iio/light/vcnl4000.c
>> @@ -185,6 +185,7 @@ static const int vcnl4040_ps_oversampling_ratio[] = {1, 2, 4, 8};
>>  #define VCNL4000_SLEEP_DELAY_MS	2000 /* before we enter pm_runtime_suspend */
>>  
>>  enum vcnl4000_device_ids {
>> +	CM36672P,
>>  	VCNL4000,
>>  	VCNL4010,
>>  	VCNL4040,
>> @@ -235,6 +236,8 @@ struct vcnl4000_chip_spec {
>>  };
>>  
>>  static const struct i2c_device_id vcnl4000_id[] = {
>> +	{ "cm36672p", CM36672P },
>> +	{ "cm36686", VCNL4040 },
>>  	{ "vcnl4000", VCNL4000 },
>>  	{ "vcnl4010", VCNL4010 },
>>  	{ "vcnl4020", VCNL4010 },
>> @@ -1842,6 +1845,22 @@ static const struct iio_chan_spec vcnl4040_channels[] = {
>>  	}
>>  };
> 
> ...
> 
>>  	[VCNL4000] = {
>>  		.prod = "VCNL4000",
>>  		.init = vcnl4000_init,
>> @@ -2033,6 +2065,14 @@ static int vcnl4000_probe(struct i2c_client *client)
>>  }
>>  
>>  static const struct of_device_id vcnl_4000_of_match[] = {
>> +	{
>> +		.compatible = "capella,cm36672p",
>> +		.data = (void *)CM36672P,
>> +	},
>> +	{
>> +		.compatible = "capella,cm36686",
>> +		.data = (void *)VCNL4040,
> 
> Is this necessary? I 'think' if you drop it we'll match instead
> on the vcnl4040 fallback and then the access to the data will be
> through the stripped name only bit of the compatible (first entry, not
> the fallback so cm36686 in this case). So you do need the cm36686
> entry in the i2c_device_id table above. Probably better to keep
> this here to avoid having to reason this out - but perhaps a
> comment to that affect would be useful (assuming you verify my
> reasoning).
>
After I removed the entry for "capella,cm36686", I received the "Unable
to handle kernel NULL pointer dereference" error in dmesg. And at least
stk3310 driver includes a compatible entry both for the device (stk3013)
and for the fallback (stk3310). So my assumption is that this entry is
needed.
I could include a comment explaining that cm36686 is fully compatible
with vcnl4040, however, if that is necessary.
> As Andy suggested moving away from enum values an towards
> direct pointers to the chip_info structures + drop the
> i2c_client_get_device_id() in favour of i2c_get_match_data() which
> uses the right firmware entry to get the data in all cases is the
> right long term solution and avoids an association being necessary
> between the two tables.
> 
> Jonathan
> 
> 
> 
> 
>> +	},
>>  	{
>>  		.compatible = "vishay,vcnl4000",
>>  		.data = (void *)VCNL4000,
>>
> 

