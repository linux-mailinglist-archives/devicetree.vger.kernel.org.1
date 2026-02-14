Return-Path: <devicetree+bounces-265562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xtAsDT+0kGm/cQEAu9opvQ
	(envelope-from <devicetree+bounces-265562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 18:43:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F8513CA03
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 18:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BC6C30160CC
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 17:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA5926159E;
	Sat, 14 Feb 2026 17:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svOyzcXA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FC920C461;
	Sat, 14 Feb 2026 17:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771091002; cv=none; b=M8KMWpObW0QlMoiF3Jx6AsS/fv8Lyf5U9wqJRAsyAHF3Vwy+7eRqE7OD1Kt0XocWoZezbT5I73BPL8CCqh+jB4z51KAbvdGLjcWSUshRvJBIO4HuTOFGhZOklN9WMtYDxYCyTna17QwM+fJBWF+WJU6X9QyeNxLbOrdxLLzbQxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771091002; c=relaxed/simple;
	bh=LrraUdxh+9Xmfu3AnFcCt3uJHTANTmtR1eAiz2CEjsk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AqphDGXeGbFt5xyKw5qVFxFexPrlO4HpxW4uEgqcLcJxaip754yCs2R+SdbV8I8a6fjOw8z7HYgTd64Y4TgdVYLrDvc705sEX/rm7PWCZFzY/1WwrJtpwnkFHAY1IuVrw/bsCn5djxrwIwBS+ADY8fMWWPF+E+BDUsePcTcPL44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svOyzcXA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6267C16AAE;
	Sat, 14 Feb 2026 17:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771091001;
	bh=LrraUdxh+9Xmfu3AnFcCt3uJHTANTmtR1eAiz2CEjsk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=svOyzcXAoLsp1T7xT1in+7BqyXFiHTDk+fyye8rFxv/ASej5tyxZRgRiWkhXA/w3I
	 b03KTnF/iJU5whjpCXDY7d3dFoYuKeguY1T8TAvQfO55TNUNy1ezLUDlQP6A0zN8z1
	 lqId3U0I2Hn9O4E384jUXy4qKvJiFlo6l4pedAEjUee8YocXYXUXh0aRWZCVVAUZSU
	 oXsJyp3Zag16zigzwXf6Bm8lyM4nG9xkLr4/am6vvM+x68GR2N+ll9ixfvFFAJGuyU
	 OrYGk7w3uRlddyekae0sDzgl1J2BJImEXyZyuaIn6HgL9ePVw2vNN/EhX//BkpLyl3
	 EO8AIFojuDwyg==
Date: Sat, 14 Feb 2026 17:43:12 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Yasin Lee <yasin.lee.x@gmail.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 yasin.lee.x@outlook.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/4] iio: proximity: hx9023s: Protect against
 division by zero in set_samp_freq
Message-ID: <20260214174312.7f6e299f@jic23-huawei>
In-Reply-To: <aY9TtJQoIyLVqqR-@smile.fi.intel.com>
References: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
	<20260213-upstream-20260219-v3-2-df9371d29f5c@gmail.com>
	<aY9TtJQoIyLVqqR-@smile.fi.intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265562-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,analog.com,kernel.org,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 59F8513CA03
X-Rspamd-Action: no action

On Fri, 13 Feb 2026 18:39:16 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Fri, Feb 13, 2026 at 11:14:44PM +0800, Yasin Lee wrote:
> > Avoid division by zero when sampling frequency is unspecified.  
> 
> In case of agreement this is the desired behaviour you can add
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
It seems sensible to me as avoids undefined behaviour + is
unlikely to make any functional difference as I assume that whatever
we got from the undef never in practice matched a valid input.

So applied patches 1 and 2 to my fixes-togreg branch. I'm not pushing
that out just now though as I want rc1 to rebase it on first.

Thanks,

Jonathan

> 


