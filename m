Return-Path: <devicetree+bounces-264718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFMBL2VVjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:09:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9921232DC
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 305103019922
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C7ED36683E;
	Wed, 11 Feb 2026 10:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eXT/v1WS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088AA3559EC
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804471; cv=none; b=Zcs3TxEysamKf8oalDBDCT/lTGHcXWVHkAjfwQaM/KM3DsO2nOAgwsV9IbjClJtmuyFRMd3Cb+MBSJQe3KRr3xRRzHtb0Q9nSU101oSZXftCUKIb64MgMNk8uwJYmpM2qk0ryTxkFDjKeEYlhwLKkaCaD91+bAv/+iDqvUZDYwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804471; c=relaxed/simple;
	bh=Z/GZBqQCmQqhyUddNtRKYVJhCP5a/7Enct9wdD8/d5o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=f5jkNDxO/q2h2GyRG1xFTP40BsEjBpV9l4811kDFjz8vUNieMzCOqgs85y5GDXXk9ZBXSBMxmhHziKS5NKJ59uilJKECq9Uc6JaSsqP1Fei5SVdg6T33rJt/3bDfZhzw7MAszARs5qZNVwyNCKAvzZmzNbw1cW++uBFwleyXtck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eXT/v1WS; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-480706554beso54498545e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770804468; x=1771409268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DBJ0NKlYQHSTcX5I6AxqwzGVfI3Ct5XxPEslgPpmVnc=;
        b=eXT/v1WSL5Zz3bFDNqpQsuLgfHFORzAM5e6JQCrZgRQjBP1E5oZHSGzAAjsLo3F6Bs
         7dvRSOfVdhqMIsYskNnh6b+bH07uwfMmPtAwa+A4bHkDLITdmTKPCyZ9a8mU73+KN+41
         LDP/3TRNGjVNiMfoWl1D4nhqiw+qZNjNv4+p1CbDMgYZHs6+2sBflZqSQqNMi/zI6Adl
         syBOzAvFYxkeMXiRQtr+LfzXsVtegLzX3mABmseNuaiXMysBVqOGpCfGOa5ksA3BkBK2
         lnzZGeHvJLohoo1p6zWR+2BDuDUAxaGtBynzMyYDs/w/lQHQonndcr8dHGWqz2mBgETd
         4amw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804468; x=1771409268;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DBJ0NKlYQHSTcX5I6AxqwzGVfI3Ct5XxPEslgPpmVnc=;
        b=Rmc5SvPVpS+2zzO0iTsAF+Z9QY7XbnxGewcM9LWpzJJGrCTZvWM8qg+JVlUqCPVx2e
         L5qH6IQEa1zL7okONhRFcYRB+w85rwItcfZifm0zrVtGZFAtHtfa/YuB+y0FId6hRxKm
         a7XKkxjTc1TcilBWLhjOCUk4fh4ZXyDdikpz7UAPrN5DHs9CTjM+0c1j/z41AO0VKqpv
         Il6cPmHSk6pnw3KEyy8/I4zogCpWrvf5THkMUcUvQeTnJZTfq0Pg/p6ZnWVhw5YG07Rx
         w1ft6HSFtqzlSVO3gApHqU0K/S9hQDc6Ax6guDVOFiR172+ZJiu1DWz0CxBk5/6bdg5m
         1ZNg==
X-Forwarded-Encrypted: i=1; AJvYcCVeaXTPQS8Vi5AhC5WarOR1zGvt+fhvkYDCHW01WzyG8s7kkFR0CasbHLezCeqIPQjEJ19/ejLGgpmm@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ97EUB3KLO/tzqOEA6RnV7weyAtYfz/l40dnrYBnV7P3/JdG2
	WcaROmtHg82fNxylj0wg2VCDfdBastgFXuBn7/8qmB4hiZkLfMkvDyAe
X-Gm-Gg: AZuq6aI1ZeXi8csKwNwgDe1zdGZmPfi5nDUnjD+l+LgVnFyrnQbVfXwYBPmiCSIZ5Qr
	R3n/s39kkhQch1XN1HQg8hzC+1fhwu7SVJovensGkIFif506N2uLuFflndfhBiAVW/IAiCyrDv5
	s1aq1YY+Qji6YbGKMc51XXcf3ViJ6BBgnSUUAn4mkrVDHMbCmeWNt5XypHtFa1O5fuWe2yhj74A
	n08w8mxfSosJQgRKKJL3z5TKOdcVma3F071X5W7Y1vbmyLdMyuBzpsTW/HJW4dcW4H5DOmJV+/r
	6rvEDhh4c1XRXTGKKUpt2pRs4ivZp9LbUhjuo+qt27QN0OXrKt16A9LvLEPjlRWaN8LyhngiFzm
	01ma3i5yPRCalwcU92jW5YyAbtPrxx9wYEEQvbkf2ucrqPFGiOpJxgMsnuDbk8/lUracdWcYUUB
	bc3+kStD6ms2j5SFhgIKTyDH0I0fGepXXPUZDTgVLmYeOMHAfqmgyrnnQ98fh0TSnNn2Yf
X-Received: by 2002:a05:600c:5288:b0:47d:403e:4eaf with SMTP id 5b1f17b1804b1-4835b90c34emr27593875e9.10.1770804468157;
        Wed, 11 Feb 2026 02:07:48 -0800 (PST)
Received: from ?IPV6:2a00:f502:160:28bc:50b:5000:8e7d:e760? ([2a00:f502:160:28bc:50b:5000:8e7d:e760])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835a5c7c4csm55048775e9.0.2026.02.11.02.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 02:07:47 -0800 (PST)
Message-ID: <b95d7a49-6191-4d85-b725-4a941505b40d@gmail.com>
Date: Wed, 11 Feb 2026 12:07:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
 <20260210-cm36686-v1-1-aef68dd46ad4@gmail.com>
 <20260211-sceptical-frog-of-revolution-fc3cf4@quoll>
Content-Language: en-US
In-Reply-To: <20260211-sceptical-frog-of-revolution-fc3cf4@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264718-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1B9921232DC
X-Rspamd-Action: no action



On 2/11/26 8:49 AM, Krzysztof Kozlowski wrote:
> 
> There was CM36686 v1 and v2, so I do not understand versioning here.
> Also, lack of any changelog.
> 
> And how is it supposed to work for us? Try yourself:
> 
>   $ b4 diff 20260210-cm36686-v1-1-aef68dd46ad4@gmail.com
>   Could not find lower series to compare against.
> 
> Please implement previous feedback.
> 
> Best regards,
> Krzysztof
> 

Since I am making changes to the existing driver instead of creating a new one,
I introduced a new patch series. As I mentioned in the cover letter, cm36686 is
fully compatible with vcnl4040, so instead of creating a new binding, I create a
fallback compatible for the device. I probably should have named this patch
series something else.
As for the previous feedback, I added the subject prefix and removed the
redundant phrasing.

