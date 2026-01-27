Return-Path: <devicetree+bounces-260081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MISDCQMLeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:59:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 997979981F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1610930A8E69
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D8F35F8B7;
	Tue, 27 Jan 2026 18:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CUwJ789N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D776C3563FA
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769539886; cv=none; b=A+hx6SSkC+mG1gHx9Mrmiv8PLP3BJoLW5S9Psd3ATzMMOcRy5bRbduvG6PfB9cBsh0Qo7duXsRXOlds4w/kwY/TULRPwZRNXzk6eNwBHE8Zlljct2/PAWI5/oYm0W0/j0enCvd4M7VDwdqougXW+SVkjl9EzwkNF3QELEvys1Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769539886; c=relaxed/simple;
	bh=qArAMpZJ4F3qlkiildbqPjg4dSjEqJxMkuCNZ9Sgzbo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=onlZ9VM64SUd2sikkK7NHZMSrqLEWyczBUh0EZx0fjICNH49s3bN40D5bEF4zGktb2v7Wax5BlfE6lddn0Z0fNGBd8TxVEsgI/xM/yXSzT/MzHM9vyugo4ugY2HnpO3v8M5hc7xvUDTbZYI9lP/cfc227wLGwBIFe5q89UlUprs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CUwJ789N; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4801d98cf39so45996515e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769539882; x=1770144682; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fkNqmPn4BV41VYFQxjkR3+9fZTczW5ysPjEroCIQMPE=;
        b=CUwJ789NsAQ7Zy91KoQ/FrAiF4e8y3c7tZEHsjBeksezwVE4sd9fKgdClf80b3ORbc
         U+4X9sjC/c0yhO+K3QJkSP85ggE4Eve1LdAEkG6t7uAqwPpWmhIlmzRB9lwoNqeP+W6d
         /nGwUvgpr1GqaSAW4Ub0GXSuYZt1qvOxi6GIL8XGy4H+QFT1rBj5fmZFJx8CQxW+0HQl
         mSsaxK8iYWVgZyNJxBXalOO8yz2HwRwtADUQhYQ1Up+71PmTA2WSTKgVs7Jmr0kZf6LL
         4m3NIGdOh8JeQoOf/rcZkWHLL7BIU57VslxaeNQyV1npw07H0dNIQ7MZKS03edDUZ0uC
         9muQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769539882; x=1770144682;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fkNqmPn4BV41VYFQxjkR3+9fZTczW5ysPjEroCIQMPE=;
        b=QgheWN0rvP6VgLmPZnHkKRGIqviPaPEYNfwaTEazf2e5eG+rMDBO+D3FNnSY/QwkK3
         cPrlp2VRG1pSipC5IskpbgYevR2vdZtub+AORSthCrgUzR/i7izXj89ISSJg6dviwYZ3
         Pwhfu4BSoFN1EUuvLIuiUqHo7OvZhNg5n2SjnuMuH03VmE9D+39ctcLf6fx77LL0CJS2
         R8j3r7xp6PowLwQ/Wzo0j00QiEJHItgsOtyCQLV5bPHoYvG4RudsHnEypcFqJu7PJIyl
         LXXlyuaQ4A0uOBoENs2wzzKU6h8LV9AXFhbhdiEsWhR7zR79VlnUx6O3oSz40HweMTMG
         lvcA==
X-Forwarded-Encrypted: i=1; AJvYcCVWz1oVJEBUZxqfeQ9TRW6eZwtns32O/uTm3c+bhWjVoWgn7iSjqZoWKWOF7vphRhh7IW7Mp4ES8dCg@vger.kernel.org
X-Gm-Message-State: AOJu0YyIaQfqh7klGwnz81IDKwiI2YfnHDyajgBXDEchBGvUJS2qrgzm
	lLWvE5eSGTtaAcfdeSiBwittH8A0el/cxEMU7Imrtq0O+B4Eg2X1ecjw
X-Gm-Gg: AZuq6aKUJ3Z5YrQyIZb79LZFhaQd9IYs+mVSBEOVumVjQZw0zlbwTnz5gD5orjPZOIm
	UTKHvXRTj5mhMM26NV3MS+sjZzRlSFpTB2mVM8tqMELpyY+BZfyodJ1tQzd3gPMj4NWc2tRigmq
	kseT/qKo0B3KBc9f0eNkLLXe7a4GbEOrlWO2YowEw2N+ezLu8agvLtThmA8GPNaLTyh0Ug/r2Mp
	ngTL0psOdf21lU1RvAah3x25kUoK9IRKrjK57Z32yc2P10SWDSKQYgGUdvopYGMGBjTxqtZ9nk3
	Cdsa1axk53+tTdFX2ypbclo8ijnu+qbEMFGE8wSUTJ97T4iNdRFE1KF7JN0oU9xcjZ4mmGdG7AV
	GFjphdSQKAgk4ZJTIyaJrrB6etf/sPH3C3xzq70T1nuzIBMjbYVBqNxvVns04OOadW2mlcGMqIS
	ITfMORQKnTtNh42VBDapeqJ8GHoIb0dixVp9aTRQRYXPsfYMr+IHrV/Nc=
X-Received: by 2002:a05:600c:b8a:b0:47a:814c:eea1 with SMTP id 5b1f17b1804b1-48069cb8baemr40072695e9.35.1769539881833;
        Tue, 27 Jan 2026 10:51:21 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806d255f81sm1827095e9.4.2026.01.27.10.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 10:51:21 -0800 (PST)
Date: Tue, 27 Jan 2026 22:51:17 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 0/6] ASoC: sophgo: add CV1800 I2S controllers support
Message-ID: <aXkI5jnCEb1SLnlD@anton.local>
Mail-Followup-To: Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
 <50b16e42-2621-46d9-bb3f-5b4ea20aaaa5@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50b16e42-2621-46d9-bb3f-5b4ea20aaaa5@sirena.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260081-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 997979981F
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 12:50:34PM +0400, Mark Brown wrote:
> On Tue, Jan 20, 2026 at 11:06:02PM +0400, Anton D. Stavinskii wrote:
> > This patch series adds basic audio support for Sophgo CV1800B,
> > as used on boards such as the Milk-V Duo.
> > The series introduces the I2S controller driver,
> > the DAC and ADC codec drivers, corresponding DT bindings,
> > and DTS updates to wire the components together.
> 
> I'm going to apply these, but there's a couple of small issues - please
> send incremental patches fixing these.

Hope everything done correctly here 
https://lore.kernel.org/all/20260127-incremental-for-i2s-dvier-v1-2-431b809c632d@gmail.com/

Thank you very much for the review

