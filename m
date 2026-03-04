Return-Path: <devicetree+bounces-271079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKnKMBVDqGmRrwAAu9opvQ
	(envelope-from <devicetree+bounces-271079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:35:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A812019BF
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 32B2430BFE85
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:15:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301213A8747;
	Wed,  4 Mar 2026 14:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NZXO1dqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A83F3A8759
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633529; cv=none; b=FMlHikMZ/C4pOaTS2gbihy1m6is4t38C67ZhTjCthnx4EANsKKjfTs5zSmrpKWP8S+BsTLvavRqq9qJg3eTfiIQKxMFWdpEB7wxJlRZkdbW2y77IdeWeRofAdg67hTnV5wcTzAb8JQXYY5H09Ylhbs9mmOALtUUj8SQkR/WT2Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633529; c=relaxed/simple;
	bh=fYkYiiWDCV0YZLGuiXOMcbkzcFgkMg8u6U3v5cwfDTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PmS9ws2+iRLfoL7ngiOga3OyVOjPHT48/Dz8wCV1fFmBZQdOVMNTxjqzRMfGD5q74niOwZOecRVIyvyHF0OwHcozTNwK75AftNGwhz3qLh++5vsKm4fIbkFaLjJii7M9ZA/aF1/w5z/c8PMspEkRbKnjLSXfli7Bh2/l4kmrMDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NZXO1dqy; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-437711e9195so5373614f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772633526; x=1773238326; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oFvwRQT+OVcEB+x3IOoQu0A/G0gh0DEwGhj7UgsZ3lE=;
        b=NZXO1dqyimRLc2/qsN2INiKAPpU4Pu4zLzs4Eo2IOx9CoYReiygAQFpCuPZtHzQsvN
         ZTUPbFswK+uYhRGXU9HQ1hkKdqxoFMXfKSxA3TvYbzb0HT/cvznvnHYS3vWuQX3fhy/7
         rZKzBipMiUYlER+Po5/sprEAHNMMMCzLNxzyZIYAmtspdgPTQ/WPEPa5rPJt3KNOFNj5
         gqEX6HEr6Hn6vlYnibCqRi0tpV/2Y/1LArcjP0nw7q+o2VQezbyxmljfKskkjLz5dTkm
         BiB2gxLWJ6ZVDFZbcjvGtXHLNXS34z0tsABkKh7VS9epoIpynvhVy5x30nUQJpvO9WXm
         /Z0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772633526; x=1773238326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oFvwRQT+OVcEB+x3IOoQu0A/G0gh0DEwGhj7UgsZ3lE=;
        b=uNO0O9BXJZvAyE898uPksDCW77m6S4Zu4Rx+r+PaufIkalphpVoC03z73JmYwqhd5z
         TPNR5yPCb2jIhr7bWBWGGX8gDg3XDvof7vXV9RzB7kM+rX66asCLV2vgTmYGo02cOkov
         jhlWZzFji89ERS5xrUY/CxVB+MdXPwnapBKOfqhCcB/sG+N40x/vJ2mX3x+V4Ft4VjkR
         ULvvR/JNA+5zSiBR0unD1yjns/c0sM91Ix4Llx05kEgM3bKPI0ZRwq01tJPy+JFbgi/v
         mgLQcyLrcXeF9zdmKeQWWx9xkMP4BuuDo7vPsyYMP81bD2YOuTuuHioVZ35WyxtfNf5Z
         6yiw==
X-Forwarded-Encrypted: i=1; AJvYcCX2LovBbIS7Mr78Cogz8VitRcCRJSxYyKlyYQGmmOojopmIw7wzqz+06WHnBRr+aJX0RemqqqyhYAwD@vger.kernel.org
X-Gm-Message-State: AOJu0YyZwxe0uKsBvFt6pa4PW3uJBx90v/jZLM+0OkDMuUeCFsMT8ihQ
	DGiUes5nQv7I5AhJgxYXbytfw2t1Lft4fIuCTO1CAJt5lsU0KQ/yHAhlzhN+gUeg+Os=
X-Gm-Gg: ATEYQzxu581TOKyyfHiiMFUx6YEcN+pgB/Qd84oAm38onmYdjR2Uebqtr5T30efcOkb
	Ar3c11qgDiF2l5Wc5Z0pMON+dPa46KnJWKk27CWWcJS5gv7SkKhmpXcZOIvj2Q9RRByZl61ysFb
	L1NtnCratfveLKHq52NRQLAtd010bhsZK6VxVwqOI4R7Wlft4WtwCc1aTItmz1UC1RXOB851wau
	R6zHlE9PmKa/D4LupbPrO9INi87zoBhuSqimjJec7+cvDZozEj+2L9uFHK5F0LY3t8mA3c9DzLc
	ujVuKp4VX1vDhBCnJJtUyw46z/1n/g7q21BdC/pNshEL8fOVOR5k/vVmJOVIH4RCYHZOeCCBINI
	2Lv5m+AwXY+VKWvUyl5RZT6lmZVNgwf7kolQcpIb6cutbJcaWOW6uL3mcwKMPCcE0ZACyP4509B
	SNuLLgZf0QGqkpvaEuMeL81ig6l5pZ1Dsx153S3EY=
X-Received: by 2002:a05:600c:6992:b0:485:17a7:b9c7 with SMTP id 5b1f17b1804b1-4851984fd72mr37672115e9.10.1772633525715;
        Wed, 04 Mar 2026 06:12:05 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48518807293sm51540475e9.11.2026.03.04.06.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:12:05 -0800 (PST)
Date: Wed, 4 Mar 2026 17:12:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alexandru Hossu <hossu.alexandru@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
	jollys@xilinx.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2] dt-bindings: misc: xlnx,axi-fifo-mm-s: fix
 interrupt-parent property
Message-ID: <aag9sgjkjQwIy7Db@stanley.mountain>
References: <ae0a95f4-8dac-4690-8810-79ad5fee7895@gmail.com>
 <0eea78fe-59ab-4ca0-9e29-d68fa298ac09@kernel.org>
 <fbb68131-03ab-460b-8d11-e4892d91807f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbb68131-03ab-460b-8d11-e4892d91807f@gmail.com>
X-Rspamd-Queue-Id: 72A812019BF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271079-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,stanley.mountain:mid]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 01:46:00PM +0100, Alexandru Hossu wrote:
> v2: Remove interrupt-parent property declaration as it is a standard
> property that does not need to be explicitly defined in the binding.
> 
> Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>

Please, wait a day between resends.  No need to rush.

https://staticthinking.wordpress.com/2022/07/27/how-to-send-a-v2-patch/

regards,
dan carpenter


