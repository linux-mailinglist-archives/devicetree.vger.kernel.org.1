Return-Path: <devicetree+bounces-272488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id j2CyIwVSrGnuogEAu9opvQ
	(envelope-from <devicetree+bounces-272488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:27:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FF422CAC3
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 801973012C80
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 16:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2133A4F48;
	Sat,  7 Mar 2026 16:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RTlQtQXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E833A4F36
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 16:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772900866; cv=none; b=PZ/W0nbvEpN3jEt3GwrwnHvG7T9bi9AUMzS8m/+MHyfA/ZE6bmAETHCvI0X4A7gL7ZyrCT992c06ugkVa9S/tSp5FH/8AfckZ1pPVIjAQPZAxe7sUEcyEkCa2EagcN4l22Blhq16syniC+rMMl4lzNORB8l1WBrvowwszJgHx1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772900866; c=relaxed/simple;
	bh=2i0EJ63RpRjxcMnjm6qCcEuhBgw382Wkin5Bb311vr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EAoOvSYXv7kgFr0VRayJ/130SoMxXH9LFrO2pGZ5U87aFI5EOq8WcIsj7abvkR/HOvEIFYpgOgcxYdFel2SfWypStDgR12Den9nO0sjwQYwbf2uPO8xVuMpvge4a866KJFoLthBo39cqPKSENUHxw9m+PAFSFyyWQiZz58qqZqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RTlQtQXS; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7d7412cfb9eso92453a34.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 08:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772900863; x=1773505663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZBl+rXMC2e9uD/KiX6ObM2tHYn9ZVyslTh4HddNRzfU=;
        b=RTlQtQXSkOWFk3rZ4WXKlw4RVL9tA/Bhur5EFWo4lHokUdcDNdOE4UWRVyTyAMFZup
         ArhfnB2Vq2djXUcbp5GodOEeWxRGGgt7Jjtnkvf2Vk21VGxJnAUV52aPXNXBJ45jOzO2
         +4XJV9cD3n8yV2hhcwuA/pTd08DTDf6NET9TKaFXq+5fngQemXKSy2TSLttQVBBdecP+
         VWOpYofUhoIjDGJJzkmstoFcSq6DuzRXWsNFVrt4dTfC3x8wK15RvdNc/YIwyjabVCpz
         VYXG6QDnAZ/IK/+XWeiGcJoZwf2hFgahWTNZOndEIJIISHxv3UCNgutBl+D9EQJWmvIt
         4Hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772900863; x=1773505663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZBl+rXMC2e9uD/KiX6ObM2tHYn9ZVyslTh4HddNRzfU=;
        b=HpUHSemJIVncwH6bYY+FsU9aF0EvhzjDKfnPk36/QsOGscmOouWzs6Rdx1PtxEgWNd
         a2by2ApgsaojpfFXlkFUIRS3nlmUVX3Js60mZJGaVbR5UKAOUVsaq1eCaG7F/yc5j32T
         qACBHHuJHhqnpyzOYQRDtl+alz+GSMWuxOPeAmQeD2fIRtKhGi9jyn8sasAY5cQGgW1Y
         Kt+zQoC+EPFantlymYKpOGjSzYpJ7+jUO7H22+LtK+XZAxy9g5SGuNGphaJNJ3OpxpyV
         FSOHHqx9FKUmyIGfi3Od6CoX63oPdlaW9c5NzDzuOtkPR2zWHEZhzaw1mVsvGQzwUH+0
         hAEA==
X-Forwarded-Encrypted: i=1; AJvYcCXAkkVhC44CWVnASjCWSA4qdI6ohkySsSRL3DHMpzndgGGpeCaKx5x+h0a+nT0OGSJmgLsJgHqIhr5H@vger.kernel.org
X-Gm-Message-State: AOJu0YxhSd5/QnclFTcLyEZ4TuBGBiQYxbC87eZla26GNlSRXK6ERt0L
	3HSh+muR+bxEAH5CSv/gJZcw0EfIvWQbdkjhRZrEH1b0jOxTqxf/wbJufDaVvoErI+I=
X-Gm-Gg: ATEYQzyAaXMpUlZ08Ch3Io9TymP3kbMgwrsdy/NpPxMlArziuT8HLyeR4D9UPmvZkNE
	lcwbR3AYe0KQuWzMgZVWQcI3hkaZZQKOuKt6p+IOsV1s+664CY+rAeEvMWB1oP9RF3JG1rP0WKe
	aPX5z5tvkF/UWY8JAYzB9fJ9a4YDm3ZUNGdDD3kb9FCn87eUt/qOFbhbNOJcMzewvjKouEpUStK
	iawxnEOgffvPI42oER6SNfBE+jjhBdkaklG9RUjcXHJZeUEMURI39nDghemYAqwCslFzDmHCoNR
	sm5NlGC8hS8x7BNOB/8d+vXk3LKa+pxjg1dV1yq4Gcj10vu1//J8v0wXSuiYaxJWWEsvDAMM1lX
	Xyw1X24I/YF9Cu395vI169K4F8OM13RwkoqJQ5VvNz3uTL4GvxsF+7JLTYDyW7rZvX5I6+Qgq7e
	iLHN9MmtEBSSiaXxh80n6YGxuQWZu7iIdnEtUUjW48BAG2/hHeCWDI9W6v5z2WrZjFAtkc+VuKG
	A==
X-Received: by 2002:a05:6830:620f:b0:7cf:ced8:b5cf with SMTP id 46e09a7af769-7d72702f122mr4013656a34.26.1772900863067;
        Sat, 07 Mar 2026 08:27:43 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d728c5b75csm3319349a34.2.2026.03.07.08.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 08:27:42 -0800 (PST)
Message-ID: <18438082-8efc-475f-acde-be3cb313f2ab@baylibre.com>
Date: Sat, 7 Mar 2026 10:27:41 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] iio: adc: ad4130: add new supported parts
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, cosmin.tanislav@analog.com, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
References: <cover.1772078999.git.Jonathan.Santos@analog.com>
 <1d5baeec27724a1c8ebf909c29c3599d583948a1.1772078999.git.Jonathan.Santos@analog.com>
 <aaWH1wL8odeCmE6w@ashevche-desk.local>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aaWH1wL8odeCmE6w@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E3FF422CAC3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272488-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.978];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

On 3/2/26 6:51 AM, Andy Shevchenko wrote:
> On Sat, Feb 28, 2026 at 09:39:04AM -0300, Jonathan Santos wrote:
>> Add support for AD4129-4/8, AD4130-4, and AD4131-4/8 variants.
>>

...

> 
>> +	/* Triggered buffer data structure */
>> +	struct {
>> +		u32 channels[AD4130_MAX_CHANNELS];
>> +		s64 timestamp;
> 
> Use aligned_s64 type...
> 
>> +	} scan __aligned(8);
> 
> ...instead of this.
> 

This is used with SPI, so it actually needs to be:

	IIO_DECLARE_DMA_BUFFER_WITH_TS(u32, channels, AD4130_MAX_CHANNELS);

