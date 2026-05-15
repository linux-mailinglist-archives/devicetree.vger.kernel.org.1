Return-Path: <devicetree+bounces-297958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODbZDazNBmrynwIAu9opvQ
	(envelope-from <devicetree+bounces-297958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:39:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D455454AB4B
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:39:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 51508300CB2B
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 07:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 767FB37DAB9;
	Fri, 15 May 2026 07:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFHi8b8k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7653EFD31;
	Fri, 15 May 2026 07:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778830761; cv=none; b=mxqeRJX1w+0zFlgnZjfAzzQWgFloNLX8MuIW2xtEA+Zzzg9rhGKxufc6IohpBINNkqkkQWXqQ+jHLTFjOjkCeZn1PLlQ2qJUSM9FL82CCREiN3w5BncSZxtEYumkCEKHKhneHiBMWazUe52lM1Tdd8ixe6g8qn7z6mTQBKbCr2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778830761; c=relaxed/simple;
	bh=UDmVSb75ZqYhh0+N6E1Z8UzE02p5VFsFz6kdVBeDO/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h2H1XaMINh3gOTjOnuIHGspxg85nTe0PGGFDCibXQoRUv9pINoFZfqgAmkaHvNj7YY3Jz5hPSjmBxJB7iwuXTVuOArOVkqzVrYX+P2yqTLuP+J+eg27EvI3Lp6x4YZ0oOHQBZMQoCrhTG69sEzuwwG9AGS3gqyeUmcg88LSIFUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFHi8b8k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13A20C2BCB0;
	Fri, 15 May 2026 07:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778830760;
	bh=UDmVSb75ZqYhh0+N6E1Z8UzE02p5VFsFz6kdVBeDO/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HFHi8b8kQwBRVlnFXQn2SLcqyN0N70TdBy89xZc8mRXUqEJtD7WOXLUwZr8rFNS4N
	 nLdWKekx6mmupFTsBipTLg1LXg5Dtv7xfaNDOUItDl/aZqLUL4yZ8JAh7ioU/9v+o5
	 Rd7uDyFGUPpwCAdBEY6rXld+UqqAm/y4iPWm3fcuYKV37Hz1r6PADJozETbjgR4rEv
	 3PpTnUSVP5CIBSXP7x9KiXLHA+SAfpaWqWyC+FhkuRux3EbQDgwXsE2B6f8zWFCSzA
	 hCtxjzy2mW4hI4S0Jcz0toqrIZRSYBm/bGEKMYwlalbdCBIThvFtJLrcTUKJ7uGAs/
	 BD/OkMkwxjcpQ==
Date: Fri, 15 May 2026 09:39:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kartik Nair <contact.kartikn@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	christian.gromm@microchip.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: misc: add documentation for MediaLB DIM2
 controller
Message-ID: <20260515-radiant-practical-dalmatian-a896d4@quoll>
References: <20260510184419.98043-1-contact.kartikn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260510184419.98043-1-contact.kartikn@gmail.com>
X-Rspamd-Queue-Id: D455454AB4B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297958-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 12:14:19AM +0530, Kartik Nair wrote:
> Add device tree binding documentation for the MediaLB DIM2 hardware
> dependent module. This documents the compatible strings used in
> drivers/staging/most/dim2/dim2.c which were previously flagged as
> undocumented by checkpatch.

This is not a warning you are supposed to be working on.

It's third or fourth patch like that last month.

Best regards,
Krzysztof


