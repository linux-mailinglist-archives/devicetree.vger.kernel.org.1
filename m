Return-Path: <devicetree+bounces-276404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHm8OMJ1uGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:27:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 115122A0ECA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7CE6930AA383
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E743644A1;
	Mon, 16 Mar 2026 21:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NoQHmnkF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A336404F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695862; cv=none; b=h79DOKqxzb6dTVDobpxnEjSc5hsRB0KaeRfecaHWAqiF1hYjVwm5L2wbtXxXZGfm8DkbBUUHYsjmkcW8z/6FBHvrfeHO/ZuQv/zpaMLtOKBrcepuhlQssi78SQ8O8O+8kGH/kovd644WkVcSeMBEATMEUcWhzYsE59lWve63gzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695862; c=relaxed/simple;
	bh=UFA5YgSXku45pmZjjR9CX4/bG4w3FmIpnT3ODeIALsM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y7aWZdnw+UvaGR7Ib3Pn551GP9SPk8/7IgwzGMfq1Am+JatvvYHwFsmyb1F5WDGRnynVc/+1gc66jRwEoi9aPUpXuKwXllBtQDVSzBYkR1ZIZS6OI+whHbCb8t6JHyEfUVEC446y4KrQzHU3vPU5tR7Se9M2MaOXBPwGtmBzLOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NoQHmnkF; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-128e4d0cc48so5813291c88.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773695860; x=1774300660; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XQCZ/ZXmbI6IEAQ2g9jA2nQCx3mjUiyHmJV0MNIZfdc=;
        b=NoQHmnkFr37C1rw0NrHlYmh2JWKZu3/F9e+S8elLeuMOht488ohtwY1cqkS6OyWyfz
         fkxLTW45ccp5xh54gaooI5SaR+IiXS5hwCNghJGtimogJpniaRfg3f+nyFGyTnPVuLNB
         ONRDN8OR8g9t3H1CsQOtH+5ZjYba9vTD5motWT+pKc7ZiosOpKZE0NKeQOJxfY1FuAsY
         puPj4un3Jj/OxQEOlb7K5fYxJbRNq2lKz3P8UTke2H8QwM4lpu/xKsL0piH/HCkY15N9
         MhIESfy4T+++GySaM6QV7eQXjTxggkbSy4UuTtLM+PVnoTB9vMkUNrU9emuapEjpyxT3
         ddxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773695860; x=1774300660;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XQCZ/ZXmbI6IEAQ2g9jA2nQCx3mjUiyHmJV0MNIZfdc=;
        b=feH/w4AnZb3nH7YzwBcIt2NvDpeIrA9NpIiphRu5DDTGrz78hP5SydspsZ8Nu4wGYy
         SuTGGIn0Oht4KQAH0MDZdy3KTCW9GMkXAcUwBXS3K7onmqb9U2HvpTpAN2us4EHbw+2y
         C8hOoiGi/CyBW7RGz2iPX54YTFXCLcBSuZ9UYkrez2UM0deZ5L3/14moKN98OPELCeeh
         k/exJ4KiAwcECbXHzP1Cxi9/pMzN5Zw7f9Yy8zBo0LHM2kN5AJ7B5uZYImdFpNfCkBJ8
         WLuxVpd8KbQMDDmdALN5h6MsEy9xL/du/ZomdzzoiIbvRGGA1yAb4jBTKodFmbyntWGy
         E7Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWEjj0d3OaHmImh11XsKFqmqlWZm5H1I9bFR1vaYKlHtbpKZ6UxBfc3l5RHFoRXma6cF1kw1YdvWadU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa5hT4NQ2318R3HurH4vXohJ3ykqaXjQ3GcU1VDCjSssI2pZTf
	JFiFLYm4iygXc5MClTav5gNhbbYY0CyW+tnQ2O605wB/NMN06wMN0HMM
X-Gm-Gg: ATEYQzyvUAb0q9jKEtSh9i3VG2WdkiZT0AaXiyu8KEUQniZ+GSwu7aylHyZoP+VTa9H
	acggP5dp3v+zaAwRc3SzZXnl326HSN2mPBkcnNTK2PvG7E9XfrfCWSBt1bn7Kv0J+8yM2TDTD+9
	VupkQzntFmpECBRQ+fXmIfiv3Z8jSCJn4DtaajsSvC+jwY10nh2hJbGSbR0eCALX+CEJVPphnBw
	FKe1cxB0Wl0Aa4yYKBN4MSmV64QMNqI8gIZaw3AHdE3byg792YVkRbPXU/Twuxf/DIWcRU5AYmM
	AnW/pfK1U+FVLMzJSgQUGX3lI3Bn5CI7HudHJ9YSuBqRfb0UxOCwv+9Fz3cD3RnsXnFrwVDwgQq
	J19w1CNoO9u47k80ejv1Ou/dbCaF37Ca3GT87y9IxXfX08SiovnJeV6NeLu5bn4PUGO7dTEAJel
	ssRFCIWYUnPzqKhVAunb9+5WnBze4wg3VtCwYhag6PFNDsyko=
X-Received: by 2002:a05:7300:f692:b0:2be:1f58:32a3 with SMTP id 5a478bee46e88-2bea551b070mr6352335eec.29.1773695860010;
        Mon, 16 Mar 2026 14:17:40 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3e4a54sm18177198eec.10.2026.03.16.14.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 14:17:38 -0700 (PDT)
Message-ID: <9bec308b-0f69-4515-91ce-a2e517d47be4@gmail.com>
Date: Mon, 16 Mar 2026 14:22:54 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of Svpbmt
 "XPbmtUC"
To: Conor Dooley <conor@kernel.org>, Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
 david@redhat.com, palmer@dabbelt.com, pjw@kernel.org, gaohan@iscas.ac.cn,
 me@ziyao.cc, lizhi2@eswincomputing.com, hal.feng@starfivetech.com,
 marcel@ziswiler.com, kernel@esmil.dk, devicetree@vger.kernel.org
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
 <20260313-visitor-majestic-1a6888dc57b2@spud>
 <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
 <20260313-spiny-duration-702fff6bca17@spud>
 <ba44e0ed-9a6f-4d4d-b3bc-a6e0bac19940@gmail.com>
 <20260314-errant-gnarly-dcca92457051@spud>
 <9592ecf2-8410-4df7-9b2c-17564426240d@gmail.com>
 <20260314-subdued-morally-f20a84fd446c@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260314-subdued-morally-f20a84fd446c@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276404-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 115122A0ECA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 05:17, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 10:06:42PM -0700, Bo Gan wrote:
>>> To be honest, I'm not completely dead-set opposed to a property that has
>>> the bit positioning, but any property being added for what is
>>> effectively an erratum needs to pass a high bar when the info could be
>>> gathered in another way. That the eic7700 one depends on firmware for
>>> what the bit may be is points in your favour, since firmware variability
>>> is part of what dt is there to do. The jh7110 is points against, since
>>> it could be fished out of the errata handling code.
>>>
>> Even for JH7110, I don't think it can be handled through the errata. It
>> describes the errata of the core (if I'm not mistaken), and there can be
>> other SoCs using the same core with the same archid/impid, but maps the
>> peripherals differently, and the UC bit position doesn't apply there. I
>> think you are probably looking for "SoC level errata" handling. It's not
>> there AFAIK. Hence I guess both SoC cases point in favor of the dt prop?
> 
> I dunno, nothing wrong with checking the devicetree during the errata
> "probe" code. Checks are not limited to imp/arch ids, can do ecalls etc
> etc in there too, so looking at the root compatible would be possible.
> 
> Either way, if people like what you've done here generally (because
> coming up with our own use of PTE bits could be controversial), and a
> custom property of some sort is to be used, you need to provide a good
> justification of why it is needed in the commit messages because you're
> setting a precedent of being the first "extension" conjured up to suit
> linux that would need that kind of functionality.
> Need to demonstrate that it describes an aspect of the hardware, and
> isn't being conjured up to configure software to use one out of several
> possible values, that it may even be able to determine heuristically
> from information already provided in the devicetree (like the root
> compatible or a completely described memory node).

Got your point. I've moved away from DT and "extension" in v2 and made
it a sifive "errata", given that mapping memory twice through front/sys
port is more of a sifive concept, not something generic to other core
vendors. The DT is kept untouched, and the detection logic is done by
a LUT and sbi ecalls if not predefined. Link:

https://lore.kernel.org/linux-riscv/20260316060328.1173634-1-ganboing@gmail.com

Bo

