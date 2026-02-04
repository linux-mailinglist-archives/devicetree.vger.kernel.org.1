Return-Path: <devicetree+bounces-262634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMRrGSk/g2kPkQMAu9opvQ
	(envelope-from <devicetree+bounces-262634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:44:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA715E5F42
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D39DA3009565
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575B13F23A6;
	Wed,  4 Feb 2026 12:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NYVLeejA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F098D39B48F
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770209061; cv=none; b=RaoAo8vl+HHHsiHlJleKsTp4OYx/qSx+7/OiCYX97jpmgeFlqGdTorGTxFbYciMNlR16rcjv7k4Vw4n63XgsZCTNsBfaKZM7srpbp+LFVUVqH4WMlkj/Fpvs25JaK4V8vCWqTGaIxmiVLYbSEbOzjhoGlNlNQgqfuuls5HZa2QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770209061; c=relaxed/simple;
	bh=2ccQeih6irYO5XzSFtymX8LSiL0DW7BGri+FxKdFDR8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hV2Nls9t9wW7mAhzTJwvWT6w2uRHJb60mbBuvkQxv5MH3I8XJdvJKj8u9C5BLnY2+YL7mmFV+D6vffn0KmzPTrkBf7Vwt8I9pljPJUtyGWHmKYY9xDmdxdD+GpSBsHmvH8LG8W88ctHu2w6NXThdEj9GMfQsFNcsGjtTvuBLSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NYVLeejA; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43590777e22so4220893f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770209059; x=1770813859; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HdeWbr93zk7sz3NtKAzxThy4aGeFCJLtK1+LR0Bzdck=;
        b=NYVLeejASjOK53lwlOzxLANcaoH9vubIJNtZxO6/TjzGJc+qkfYIEFtucOYzu2T7Iy
         tGpVQy0XFNf0r438iOZRWdAw6rnAiXI9z9f39jkdRXeLyckWdKSJHzyGIVgQe0Z5t4Fg
         TGPCNkrse4xVMHYfL/qRKkq1WvvHcj1MahqBbC+IPZ4Va+WNUHM/cITzyGdLRQl3DHsW
         WD56APQofcq/5FyR2D9TmavUgROtySZjjmyEUJgJ9nwAn69AzRWwsWzQufJOWJkWmy+T
         tssNBIi8F+/dtZv8LM/T6lGrFEM3un0+NGf5EuiT8oNabtuSENSzG6F+6cCH+3txonGy
         RQLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770209059; x=1770813859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HdeWbr93zk7sz3NtKAzxThy4aGeFCJLtK1+LR0Bzdck=;
        b=Z6eOAvu1LY3h3D7yAw5Yn9nEK4WKoYB/5N6TW/MtA9Kc3ebQfDSkUEzpu/rDsIisvl
         ZnPChEjYYTQ6pgmNKlIAJL3/+8+kAVZxTSsbZM+T5mCGngdCk8H9EnTv8mn4BWZ0K+0p
         QDLXVtfB87NycuOIL3SOxpUGPn7bV+JEOcyt3ymbp1PYtWt5dG4c+rM8p5kzhyB+r41k
         nvunp+GpXyArL1f6rMqwA3pk6pRH/++4F4/NrJtLXFZTYEIfdM2opuAx2xDzA6BYx0Tj
         MSPGz3zU+lKXAV6llNz10Vepm4tGU/ByhtJxQKgV9qAFcRdOx3EeW9RSU5w5YWK1MHyY
         nAOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtkHgaiqyUavKXnzzeas+cD9KV7JKRckSrX2COdfw5JgqZj+F9feUAilxUbQYPeKUTZrK/stJNdbsw@vger.kernel.org
X-Gm-Message-State: AOJu0YzaityBUEMl5iBDAEusbZRAhUnvZ0udAcP1syVkWVird3EaOjP9
	xkHa1Q70v39jilWxwsVR+dFiYgUjUuJHxnYwvaOsDQqiWpjCfgmx/Fz+
X-Gm-Gg: AZuq6aIdKy7fdG4LvLApf5iaC+qmZcEARVfNBVJJsk6f0dxbsFBDu5TmveIvCDaSATn
	q7/w0rVMT1s9XZjJclh043PWvKg442jCPGfwc4kU7M5rSWT5O//r61ObVRQbOujqw7UqgNoiWSX
	u8c+kctA9F4r83HPVmFrivGoHTk6VTRFWAkbNGurJADThuEHg9aSCR32x7z0GwHmnC5x+y1ccg8
	jE6T+d1X7yFyP0OPFG5mVrlhgJjoOcpZIFKy2427poFUuY3oGcrCO3C/yJ2Uk5CVDPf8fZf8Z8a
	yAepqwnQgwLl1uMFpIK3sALX17d8TlwrmZTVeH5sQgfroelVryIzt0xDALQNsr576N9aVmBWWM+
	EsKAeH5JRxSy5E0Z9l/ciRKLpF5Gfq28eewphAWVY9rqWCEeU0mBE6zLbIUkvGvUfIHJdI9JBHL
	F6Ox+Skd4=
X-Received: by 2002:a05:6000:2086:b0:435:ad52:31d9 with SMTP id ffacd0b85a97d-436180321b0mr4035154f8f.28.1770209059152;
        Wed, 04 Feb 2026 04:44:19 -0800 (PST)
Received: from legfed1 ([2a00:79c0:684:8900:e22:b7ee:dcfc:b04a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618058473sm6521891f8f.22.2026.02.04.04.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 04:44:18 -0800 (PST)
Date: Wed, 4 Feb 2026 13:44:16 +0100
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: dimitri.fedrau@liebherr.com, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] power: supply: gpio-charger: add support for
 fast-charge timer
Message-ID: <20260204124416.GA3066@legfed1>
References: <20260109-gpio-charger-timer-v2-0-63fd1ba75830@liebherr.com>
 <20260109-gpio-charger-timer-v2-2-63fd1ba75830@liebherr.com>
 <aX0tJLqfY7b9oNAi@venus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aX0tJLqfY7b9oNAi@venus>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262634-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dimafedrau@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[liebherr.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DA715E5F42
X-Rspamd-Action: no action

Am Fri, Jan 30, 2026 at 11:19:44PM +0100 schrieb Sebastian Reichel:
> Hi,
> 
> On Fri, Jan 09, 2026 at 07:41:20PM +0100, Dimitri Fedrau via B4 Relay wrote:
> > From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > 
> > On some devices like TIs BQ24081 battery charger it is possible to activate
> > or deactivate a fast-charge timer that provides a backup safety for charge
> > termination. In case of the BQ24081 it is a fixed 7-hour timer. Add support
> > for enabling/disabling the fast-charge timer via GPIO.
> > 
> > Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > ---
> 
> The documentation is missing _a lot of information_. What happens
> when the fast-charge timer is disabled? What happens when it is
> enabled and times out? What do you expect users to do with this
> control knob?
>

Yes, you are right. Will add the missing information for the BQ24081.
When the timer is enabled and 7-hours are passed the device will enter
state "Timer fault" where charging is disabled and cannot be enabled
without powering the device down and up again.

Disabling the timer will just deactive the mechanism above but charging
is not affected by it.

It's just a safety feature that can be turned on/off.

Will add this information, am I missing anything else ?

Best regards,
Dimitri Fedrau

[...]

