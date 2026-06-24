Return-Path: <devicetree+bounces-315296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HBQWBof4O2rtgwgAu9opvQ
	(envelope-from <devicetree+bounces-315296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:32:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 554956BFAD4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:32:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=TVI+Qcdp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315296-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315296-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEDB5300332B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83FFE3DA5A0;
	Wed, 24 Jun 2026 15:27:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35943D9DD9
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:27:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782314843; cv=none; b=JXuf2T5WyOPrJw09AUVPOzVwFz8BFcrzkEF5t7joIEbn9ClW+gZRcFO5oVyhvHxzi5TpBnT9Z0SZtckrNCvC2XZWNURERo3t3uUU7Si7iJj0Yp4Y2WbUPysS1khpW5Rgorbh4yQeYeqVnvjYOzsKOL0mn/H8pD6xlYR489e6Jm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782314843; c=relaxed/simple;
	bh=zQlht0IsyQB1oNhNfYXgYgQbV1Y7rokfYO480Nk79qY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KLEZBsohyrzVCDzIdIpI/zSxhV8x38FaOTuytkfY52NTwybI9jGw73WDhQuUZcbMSHb4qq+ja58z8XdyN06kk7s9V1+/Bb+Lb7SNTBl7SfvnQFq2DAEtlF5pC71KFDnxF7/Z52LwioxgaNH1If3ucI+W+sBqMNghmj2dCgyb9ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=TVI+Qcdp; arc=none smtp.client-ip=209.85.160.51
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-447efaebabeso226308fac.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 08:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782314840; x=1782919640; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fjq8lD80zO6HiyYMuWH6+pjiwlUb52f+5tf0ovQAwVM=;
        b=TVI+QcdpMI3gzRx7l3JLLLB5sQGg3piLry+GcCTA5BxoD+KBsB3tPvy4HxUpIHxhqK
         wSlAcvWsHnGKXG03VwM4A5aFP9xiyo+lB2WtFA6yWUS87wNocMowf3EOtiBHwEHcBHdu
         U2Ir1u4g1w02xirvTNygo+DjlkTI3RSntD7iIes520e35AS00NKB8jtqaccxMrAm+Y8X
         gC2OQ+gVV1inlg+5U/bPqKBT9KplfjhNOzBOLXjuW16lJdctd0mBgSppV3/9rbPARJh9
         H1x4/mi5msywP21t3cglyP/VQjWp+BAVJ4ytVvH+f2VApXP1bAMRz64HIOrf5h/UAlZm
         iiXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782314840; x=1782919640;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fjq8lD80zO6HiyYMuWH6+pjiwlUb52f+5tf0ovQAwVM=;
        b=tCil91iJP5yNxd3YUEGxvuJ6+WPwWsZqq7u8JXYFSp2iYP2ys46rDOSMEp5+D/wQ06
         0eSxnlgCqnLHcLCDuDHWo10sqXJnLxBonpvfVexIMaymLjTZ4qXV6HM/EjfAxokzja6f
         io3GXO0DOtg8u8oNKYaN3ulTAiz3HUlTBoUSElmRvqjKzHqVmmTctIFqtZJEzR/+QDH5
         mj/ig0lh4i03AD0ejsdwrI0hl1z9bzNRBSSbaWTeYAoWwfYZy1i4k0hAGqCTwQEi86gQ
         wSwYHfHLsKhUBrJbViBc564vVJ2YtmAidbNficVvLG3SNJXGcZtHDbDwvIbQuiAaCxaO
         W0pA==
X-Forwarded-Encrypted: i=1; AFNElJ+J4dGyA1qT6gT0C6+tOAzzS+mawmyjZEpoFzlY51VyOfc+rxMtOz4t3JLCifOqFExx9ixIzsuYZLpu@vger.kernel.org
X-Gm-Message-State: AOJu0YxuknJkCHC1WTU7Rup+HPwbJoUZXCuydQnA51JmvBFxEOI2IlJF
	POIUuRpy4hSRG4mxkPDTTkugim97g1rFVn02O6H+GQmHbvL+6Tb1tRzvHZKBeijaI3w=
X-Gm-Gg: AfdE7cnyO6dj83MS8cgnWhxSinxQCrkwsuTCjCcxO9zcw6hM+AWOCDC8NSP9dAFabSr
	vNSOVcmuAQxgiptlma79567pH48WsnFfsTrjonwNrCkWuIMVfS3UoZ984GbTa7De3QwDR9rTP9b
	bNYveFxEBDWBAb60hDALT9f9wW8oe+7KSTuTB8pPQpLYsEWAAVeWA1QwhsFMV++M5jpNJeVrdFD
	XGnpnqY6P0UD08Pq2VLKyhBXNrKQKHjHFrvfcWC51BgeS0ME/Cyhn1oX7a9hHfioW0S7q3dH00/
	mJfgfGBZWCsTRMEhlriAyjpy3WAD3sh235Shwv/0FudyfNt4V6tzdxUcULPw3n9Kzp2Fr/XGmOW
	CI+YYnndf4IsCzVd+BoizWnC1Jpq7pLeIwdbluIVJjW2updOhuX1t3XEFTjVe+OGYO2lS/zvpdG
	CcuIYtvY+eMChxaE+yNRv1OvHWHuslmss9V2gwgNCRmpF1llW9PzGQhkyaCMtMmwA=
X-Received: by 2002:a05:6871:7991:b0:42c:4c8:4a5a with SMTP id 586e51a60fabf-447dce9b4a5mr2572915fac.28.1782314840687;
        Wed, 24 Jun 2026 08:27:20 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:68dc:b788:b3ac:e34e? ([2600:8803:e7e4:500:68dc:b788:b3ac:e34e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472ec6065esm10933021fac.4.2026.06.24.08.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 08:27:20 -0700 (PDT)
Message-ID: <afebba8b-ec1e-4b91-a600-f4df0c576219@baylibre.com>
Date: Wed, 24 Jun 2026 10:27:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] iio: dac: dac8163: Add driver for DAC8163
To: Lukas <lukas.metz@gmx.net>, Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
 <20260623-dac8163-work-v1-1-5b508158faa0@gmx.net>
 <ajrg62FtXNObGkmc@ashevche-desk.local> <ajvt5J5Cs5cOdTLt@berta-MS-7693>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <ajvt5J5Cs5cOdTLt@berta-MS-7693>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315296-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.net,intel.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 554956BFAD4

On 6/24/26 9:47 AM, Lukas wrote:
> Thanks a lot for all the comments.
> 
> On Tue, Jun 23, 2026 at 10:39:23PM +0300, Andy Shevchenko wrote:
> 
>>> +		dev_dbg(dev, "%s: val=%d val2=%d\n", __func__, val, val2);

Trimming down the reply is good, but in this case, it would have been
helpful to leave a bit more context. I usually keep the full function
in a reply to have enough context if it isn't too long.

>>
>> No. Is it RFC? PoC? Or production-ready? If not the latter, come when it will
>> be production-ready.
>>
> 
> I will remove the debug print. I tried my best to make this driver production-ready.
> I saw that other drivers also have similar debug messages so i didnt

This one jumped out to both of us as odd because of the __func__ and the
fact that it is in a very common operation (raw write). Usually debug is
for catching odd things that happen, not normal things.

> remove it after my first tests and thought it is ok to leave it in
> there. My intention was to try to apply the suggestions and comments i
> get and send a second revision. Do you think thats the right way?

Yes, you are doing it right. For a new driver like this, it is best
to wait about a week before submitting the next revision to give ample
time for review. Your replies so far where you think a suggestion was
wrong or have asked for clarification are spot on as to what we expect
for the review process.


