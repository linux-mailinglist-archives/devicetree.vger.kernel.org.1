Return-Path: <devicetree+bounces-260661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMIrNHmaemms8QEAu9opvQ
	(envelope-from <devicetree+bounces-260661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:23:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76679A9F6E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EB2B30078EB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566D5335554;
	Wed, 28 Jan 2026 23:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K90z6qwu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCAD1D5141
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769642603; cv=none; b=nXVovbLdc/2ymiyLMsFvVXWdERHTD2GseB5a0dJAvs3x8tZu92LPru8na5IVIGaLIBEJdQGc+QudW/Qj0NuoGmKy9h0TYNh9wY+ZxUL7ijGpjwmgLHpz348D4ui5Ax+sM5zmQWEXronDIH7O8Yghdo6EOUR/H18jdZC479lT8EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769642603; c=relaxed/simple;
	bh=6ca1Sl8ati4GIMbwjPj+oVMEy+QZ4KssuHKcXxijejo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KUTYkbqzZVcqD1gJaUa1NDVv97dfqeMKD5MyUiat6YhBD6zC/YldI9qSBafj0Cse69D+gZ8nfovKGrLTpa8/3wW+qACgNsVZev9T0ZuQISjqYpiBTVfcl9YN1NpVy7s1YemNxOeG3tEhfA1wSVmeA0H+XpSQDe1fJy8rs3ZjCSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K90z6qwu; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8c5389c3cd2so45356685a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769642601; x=1770247401; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/R+p0Q89VOTzs/CkCyEL3M6uPrfEJ5bMsqI/Cf8cMcA=;
        b=K90z6qwuK+1/Xnm39ywbGMTfqcD+S7ZsH0SnB+CLJpInQddrut702wGJ0kMCG5fDXW
         5nSGTj993iMthvMjzahsmtk1Z16YMQTUJDerRE/mKT7ClwzPPkGi1i0C+xOtkR9PFXCN
         wS/c5jb59jkMWvDYlwvByHDc5CoEPprWg3Q1TfFrHMk7Ey1vK7+ZtGMLNWP9IrdMIESx
         Ld7Hw4Q20cF6WM7I47395kLR0WfIVEkzszvlwhQPFAfAxh0o0r5/hmr0q9vGsIBeC591
         j8DlygFXIqTElL+qv+w2fkfLzCKijzdihWj/qTJr2jW+ILtid+NK2R915riiODEIWG1+
         Al8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769642601; x=1770247401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/R+p0Q89VOTzs/CkCyEL3M6uPrfEJ5bMsqI/Cf8cMcA=;
        b=XDHM80b9VCxeSBqnMGDUum0JxtjX8mCzs6nWyk6wC6T6LXDI4DhDbBNiB9D1ppJMhJ
         Ikn9jr387YcGYpK6D2nT5/58pH5at+ruxYVcL0owDuEE7JSAJV4RxJuxtbxkC2QUj09w
         siUQv3iYIt+zoXoHpGIO5G3G1dq/pTLw3+htg8zI5Vkk9QoUSt8bWWNxlBbzP5LecjXy
         O/OdRWWyD0CsEbH14dGGG9XUGQL0pTfIbcY4UmPjEqVO2fyWEnKfIHuhPfV3gnV5vljk
         s4X3q8hoMwDJ6oZmKkYy9NMs2LbPBNw2xuvBAZrChGi85jYZAWM5shoWKbacyCrZAj+X
         AREA==
X-Forwarded-Encrypted: i=1; AJvYcCUrGKdk9ErdLf2LCz67dl2QoaOWXzJh2Rl9JOoNhazOhbJwsY3K/QVakiolkM/z5eGZ3SepLaXfAut2@vger.kernel.org
X-Gm-Message-State: AOJu0YyQxpbum0lQ7BZwxpoNbcn4f7JxFjH/DSgzsn5VXBebD0hKT1TC
	Ep152Sin8dqbsPDWG9T/fQqimm5v6MYbuDTiXTN+mgz+dVV3ELZBoYOg
X-Gm-Gg: AZuq6aKqqvULHKZ4lu5F3JP2EvXsLEno7Fuu5MeFfFtQcw06doebrQZNi2yrg5g1PJd
	I9sDu+6X61aSKAYqPIvc7rV/a2uSZV5EYj2YF3Nhiowlb0ADTPNBWDJWAOBy8HRw0yLSq3PMZ7I
	de/6Rwjz5ZWMljegDfhJ5iNvJF44VuMLYXEmlut9dbppmS6kkYgRvkVtHmDchW3v7rvLut25L5E
	3YrqPn7TEyAHe/lFCPrqLSHKFyiM64hyTwYMMMVlWa8ReSujIX2V8ITEHPa+Oy8VmrK4x08tf5n
	YTN4NRjadwBdj46Imc1myMydZVU5F1dVMpsw6qUyu7iTLJR34z7carhQgl4W/S3/MQzmdkut6UZ
	mtOgNL7mOXcSu9xY+cw74U3LTOwwaCZ1KLqDHBsVJMRfDB6AvLVRQCDtd5hqrksBReOUtj5s8/F
	tRHDOeU+8wCGyAyg==
X-Received: by 2002:a05:620a:25d4:b0:8c6:d2ca:1d0e with SMTP id af79cd13be357-8c70b84a6fcmr916954085a.11.1769642600692;
        Wed, 28 Jan 2026 15:23:20 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d375b640sm26715056d6.39.2026.01.28.15.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 15:23:19 -0800 (PST)
Date: Wed, 28 Jan 2026 18:23:43 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
Subject: Re: [PATCH v7 2/5] media: i2c: imx355: Support devicetree and power
 management
Message-ID: <aXqaf4OmvSCvt5gu@rdacayan>
References: <20260117040657.27043-1-mailingradian@gmail.com>
 <20260117040657.27043-3-mailingradian@gmail.com>
 <578668b0-cba2-4550-b676-26ed0b447bf2@linaro.org>
 <aW-V8VTcOICLWqaU@kekkonen.localdomain>
 <aXl6MpRB9ncCeu2M@rdacayan>
 <aXnB2FUgb5OlGjfn@kekkonen.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXnB2FUgb5OlGjfn@kekkonen.localdomain>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260661-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 76679A9F6E
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 09:59:20AM +0200, Sakari Ailus wrote:
> On Tue, Jan 27, 2026 at 09:53:38PM -0500, Richard Acayan wrote:
> > On Tue, Jan 20, 2026 at 04:49:21PM +0200, Sakari Ailus wrote:
> > > Hi Bryan, others,
> > > 
> > > On Tue, Jan 20, 2026 at 12:44:24PM +0000, Bryan O'Donoghue wrote:
> > > > I think reset should be asserted before regulators and power are switched
> > > > on. i.e. before you try to switch the chip on, you should establish that the
> > > > reset pin is in the state that the timing diagram calls for.
> > > 
> > > Indeed.
> > 
> > I think the discussion is more about whether there should be an assert
> > in the same function as the de-assert.
> > 
> > > The xshutdown pin, as it is typically called labelled as "reset" in this
> > > case, functions as both hardware reset and hardware standby mode control.
> > > It should be asserted (i.e. be set to low level) whenever the sensor is
> > > expected to be powered off. Typically deasserting it is the last step in
> > > the sensor's power-up sequence. This applies to nearly all CSI-2 and DVP
> > > (parallel) camera sensors. (There are some exceptions that use explicitly
> > > two GPIOs for similar functions but there are very few of them.)
> > 
> > This patch has the reset asserted by the time it gets to
> > imx355_power_on():
> > 
> > - when coming from runtime PM, the suspend callback asserted it
> > - when coming from probe, GPIOD_OUT_HIGH asserted it (considering that
> >   active-low also affects the initial output setting)
> > 
> > Should it be asserted again inside the function, or
> > should the initial `gpiod_set_value_cansleep()` be removed?
> 
> Please remove it as requested.

Ok, I will remove it.

