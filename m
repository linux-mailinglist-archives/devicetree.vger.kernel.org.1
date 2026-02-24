Return-Path: <devicetree+bounces-267959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKJ2AHHFnWkRSAQAu9opvQ
	(envelope-from <devicetree+bounces-267959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:36:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39641189166
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C36F93057670
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA9C371061;
	Tue, 24 Feb 2026 15:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XX5SfcTW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF8A28A1D5
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771947349; cv=none; b=YV4zAoLlRrgu5Iu6U20DUlbQ68TGCIVOFE9tW/Ww071AYjUVADjfObi9MRY2qSS8xRjggCYgsrxzGvTk+ndBR48F+HC8FGrqHWwmz0hpdRGiNLJQ/UqBjZcgkr90YL7ADwbzUi0RYAY7uZJ396Sivl950M8nJFiAS0I/i0389T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771947349; c=relaxed/simple;
	bh=s9hFypPyEhqLBY/BqhvqCbp9TehTUSxKRhyZIRKnFUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kKPY+7JjokL3hdc5fVetZG5vrKAo60P0J4O7PZqVVatRk3qSp7k7XTXbqMauBXsK2xSNImeJhUaHXaI5sLwUX2akA0S7InKCaq1xVOQO8enA71AoybOZSCXhuWErliiHHSZ2qnYjGh82sd6GgU4msw2DdmfogOsondA3I3tNiBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XX5SfcTW; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2bdb17511aaso207202eec.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771947347; x=1772552147; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wQzAZdTYZLzvnpB8FR8JqWHLblHWAqU131n5iIsb4sc=;
        b=XX5SfcTWbRhaz7XuFzfKEeqX/pSiSKOLuPKI9hivlIir+fHpOH/K3N3nV04kgfKCCA
         FNA3Sk2Y9YVqSe3vHcUzOxFKMD3a29BHD4LvdcZRQkidLqeZA8MagSk/aKXaH2modNmi
         Ta8DXjQE/boBxeQC+H5iNldQ+dHNEqezobjj/qTNg4G1rjkA5uwPKubfILstWadMv3/K
         +yyUEOyHDEkKoWyt+M4LVrY+13a91X2BXoIhdzadLAT5/fYeoYtiRejkD5y9kRnQ6HbZ
         79axEhrPF5HrEePELXljzsaqRl1zqUU9ier3qzgAlFKhRfCtMXJGggCUZftVvEB5PVUn
         22CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771947347; x=1772552147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wQzAZdTYZLzvnpB8FR8JqWHLblHWAqU131n5iIsb4sc=;
        b=oOYZS1w4/hcW6YmnVTmUbRqtJFP1gW9a7HqCMrSzI9+XKC1fd9OH3GyWIEiZN4SavB
         2rcdkLwZZcGtdPueKRmGcoZjYRxwYTNJEdsVLGFEXNt/wy0iobMpGoEV2jKfrVM5R6sZ
         We+NaC84/aX2uqIvpIntAvIuYXP3ULzIFgCknD996maYoYBuILlslwXv55tUBByzjIWJ
         3i8q2indc72D1N7ai/bICK4H0mdWGaETp3nnAsfuvRxJz4eMKTbtl/U8r4p6LaozAVA7
         EoCuOBf3x0NCeVVrsbUPwnx3RkyxKRYP17r4ezGhZ2Eo2Vsxzv+/P+6PwdiFKOyXJRxZ
         rYog==
X-Forwarded-Encrypted: i=1; AJvYcCVrSSmTKKtdMykYfVhjLhqrb+9ZpBVL5IzosG/v2XbJhVfgq65G9OaeX12qSndjRcnbuJ4SLxo410ni@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf7L4Fp4S2OHiE6Q5HpOOdn15QGg9jQB6g2pydFYx0fBQVRqh4
	IGIWz+0+6Eo82GAtuGbQmEVisvu1/d/dpGQgUmxrVR/uBe1gqvtBcF8Y
X-Gm-Gg: ATEYQzxSxcTpz66+SJnkrTrZ3c6wJZrRpMXKV43hadBUjCeRXBu6a5o/0YPfCUk6gO8
	4qvhe0mhZ1P1gxCcm38i/2kNxNXr2gUJY0ndExP7HW+PMEIqZS9+wY5LVnjD11QrfXzL3xWWY0N
	sj9h5UtzDothSUPilwQmnwXDPk7Azpx7VrwY4ecwrOs8NUeNUr9qM1RcgDNT6TvxlXbdXacnWkx
	mWOSeN1MduVyJ0j7XeGCFr9MW1Ysx3oWfVXDHjk8euSkU0SGP/D1Nd2gCzRaMMCTI2/VZ69Az87
	zPtsmUsUz9aO56v+MMY7tQnmteKL77G2/PJZEdK+wT8BJ/OOGxU3QMCMfURozuZUrBRydFeicI7
	7UhU67AF8LdSVGUa1q9dLAJAll3jpAiOHI6zIKCAlaNXvjAHQCSxGzTAZoep8ABpsHquMzXSa9t
	hE1Q2C9dbbRqZx/46GCve6xc0FI9EqUnJcn88TPLqtCqvO6Mg=
X-Received: by 2002:a05:693c:3118:b0:2ba:a04a:8353 with SMTP id 5a478bee46e88-2bd7bd4c9e0mr5295004eec.27.1771947346625;
        Tue, 24 Feb 2026 07:35:46 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7dc35362sm6801542eec.30.2026.02.24.07.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:35:46 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 24 Feb 2026 07:35:45 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: ASHISH YADAV <ashishyadav78@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: trivial-devices: Add support for
 XDPE1A2G5B/7B
Message-ID: <91329523-f0e3-4cda-ac7f-fe3a6406f04e@roeck-us.net>
References: <20260223050804.4287-1-Ashish.Yadav@infineon.com>
 <20260223050804.4287-2-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223050804.4287-2-Ashish.Yadav@infineon.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267959-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 39641189166
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:38:02AM +0530, ASHISH YADAV wrote:
> From: Ashish Yadav <ashish.yadav@infineon.com>
> 
> Add Infineon Digital Multi-phase XDPE1A2G5B and XDPE1A2G7B
> Controllers to trivial devices.
> 
> Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Applied.

Thanks,
Guenter

