Return-Path: <devicetree+bounces-273699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIV7CfpksGloigIAu9opvQ
	(envelope-from <devicetree+bounces-273699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:37:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B18C256779
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3EFC63017793
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D28318EF6;
	Tue, 10 Mar 2026 18:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdK6pCkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9D72DB78B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773167860; cv=none; b=f3aqzupIygm3XlQ7Yml4lYcRrhL42+k3GmX8jRjh9T4PT0VQ4k4tgwgk3i1gWzl+fGckdgqAWuOONHzetjPgY/5xKC4Flj10nBSu8fDAG4JGxap671gEkF/f4V5zGTwZX5Gtc7TzyUCCNCuVrm+S/sTRlgCEligTRGYZPhfVcdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773167860; c=relaxed/simple;
	bh=0Tyi5Z6JfhNx2J5HDr8c/SApKa6+kYshAqOaIqXpdKY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=onKpAmiSn2JNlC9MF+A9ixXMN1q6XtrSOu7h2CdrNHW1Hm86437QtU5RV+Hj18OovJd1XRNwr9Q5Qm6QcFfvmpoR57yZMf6UQAM91bOIf0u3WjOI0FR5Qm8eiSknoaow8iNcY9pN3cXdigJ9/nUxAkBmScmiAItYQ1ouR1zwCVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdK6pCkj; arc=none smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2b4520f6b32so16213713eec.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773167858; x=1773772658; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mEydtYkjbJ0qWFFzbilGZORGZlN37D01JySG0l90LLg=;
        b=mdK6pCkjLapO6oVF7c0n14UlTfZ/e0pdAiRJhBp4O5S+vWtn648yrkoXO3xDu+b8yG
         4HF+VbhgdFQKQLp/qcdlUcPON9cYUk5xbIv3yyE+iABPig2XOVG24NpHfsAILeBrgxGJ
         PqwViQ9Oi7k1F6bfze3Dfk79W0V8pI7N5dKaSfDAPT7vEOkZ8+XnXd3pPqdWOrT4TfPu
         1OSc8UYLVpY7VRMGMgEq/RrdbUzUmyyj75jrOxiLet8VGEJR0PT/hTNag3BD5TfFnH8L
         NouTMnxCodSN1kZsgBok6Sm8Nt9Ap/gMq/YFzFrE3/Cw38v2pUn+tTm9sjDU29hQeSoQ
         Z5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773167858; x=1773772658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mEydtYkjbJ0qWFFzbilGZORGZlN37D01JySG0l90LLg=;
        b=vbbiOI/cKZx994I4LDzyKmPjvrr1/2FKmGTXjCQuzJwSqqecgJ/OLi1NKDgio4NO5s
         edgbhx/V8hgevY30duQX5SyE6iVYhVZoF91/Zq7gU09aar//c2MlQycprhiUSuKfyFDw
         owV9XRQEkVHq4vFPrI0+PssSkvLcYK7is68Mb5FRsZbgd+r4kHfoz7n6gYocGuVvXFYA
         d9PchH7Ob/7P/4dnBFi6tRwyuDpMfeJW9K3S/IQNceXGuF32QAT+1i4Vvq9kuNWvvbXS
         lQNfL+iEbho5oUHc8usK0XTvQxUY6eIcnhdbI5anaTYoIb3d7rXDr1iW4UDRFFIFB2Vt
         vjXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjZISjld105KFwsgYi9w87Wfsoh+v//ikF6oZXEjb1cc8OXgs+uNs49l4e/i1wgOmU4INgOdM2lthB@vger.kernel.org
X-Gm-Message-State: AOJu0YySG43gfUkHdaZJad7kjjLXIn1x8XTeqIGy+yhosy5URo5cySBi
	oobrsiWDpIchUdtptfvF6QkkOME0yahwsyLzk+B3HfMkfrSr+dBFeBbh
X-Gm-Gg: ATEYQzzuQI8J7vZfKoc1Qri04eOMDLsTVMRm/ZDOYbzgxCee5KgDYSZ3b0Lm9Ayjez1
	dDnVf7zm8bRNy2iPRA7k3mqbO/rLTd08hWPo3zg3ZUe4gQAQNIdAVQTrsaJSgA0HVjklPSwjq4I
	A4fCKVSCquUUYOUTl9FCi6aUNKT6FxzF2avPSFhz0Oqb5ASzSZ0h09g4c/+8kqtP1X4LQIW96xW
	rWqdvj7YzCofRzko/FBuTauomGoQULYu37ImZJRp6dD/mxatvwptH9WS5HRaytemgIOve59+nGV
	ECLuy7TMw6YCPwu+U3t8RpyqHhX3waX6MmAZlT+5usJ9tYFZr6aWJm2w11vSn3c6TZfKG4k0Lz3
	RTCSfg6O+saxL+iCDHqeow1EngJhwwtbCXa61BrLYsvgPWbIZ0bPjFerVcuYqrk1/zjdPVwvoe5
	9bK2n3ExAY2Cmy+uL1S3Y50abkLjtxVzyiMrRb0laJwaCkmONreIb627cZqGsz3e33
X-Received: by 2002:a05:7300:2156:b0:2b8:29e2:93e9 with SMTP id 5a478bee46e88-2be4e08fccdmr5761447eec.37.1773167858414;
        Tue, 10 Mar 2026 11:37:38 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:9:5df8:fa34:6102:3b03])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f96f64dsm14294515eec.27.2026.03.10.11.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 11:37:37 -0700 (PDT)
Date: Tue, 10 Mar 2026 18:37:34 +0000
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Hugo Villeneuve <hugo@hugovil.com>, robin@protonic.nl, andy@kernel.org, 
	geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	hvilleneuve@dimonoff.com, mkorpershoek@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, lee@kernel.org, alexander.sverdlin@gmail.com, 
	marek.vasut@gmail.com, akurz@blala.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 4/4] Input: charlieplex_keypad: add GPIO charlieplex
 keypad
Message-ID: <abBkk4Ng-_MDHd6t@google.com>
References: <20260305192101.2125660-1-hugo@hugovil.com>
 <20260305192101.2125660-5-hugo@hugovil.com>
 <aari1Y1CPZSYEVj3@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aari1Y1CPZSYEVj3@ashevche-desk.local>
X-Rspamd-Queue-Id: 2B18C256779
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273699-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[hugovil.com,protonic.nl,kernel.org,linux-m68k.org,dimonoff.com,gmail.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 04:21:09PM +0200, Andy Shevchenko wrote:
> On Thu, Mar 05, 2026 at 02:20:50PM -0500, Hugo Villeneuve wrote:
> > +static void charlieplex_keypad_poll(struct input_dev *input)
> > +{
> > +	struct charlieplex_keypad *keypad = input_get_drvdata(input);
> 
> > +	int oline;
> 
> Why signed?
> 
> > +	int code;
> > +
> > +	for (code = 0, oline = 0; oline < keypad->nlines; oline++) {
> 
> Can be like
> 
> 	code = 0;
> 	for (unsigned int oline = 0; oline < keypad->nlines; oline++) {
> 
> as iterator is not used outside the loop.
> 
> > +		DECLARE_BITMAP(values, MATRIX_MAX_ROWS);
> 
> > +		int iline;
> 
> Why signed?

Does it make any difference given practical limits on nlines?

Thanks.

-- 
Dmitry

