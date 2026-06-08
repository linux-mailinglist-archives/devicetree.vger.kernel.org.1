Return-Path: <devicetree+bounces-308250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9JttFpqsJmrnawIAu9opvQ
	(envelope-from <devicetree+bounces-308250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:50:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6F7655DC6
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:50:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ebrGdBFf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308250-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308250-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E7E713015187
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 11:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3376D367281;
	Mon,  8 Jun 2026 11:45:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E663936F91F
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 11:45:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780919120; cv=none; b=h1p9luV/g4BFpzWLKLe5k+aPw02pVpCj5ax0P/hxiMj24dWHLCUCWaR9O3L7qdv0GNLIYPTuD2mGlNAoUXcFh0PKXMo/IPK70+ZOPJ7DCm2HNVnqszrERNeaPPhukFOu9kHQKm8UgQAwP4BJ//ptPBJbrIk5lZ1iR2O7NaL9iKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780919120; c=relaxed/simple;
	bh=S/5uyfhhCgsSjb9t77M59co6shwLNaNk5RDo3PmKTLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LlwshCpCyLO7KT9hV5k16jb8NnnZw6DkgUMtIuiL7zEGSJtrawCmIf3jVH1W8Rhupv9fpsMf5cBUn9TPtxfjxCheaSUugbc9evvqIWRjRQFTXF0M0oCkjRDok8JC3sMl+fH6pzXlwPp9vLCGTRGwCXVM72pIS/OUlSnIn4fUfVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ebrGdBFf; arc=none smtp.client-ip=209.85.210.176
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8423b08b293so1778930b3a.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 04:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780919118; x=1781523918; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3RBJSxqfT0copcCoPASu9D+tQdpKRcrHjtldnEnz33U=;
        b=ebrGdBFfJsflAknKx+DaZVXgwHue21UNE00fNRvNyA1Q0WQBN56vAB1N8KlgphqxbE
         y6k/usViD+QyzgWzM6+qAGyqODV6TC0zhgHAA0Q3xO2d6AuDgl2IFH9Ciw1nZdrVohxV
         w0+NhVN/oYcCngKbBJ+4rqhec754R2a4TcS9zEZvZJgIj1hH67+iqpgD7CHPrpH1rdjr
         aPQjUIW2R5FfCRYSuheBdKdUE9R5BStcDpOqplw3/GPtqbQSdhwcj81vLQ6phIZMeEGp
         /bTAV9Mu5ROAoHn8AX3ZU/xY5PHyv1rXhQoF8USahn+UmCLC5Lu0IYvaBqGhQ7cVNCgE
         uzjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780919118; x=1781523918;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3RBJSxqfT0copcCoPASu9D+tQdpKRcrHjtldnEnz33U=;
        b=A1qsNd+wYlnfpQfB38zE39DynTl6Xys8rDnq0gtyTZKPmrLVmcBtJoVow949T+e16j
         87QZ/xK50rWeHmtkUDyMQWV6wLxzKT795UyKGtmmeAAdhwNvINroVDpNTafBM4yc47xh
         v/pleyhOmgfJgBv1KqJmlZOIhalrr7FVMGBMSqAfuSSsZxH4f8DFachbJD5rVbJkI/RY
         c8pICukSBe2VFTwUCUhWALKvjFwtLSaARPvpWsKqYgFAv5v5GkOUbnDEVRWtHE+1vBiD
         7iWYenqmADCg7NFD8Y3EVPYGkOTvt/mbs71xQsIfwdZZF68e4eg0yY1ufZDdmBaXxOEY
         OwGg==
X-Forwarded-Encrypted: i=1; AFNElJ/9DoLsBYpMF7v5rv3/83P3y09J2Mmb8M7T4gLsaAKydhpgZA5Lv8jHK/1NcS3aooE6FOec+qosgF4P@vger.kernel.org
X-Gm-Message-State: AOJu0YwSF/+b9YtH2yCRDIq5gXUnNdgh/5L9+UrNlKHUZHkG0TUFkmGf
	oUTJKaZXBQG+rZWIsapCcShLfYw8/JNW+owBoXki6UPrtJ21y7rNdAQxQQng8w==
X-Gm-Gg: Acq92OHQqM8WK/ncQQBhYLvil+zt1F3oYE/D39CL3zqNkULB5eiZD2iHqJBeZXJorNT
	HoAv2Sjg40zPnmGftAL9fTSf8KFYBqd1DogtW/Nx2l0W7gSo+UMwjFvYwk0jddpD1/wCrkiAFO+
	bDRg1AeS0W5K1w2zGRDZF6icVZTSXZ9vy9bQErlh0TfMCrVH55lpXK1ZBHVrEaRR9YIx9b8QqNB
	63uFU6reYUxhiGdktsSLMAzA2aBzSopU7NwHzU/TX3K7qi2msXu8Mmm86A7ktvMkXz+7aNfL32G
	o0bBqkJwuW+YQbEJOOl4UOys9k+chgyJdK1gXgqUrmm85YapE0jyn/0946gjAp+MRFsLlcuAZS9
	cssVVfIoatBGpYxhN3tkUWZTJGx0Xi5ve/SGYTJl8BP3V1mvIEsSQ1qDyE+6+m9zpjtf83Y6QhT
	TZ9+aatcVsfCmu470vCluMrCEzr1hcK3boimj1h/YS4u612CxQ5qUoSUCRMSzWNL2tZ20YA3WHP
	U4NyKvTm5NMcQ==
X-Received: by 2002:a05:6a00:1996:b0:842:2f28:4e36 with SMTP id d2e1a72fcca58-842b0f90897mr15772480b3a.17.1780919118219;
        Mon, 08 Jun 2026 04:45:18 -0700 (PDT)
Received: from [172.19.1.42] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828836efsm17689182b3a.38.2026.06.08.04.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 04:45:14 -0700 (PDT)
Message-ID: <79e704ef-bcaa-456c-9d0a-0680bd885563@gmail.com>
Date: Mon, 8 Jun 2026 19:45:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] spi: ma35d1-qspi: Add Nuvoton MA35D1 QSPI
 controller support
To: Mark Brown <broonie@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, cwweng@nuvoton.com
References: <20260608025009.1504971-1-cwweng@nuvoton.com>
 <20260608025009.1504971-3-cwweng@nuvoton.com>
 <8e751df3-6237-4c8e-9c87-34bb67e435f7@sirena.org.uk>
Content-Language: en-US
From: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <8e751df3-6237-4c8e-9c87-34bb67e435f7@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308250-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F6F7655DC6

Hi Mark,

Thanks for the review.

I will add mem_caps in v3 and set per_op_freq for the spi-mem path.

I will keep the direct CS polarity handling for now, and also add
SPI_CS_HIGH to mode_bits. I understand that moving this handling into
the core would be a separate issue.

Best regards,
Chi-Wen

Mark Brown 於 2026/6/8 下午 06:53 寫道:
> On Mon, Jun 08, 2026 at 10:50:09AM +0800, Chi-Wen Weng wrote:
>> Add SPI controller driver support for the Nuvoton MA35D1 Quad SPI
>> controller.
>> +static void nuvoton_qspi_mem_set_cs(struct spi_device *spi, bool enable)
>> +{
>> +	struct nuvoton_qspi *qspi = spi_controller_get_devdata(spi->controller);
>> +	bool assert = enable;
>> +
>> +	if (spi->mode & SPI_CS_HIGH)
>> +		assert = !assert;
> Hrm, we should have the core deal with this.  Separate issue though.
>
>> +	ctlr->num_chipselect = NUVOTON_QSPI_DEFAULT_NUM_CS;
>> +	ctlr->mem_ops = &nuvoton_qspi_mem_ops;
> We don't specify mem_caps, I'm vaugely surprised nothing trips over that
> when testing.

