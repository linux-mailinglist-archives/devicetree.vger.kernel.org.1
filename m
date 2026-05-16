Return-Path: <devicetree+bounces-298663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4A8vO9NXCGr1kAMAu9opvQ
	(envelope-from <devicetree+bounces-298663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 13:41:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C87555B80B
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 13:41:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14F8030075FA
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 11:41:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751C73D5656;
	Sat, 16 May 2026 11:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6R3Txfk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32024381B0A;
	Sat, 16 May 2026 11:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778931665; cv=none; b=TwWZNIhdSDITQM7sJ4zm0tkCeyjoYcVscOuKHzAxmgHpTEBFMetIh6A8fElie7EWc1jEwOcMp7CTWJYzM2217MeCz8+Luw5GnyMe1wAjwJ4pNUGC3jchn6fW085DeBuUwSsHnyuTBMr8aebFmFQNScmP4MnZuHXJ8TujkpcXY4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778931665; c=relaxed/simple;
	bh=ua3XfryFKM0KoJVt1aWuFHj0EHG4P4koI62ulGuovcA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jN3aNytmkUdT2NpyHwgYbKo4rwdi8zxQegxSZ9lPsKIOrqFNduSYX1QlwKY77LJ8y2T5oEKV92zMi5M8SZUJS1JB4eHUsF6Ae5I/H3i47OwHNCarx2f3SUMHXHNwqAT/bTsn6cuFOfYoTBr+qasb1BOJe8MMrWRSq9nk31FefHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6R3Txfk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D98A1C19425;
	Sat, 16 May 2026 11:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778931664;
	bh=ua3XfryFKM0KoJVt1aWuFHj0EHG4P4koI62ulGuovcA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Z6R3Txfk17z7oL8xaRZ5jg+nA4cZf9jwq9ftniLODz/4tioTlhnWhClafHMNT/DFN
	 QLYtyZroMzlvXQ5JyOD/aQ3DjnUIiFKFNu0rt9GVQGxfvpBHpWnFucW6HVM5V72MVt
	 hseTxuXQhn1jSet6bVuUgq7T7biiT8oyWwJ5ADfeCZqfUI9BpYEC8xu3GRobsn4KIM
	 SdzlTtMLENW9A/2Fg2zJZXFzwdmOhUNWEXNgrxIKlrmogsrgZc2LRACGEJxACOoiKr
	 3y/XQZknJjC+txcgzkyYBLaobHmm5haI4xw8zTiMFuVstpkjeOHtbnkij3VBW0p04t
	 U0FS2AcN3OkZw==
Date: Sat, 16 May 2026 12:40:55 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vladislav Kulikov <vlad.kulikov.c@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 andriy.shevchenko@intel.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] iio: magnetometer: add MEMSIC MMC5983MA driver
Message-ID: <20260516124055.4b7e0c43@jic23-huawei>
In-Reply-To: <20260511191135.36691-1-vlad.kulikov.c@gmail.com>
References: <20260511191135.36691-1-vlad.kulikov.c@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4C87555B80B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298663-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, 11 May 2026 19:11:33 +0000
Vladislav Kulikov <vlad.kulikov.c@gmail.com> wrote:

> Add an IIO driver for the MEMSIC MMC5983MA 3-axis magnetometer over
> I2C. The driver provides raw magnetic field readings with
> per-measurement SET/RESET offset cancellation, giving 18-bit output
> with a full-scale range of +/-8 Gauss.
> 
Applied to the testing branch of iio.git.  Once the build bots are happy
(and I catch up with backlog of other review!) I'll push that out as
togreg and it will get picked up for linux-next etc.

Thanks,

Jonathan

