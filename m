Return-Path: <devicetree+bounces-82497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 026B1924949
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 22:31:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82E28B221FB
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 20:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DCA81CE0A7;
	Tue,  2 Jul 2024 20:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="HkgMDs/B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F271BB68D
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 20:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719952306; cv=none; b=hB3FRzS8FwL6UuqMaKwswrNe0r8dfDUo1jebNY3zQQZoEL6ehu6qrSgD2LwM+7eP0GbLGI9nHxZ2ztcVR89kpW7atGqcwGdteGTlQvVSktN3XBYmkWk15W1jGJG9sN8Q6+m6Pmzq9NvWrth11O58ZX58Iq91Ft0dL8HuPWBphXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719952306; c=relaxed/simple;
	bh=qmQS1yUQ/wnUi+umLTv7YTmihRxnjYhDDclF7nYoUQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tXPE88DIUq7kAa3LaaSxy+JuSorriZXV87H9ObF8GalW5vOtYDJK4m4DQH3G0vDY3Rs021c0nq70OpRsR3k6WAJnrnWS3bzngbG/ltrk3u96+p8qGQS1mANTac5tYE2oBv8QHdTC5/QpVGbBOYcAKAHT7+FT7/oHfUoNlYtMrYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=HkgMDs/B; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4E7F63F735
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 20:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1719952301;
	bh=yecG/vq+9BYtjz36lLI4ERoY0wUtu982zMGb5fOEB1Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=HkgMDs/B3ioK/aIqS9YU34S3q4ewzYYBamWyZwAchhGchdDbcfSemAbk3WD1cdCDq
	 03My0foEZh2cXYAfIQbc2TlySrGr7vhAplpWI4mDrOGauFK6QBPq+RfP4u8mtcC7Dh
	 GZbb39qWvU4ozlObZ+dfKYvbmH/i4jRvC3aBL7CbLdw2ZyTXepDcDoqv706K+TgjFR
	 wOjcpMyNr9C8CqhPTuuZ+UPItyr0n2FU+lye2LyLDJ2a1lb95WMW+NplK9NFgC9wyW
	 iJLKNZM7Mu2f+/iGKh2HVnXz4Si1/yWfN5OsWzodloj+fIHbs0sCG2Xz6YbWRRcTxc
	 UlmUIYQTB0BGQ==
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-424a775ee7fso32165505e9.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 13:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719952300; x=1720557100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yecG/vq+9BYtjz36lLI4ERoY0wUtu982zMGb5fOEB1Q=;
        b=p3VnXqkh4b3CIYL0t7WpYHFP27yNoEfxuLgnbEj6FKTyw5n8OMRvGJSE+RjlcQ4GXO
         eRSbHfBYFIGkMSosRxibdoQU/PVRLxWgDlHt91uv9SxYDd5v/3UeM6/BEREfXG5II/Ru
         vef9gWhwUlkPfQS64kBmdCidWLyHFY7Iu+XXlV/GI5LyUJdqQ2cEWkVcQdPcnYisvkmb
         Tz3601qcWLDU/SZZSAsD8OKgtjIuAOvxGTsGerzVMqXSlKA4257KgcALAk731E9ZgTqQ
         UQzW4wlqXr09zRXwUOf5QoPe6U8LyA3aiZWLzDc7NZH/HopkWeuyuynLDzSNOeynI2Tr
         JBAA==
X-Forwarded-Encrypted: i=1; AJvYcCW3kUlViVHq1jD01LYIGc7doKpI+ckiW3cXarpXBdvKGz4DBJq6y1pXEaetzgM5tK7qkTaARkyvJejF/WSQbBeyrmD7RgSRh/Igpw==
X-Gm-Message-State: AOJu0YwhIiHWXPS9/VGobovujVIvXAyHe1PAvmXg5pmra+v2lCgwRIai
	5yFBGN9eCb6Qesrt6s9OHp4H46qzcH7GgM4XfyuMY/V9gWEsh7u5cPsOwaYcrneQFed0VHxM3Gj
	qOGTRrPGk0PoG7Qoo+h90aIdUb5UnNeSrwsIB9KoVEhSEOaihlXJpnIKclimIzFxQFcwcLld8R3
	k=
X-Received: by 2002:a05:600c:4fc5:b0:425:73a8:2fa3 with SMTP id 5b1f17b1804b1-4257a04fe4emr58572805e9.30.1719952299938;
        Tue, 02 Jul 2024 13:31:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdmamyGl0FwhQDjyyyMIy94klAbdGmh1y3kOaOfQGUZy5yTBWVjpF+MYdSVPB2i8otRiWJSQ==
X-Received: by 2002:a05:600c:4fc5:b0:425:73a8:2fa3 with SMTP id 5b1f17b1804b1-4257a04fe4emr58572615e9.30.1719952299435;
        Tue, 02 Jul 2024 13:31:39 -0700 (PDT)
Received: from [192.168.123.161] (ip-178-202-041-025.um47.pools.vodafone-ip.de. [178.202.41.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4257dee5f2asm121536785e9.22.2024.07.02.13.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 13:31:38 -0700 (PDT)
Message-ID: <242c0c30-87db-468e-a3e0-c211a93ae8a3@canonical.com>
Date: Tue, 2 Jul 2024 22:31:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] libfdt: check return value of fdt_num_mem_rsv() in
 fdt_pack()
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240701215441.54353-1-heinrich.schuchardt@canonical.com>
 <CAL_JsqKgsD2UN2FTvz3AByc8TSdGsrSJZGUM1Fr-v2yhu0gh-g@mail.gmail.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <CAL_JsqKgsD2UN2FTvz3AByc8TSdGsrSJZGUM1Fr-v2yhu0gh-g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/2/24 19:31, Rob Herring wrote:
> On Mon, Jul 1, 2024 at 3:55 PM Heinrich Schuchardt
> <heinrich.schuchardt@canonical.com> wrote:
>>
>> fdt_num_mem_rsv() may return -FDT_ERR_TRUNCATED.
>> In this case fdt_pack() should propagate the error code.
>>
>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>> ---
>>   libfdt/fdt_rw.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> This needs to be sent to David G and devicetree-compiler list to be applied.

Thanks Rob.

I should not have looked in Linux' MAINTAINERS file but into dtc's 
README.md.

Best regards

Heinrich

> 
>>
>> diff --git a/libfdt/fdt_rw.c b/libfdt/fdt_rw.c
>> index 3621d36..a307701 100644
>> --- a/libfdt/fdt_rw.c
>> +++ b/libfdt/fdt_rw.c
>> @@ -490,8 +490,11 @@ int fdt_pack(void *fdt)
>>
>>          FDT_RW_PROBE(fdt);
>>
>> -       mem_rsv_size = (fdt_num_mem_rsv(fdt)+1)
>> -               * sizeof(struct fdt_reserve_entry);
>> +       mem_rsv_size = fdt_num_mem_rsv(fdt);
>> +       if (mem_rsv_size < 0)
>> +               return mem_rsv_size;
>> +
>> +       mem_rsv_size = (mem_rsv_size + 1) * sizeof(struct fdt_reserve_entry);
>>          fdt_packblocks_(fdt, fdt, mem_rsv_size, fdt_size_dt_struct(fdt),
>>                          fdt_size_dt_strings(fdt));
>>          fdt_set_totalsize(fdt, fdt_data_size_(fdt));
>> --
>> 2.45.2
>>
>>


