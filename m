Return-Path: <devicetree+bounces-260425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLIsJCIPemmS2AEAu9opvQ
	(envelope-from <devicetree+bounces-260425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:29:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F68A2237
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7AE4B301178D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562D3353EC5;
	Wed, 28 Jan 2026 13:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ukPg+oU+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6C4352C52
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606934; cv=none; b=m/2dpiBlemBDjcJQnNXbab5p29s+QV0aGcLhUvyjKqCgxixgUbuC7ADGMMnbpYkei5JkfUMj3wpBy06P1RNPXQwegNZJG1h7Knp6xwwkkqy9Gap79eeDnvY9fWe2ABkS52wpnJ3pVLuqhbkL2G+dpoF9mDAjQcXNdMult7gg0y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606934; c=relaxed/simple;
	bh=7ljei3xi3U8OfQYlSxjCCViYlQqU96DBeVgUd1EakdY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jD87OvKOnS6rN5AB+2A6BVtE1tFVShbIKFf31u6XykjtHNRLyp2vzB1llCdzUAkD+p1f680z+biBY/JBlCjXTGJhCAuF5NkcSO1vMCm+cI07vZ7U3G3VVPQ+5EQb4JL54bv9cauOtAysnXThcrP8rwIo/BFew6U6gQDsuYXcCPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ukPg+oU+; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-45effa36240so1019995b6e.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769606930; x=1770211730; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CR+ZvBkGA0rmoAszJtyMWrCYonp7pdFBqImvRwPUKjc=;
        b=ukPg+oU+ilBy6pTQ9tjwjwpQRW4+EURIRLwR5xF1LsFB20+Skq0mbnxUr/pT8s4ICd
         MFPb50R9hmfUIvVADAS+M3TSXjRsQ91qMNWLAGoSRm6u30aSu6Kg0HUw6Ldtd2QNai88
         pH8IG3Dgazcc3ZsFk9opbTXDKNqCcdt2ra1o9u7nn9Kn39uu0/x7TgOmqbOinjJkMJp+
         zABhbozDB5vTzax58TI9eaef7OPFzpLJfXLfzZpWPSr04hJvarMDoOKLYoqKztKQr2jt
         A9YIyjMadwaO5HaDwb4NkD1HUZO6itRxZjWnmQl4btUa0/wN3uvu52M3j4w3L5rnyhaC
         h4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606930; x=1770211730;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CR+ZvBkGA0rmoAszJtyMWrCYonp7pdFBqImvRwPUKjc=;
        b=b2sw1hbw4QiGD6iTyO7Z+B8enzzsJk903Fjq0OdXxj9iincrOe0cKh56jq5pD9+tXU
         TdyLu5Aqm4t8K5hGqbOT8z3DHHzxUCjXgkqxBWwjmAqr8wjy4D7oaFkribeYGnAv+azO
         6dkTQxLc2CGJoKD4HaYV6/d4gKafyNjS9DsupNPnDGyIN6r3Ngq/V0/lfIsAJhNosTw6
         Dfac2wZb04nxMRvZ30Du4wADTTht/IRPQeEtftp79m+xbFyNAhCVv/TTRMd06/WA4Cim
         tHyU5y7hI4jcGANIKKhEW3f1rSKCoan4B59I33cFfsfVeWTbkwriVBLjcTeaUnwSNpkY
         wZ/w==
X-Forwarded-Encrypted: i=1; AJvYcCWcofFuAY8W1SvAKJ4NwVDf8oIvUmPmPLlfGhCSkAk/tHhDcrYIEjaAW5DmchBG64IER5ILEjU/ctV2@vger.kernel.org
X-Gm-Message-State: AOJu0YxTvsjTXh5Ydr6RZOU5e/fvbzJQwUu2hrE6+YkvN1PlO88hbzjK
	b27cflBkVFSnwqs0qcxOym0808x9SfIxG+AoA9TP/YgpSas6GhJTo+3dAyXk9WLkfn0=
X-Gm-Gg: AZuq6aKgc2e03R4vP8CpRtO0JUdpKBwZgtEr2BLtfXXK8IARn9LXDxvxVCaIAzAEtuI
	rB70+ycZyDqAuDCcAmJxgNrbgM0WmS9Fs9RO+oQYzkvmGCy9Id4gv3bbyovsklBwaFudalm9IBW
	jeru4AGG4cj6veknlmsUPKEkXmXCx3Treaf6q9NqztEN3ERWQSX1hVwxoOGDAAQtu6DG7BNNiX8
	+fxglSY93/je9AgPmE6x3vC35DgRb+1I8vgdgGnsE+rH6WbQH0uYJV734MX1vx6Meg6qUsU48s3
	fYR0oPzrAzzFQd50aAKqGEPHBqqVVrWaATfjpTIX51qftfkfJFSJAPUNtLwgKbKYqWV8m1Ehbnm
	r7jJi8Cvlk1ybLfWka3mOm1uub88HKJA9CM+n6YiZwt3i+6QVpGGX59izRrwiQywgEpxQ8mLphq
	Vjm28WctqINJwgoH0Bvmg6QLVvmCgilzQysS9lVds9RxXZyw0rZSs=
X-Received: by 2002:a05:6820:f061:b0:662:f493:181 with SMTP id 006d021491bc7-662f49306cbmr2051118eaf.76.1769606930064;
        Wed, 28 Jan 2026 05:28:50 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f994388fsm1374132eaf.4.2026.01.28.05.28.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:28:49 -0800 (PST)
Message-ID: <501849d1-2158-471a-af25-da3dbb070422@riscstar.com>
Date: Wed, 28 Jan 2026 07:28:48 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] regulator: spacemit-p1: Fix n_voltages for BUCK
 and LDO regulators
To: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-1-2c86b06694ba@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-1-2c86b06694ba@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260425-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[riscstar.com,gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spacemit.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 46F68A2237
X-Rspamd-Action: no action

On 1/23/26 6:20 PM, Guodong Xu wrote:
> Higher voltage settings were unusable due to incorrect n_voltages values
> causing registration failures. For example, setting aldo4 to 3.3V failed
> with -EINVAL because the required selector (123) exceeded the allowed
> range (n_voltages=117).
> 
> Fix by aligning n_voltages with the hardware register widths per the P1
> datasheet [1]:
> - BUCK: 255 (was 254), allows selectors 0-254, selector 255 is reserved
> - LDO: 128 (was 117), allows selectors 0-127, selectors 0-10 are for
>    suspend mode, valid operational range is 11-127
> 
> This enables the full voltage range supported by the hardware.
> 
> Fixes: 8b84d712ad84 ("regulator: spacemit: support SpacemiT P1 regulators")
> Link: https://developer.spacemit.com/documentation [1]
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> v2: No change.
> ---
>   drivers/regulator/spacemit-p1.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
> index 2bf9137e12b1..2b585ba01a93 100644
> --- a/drivers/regulator/spacemit-p1.c
> +++ b/drivers/regulator/spacemit-p1.c
> @@ -87,13 +87,13 @@ static const struct linear_range p1_ldo_ranges[] = {
>   	}
>   
>   #define P1_BUCK_DESC(_n) \
> -	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 254, p1_buck_ranges)
> +	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)

This is correct.  There are 255 possible ranges, 0..254, and
255 is an illegal value.

I think this bug is an artifact of a change I made while
chasing an issue during development, and I neglected to
change it back.

Technically this is a bug fix but it doesn't matter because
this voltage value (255 represents 3.450 volts) was not
required.

>   #define P1_ALDO_DESC(_n) \
> -	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 117, p1_ldo_ranges)
> +	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)

I would say this is not correct.

The valid range of values in this register is 0xd-0x1f (11-127),
which is 117 values; 0xd represents 0.500V and 0x1f represents
3.400V.

Technically, all other values represent 0.5v (and could therefore
be considered valid), but I believe those should never be used
and intentionally considered them invalid.  If 0.5V is desired,
0xd should be used.

Do you disagree with this?
>   #define P1_DLDO_DESC(_n) \
> -	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 117, p1_ldo_ranges)
> +	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
>   
>   static const struct regulator_desc p1_regulator_desc[] = {
>   	P1_BUCK_DESC(1),
> 

I have exactly the same comment about this change to the
number of supported values.

					-Alex

