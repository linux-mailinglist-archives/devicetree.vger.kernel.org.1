Return-Path: <devicetree+bounces-267956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KnIOSfGnWkkSAQAu9opvQ
	(envelope-from <devicetree+bounces-267956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:39:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D49D1892B3
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3330E3080132
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A33027A465;
	Tue, 24 Feb 2026 15:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mXGpIIMf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAB32749ED
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771947207; cv=none; b=cZmRDn8rDIEMpZKjYRXeyqodvuBcA3TdqFV+pgklhSLLM2GXPm31gms/puEBIfoR3VSl3Z4G8NFLIp73JFuEP68sOsIIa2ZpBhXYaEcahumSXfEUvaq/qZf+Nic/WRNu0c9M4Izy4bfmASc/QSxZs6bcexDNoAxSksMoM3rdtT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771947207; c=relaxed/simple;
	bh=M6YedSy+AP0wOYR6fhU26h01gWxmgRGC+8l9ODMRulI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/8GbrAca8fjrJkLHpxoviHnUoc9qRZHXphXtCOndOICOZEzwE57AmODhfCMZBAOXbTAUfiC9fUdZVMynrlWCpVBkxml9eiZt2Y9sp+f6rTUrwyWXuY5UKGcGgyogDLpb9uEceYvJM8ss4NaaF2BaFeYbIhcmqBgxRNJpHu1ypA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mXGpIIMf; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2b4520f6b32so6895235eec.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771947205; x=1772552005; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wTBR/5xyCK5HrxbICx3c4MlZLtKp/necKiN5zbOKDvE=;
        b=mXGpIIMfOZAqHZzToLe7isugIKgf2Ch2FkIKm2t+Dm7ODqqO1wckVXWX3xDzvmDIxE
         ldF8WStKtxsLYgbKXY+/9Ql/VW54sy7YkKFTlJ/PlrKfh9KH5PAew7Pd13/NhVIHtJgW
         kZRCrrYP3h8rs1pYpMFnOaIR1Rh+wo3UtgMdxZXhLwOjI4Rr5t7kPYpanR8K9npolzm8
         6MI9w1HHbEJKl4z7Ii6z4oyK5n4UAYf4boPBC0q7aDoepQD1G4el+95EoHkk4ICTi8x2
         11G8dvBB9xK7mythJ4zi+fdvgH6Eg22zyTOw07JzG9rNoBBNtz44QWeVeEvRaor2NK0l
         Fz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771947205; x=1772552005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wTBR/5xyCK5HrxbICx3c4MlZLtKp/necKiN5zbOKDvE=;
        b=odUf4/lJvayPslaDsCphvuLp09uTOqx4j7TFCePR3Jao9w/jxvmHPL5vwv5Me9t7dZ
         8MFCtYEDIWbNbDsGxVmDEB2tu0+lN+3eJ2HSqYgdDmzEW2Wxao+/DrCRgJQPQV1bvKhn
         cbEedZoRrh2NlEX7NYAz+Snrv/r7+SL2SKVuWSLNBpVbQMkxfqjPknRK9CHytoYLXgRj
         RnjjbI+SwI5yoo9i2oT+mhUt/tVpcRx/UxS3mW6sojkEwNA/nZItk1GK+7AkGvZKb9ao
         dtbTJjeVCVG5pD/hFG3HfcqJJRfH3D6RLWdIIVTrT25h+eo1K5N2YDRJgYTNh3zOxwik
         gTdA==
X-Forwarded-Encrypted: i=1; AJvYcCWBd7h5OzeCWWkJaAIYIs3Uz5YuOzA+6yPetW8E0TYY8L1h5ybYqVa1HFd/OvSqeVXtgH7f0Itgwf/6@vger.kernel.org
X-Gm-Message-State: AOJu0YzqrAFYfFv4DQReWUT3m9erJ5daq97xsNZ+KNN+SgJtKZ0MQRtd
	5r+HVUB9AG/yfdf++QKO4+5yDSYaBEbBK6esqgouZfae8Fj1MUVztEdOxuBEWg==
X-Gm-Gg: ATEYQzyESrMdFeJg4XIM0AtzW8BD0YhtbF5nKUXUZ8QZBa6uCRPE5fY6DnsUZ8cFkLi
	6BAiB+prk1eVbB5ANFasaWiASpCxxszbEJ63uGY0VN3j/cZtTmSrUvrP7kq6EarZnFdlGkm/uyA
	csPFHah5lqOH521JL98f2hCQbZBqGzEOZE0vtr6h+Z/hlHaRuaI1j3h7mPP7f+TaTadrT1+Lz10
	k7ElCa0jVCInCq1A+dz/+b7oC2fp1oaC8PbxZkW4R3mgWSm+xaw6AfMWBbxNNQI/LYiYHnJl4KN
	/JfU7bMV6A5SDY6CGDzOw9UXaMX/J0N1WQlkPJfHUmbdIoLxEm8tAfOfplb8gLGQoaUU0cQ5FhQ
	rw8Pupx+IRZmgjiOhceBbVDNOlbLw5Y0Kgigjek1W+0BxedL3TK6V8+9jDyPwyj1Ej5Cb7LySBZ
	lBGwLW+x2MjvVAmBZTHLGFVm0aurqjlG/dUD+wlQQBibowMCM=
X-Received: by 2002:a05:7300:2393:b0:2b8:1d16:9726 with SMTP id 5a478bee46e88-2bd7bd38a08mr4752096eec.31.1771947205407;
        Tue, 24 Feb 2026 07:33:25 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7daa37e9sm6847639eec.11.2026.02.24.07.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:33:24 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 24 Feb 2026 07:33:23 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Hao Yu <haoyufine@gmail.com>
Cc: krzk@kernel.org, akhilesh@ee.iitb.ac.in, conor+dt@kernel.org,
	devicetree@vger.kernel.org, jcdra1@gmail.com, krzk+dt@kernel.org,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: add Aosong AHT10/AHT20/DHT20
 to trivial devices
Message-ID: <14d6f03a-c857-4464-ab0d-91e6ba55967c@roeck-us.net>
References: <20260222105831.7360-1-haoyufine@gmail.com>
 <20260223173853.30617-2-haoyufine@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223173853.30617-2-haoyufine@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_CC(0.00)[kernel.org,ee.iitb.ac.in,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-267956-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 1D49D1892B3
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 01:38:52AM +0800, Hao Yu wrote:
> Add Aosong AHT10, AHT20 and DHT20 temperature and humidity sensors
> to the trivial-devices documentation. These sensors use a standard
> I2C interface and do not require complex binding definitions.
> 
> Signed-off-by: Hao Yu <haoyufine@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Applied.

Thanks,
Guenter

