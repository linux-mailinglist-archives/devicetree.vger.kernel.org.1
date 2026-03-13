Return-Path: <devicetree+bounces-275187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDwxNGUAtGnCfAAAu9opvQ
	(envelope-from <devicetree+bounces-275187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:17:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5A3282D2F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB54830C6A77
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46F8391E48;
	Fri, 13 Mar 2026 12:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S2zuPGlI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB532FD1B3
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773404258; cv=none; b=W5nQVSWjc+5RgzewJMb1lGvdnzde5f3xSNtYc/fyx6/wX9LdzN4g1HqQsRMunlK69sy4TCdPBZcQra3kZgavGIBol9N6js4CtP8f1y3sZjyVauzlDXYGlKnbyewKIdYLXS22spIisBrcDS4jfcFA4gddHI0PsUkC6wo97g/syQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773404258; c=relaxed/simple;
	bh=dH/LRUSNBatrGwHvEX3Iy06egEiIiZiFcoxmr7F53lw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IU9FdC1dZC90skuQnU3CUX9RdqsUnwIP0jSRHrm3OKsuhcBzteTiPZqYb71jxki1rVGjQ1eUgTUYzgNlz3NQAqL5fKit5kv0ssQRZ3c9QsEpve5M5OaqMniD84s2bwLptjvBWUPi5iO1REIcO11JXMsJcP5M2NI7FsdD4NdrpLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S2zuPGlI; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-662b933f8d1so3534792a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773404256; x=1774009056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3s5B4wCXYFxF46H+9RZgBJPAFEqIaUF6//FgPVVAHcY=;
        b=S2zuPGlIvMArgiJbiTh839YX2dUIZitVPKFFfae4E4KrnUwsEU5zfTDpwC7/yPuxne
         46IoNzj5dgBt//MxZK9J5PVdo97x0hOe90mChE0M1AXFizXkWrPyzt0tQWFUnWdFNnJW
         2twpsABjZgr2XSOC2ytpD4qsYfhhiZnqXehNVc4QteLvDl2UiC71FbcHrpCGGIiYQbIe
         YUNjD+leYjMZYO709jzCqiIxC7jDcuIlLG3XaMvCjRAD07ikJ7lHwOJJ6lkzmoiWkG9t
         s4pE9n+q0NQztZiDV14T5oMHac52F2clHH/12FfXusd/ECoD63K2IuInIVl4/SZuXqEF
         OZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773404256; x=1774009056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3s5B4wCXYFxF46H+9RZgBJPAFEqIaUF6//FgPVVAHcY=;
        b=pcm9QWJlB7sf308e6k7EndtQyX2D+V3R8Olj/fhWrOg+u0xmM0EEsdu0xbYBCnVBFv
         zbIlpRnCpdcDO29iuUr1SfVhxN1Jo8+zhyH+f/9A+itmtCpXr/zn4W/+p8tXHsgebep/
         4LjOzRahHvA6khpNMhe7TU2v7UCoN/hiw/KrlhqY8+xieaCLw6wCPdDV/cwGJnXWYlBa
         EQM2gZ6O6BzQEGEGswETi0AqWYd16tjxGSGgkQLLEvg6hXrkXxebm6RIFJ8AVjNflWwS
         qdHAkDfZ/CFNZqX0qCMucqA6p4PgdeMpPhkk5assxUVmFD5/k4Cw7u32Pw3/lHBooi43
         Nr0w==
X-Forwarded-Encrypted: i=1; AJvYcCW0wQQBMBz12L5Akgn4iiH/thkh1aZWJCDMfJEC7r5bH/zrzP6lUKqRu6lcVoQeE4TTINj1D/rN0di/@vger.kernel.org
X-Gm-Message-State: AOJu0YxfHFJiLJHDH445ymiyRZORc6BJedNFPm9drkgSJnCrBWDBgnrU
	QBpCVhV0KyNnuYP01zfWZWNSSyralpKqNx6pnZvLfSN8wHzkdKk1XR6pRMpSqKALsoY=
X-Gm-Gg: ATEYQzzKu7yeUCVazhJ20I2nRZBv85c6J5tKdeiuhOo060oCgmmAQQuVY3+dINtw7ES
	q1CvjsnzX/5xcE1zdWepL0KInNlSZINQyUwR68qJyXlVvGpjwk/BpJPfS8Ii0xrC5dpjCMeZl7K
	midaGgO7c+mDdTtwBILOsZAGZCswI4EQGoPLeKIWfZgJ8lEjTF82a0EpP4GHacAh0JvClULRYaG
	o3ktNYpSDkVLbcdpGQfHIIkeX8TsHukFKSzeQySVJbwiNkQWEguZ7IibnV6yYZPgpTcevdLSnyS
	jzvOZOcJLghcWWFEwbZZQU/3+MrXywlOshjhRRh7S+ea76wmwNwDpCjmxNxv6kfQxwKLF2oQlU1
	B0JCo+XSEO1sPxrGbprV34uS8zrG0jQsO1k0GIvYxunaGludlQd1lYCKZrD7YXjumFjUIHzQIoN
	hjickLcmkdJ3Km3KUv61ZyGr2IwW44NBGuYOg=
X-Received: by 2002:a17:907:174a:b0:b96:7e03:166c with SMTP id a640c23a62f3a-b97651b4282mr160852266b.53.1773404255612;
        Fri, 13 Mar 2026 05:17:35 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.176.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97756e59c4sm23182566b.35.2026.03.13.05.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:17:35 -0700 (PDT)
Message-ID: <9241da21-6b02-434d-a746-6bccc25a335d@linaro.org>
Date: Fri, 13 Mar 2026 12:17:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-275187-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3C5A3282D2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/03/2026 10:29, Anvesh Jain P wrote:
> + * Read Response:
> + * ----------------------------------------------------------------------
> + * | Offset	| Name		| Description				|
> + * ----------------------------------------------------------------------
> + * | 0x00	| Byte count	| Number of bytes in response		|
> + * |		|		| (exluding byte count)			|

Great to see this documented in the code.

Please run checkpatch and take heed of what it says.

0002-platform-arm64-Add-driver-for-EC-found-on-Qualcomm-r.patch has no 
obvious style problems and is ready for submission.
0002-platform-arm64-Add-driver-for-EC-found-on-Qualcomm-r.patch:184: 
exluding ==> excluding, exuding
0002-platform-arm64-Add-driver-for-EC-found-on-Qualcomm-r.patch:224: 
exluding ==> excluding, exuding
total: 0 errors, 0 warnings, 0 checks, 28 lines checked

---
bod

