Return-Path: <devicetree+bounces-283194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKoHA8NMzGkuSQYAu9opvQ
	(envelope-from <devicetree+bounces-283194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 00:37:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A57A63726EE
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 00:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 405B8300FC65
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 22:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3546466B49;
	Tue, 31 Mar 2026 22:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGbr62Gk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF458451071;
	Tue, 31 Mar 2026 22:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774996409; cv=none; b=WPfzMKPzrzEO7tJhN7AUzO1gMvIHDjLZvG/VcGoXmziGv9nwW2cypEuJgKn3ZFzs1geAFZvvFMBvzS8rq0tkgUasYjXLgjjwtIFejHTXXV7A+PW8Urx6ldA9k1KZNRu1ID+xHMyAn01EZ/eDiBdcyLmDaNphM9kaZ7CvzifkktM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774996409; c=relaxed/simple;
	bh=3F7/5fuFMq7xCgqID8LxAGWvd5UnhUMWUSdaDT+X1W0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bq+NaYNYoyEKjRBL03fgON4uh53QFknyC0MTZr0sai1OIvJWKet5Y3SQZIe61tyWsIbRFF8DmCPgSWD7RzhzDRyCv3Q3XXZrVsO79A7GEFchqPg5OdifxXUM0eZJUe4LoixDQWi3u+hMWLACrG0w7U0xhTxvrSsBdvpWqxiFLIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGbr62Gk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB26CC19423;
	Tue, 31 Mar 2026 22:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774996409;
	bh=3F7/5fuFMq7xCgqID8LxAGWvd5UnhUMWUSdaDT+X1W0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UGbr62Gkq7zCE8rVcEg3Otqu981pC2UiaCj3Jp0z5GXhkd0P5CcyaZ6eiGvLZWqek
	 W6Z2geuseRcw6RVZbcTdJdr6KOaSN61wccq0k5Lcs+meKH4XsDUzxzptVtkYQ2D9f4
	 UhPirMk4x3N1VHjQI6VU/enYqPbbX1J9k79be666B9HtneRwU0F6GXt/kW3i+Jh2Ab
	 YX8EMUcjjnXDpEiwE6EEBJI5XHz4CwV3gn1kx0K18e5+7rPyChXCEVm/QGM571XM7Z
	 2Zu1heZaMO4bO967FYZn41a4lwrnWufOHHfBoI3sJ47S/+tCou8dygUHaFam1ySiIc
	 7HeSwkCiQ0VwQ==
Date: Wed, 1 Apr 2026 00:33:24 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Shi Hao <i.shihao.999@gmail.com>
Cc: krzk@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzk+dt@kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robh@kernel.org
Subject: Re: [PATCH v3] dt-bindings: i2c: intel,ixp4xx-i2c: Convert to DT
 schema
Message-ID: <acxLoSIV1F1fTO4V@zenone.zhora.eu>
References: <20260330054439.9545-1-i.shihao.999@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260330054439.9545-1-i.shihao.999@gmail.com>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283194-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A57A63726EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Mon, Mar 30, 2026 at 11:14:39AM +0530, Shi Hao wrote:
> Convert the IOP3xx and IXP4xx XScale bindings to DT schema. This
> conversion also adds the interrupts property, as it is used by the driver
> and existing DTS files but was not documented in the original binding.
> 
> Signed-off-by: Shi Hao <i.shihao.999@gmail.com>

merged to i2c/i2c-host.

Thanks,
Andi

