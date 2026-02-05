Return-Path: <devicetree+bounces-262852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKfyC0UrhGla0QMAu9opvQ
	(envelope-from <devicetree+bounces-262852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 06:31:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6CFEEBC0
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 06:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50BE13011F03
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 05:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA06331B839;
	Thu,  5 Feb 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CCqoCx1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9C72FE578
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770269433; cv=none; b=jTEKZRK9GfAY9ewJx/yFXxXTyVbSSwWJTdhJ2wrcSVU/UT13hNSFZ1dV28qglfRXLpG+cl9utsMlLQgkoJH/tVqDpJaJ9jFF3/RoqU6ijDsYC1OdLICJZDoLqVvwyCg5DkhzNQDCLDFG24mHRpZz6VJDPge0W2cSXUe9pcz6eV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770269433; c=relaxed/simple;
	bh=4EaoPSeJZ7PkjcSfAJKvXYNbcn+qSK9lMNkJQT680dI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n82WDNJfCv42eMT65pVe2201k/DrU7wuoJMD8I6Vjg4dNJsD40DVW7ZzMnge/O3Xo5NPuWGYtNgGnh24oIh0tChdk0GOx9xptvc8HQmdOHkp94JSaLkyroNyEGmvo3NUvvevwB9mBlZPnBaKtW5eRFYNozSmR3PBLQEV0MxOwVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CCqoCx1P; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3543b9f60e3so190849a91.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 21:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770269433; x=1770874233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iCHA0pyhYtn7RkNtoCLDE38YqGNfLX3z4U6eqqpc/Lw=;
        b=CCqoCx1PWYY4Fm1De2VFf7jOpp+4oqbVgE/KjpjlYZZejghB8GQPwTXUMOD64tDmhk
         iw7KBcIZBnt0n/wrKDAYOHs/C9RjL+J3VHszT0+bBMTOk0T1+J9hzPGVI5ja8rGBl/T0
         rW1tQMgeQQfJBEfLKrCKtiBBtSjCws6RNNXKQSp9w3h3d4HVPsLKp8uC1dxHuiP13T65
         +qIq82+8FyLBCsv71cTgloL1CbzJ3xD47nG7vM00fFyF/6/aHL0PqzYfAvFG9ug0Jumk
         Tpfh8E1+jJs3eeEkCOWZqQYsHXogc6kfmXQhh5JStt1fPeg7lS8OtKkC3fbtefAGlxaG
         8W5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770269433; x=1770874233;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iCHA0pyhYtn7RkNtoCLDE38YqGNfLX3z4U6eqqpc/Lw=;
        b=d9LeCbHdAztodBS0ZXIMy0iwbMByWeGcUSdTn3YPDiLe11iAMnjnTk8Ccd1CG2bnrQ
         6DUqFjlelhMiyawQ9Uehs8I816T7/smy4DZpMQrAmD9xiI9avaanyJprO2UlynQ0hL/O
         xk+yGum4NvVie+0jdeQluaIDwZ/15e0GLLfbbVOBk2Q/vXWgyBPuWqPYx5jnOrCxz/PP
         VLYf7dS0ofKLGylrvM+GtRS5iUHpiQK/wYgKVGHqedHCkDen7ZIVZ2ajFZjFeU8n1JQ1
         8I2CzwVVqQoW73XG3AIvMmFCSLOAVrPK5E8+s/DdtPHblDBShnmhLRq3w/ipbu/O9ZCU
         17Sg==
X-Forwarded-Encrypted: i=1; AJvYcCXvX6Qtmyof0yPAk+/q5E61eozItCueh11NxvOkiasbkMHKF1B+pSzMx65CNlAde92u6FoqNzxbyWiJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwvXddc/USBZgL3QbHn3ybCV4AnCaiXLbn2+0ZGWzxO6PzOGm78
	kz0Q3Mx0twFgQO380hNnBO/XvBGVL47ktwuwQAZixo8J0Cq53P2uXQ0O
X-Gm-Gg: AZuq6aJx9fR07TdYS40r5hMFoKfO1NHvFkz18auRs1OySNkKwcJPg2STYJzGWPBms1U
	CxWs1vLyh0opQ1YYm5T+oQYBw6h/t6Rb7BBosx+nTi/Yit3J62LBUxdUDzB/IN8uNFvDB1mlmi6
	tNtTmUaDMU9trzNjQvvJWzh2Yfp3jOzi96N8IBXlIDwiDIjK+MzjC6RxsrAzJzuZfXl4JkBAECJ
	g3aJ9djH+Y+KEtzXJo7RwaAgYplQdY+TkQgA4TXAW08vzjL6oh96fKTX9r2z1FB5J23r5FowC0R
	7r687FuOG0G6VuHGTTN5y7jgpgMVOkDaGMumo1bV/Jszwl3Ja4II+Y01Ttx1eDg+6gHZ3fi8nUD
	qr4C1Wly3ik6c0dUE6X9cOYM/9OZ2UiDnSt3AUyKeG/35zkAJWCvr2De2FJyT/KMMKI57E406ti
	rVP9Ijdf3O/JM6wj2wynZOoiP+8yF9PiwcSigPTpBpOibau933bAyfCyW/+7jL
X-Received: by 2002:a17:90b:3910:b0:343:edb0:1012 with SMTP id 98e67ed59e1d1-354871ab52dmr4376106a91.21.1770269432656;
        Wed, 04 Feb 2026 21:30:32 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c09adf4sm1072941a91.3.2026.02.04.21.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 21:30:32 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <29f37729-b38a-4c38-a74b-011b2766587a@roeck-us.net>
Date: Wed, 4 Feb 2026 21:30:30 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: hwmon: pmbus: mpq8785: add MPQ8786 support
To: "Lee, Carl" <Carl.Lee@amd.com>, Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Charles Hsu <ythsu0511@gmail.com>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Shen, Peter" <Peter.Shen@amd.com>, "Huang, Colin" <Colin.Huang2@amd.com>
References: <20260203-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v1-1-67b041e2f762@amd.com>
 <20260204-sanction-lunacy-903e96c447e4@spud>
 <ec538467-9068-4ad5-b788-e60f593253be@roeck-us.net>
 <IA1PR12MB759127AAA1EEF4DC6C1904018399A@IA1PR12MB7591.namprd12.prod.outlook.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <IA1PR12MB759127AAA1EEF4DC6C1904018399A@IA1PR12MB7591.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,amd.com];
	TAGGED_FROM(0.00)[bounces-262852-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E6CFEEBC0
X-Rspamd-Action: no action

On 2/4/26 19:32, Lee, Carl wrote:
> [AMD Proprietary]
> 
> sorry for the confusion.
> 
> I didn't realize before that driver patches should be sent as part of the same series,
> while DT binding updates should be submitted later.

Patches should be sent as series, with the devicetree patch as _first_ patch
of the series (_not_ later).

Guenter

> The corresponding driver patch is available here:
> https://lore.kernel.org/all/20260203-hwmon-pmbus-mpq8785-add-support-for-mpq8786-v1-1-9ff8c7c50242@amd.com/
> 
> Please let me know if you would prefer this to be resent properly as a series.


