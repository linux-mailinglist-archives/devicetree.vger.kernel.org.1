Return-Path: <devicetree+bounces-276527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NfeCOMLuWk/ngEAu9opvQ
	(envelope-from <devicetree+bounces-276527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:08:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 907092A5540
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30699303264E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86CA394477;
	Tue, 17 Mar 2026 08:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yr/HjY3i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165C3393DE0
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734866; cv=none; b=qj55oQEM58Ddv/j2NmUMNJkqhYULG+n1ANBZgbs80ODn2RWLgo9Q1YUIf0ZBtiQxCAqTnIEliB4e6rFM8XizVBQkAC4GbV4jjTmPgx9450Zx/LOOCDHCejneAN5huymCR1CJseMsfiX+tGbqJtE53lOrNISoroxyE3+aX8NTloQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734866; c=relaxed/simple;
	bh=xjMI3kWLb004RFGciwvvZcxiwmFj4VVzpHoNLJgITKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V599DjbnhgwqEF7OKUx4g23j7zHt2QF+RlbqkTbC0HrJUuUdYwWr8KPXhqMCN3Ud9iCESU4CcPHvo87DSgW4CcCdSHLskUfTiIthEK2/eUj2Q7iiCqgsp5sPky+z6wHmhvo7c5pylBZHpMZOsoJOxtVymH9Nxdy5hIJ/tgbnZZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yr/HjY3i; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-660dcafc85aso10456993a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 01:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773734863; x=1774339663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zH58nQVPnaeEnUw730ASGfF9l+ejJ6sv9p1FAkERXbs=;
        b=Yr/HjY3i0z05NXV2n+9u2rLpjSTAQA6C5n5F6bXf5kuhRPunLI+fR5ENlF8X2e/2qY
         aiE547oHcpobbrStQkqGCvT2OdzmG5jogJYsVCyd356eEWLhVy9wvxlPMOKyeLpJy1JC
         FKWklfEzrseRM97NkJ8573zCuA4bUaZnokqkXtwOQ+9X6uj3jMM7o5elCcEcSS8pAV2h
         k/hiqVNqkXSidFLyq4ZgLQYEOfTnnbr2gL2KDmFAFIjh+7zEcrFcJeGQqsW0nqwDZxya
         H0CGYEBuohgoLOZKwRiJXTRvPewVLChYCHwc/7n/lKI5w+Xq0W+ajSb+K0A/lD/Ntr08
         TZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773734863; x=1774339663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zH58nQVPnaeEnUw730ASGfF9l+ejJ6sv9p1FAkERXbs=;
        b=VgGLqwJV43gpfq7F78BpA35OzcRAZZxFytr4qbEX2qZT0TbReq+JTbVLpI81kYFozZ
         hcH4XJ+zdfk15DaknaqreVjYH8eKvgbDffO1bWzMXDkaJcLg/Rowz0hGY042oQVFdXCq
         G5353EU1Vadz4VFRTTh7G+4FKbgduszoU0/iFt4yIyivhpAtRMdB7evEJXW1Hi8bqSl4
         XVK5GSpvm4AhET5wnx2QnuY9qqGSsMEPktYZKnEFGDEpm4E7HWEkHIm+Y7SN97DT8/di
         F2fHetAkugzR66sFS9L/5A6Byl4MTQr1EFS7d3VAgGeZL7dhwHxFWYDeQq+PvZsOdqfK
         Uu+g==
X-Forwarded-Encrypted: i=1; AJvYcCUHQyDnVHjtxbn5/yzdnZslwdZdt7JbGk9VuyvFaqgj/1gTGWHFzwZHk4dctHdCWcPLx/GQq6nmZWxB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8pPq1h2BBGrP+2NuqCYij4URO88Ngcv0G1L2yqMtBPJ9KCWdC
	3nC1uJ2fGQN0VrtfLjg8t72KfGeu2r5sMajCrosLKcu4gRMJRqiIw0g6
X-Gm-Gg: ATEYQzzxbpaK5+kbPP/JyomSZCY7vSv04SWh697NAQ1dcfVQdwbWeWwlw36jZJgv17q
	KMjJ9yksM3cSHymQvJnFXebdbyy2Tq7cVcHRoLngOGRKPoiqzKN3rvy1OjP+YMUlKdkMiM7jHtH
	sYVtmiBEpnO68XxTVUYU0BdhkZaW+mIedRWqZZmRPWz9hpBWBAEXpyG4jN2WJA+rPjmlcgi19NT
	vXW0+VWw1EpshwSGVc34JDBOZT6yVQNUKiZx0FuzHPq+TYgPT9kb3SETP7B+4hnloyPuLUo1W1o
	Fhg++4CAUpdyPx5Rk5IS+8KMKzfFCBz4CU6PSeLf74FCF/plASP3hb7QxCWF1unk2xhrnYpUauH
	8XmuRbQFfDxtYEDWkOW+2dMZ/QnhcHUfuPu3K8lDblAh6dxWrFWoYeLb6W8ChXM6oLjkkZLEz9b
	Ake+zBWynLg4vJr9KlhTvJ9AwCYKNwAnIdvo3d
X-Received: by 2002:a17:907:6d05:b0:b97:b378:62ba with SMTP id a640c23a62f3a-b97b3786658mr484917966b.33.1773734862942;
        Tue, 17 Mar 2026 01:07:42 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb47fasm666212966b.43.2026.03.17.01.07.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 01:07:42 -0700 (PDT)
Message-ID: <da9850da-af27-48d9-9e5e-2d187c35d262@gmail.com>
Date: Tue, 17 Mar 2026 10:07:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/7] dt-bindings: iio: light: vcnl4000: add regulators
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
 <20260316-vcnl4000-regulators-v4-1-854fc2eaf54b@gmail.com>
 <20260317-tricky-pony-of-assurance-7a8cac@quoll>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <20260317-tricky-pony-of-assurance-7a8cac@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276527-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 907092A5540
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/26 9:20 AM, Krzysztof Kozlowski wrote:
> On Mon, Mar 16, 2026 at 07:19:45PM +0200, Erikas Bitovtas wrote:
>> These sensors can accept 2 supplies - one for the sensor and one for IR
>> LED [1]. Add supply properties for the sensor - 2 for the sensors and
>> one external, for their I2C bus, to ensure the sensor is powered on
>> before proceeding with setup.
>>
>> [1] https://www.vishay.com/docs/84274/vcnl4040.pdf
>>
>> Reviewed-by: David Lechner <dlechner@baylibre.com>
>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> index 2ba4d5de4ec4..a1b4c02db246 100644
>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> @@ -33,6 +33,10 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>  
>> +  vdd-supply: true
>> +  vddio-supply: true
>> +  vled-supply: true
> 
> Same comments as before, I do not see improvements.
> 
> Best regards,
> Krzysztof
> 

I explained why in v3. The message can be found here:
https://lore.kernel.org/linux-iio/cb92bb47-9078-475d-b242-71e3f9181a72@baylibre.com/T/#m6da277894cf5c2b473fbeebd4b7bafc7519ebc26

