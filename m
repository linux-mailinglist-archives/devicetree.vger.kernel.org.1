Return-Path: <devicetree+bounces-263635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGs9IOZ/h2lFYwQAu9opvQ
	(envelope-from <devicetree+bounces-263635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:09:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D73DB106CAB
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 871683018778
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 18:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A6B2FABE7;
	Sat,  7 Feb 2026 18:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YasdDXT+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332332E0413
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 18:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770487779; cv=none; b=Uwx3d5TzZN2Sre5Pg46qbw7tgs03k4u5XoPKOmvDvDje9jV5NrJDmUFuxwTAYIrUjTYOJ9GRyCSnT3k+kmmKGxvG6A6jynenxxa00QLk/t5TIpxg9RrmSnUeKcOS/4mSHtDsr9BqZTU9o0alT1U5Q346T1qnoyXVStHGT981Q4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770487779; c=relaxed/simple;
	bh=Z1RlCkvjAKV6GMKhbwoWjgZvhZGNQ0TOlPqMxvRH9eY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NxjnGiGVo+TZNZUnz1u/9w3055IPnRibGoRzDsWn+hdyojSCvKWW6M2I1ieyqubZf4trD31stvicUZnejHXEJtqwr6Wex3bmPMZ1KTNsoxeBVOMzR8hqW6Tgk1bn8IN0Xnt6Gxjkpesk2UwgPdjjAXlzv67JEOkbBOpRAIid9zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YasdDXT+; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-4086661715cso2346124fac.2
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 10:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770487778; x=1771092578; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=doeEscZbmqUzRLkmGbD2wulpXvhEwLpY3gZ7s/QLWDw=;
        b=YasdDXT+PSQGxVL4yqiV6baqDWcuTn+aeYlC+08D6q3bByU6qswlUJW1KJvBtFfb8G
         ddtfvmCXJoFMI8tHG61s7X+7EFfJD0mgiXEPxghWHI5g42E2/crplxnXzmXurq/drRAA
         zek9l3gXbx1r0F8SPaEbUxDTGs/75oBfhJgLq8degjPmTGBWglKMfvPvQ9ZHA2UQsavj
         yk9Hhw8lwi4K31syJ7STbd1o57+POIfmgrJfgYaSywTWdi4UVmeg7jgR+e1Oi/JkrSa0
         /CikZAy0wJzfW6f/2MZ8A6EZvnzrahxEvfj/7YHUIHbATVWzqD0oBLLLwAkUnaUNF4Pb
         WM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770487778; x=1771092578;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=doeEscZbmqUzRLkmGbD2wulpXvhEwLpY3gZ7s/QLWDw=;
        b=wdaij65YjwKI1Rp0nP00DlnQkzi5CuxaJ4okDv9W+FYVB9S9gfm4rmTtWnWDwC3oFn
         qZVXVLKfxFroRLsFJwv9sjU7tFAaZ3eEi44x9I43djomGlr+a2bMvdUg2B8NQ7KqBj5q
         nxIpSp5XUBNnB0SitRcq51FNcLgvzC9+axTklutAt25gLh6DpTK+HBRXznrlNHe5MXMY
         d6joJ0kVySe5dl2LDoBO7/XcbfNCoVHnaBRBx/NZiSL+33z6u/8nGn2U6mEhya3Nj1By
         fFaWVhCdXqmmu8z4+XDmLs3gnS4SsgqA50G408egHKNfjkghRYqIZUvZ5UA4AaxDxnMO
         btrA==
X-Forwarded-Encrypted: i=1; AJvYcCWQIuMKVGaMRlQRiYpJGDB5BGIOY8x3Wr0iNJgwI9QVvkFIf7GFfyU98jj3zlAWlmy8iD7oXhItbuFt@vger.kernel.org
X-Gm-Message-State: AOJu0YwjgxTNQmZu+IrsGWrACNLFOLwVY48cCsyyGTg/QT6Es/TxDHl/
	7mWbdFPWWhKNKxmvBahCY9G/u58OFD6TSxst/yJ2cpTvbaJktiJ3Pe37vaRdlqUPIjs=
X-Gm-Gg: AZuq6aLYcdxaHytkFau2fN8gxea7IMIOZAVXy4ODR96z8gIx+7GEVj+rS5uk6EduY80
	2TYKXQg6virI7D3sT7ylAXmNmaJBUGMmqGFKbWuruIsNbkN0Ng6R2pudE90ICn0uQ5S83cmrZmP
	q6k3P0AGgUUCoDb+jQnK3pC7eAOujJjkgWTARKL3jRsfHVeHz4Wbu71D2k45yJyxdvhsE3/hgUL
	ksCgO1Ng6oZUlGCHxeGh7H+yLbHQBlaML9tiW9nh9UPpHlBRBU1wPbhLcYY2JkYlJ87VcTnz7/2
	keZhlH1LCS+C+4VPulBjA3m8VwKXuviqQQy3trT5Wl7LCkodlJbjZfX8uPdwfSGTUHrDgj3xG2w
	kFJh9z3jKpCk+NBycJpmoNZNKmg/BLT6olpk7GNq+Honuvop7FQDvv95A26EyLYmRPKGqejPy+x
	9XZVZ70SyLbglp5sujjlB+K52iss17hyD9w0KYAPvmz4suuWXD57A1z2JxOwRt8Nnh0dl8
X-Received: by 2002:a05:6870:799a:b0:3ec:321c:b2ac with SMTP id 586e51a60fabf-40a9777b8c4mr3621662fac.37.1770487778043;
        Sat, 07 Feb 2026 10:09:38 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:74a6:843b:f33:21ae? ([2600:8803:e7e4:500:74a6:843b:f33:21ae])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40a99787738sm4509503fac.15.2026.02.07.10.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 10:09:36 -0800 (PST)
Message-ID: <8fbfcf7c-4acd-4a7f-a5a5-34baad84e1b2@baylibre.com>
Date: Sat, 7 Feb 2026 12:09:34 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] spi: allow ancillary devices to share parent's
 chip selects
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, Mark Brown
 <broonie@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
 <bcb1eb34fc5e86fd5dbb4472ad1d3ea3cf3e9779.1770393792.git.antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <bcb1eb34fc5e86fd5dbb4472ad1d3ea3cf3e9779.1770393792.git.antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263635-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: D73DB106CAB
X-Rspamd-Action: no action

On 2/6/26 10:07 AM, Antoniu Miclaus wrote:
> When registering an ancillary SPI device, the current code flags a chip
> select conflict with the parent device. This happens because the
> ancillary device intentionally uses one of the parent's chip selects,
> but __spi_add_device() checks against all existing devices including
> the parent.
> 
> Allow this by passing the parent device pointer to __spi_add_device()
> and skipping the conflict check when the existing device is the parent.
> 

...

>  static int spi_dev_check(struct device *dev, void *data)
>  {
>  	struct spi_device *spi = to_spi_device(dev);
> -	struct spi_device *new_spi = data;
> +	struct spi_dev_check_info *info = data;
> +	struct spi_device *new_spi = info->new_spi;
>  	int status, idx;
>  
> +	/*
> +	 * When registering an ancillary device, skip checking against the
> +	 * parent device since the ancillary is intentionally using one of
> +	 * the parent's chip selects.
> +	 */
> +	if (info->parent && spi == info->parent)

spi should never be NULL (or we would get a segfault later), so
if `(spi == info->parent)` should be enough.

> +		return 0;
> +
Reviewed-by: David Lechner <dlechner@baylibre.com>


