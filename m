Return-Path: <devicetree+bounces-298522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDo8G/h4B2pL4QIAu9opvQ
	(envelope-from <devicetree+bounces-298522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:50:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 715BD5571D4
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ABEA03011F4F
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B8B239562;
	Fri, 15 May 2026 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6G14a75"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44681413D7D;
	Fri, 15 May 2026 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778873800; cv=none; b=CtzftbXLSl183/go6b0pb2RPXYt+RxrZbKvCtRq7ioqukw/3r4HEDCrP4WbTnyeI3P7KS/jkVVZVaKHNd2CtYJ2371eIrw7Gaff3dP69auGDYk6vgAVnrQEtgGjtAc+K3STSv/ktDp6m3gIq6sXlCmgvTDFY8XSFEv8Yn46YoSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778873800; c=relaxed/simple;
	bh=aClW3vHF3CN4bB7VxdXrLwV0uPyZuVdGC0aCHX+/KB4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bV1GREiftVNDjBNIQm2jehZVCQ9Hg9VaLJS1VS3DBebmRTpLo8bMOKxXp63AEF2GuirnwJ+tjLLmAZxxfjmVBFBcPyKZBxryzNs3ssv0eOBxU0rY6gH13crMepQ1zHrZl+hNxhCdrQRUaQ7GbBamgwnhq6Z5i4/6vhZXfA8Zw/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6G14a75; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BD23C2BCB0;
	Fri, 15 May 2026 19:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778873799;
	bh=aClW3vHF3CN4bB7VxdXrLwV0uPyZuVdGC0aCHX+/KB4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=b6G14a75Zsi3xZwm21EKE8LCXacUKOWTiGhI9qIsA5Ex9Ctlp5d+HMz5ndbaBIXNJ
	 PSutp3nZpRHKBM5ZSxmm3wVE20Vi2mIkboFjuEGoG8LwWAV+gqPJowAK0qbLZ/WvBS
	 P1VNiRPLUEscyox0rW9qwqbW3RHN5/9xtT6tnbo5T1qQ2M/4qSSggxMBm/skwki4ul
	 5UAdzdIlDN8aLJY+HVmzvvUunYKhpMMW8ep4IgLBi9JRJsWkj216WwHWGGTTo8bBc2
	 LokeJk9GYcp9RrumZYU2DK7msmYnkfPKs5g6D1wAygNvESLEVW5h+sWOCXAFu8qOUk
	 invt5AUmFQqEA==
Date: Fri, 15 May 2026 20:36:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 09/11] iio: imu: inv_icm42607: Add Wake on Movement
 to icm42607
Message-ID: <20260515203629.3dbf7133@jic23-huawei>
In-Reply-To: <20260515130018.237378-10-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-10-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 715BD5571D4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298522-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, 15 May 2026 08:00:14 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for wake on movement for the icm42607 driver.
Could you add a bit on what is supported on each of the two parts.
Not everything on the 42607P it seems.

There is quite a lot of fairly complex feedback on this in sashiko.

Obviously we are late in the game and I should have suggested
this earlier but I would have dropped this for the initial driver
just to keep it more manageable to review.

It's very much an add on feature.

Jonathan

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

