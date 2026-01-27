Return-Path: <devicetree+bounces-259679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKOYGgIDeGlPnQEAu9opvQ
	(envelope-from <devicetree+bounces-259679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:12:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2298E683
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B18C301C897
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4F0FBF0;
	Tue, 27 Jan 2026 00:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m/FgZAfG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7B11CA0
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769472765; cv=none; b=i/0RreGaKDcTQmUUSipTSus3+DFm9pdT92w+IGadPDcHv2M6PTNV7iM5dZUdcZTNZF5n83NGwCTq3hW7JLlNIUYhjiIyNWh4PFIp8bSasDM9OpWCOj4d6McSbheBlVhixq2zbaXGjkYSr9v2zwyjdnhVw8VHJCPrLajAq2m2NsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769472765; c=relaxed/simple;
	bh=5zdtOCR6B67UyvsFetvz4wHrUvgY2+2bqeihBb6NI4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hg/jSiAsZcXTnD8ONlVpo79dCX+kIe8BSBZ99Arn1xLw4YuJYQ3uIX0PRazBsBpXtDd0YlJvjylAxrfFf8YCfDNTCn5jnQ/tJOeoxTOCpJ/77VYwnnkmtMYPH8SqlXE9HAsFlXKpcNEO5EVidSdSivOtVjjaGZsASnsvbm5CMEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m/FgZAfG; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3530e7b3dc2so4232568a91.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769472763; x=1770077563; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NcSJwRrDpoYJ2bVtrTSdiMttSE2V1rSy0vAG6+hLHR4=;
        b=m/FgZAfGgt1u6x5far3s3UhnoFh8jtRDUSTH936xO/L7+f1WoFlU4VaNKTiBfZeWVW
         tvvC7fFaPnjFqXJJ2ioBC/Y2gDhkf1XmQkL6bGn9wlLzKrNkVEX5g4sju15UpjlAFcHP
         ZXgf15pJ86a5YJjzInq+H/L2sFtoa/W4hPi+ZF7fmlMQKajirb55BeSY6s2d5MSddLWA
         cFolFWwB/4QByiT7xfAAp5jjLA3aKA45ln1t/eqvAdGRxtCP/vR6T7CVgSKIXbVrb90q
         ya3iOCSnOrRyWceMyLxAqNDxZ4mjDJYfQzSbwNAqpKblvJ43kGUY9WFPXShX1yZfjWdu
         EpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769472763; x=1770077563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NcSJwRrDpoYJ2bVtrTSdiMttSE2V1rSy0vAG6+hLHR4=;
        b=UHYkVuayyAkO4JhpBD2ywpYpI77nsE8prOfb17rM4W3TrvEGu8C8kapNvLUmlWXm4w
         pCeXBsUhuivtkkrf/ihNeUG808p7A2hZ29Jc9m0zTwFYOMhLEAy4xRyIQEjBetieekHW
         /GtwCiK4N1MZk/VYe6JPZKotkcFqQWZ1aRnkRil6OThtnvPi4u/OzrIn6ZwhPZOdN1de
         1ivRt5z2xauiFFStETpL9fyIIWz4F2rBIIGaoL6KXTrrTbpCp2961QjSN4CrCHg2H/zu
         ZQniOlRt1z6g1WaUzo5EwkTwUNHNK48RUOkZarDV8e1TmfoR6NIzlyoxp3I5CwVfAKSy
         zsxA==
X-Forwarded-Encrypted: i=1; AJvYcCW8u6XQG8SeebxPUyZoH8VR1+l0w2508mPYQUWWglX4SisxEVUXjP2NtJvHjWVnqTnSiX5qoqcGqi1z@vger.kernel.org
X-Gm-Message-State: AOJu0YxYVDpaPmz/Pts/dCxCbk06hMnoa0SuUuPYHDbTCSaPMnEk85Al
	jaxuw5nCor4xqx/YD/i5b1mJwkwrplLJqnTQiiYKnB60AMp6ch4iRRM3
X-Gm-Gg: AZuq6aKQmkl9g59YP0QJfNPmK+plwF0MhGplH3NTSFN0zbbJMGNJszRfIE+h4G4ZLBt
	QKHnz8R8b/vX8bsM22mctXMsa+IA11amy6F5ARwUqY7DhRLfTdmE5w+JS2cgVsnRVYA6bT7qkgP
	U6XjDQbH1pfxib3Flcu7IP0LjjDhYUx2cW0wb1JCs4sPkw0c7o3PQgUbjbTWjxBwsxhb+s1S8dF
	06Cif7AhpXKT4fBdy2AmRpkJuSGcg3VojsriY7nkyibswy2NpY0o8juM/2868OzIhBCIr4Y2DLy
	+VwEuVMn+7C3v39+azZhKSSpUoF1dczT/6A+gHb+4HXN0FOSsD3QSBZw3zWKh+h3pqbcy0MzaNH
	pXsnM9mCMv4VTgs7EIDOFoC2S/lp7tw9U9ziTTxd+WV5XorIrJJV2Czu6p84ivYpVBmSUdhjlEC
	7fm2TgCqms3TeljFNJc+sUii+YYjDlfS/e/Rc=
X-Received: by 2002:a17:90b:1f92:b0:353:356c:6840 with SMTP id 98e67ed59e1d1-353c40fe21fmr5467504a91.14.1769472763295;
        Mon, 26 Jan 2026 16:12:43 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231866b92csm10145642b3a.25.2026.01.26.16.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 16:12:42 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Jan 2026 16:12:42 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Charles Hsu <hsu.yungteng@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2] hwmon: pmbus: add support for STEF48H28
Message-ID: <46a42764-6cf0-46c8-b764-4c4b394b04d0@roeck-us.net>
References: <20260126063712.1049025-1-hsu.yungteng@gmail.com>
 <20260126063712.1049025-2-hsu.yungteng@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126063712.1049025-2-hsu.yungteng@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-259679-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1A2298E683
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:37:12PM +0800, Charles Hsu wrote:
> Add support for STEF48H28 hot-swap controller.
> 
> Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>

Applied.

Thanks,
Guenter

