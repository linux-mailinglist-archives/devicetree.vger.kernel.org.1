Return-Path: <devicetree+bounces-286627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oC6wCDlQ2Wk4oQgAu9opvQ
	(envelope-from <devicetree+bounces-286627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 21:32:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1193DC032
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 21:32:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E789301114E
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 19:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE504317144;
	Fri, 10 Apr 2026 19:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="q+RSi9PH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECD929DB8F
	for <devicetree@vger.kernel.org>; Fri, 10 Apr 2026 19:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775849525; cv=none; b=a7aC0J75dhLvFnsgvZhOkFAKN9942s3aA0g3VdsG4gUa5TWeQLdkMsmenXeQmMhXEjEB8HyLmqzL2HDxKKMbCbW1b0CW6UQPMKCR5XRzcyHiiBrOTxiW/+nm0uu/XJL7/HqeqRrP2g5fh/e2VLvw0a1J1HcHNSA6+z0c+zc1Lww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775849525; c=relaxed/simple;
	bh=4aNMebw4ACxsWJKNNvkW1wZZlAGBiQcTpUbCeZqns+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DlPZYeSKINnqIz4LU17dZrKAJ8z5cefe2dQAQAT75qbb/TqZEiiTx7Jt84uGGY1biE58dkt3Epva1oZZ+NpefsnsDUrk1Q4gkLfGrhsGCC5Qx7iwrB3QMHJNGFi4rPIy+32Hrf5IfZJGOHenlKG+UZaNgpqRdQ/WhnuB8S4WcsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=q+RSi9PH; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-47930edbc7bso115183b6e.1
        for <devicetree@vger.kernel.org>; Fri, 10 Apr 2026 12:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775849523; x=1776454323; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VBCELTROl5Mnj4WGXA1yUGtxFKCFwOhFgSR2ya34Ti4=;
        b=q+RSi9PHyFrMSMrPO+05CpvGczM4yyr4UIZJrdPu3nVdTYzSEyKbC5p7N9Kn/3yS6x
         VV8c8ptbPrUPoGDzAie2Kd5mzfIYv7WtWS6LbdO/fcRTNLKQnu3hcN02SxYx3EHFceeF
         yEiSavpAsH+WqBYFGrHA/heSsYGCQZ1D8L/BUZR3+a0WIzbDNIeeRyfiQGdN/FqdWAxV
         6zm5yu4adBRMmRMr6afUsmCQN/6WY3iomfzP5DBpM9At1dDPMVE4wZ7Nk/lIkbqMG1kP
         oVI5a4uh4BRsu7xQofJ0xhAFadJvTPHF/8dsgJAVSEOxeWJjHqJ65ziXGfRj9js/1di2
         YwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775849523; x=1776454323;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VBCELTROl5Mnj4WGXA1yUGtxFKCFwOhFgSR2ya34Ti4=;
        b=rkOPuleQvx4NQq6owOQe+IDZhS8ZRqqw6uqE6DLJOd0bZs5o8IDkpvS/MrMXOx6/EP
         ihjdGKcaY7ZEkpAOGYksXHuICfzq4WNpiRmdgZUJhfiGQ+b5NdoDgk/2j1FNWaDfJjJo
         AGNrPjcZuu+CPGIocdFeqJc4qh7IGYmuArQKbtFMTOGXOU0AzhUNh/fwecbxpwosAF+f
         NXMDbyRPARSBsC8A+jZ+Vtegnf9dZnfUkYSFmt2QgAia2p/NfF0iLBvRcDPJiYtEYbmm
         6pRXgd1wUT8bwXSLmkzT4BLbckANletpUYYBd23dYUHBzyQNwvap7/GJhr769bYo9Ehx
         1Oeg==
X-Forwarded-Encrypted: i=1; AJvYcCXmp8Mgu74sHRznPaEjb2fLIjUF/p/JM909WB07qdYNMFiq4UEoksAdPMgYc1wk+VW7NXDykrgdardg@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb0SvgpsJ6eLRPYUywcX91IcZ/gC+5QgHQ0tZ3UxJVcbacXTXS
	moL3GvmAv5GJPlF4V+vtqdBNXLUiocy8zMiZRuRbA8ks4r2oeWdNub1lImkAvIIOZXY=
X-Gm-Gg: AeBDietm+UxDQvyU44YLaLEY2ZrJ1/ORVnrqi9PsjMMqfQ0c5X+H1hzy9VUTElFWnQf
	Qb5if5gnuZv4AA5Yb6Qyi/qyTZd0jYYLERTkM5pPqzbsmjeJoZ9DPnDmx2xM7EKryr6LYCwcWSB
	jIbUGKUQZ4flHIMeJQ+mvTB+D+Y99ngBRo1dd44FkibwcbahAhG6tJ4cMEfHkJtlptUNd0B1s8B
	il3keleWUTrJxv/1kGaQAiNNySo91Hw3r8cmThCeQWtqfCRoDuEBVtyHcoeLIpCastUzh+5PQnP
	oxpQYa9oiy9pURytgxW5sDjIF/vzQ/Dowp6BAdrFBV1aRT/5Td5tXZfcTLbc49RV/U+2knNNkJY
	t//Sdfz4uVYs+v2WiHcwe9143VEnlF6DXd7PknmNeNrcnVb+Yzo0glBFelPLvz5qUDkspgFceC9
	Y3r2AKtvelMhO0/sL0D1DSo4Uxu8NHePh1UjZW76ggu2RDsD4jssoCeB5TrVX0py/p3y0aeu+c/
	g==
X-Received: by 2002:a05:6808:17aa:b0:474:b050:bf5d with SMTP id 5614622812f47-478a141398fmr2178834b6e.43.1775849523024;
        Fri, 10 Apr 2026 12:32:03 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:b75d:2440:dc10:808b? ([2600:8803:e7e4:500:b75d:2440:dc10:808b])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-478a131c049sm2060468b6e.8.2026.04.10.12.32.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 12:32:02 -0700 (PDT)
Message-ID: <0fd8a01c-0ca9-4caf-946b-5e0e756e4cab@baylibre.com>
Date: Fri, 10 Apr 2026 14:32:01 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] MAINTAINERS: Add entry for QST QMC5883P
 magnetometer driver
To: Hardik Phalet <hardik.phalet@pm.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Brigham Campbell
 <me@brighamcampbell.com>, Shuah Khan <skhan@linuxfoundation.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
References: <20260409210639.3197576-1-hardik.phalet@pm.me>
 <20260409210639.3197576-5-hardik.phalet@pm.me>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260409210639.3197576-5-hardik.phalet@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286627-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20251104.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre-com.20251104.gappssmtp.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email]
X-Rspamd-Queue-Id: AF1193DC032
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 4:07 PM, Hardik Phalet wrote:
> Add a MAINTAINERS entry for the QST QMC5883P staging IIO driver,
> covering the driver source and its device tree binding.
> 
> Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a92290fffa16..d0b9bfceb283 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20274,6 +20274,13 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/overview.rst
>  F:	drivers/bus/fsl-mc/
>  F:	include/uapi/linux/fsl_mc.h
>  
> +QST QMC5883P MAGNETOMETER DRIVER
> +M:	Hardik Phalet <hardik.phalet@pm.me>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/magnetometer/qst,qmc5883p.yaml
> +F:	drivers/staging/iio/magnetometer/
> +
>  QT1010 MEDIA DRIVER
>  L:	linux-media@vger.kernel.org
>  S:	Orphan

This should be split up and added in the patches that actually
add the F: files. Most of it will go with the dt-bingings patch
and the one line added later with the driver.

