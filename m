Return-Path: <devicetree+bounces-294152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LgmBhfE/GnSTAAAu9opvQ
	(envelope-from <devicetree+bounces-294152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 18:55:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AECB34EC88B
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 18:55:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE7DB30509BC
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 16:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8C244E044;
	Thu,  7 May 2026 16:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX/XH2f2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B16E3F1679;
	Thu,  7 May 2026 16:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778172479; cv=none; b=GtHXuMOdwPEap1P1LXXAsBv0kZu0bx0v7WGrZYKepc3tlVnSi1JFyk5TKJji6GFGqgSPRfC3BQtmiaJCoGMI+gnjueYihrfQaBmmc14MLipwqsp2xdD2QzmnPH4cBvIKTRN7F6evGpuTP+hLZVuDg9dxwrFg74BqTUowvVG+AFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778172479; c=relaxed/simple;
	bh=7SFD2K6UrLcuR9v8xV3naRjExs0wOL11kbB8khFH2uk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OM6RXSYexUYsHN8JaX2MCwZzxF1gwjJmkDuw9OH0DFHIJk7feKnwTxmL7wOkVXT1ZWj8XVa1zXiSq3ITwymAwY+UORsyO3a0Wjk7sgmaFykCq3y2aJZKWbIpYZf23J9L+uZHopFi6LbXyE81yG1nHjlstcqN7aVwUkEHDjfQpPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX/XH2f2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2457DC2BCB2;
	Thu,  7 May 2026 16:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778172478;
	bh=7SFD2K6UrLcuR9v8xV3naRjExs0wOL11kbB8khFH2uk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SX/XH2f2ZAOLyFUMwAaC+bPQH8Sx/Ln8CKMi8Da+jCWS+UW+16z52wqDhcfuWUf2I
	 RHRm8iiWRQfMihryIWrc/AmD72NqbYjz0C+fmdjWo1rig05QTrK6dWKHG+NehiDd6C
	 /TvkNMAPpWQgUgpslHVVEkI12qsGSkOOKBWARZ+2MedF+Ahx1kpA7/aKnJxrzHbSBk
	 T5OJ8lRVlCYq2Gas7hhDAePfdzF8ei5gyW0wjulxwGCiH6IOv071oCPEZq7rx1FldZ
	 wAygAmOC1xgeX5K2dyL38XBMw1D4kr5PXH0fpPMMwSPHw4G85bgfXdGCyEXFsVpJTI
	 Ejo/tt09WFJfQ==
Date: Thu, 7 May 2026 17:47:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vladislav Kulikov <vlad.kulikov.c@gmail.com>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] MAINTAINERS: add entry for MEMSIC MMC5983MA
 magnetometer driver
Message-ID: <20260507174750.5b869ff4@jic23-huawei>
In-Reply-To: <20260507124724.813043-4-vlad.kulikov.c@gmail.com>
References: <20260507124724.813043-1-vlad.kulikov.c@gmail.com>
	<20260507124724.813043-4-vlad.kulikov.c@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: AECB34EC88B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294152-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Thu,  7 May 2026 12:47:24 +0000
Vladislav Kulikov <vlad.kulikov.c@gmail.com> wrote:

> Signed-off-by: Vladislav Kulikov <vlad.kulikov.c@gmail.com>
Hi Vladislav

My preference is for the Maintainers entry to be added with the
first patch in the series (dt binding only at that point) and
then the other files added in the patches that add them.
That way it's always valid and their maintainers are fully
documented as part of the patches rather than at the end
like this.

Jonathan

> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 882214b0e7db..b1d9d7b586a1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17170,6 +17170,13 @@ F:	drivers/mtd/
>  F:	include/linux/mtd/
>  F:	include/uapi/mtd/
>  
> +MEMSIC MMC5983 MAGNETOMETER DRIVER
> +M:	Vladislav Kulikov <vlad.kulikov.c@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/magnetometer/memsic,mmc5983.yaml
> +F:	drivers/iio/magnetometer/mmc5983.c
> +
>  MEN A21 WATCHDOG DRIVER
>  M:	Johannes Thumshirn <morbidrsa@gmail.com>
>  L:	linux-watchdog@vger.kernel.org


