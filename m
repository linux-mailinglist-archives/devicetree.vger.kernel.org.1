Return-Path: <devicetree+bounces-305018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kI80Cw5QHWoDYwkAu9opvQ
	(envelope-from <devicetree+bounces-305018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:25:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FC261C613
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C32D30557D0
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA3238F639;
	Mon,  1 Jun 2026 09:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFYSI8aB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E947338E8CD;
	Mon,  1 Jun 2026 09:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305456; cv=none; b=Q9wLxJE/wiyhrmvQTJeX2zJefMevQB/y5XkZ/T3pA/0Aj/zuo7lRab4gEgsydb+krdseQxn8d+q9uIsFrrY8X7Odzgs8V38PUUn+VTyC6GSYibxW9rb5nPAcsRFZ5z4No1/l7JlYBTqD6ry3QgS6/ZUkOEaFB0p97wmMEWNM+Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305456; c=relaxed/simple;
	bh=qJ0sFCBGk589YHFIpAbplMP4uXTOAk9D5OAu6fM3A68=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lelNTDFjeJPeqBe4QZQF2FMo2/LwRzXi7ra4165EhrXdlIscm+xstClWorkPPW5hKstMeq2h41ZLdiT5ogJIxIJqTDvFi0cBFumulnmGvGyXt+OPtM2kV1k2Bg7ziPg5+0gXS/eDhgGqnEnwRqGRii+RkEOwFxqExHeE+LO+WIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFYSI8aB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EC0F1F00893;
	Mon,  1 Jun 2026 09:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780305455;
	bh=eZYy79LBW+6cC4Cn2CjERpCgfeb20T1aMKoGylZF7ro=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=cFYSI8aBFv507sEeWR0qkW5aG46126+HoIHWG76OOwIKjbmjxhLqfUsDytdqQg9Ya
	 JxW6rPQRqnQnw3cx576M9CtHqoY60TZ+yS4X9A/ALaFUF7jmqTKSc+5ob1nAGx0qFN
	 sm5vszuM6Yld5nbyzeEvSW0voGe2DIlauowWsqrrygilY3da8cAQXD9ZSBGdS731gy
	 wWvOYY04WZptGL7bPDC6uV9aXLcxP4Bz/zZpqQ7H05b9i8x1hHjeu19SWtaU5pzY32
	 zrjjWVp2r19JVb4pzP+939NnJhnI5Zfx5jG85+9Vgkc5LgBdnnie7+MIcRux9aZFW5
	 /dYtSSdC/ikyw==
Date: Mon, 1 Jun 2026 10:17:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Javier Carrasco <javier.carrasco.cruz@gmail.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rishi
 Gupta <gupt21@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: light: veml3328: add support for new device
Message-ID: <20260601101726.203f56cd@jic23-huawei>
In-Reply-To: <CALoEA-yEA5KcvXqZCCg76qFAgyNq8BQ5+gop442mju-9PiKaxg@mail.gmail.com>
References: <20260530-veml3328-v3-0-dd562eaee8d9@gmail.com>
	<20260530-veml3328-v3-2-dd562eaee8d9@gmail.com>
	<20260531101940.037d1d7a@jic23-huawei>
	<CALoEA-yEA5KcvXqZCCg76qFAgyNq8BQ5+gop442mju-9PiKaxg@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305018-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,analog.com,kernel.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 80FC261C613
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 31 May 2026 18:44:43 +0200
Joshua Crofts <joshua.crofts1@gmail.com> wrote:

> On Sun, 31 May 2026 at 11:19, Jonathan Cameron <jic23@kernel.org> wrote:
> > > +     pm_runtime_set_active(dev);
> > > +     pm_runtime_set_autosuspend_delay(dev, 2000);
> > > +     pm_runtime_use_autosuspend(dev);  
> >
> > As per other thread check this results in power down.
> > If it doesn't, try moving autosupend calls after devm_pm_runtime_enable()
> > and see if that is enough.  Otherwise, you can either manipulate the counters
> > or I think just call pm_runtime_idle() to force it off immediately.  
> 
> Just to confirm, I've tested this on the actual hardware and it did autosuspend
> after probe, so I'm going to say that Sashiko is a bit off for once.

If you have time to figure out the path that causes that, it would be excellent
to have it recorded. I spent a few minutes the other day on this and couldn't
find it.  Maybe ask AI to figure it out :)

J
> 


