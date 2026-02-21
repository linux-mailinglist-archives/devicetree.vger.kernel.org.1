Return-Path: <devicetree+bounces-267140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Dn9DOA5mmmtZwMAu9opvQ
	(envelope-from <devicetree+bounces-267140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 00:04:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FB716E2FA
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 00:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4304F3018409
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1274330D43;
	Sat, 21 Feb 2026 23:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fyw2GEOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E8E30F938
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 23:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771715036; cv=none; b=PC3gOLEbRmF+foW3mol2pgEwvhPxd2QdSluzPbzWh5IQkw0XcqQCYQd+Y3yThfyBtpUXAhEFf0oW/MEpjnhbUwpy7/sToWWlQJ1sIlgbi/NLUjlqyq9awsga62l0PmzHf3Tz4I4Lgpy0ohLpviPYs9EFv3pCDrem3T2gMhH6uWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771715036; c=relaxed/simple;
	bh=dLn7pU8jF247dHaVpsieCO+El8PET6lRNPUBO6uklXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N/X8ty0hQX8uG0niXtTgAd2ZdcOKT4gW6JUFZyiLTXQ/HHpComLykotx0DI3pHAV1870hr/kMhlFJvyFc0F1ESpMqUpl/lGBswC9e9KzT5RgEccYWlH3BdNlOfWZe9kwROHPOkgWUu45W2KrcQHSdoSpPSuRr6qNWSo8JhAywLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fyw2GEOD; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-12732e6a123so619430c88.1
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 15:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771715035; x=1772319835; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=26KB9AHM3wOxVAVaIjueh1jaK4iOkC93vngU+gNXVI4=;
        b=Fyw2GEODDnwVeWLoa+hnzk76WhYlBzBVF6dml1pAFdtRXPApNdyciYD2gaMU6fW3fp
         O/p3EGGwBiOq/avFbzCIyaWDKeTzwq+DKp6+CHrTgIn9ooZzqm1YM/HyOLS+QbZTrIqe
         FivmHLEM3Yx3cYQjtLBa5M2OG0DJqFSae4vX8oQkLV4bROoEG2vvwZjiksFzLljboQqg
         w7KYNEFu7LKdKbLJKLikTfXqfd5ttgTe5CRGKr9a8mQaNM8nQhKpxkOgo+R+VvmDjBzS
         IGZBJcx2qu2/O4dKZ8XC0sHcmsMd2tHH3iApccTWqBj+yjQl8ojLhkHmsZ2P6nxbepNJ
         ZRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771715035; x=1772319835;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=26KB9AHM3wOxVAVaIjueh1jaK4iOkC93vngU+gNXVI4=;
        b=uzVUB9YtteW/54DStJ+goRGFDtTFWYknE3QULzkKNecLdlVJe2cCI9R7hUGPcv4RW7
         xMGW+AYVbnYm4xIkaMoVQ2UBjQQIPpVONP0YZJP7JwEjE6rnX9xhWY/lpHEpT3vOE8Ot
         N04e8+zlL+Cfb+s7cBTqdqjM1fUoPQwQAuFOn1UdK9gPoQZOwwGX1O0JieVa7zM2AaZS
         1g+JE9Mc9VfPi6ZX4cAe5HMKzwtxQ1Db6K6xAl6FQOkxuEEZh2zvM5NTL292e4N931eT
         /52CSeFwixQN3GFreKqeHaENx+2KQ5MHMK5pngE+tSS6rPlMGUWA59OOd0e40Ikq5dnH
         WkOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCYC4BcrnbdJD0qOVjvEXSEISaXYIGzRaMcp/2Q5WyC95eCwLUHmP1LCXaP5DVcmGsqpmgDLUVktQA@vger.kernel.org
X-Gm-Message-State: AOJu0YxFBHTTdj30NftP7I38MNNwC8rYiokAGnVvdZyrmIYHiQuSt5Vl
	cscZrDCldmaMyO631nBf6yg8tJdfiERBmN8c9QcR9mQ8nHopoxdV5lcr
X-Gm-Gg: AZuq6aIX9BW1UonJrpG69iJE51utmPoXWILvMR/tCLfGgrm0yfBbsFT46zaEnj1A1NY
	/8wLiYCpHS5p7ujOF1okPiqf6ruY/LqNrnod5DJaz8XmXN1gC+4Yu/XRmFnAH/ksTmIh4+tEQpc
	KqDls0Vcn6Yd2ibCUGDGhmy0dBCNh6rSdCgNn29W+puwDm7U8EqlY2JsnQs1BHxm1sAO/d0nLKo
	x6TPoH0DsB52+oL4RRmc7ryRXsccyoHkVQ73ey7YwtOryrB2OFTbcfLvosDozOGjao1lLM3oHJW
	X4XhKQJSx0t3EhPHPDOYDS3M0n+RkJoqrppQfQQMutf4TUbZVgvSajvFl1wMaI5h+ymScY1H/Ek
	/8aOn26JWgYRfbDfXx6TUAqf5jqRei9yqjgty7A1Q2Wxm4JsO9arNwQdzd8lfquHhumW27Rumuv
	qxTsO1D1ST8a3/NGAZA+1EwpQBxSZzZIslxFqo
X-Received: by 2002:a05:7022:6290:b0:123:2c98:f6af with SMTP id a92af1059eb24-1276acfe093mr2336471c88.14.1771715034615;
        Sat, 21 Feb 2026 15:03:54 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7dc167b2sm2066679eec.28.2026.02.21.15.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 15:03:53 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sat, 21 Feb 2026 15:03:53 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Ian Ray <ian.ray@gehealthcare.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bence =?iso-8859-1?B?Q3Pza+Fz?= <bence98@sch.bme.hu>,
	=?utf-8?B?VG9tYcW+?= Zaman <tomaz@mono.si>,
	linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 2/3] hwmon: (ina2xx) Make it easier to add more devices
Message-ID: <34c879d6-de61-44cf-bb9d-214b73ad36c8@roeck-us.net>
References: <20260220112024.97446-1-ian.ray@gehealthcare.com>
 <20260220112024.97446-3-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260220112024.97446-3-ian.ray@gehealthcare.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267140-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gehealthcare.com:email,roeck-us.net:mid]
X-Rspamd-Queue-Id: 89FB716E2FA
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 01:20:21PM +0200, Ian Ray wrote:
> * Make sysfs entries documentation easier to maintain.
> * Use multi-line enum.
> * Correct "has_power_average" comment.
> 
> Create a new "has_update_interval" member for chips which support
> averaging.
> 
> Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
> Reviewed-by: Bence Csókás <bence98@sch.bme.hu> # v2

Applied.

Thanks,
Guenter

