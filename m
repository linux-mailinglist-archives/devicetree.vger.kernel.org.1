Return-Path: <devicetree+bounces-274059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKFfCKxisWnQugIAu9opvQ
	(envelope-from <devicetree+bounces-274059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:40:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 64565263B0A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 59F513006D42
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E18347535;
	Wed, 11 Mar 2026 12:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ks3HfIZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42BD269CE6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232807; cv=none; b=ijioU8YELsDMFlU29idcQjbc5WXcjBECHwAbteZIz0WlSrd9bn3bJoKnSs3TExlI6mPlOIn6ifzQl5C+X901ekL8IA/YzWUTHCjfBGsHNck3QRZzcDkXtOvipg4pH2CEJVkE/QSDgcECjZsBWQUimk9dJK2LoirB/5gDnOgPKKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232807; c=relaxed/simple;
	bh=ypkgbZBJnCuKYz1Q4k4xX9VYLpvEeclpOgAoB/0XkJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RDs2i18lohNB8PinhrLI76xYkXn1ET5NOdUEXcVt9jfgMkv/byNR8kvBG3KnLzQpGDs+pXEGnzXkTcuZ6W0kdQ9gvrdfrjlz/6lQLgEzylO+XeJwoKRgfZvx63J6XyoJFiU5aPrxJIc+oqR6Ga4qVMGS6CAZTK/YpJnBp4u1jWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ks3HfIZH; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439b9b1900bso7620664f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773232803; x=1773837603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7bkd7t4OM6NrSXY3/5JBnKwSTKqs/TjWcikuqUhFmKk=;
        b=ks3HfIZHFPQ17cYq+md0FuV9Xlp4eBom2GooUYxQ5wIyfSn+i1EPXp9l5WXZVhBcan
         VNfc1UOyqa8+CNp9pm2wcR/7bgDE9Xd/dEQ+9u5e5XorRlrGsISA18PNgAONxDMa18t9
         tbUhzrTijFI5H2o0NBIv/6hn/LAUerf9lZF8XF5raDxuTdCfY/Z0bcttXbMCgXzsAYDD
         0tls6l/4fpSxpcy1suXHHqH5u9IUBLNGn4Dlj8vndULlr16J8sP7TP9/sPHXyj7feM2d
         mSsJT/yvVNfWO9n+SzO8hgjT1M/79SL0outxxZcWx1I9c6+HcO29x+d178Jy7+fWDNww
         9Frg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773232803; x=1773837603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7bkd7t4OM6NrSXY3/5JBnKwSTKqs/TjWcikuqUhFmKk=;
        b=M8ZvDfAluJ1JjqkP6qCdTDsYuah621vzTVD7Xi2bGx0Ys+h5aZ0xYn6X3ArInZ/+D/
         w04J99p8jUOW2KwpVmjl4o7yzEF32aaJipLpvdWa+nDIUTXgSMnaejbtcswJEG16wcx5
         ebQ0Y+yE/RC4zlmjGJ2xCxbj3vPHxH6U1tUh5yFbtXKwf00DeQWwjRgCxKQ1gkbHtY5R
         zKsNdegxb64FJsBIvKOMR2x2PCbea+cb1Ye+Ozo5KDgvCWS5cutHd8mb50YZXOAHCg0e
         iHpbPzqv0s2q/q1OT9o3kLip6zzttz2fTyI0axnsJP3vADEPD8svHKYbuBZtpkodIVhC
         QEYw==
X-Forwarded-Encrypted: i=1; AJvYcCXDcLAGPKyXgTBgR6tc4tpneaTU1bLYD9Li0vQqjhc6X6YZl+vd7eKowz5sBjxcXP1bqa+ls4jR9soF@vger.kernel.org
X-Gm-Message-State: AOJu0YyOZIl9T/juy4BTJOr4vlV2nciQoqjKNMff5NpGlw0buDiJ2Mx2
	7Qq8HM9XuSaxOIlL07x1atJ5WLYaEYIR8ux56ISAIo5eNCnGxRO3W3ya
X-Gm-Gg: ATEYQzyRssBTJ0Q+hxD6S9i9xfhXm50iAFbceN4RaepHmrscZ3p2CmpdmnDLW03KGqm
	PwTL9CGdaCH/4gt+9tpR1+cQQ+2Qbp8+oo7O3nJRsALuzE5T9dXMXJIn5gRUmSmdBz+C3qKN3aT
	+J6OLxe96Hg9N2f3jbvx5aClWeS3BSJXfMceBgysXrMP+oK4zNFVGJ50b8JTORTEzzyOhGDw86X
	3EHMl734KRyGgdkDxaNPKMpnY2nkcFgXEaOCwO7AZxTtF44ilnDPpsyiKqDs1LYUAc3dNx8ybY/
	7/NVJiQuOnbrEYVaWV91mKk6dwuq/6UtU9T3gj9MZXOmiAhM+dh1/ZxiHbwC17RVo80SnNOu3pS
	kC7bE8s6xyUDG9wd9vwVq1YgRhfhzBqaCNt9zIyAuUJKY9SIe67/BQCQRVJg3AoniBeI2733dtJ
	GWr7SjsxOL22uf8K4ks2lPthzr5RJ56E5OD5Jx
X-Received: by 2002:a05:6000:2503:b0:439:ad72:9900 with SMTP id ffacd0b85a97d-439f821ba00mr5021469f8f.29.1773232802942;
        Wed, 11 Mar 2026 05:40:02 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f81aca65sm7461346f8f.17.2026.03.11.05.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 05:40:02 -0700 (PDT)
Message-ID: <9e5babd2-3e11-4c79-9192-379b11392a58@gmail.com>
Date: Wed, 11 Mar 2026 14:40:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: light: vcnl4000: add regulator support
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Raymond Hackley <raymondhackley@protonmail.com>
References: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
 <20260311-vcnl4000-regulators-v1-2-66b6038ce563@gmail.com>
 <abFejMb3uLbg4fiu@ashevche-desk.local>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <abFejMb3uLbg4fiu@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 64565263B0A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274059-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,pmeerw.net,vger.kernel.org,lists.sr.ht,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,protonmail.com:email]
X-Rspamd-Action: no action



On 3/11/26 2:22 PM, Andy Shevchenko wrote:
> On Wed, Mar 11, 2026 at 01:38:03PM +0200, Erikas Bitovtas wrote:
>> Add supply, I2C and cathode voltage regulators to the sensor and enable
>> them. This keeps the sensor powered on even after its only supply shared
>> by another device shuts down.
> 
>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>> Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
> 
> Where was it reported? Do you need Closes tag?
> 
> ...
The report was done outside of LKML, in a Matrix channel.

Respectfully,
Erikas Bitovtas

