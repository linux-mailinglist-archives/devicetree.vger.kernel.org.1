Return-Path: <devicetree+bounces-273765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGtfDM2zsGkHmQIAu9opvQ
	(envelope-from <devicetree+bounces-273765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:14:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CCF259949
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB02F30F632D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383B978F39;
	Wed, 11 Mar 2026 00:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y/qXzXUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709713B7A8
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773187908; cv=none; b=IFL6Q4np3t4uBKqohXuUTfgc+AXlF5q59VS7qB1qnmCvSeoO5y6460O0u4UThKkGZ8V/+MOdjwZYhu7YcHgC2Lz7pLoBGYQur2pPiG04kciKNrF4oUk0tTF/mtuAAuWo0hvdB2aVr/aQ3NFWeApNHf+IxZ6GcW6KbxidYqma9Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773187908; c=relaxed/simple;
	bh=P3lEy5gIkhZ3O6GB/4pR9gWhPNMout6x33dBMMGTqnc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kz0fP9AQvDw70nYYExYwj5uMYX64qPo7pWsCXoPMV/T2QQr7ananS7wtbqJP4d7TWwXVIL20+CEhD3dfq6fpnU427o3amhT5ISxSFz9NjFevS4RKKUZZtQ+R9sKYxymjeHw/42csY5XENvvezPv9R+XAPmipsiRe9BVBenAFenk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y/qXzXUk; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7d73ccee442so3338317a34.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773187905; x=1773792705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k/g9x/WAltqKnAS6kgiR1qo0fBhygP8SG/QvklfILzc=;
        b=y/qXzXUk69fxfYkmTeImwa+hj4O/vGBPkAt+DNTFcOLgLY+ACHSB+ypg7s2Gq994kZ
         7hm2qsueBPtYoM2ZM0Kf9Ncd2AFnAdxm519kuYX0gs1ukgD+qRY7N9O1F2AlhhVBVtLP
         sWRrh8oW1dXSqr8VW5cNdCAgxnGNdokwp0iviYDlpl8/DWXIcnLiGxKtGMdIj5gWJTs6
         0oObGrTRYZDy6JFNDiHF/E1HRhzJvWQrfpBxKqUQqVndkwjtQD0Kbm0rRBKYqX9i4tVh
         JyRgLZlQBXMGgIAVwRL2eLAuGrUCh4d1nY2RxsCABLW7tAXen/c02DKwSWStrNzPEt2u
         ALJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773187905; x=1773792705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k/g9x/WAltqKnAS6kgiR1qo0fBhygP8SG/QvklfILzc=;
        b=E8BOfjwZY+0x4emOZPalNvag5ATO4UdU65VshPHfauPnt6sgaRc9bj/zw0gdbRjqxQ
         TBQIt+IQLx9WXkWZCV7fNKh+xzHoFgXTOudUcOAuFgo9a6A5BnqxTq7b8bEkE1fT3b3N
         q3ocUWg+6DlKjahAT0kmFaWlHzX/KktKzChKvKGKtTo2R33/exPuU/JJvq5woU6oSVu2
         4lM7YQWpO/tq8g3IYsyefpz9BHdPKdZEExUsQMj7BU87RNn36xNyE+gG06/3OpH6H7hc
         uyo1ouPLLG4H7erylRhPOhrf1tHmchFOYCAnjvWbwvuyVT18y5UDmGQuudoMDucRzjcR
         uoSA==
X-Forwarded-Encrypted: i=1; AJvYcCUvNoRaf94d9HZG7kNI0HYH9/PNI+imJCcLVZyt7R/AJWqitFA9v5bfRL/3TYry/+0EckuRQlQBgbye@vger.kernel.org
X-Gm-Message-State: AOJu0YxQqVpjZfyB/7iAvqrdVM7vyd9EYHKuO8+zrWPcbEXqVbSsbd+u
	iZXM2Hx7wY/dGgFZHRVig/BIekODCCizjZ6xE9Xut321E9tgkzECvTbvvdzAA/dJNXM=
X-Gm-Gg: ATEYQzy92mB+PbndJFgMt0tnoBMp8jFcswT3OpRILx9tbe23r7g+maFsK1cOOs13uvC
	KhG4pNF2Zsslbj1IAWQ4hpkdWZe6YATha+ZwqaAwJJiLFIb8kRVt4NM7j51IG2nQOb7k2FvtLcM
	nnj3y0lzbFUFjfHhdowJ+LRVB8K+ng0agPSZ3f/09UH3Nsusycb0CEUGSRNoZZn9g4SrrauPOsZ
	st9oXYtnF3sPA43HwNVRQ6FT21mH4AtMIedO/n7UNy4mfPDNZ0TUXWhsrxyMeaLGw3wL/xGovF+
	sy0OzgZ/Q6y1keban0v4pfbwhbOBrf3lhY+dUR8bYgFs+PCDdPeyrp8D/ADIfMZb0h4JZlENkXl
	7f+rS9l3GEIOY367+b/oJ1qQcoOUzo3ZKAUhdeaDK6eom8aaXj/lzxpEQpyOTQandPSnBZ/S4gN
	SPZNuU9BIgErWsegsfrtOg/kiOchSH0xsavGr/MOygqN36ZFNjXtZj8VEYZXT4dTp3xjPMsW8nA
	w==
X-Received: by 2002:a05:6830:264b:b0:7d7:382f:f00f with SMTP id 46e09a7af769-7d76a73d752mr520754a34.31.1773187905339;
        Tue, 10 Mar 2026 17:11:45 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:82ac:f3fe:2e5f:ec03? ([2600:8803:e7e4:500:82ac:f3fe:2e5f:ec03])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d76aebc9d3sm492155a34.24.2026.03.10.17.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 17:11:44 -0700 (PDT)
Message-ID: <b1187027-3ddd-43bc-a773-8b5d794e04fc@baylibre.com>
Date: Tue, 10 Mar 2026 19:11:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>,
 Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
 <20260301133153.7f2f8501@jic23-huawei> <20260307140735.5ec2e608@jic23-huawei>
 <bxcybwaz3am7nrrfcjuvkbbe7yp4vwcxwwh4dafaj5dsy622s7@m4vdam6tyaht>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <bxcybwaz3am7nrrfcjuvkbbe7yp4vwcxwwh4dafaj5dsy622s7@m4vdam6tyaht>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 72CCF259949
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273765-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim,analog.com:email]
X-Rspamd-Action: no action

On 3/10/26 12:40 PM, Rodrigo Alencar wrote:
> On 26/03/07 02:07PM, Jonathan Cameron wrote:
>> On Sun, 1 Mar 2026 13:31:53 +0000
>> Jonathan Cameron <jic23@kernel.org> wrote:
>>
>>> On Fri, 20 Feb 2026 16:46:10 +0000
>>> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
>>>
>>>> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
>>>>
>>>> Add RAM channel with support for profile-based control. This includes:
>>>> - RAM data loading via binary sysfs attribute (ram_data);  
>>>
>>> I'm not sure that's a long term viable path.  We either need
>>> to figure out how to do it as firmware file load, or via an output buffer.
>>>
>>> Firmware load would probably be too static and I'm not sure quite
>>> how we map these to IIO output buffers.
>>
>> We would have to carry it for ever which is very much not ideal.
>> The firmware approach has the same issue, but can be thought of
>> as defaults at boot time forever.  If no defaults then we use whatever
>> we come up with as the long term solution.
> 
> I was thinking about the firmware approach:
> - Normally a driver would request the firmware during probe and the
>   filename would be pre-defined.
> - Less statically, It could have an attribute that once written, it would
>   request the RAM contents (e.g. under /lib/firmware/ad9910_ram.bin).
>   It could be the enable attribute itself (but that would not be effective
>   when the binary would not change), or a separate one (e.g. destination),
>   or a new one (e.g. load_en)

Have you looked at firmware_upload_register()? It looks like it provides
something along these lines.

> - Alternatively  we can also have an attribute (like 'filename') that once written,
>   loads a firmware file under /lib/firmware/<value-of-filename>.bin 
> 
> I am currently using libiio to write the sysfs binary attribute. Thus,
> the downside of the firmware approach is that I would have to use something
> else when changing a firmware file remotely (as libiio would not support this).
>  
> Also, the buffer approach has its problems, mostly because triggered buffers
> are not really designed for multi-buffer support, even though it could work
> along side the DMA engine one (that I am using with the parallel port).
> Additionally, userspace tools are not yet ready for multi-buffer support.
> Also, an IIO buffer might give a sense of data streaming capabilities,
> not a one-shot load that I need here.
> 


