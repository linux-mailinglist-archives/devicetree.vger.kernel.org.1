Return-Path: <devicetree+bounces-277426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEBlC+zuumkBdQIAu9opvQ
	(envelope-from <devicetree+bounces-277426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:29:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A6F2C1462
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:28:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5033C32851C2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63D43B8943;
	Wed, 18 Mar 2026 18:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AJsKXQvo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8F0360753
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 18:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773857498; cv=none; b=rYXs64GPgZUnWK9kHXc0F+Y2rJfiwyuhH0rclCJBLjfShFB7RFuKBCJZAy0sTKJBbXzJm6PlBLdwaYKoNAVcaz8AkELpHPNTDrOHF/JkGr2XEDxP2zHtjiXCRSdslrGv+4AymFoAxuGVIKA8pbAOM+EKalwZCiUzGD40Q0ot5f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773857498; c=relaxed/simple;
	bh=qNG7XEKNJ3eK/WSUNROIvI5dSg1+nMT5Pv3rsCFWPjo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CnjjK3bjT85a7N8MSX+Z2hCFKSU/ig6eM8JqgOxvO+ZVdWR0/nUed4/ABlCoezNsLTxDz99LO+M7Nc67QNEU2XrrvqMrEyazyPDd6RfT1/n65a5eGxlUGHFrfsGCcOaCixIyiiufLGcXaW++CGdlDYmyRILqlWNON+6oW9C/EKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AJsKXQvo; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-35a288a2c00so101187a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773857497; x=1774462297; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U1ETtoeekXbdJ83n8y2Hf9hAjdE8pezoMIdxEKwj+qs=;
        b=AJsKXQvo77xKwUG0P0wA1OAbKLwOmtEntLTo2D6aqfMHMwC5Kdxg82FAe4cCUaTsu2
         6BFIHcQVL6JqgN9fNyHFt2fCW+BGcc17DYyQAvqR/ee+u60+R/XAwWzqfNkPwgPymj+9
         JXQ/clJoUTCy+Bb2uj9PQ8ULL9yLln12bitm0iBgDLVvXtLjbj387OAoDTIoOgqMY6Cc
         N9qyNEue0GREJm3mc0vL9Ka9v67J+Uy32oDIStLiOIprqOdVhc6ALlW0IbU9eMDKsdkU
         ZXb4s6aHjjGFXFCBWMxGJBDVNLePLruCsgDVnDd0TPXk9lnI94+6nWwfqyi86X3AXJAC
         ldag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773857497; x=1774462297;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U1ETtoeekXbdJ83n8y2Hf9hAjdE8pezoMIdxEKwj+qs=;
        b=keL/KCU5zs2pallnw1laGIo6lzhpgAkSHfrJcrAN3TXUH6jOdB6detJwmwxvV92nog
         nn+9VHy0tMnr/X1x0d9rspv7cS4UvdH0cFWQq89H8mrzo1D3a5L+guJV6kPTlotHN3ib
         vSY0J9MSrTDtgTV4zZ3hSAXTixTma85H3Y8/6SUSCtOw4GqrgKKvsfyaLvDfZ0Xa2Xy0
         CNR6FVT5xx94KeDn6/KHhrhyfPt1ng7QfVlJhy1R/qZqKZe17naIn7PGVRPBkf6yAxVe
         14XyVxHUMysGIEcJAkq+vTYUgoTyGxX2N5eySgvo2ozj63T1DSMKJ7bfiHe/72XlYy0a
         3iQA==
X-Forwarded-Encrypted: i=1; AJvYcCWQrKGzk80qorhmRN7IKcCtr/5gGHpefpN/BhGKMvQyhpfUsHmjxO6r59r5CCy12JX8A6cckLhCMkPe@vger.kernel.org
X-Gm-Message-State: AOJu0YyKuulrd7gNYFQg2tIZlVnqx5gGCQL9uo7GypCKzFqDI6XbsdDk
	oofb4rhhRr9Q/cfy88Tse6JI8QgGBF97PEyMJPmWR0GPNtwWrztzS0pF
X-Gm-Gg: ATEYQzz053bsQwgcxCGV6FRqt8qtcEZiDYIJ64AFrEk7uf+ShQ3ZN0jGNw3TA4/p/G0
	7baV7wnbZ49/KyugWmfUAfKaPXc1bL9CQLfPAUy+0/D4zX40U/+Doc0dqkpbljEP21WrtAKyHwS
	SzsJFjTbov0MbMUbu5LgbvnlLkFVgS84xAW34fCUfmG4eAAuGkM7syOJtKtFTxZMkmSTmixi8Ho
	5ykyZlDODiI4kak4sE7DMHYZmj8ktVfazd4MN3QSrrd9O7wO8/ioRXCURQFUeKnhDUPSYSWHJdI
	cLQVd1Fs9YeGMLiKphuMVK1iiatB0j9uoQyIpL7RcL1wUlBPTxQQhbLxKjxQjEHVsF2ZXahiboO
	oDV1FV6pu3NLmDuJK80ObdLIALR78FE+ssuj9ELX/eoQJN6zvawylxl9HVjLdR8V4rPMDyKyyc5
	qXPJtM8rps9WvgsgP90yc0Axb+leGdMA2k37+cek/2k9WCBnCWdDl/TRmNXV6elBDZZgQYkEyu
X-Received: by 2002:a17:90b:2ec4:b0:35b:9777:8bae with SMTP id 98e67ed59e1d1-35bb9f2e162mr3712391a91.21.1773857496834;
        Wed, 18 Mar 2026 11:11:36 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc6310b72sm262365a91.13.2026.03.18.11.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 11:11:36 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <5ef86cbf-63d4-4ed6-8559-956b949d7952@roeck-us.net>
Date: Wed, 18 Mar 2026 11:11:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] hwmon: pmbus: Add support for mpm3695-20 and
 mpm3690s-15
To: Yuxi Wang <Yuxi.Wang@monolithicpower.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, paweldembicki@gmail.com,
 carl.lee@amd.com, ythsu0511@gmail.com
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wyx137120466@gmail.com
References: <0111019d0057a612-70585e60-1d6a-460c-8fae-d5bd16fc5e4f-000000@us-west-1.amazonses.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <0111019d0057a612-70585e60-1d6a-460c-8fae-d5bd16fc5e4f-000000@us-west-1.amazonses.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[monolithicpower.com,kernel.org,gmail.com,amd.com];
	TAGGED_FROM(0.00)[bounces-277426-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.973];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 86A6F2C1462
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 02:47, Yuxi Wang wrote:
> Add support for mpm3695-20 and mpm3690s-15 in mpq8785 driver.
> 
> Yuxi Wang (2):
>    dt-bindings: hwmon: pmbus: mpq8785: add mpm3695-20 and mpm3690s-15
>      support
>    hwmon: pmbus: mpq8785: add support for mpm3695-20 and mpm3690s-15
> 
>   .../devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml   |  2 ++
>   drivers/hwmon/pmbus/mpq8785.c                          | 10 +++++++++-
>   2 files changed, 11 insertions(+), 1 deletion(-)
> 
In addition to my other comments, please also check AI review feedback at

https://sashiko.dev/#/patchset/20260318094635.1873-1-Yuxi.Wang%40monolithicpower.com

Thanks,
Guenter


