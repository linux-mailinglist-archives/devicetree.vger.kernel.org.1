Return-Path: <devicetree+bounces-269451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULwrO6wtomk/0gQAu9opvQ
	(envelope-from <devicetree+bounces-269451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:50:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2651BF2AE
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 747C030C3F65
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC78A2264AA;
	Fri, 27 Feb 2026 23:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuA3swrs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76F71DE8BE;
	Fri, 27 Feb 2026 23:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772236196; cv=none; b=Ia+L/iAg+YIJSI+vHZK0iDBUWRvOlRjwZiHxfF9cUZ0k/VwzKAJlE/LNphIDZTFNvrO3hxH4qQrCP+kUuKBKVccxcENoKRQOMBm6EHR3cdpWZGqh/x3ApRN4B1lxAe5JnOP++5kfkRj6W9aJqLnA6YXzNgCYv35xEK885wP+CMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772236196; c=relaxed/simple;
	bh=Dl361WHG8lRr9EigrdY3ymPGlpGozrfscdOe2lX1Bt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZXvGKIc2Iv42RT9aDknwyVaIGnbiMFpyw0cLADzgGMf06zF1pGaF4jZb4e9S4kCOjplEG5L+qM5MDHs+pXSaVVaPO/Yb1unGItXqiZsxt8f+iUUtGeBSr9WwSTlXaFp/ABPHe+4whax7Kdla3zGiwZvGddeW3/zXDY6+Nw9uZsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuA3swrs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49EA2C116C6;
	Fri, 27 Feb 2026 23:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772236196;
	bh=Dl361WHG8lRr9EigrdY3ymPGlpGozrfscdOe2lX1Bt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CuA3swrs0PvJta2Q0WL17xYgbKBGtwAU5PLx6ALi++08HofzNjNk14VhdAYsbeb+Y
	 HHum9HlI6COLcNw6870E0ezVcmAYLIVOfroLR95em2Mlte/5pEc+tVzlrRmtx/F1jl
	 4Ibp0kE8ZpUbR983pVWKKGQY+aW9hb+KWY6+sgeCnHS+ZtIc8OnGg68Ly1yiKT0Y7G
	 VfeR2KgVQ6/Qkl/Vjif7s5iAPV3zLCR8fhffECdz2uNwFvv6P1BHHQNk9xSAYx79kY
	 G/hOW0mRgXL3YVyoJjIclMWmZaVvVa/Vei4QE7+bBTNyD2RyiBNdg/+Gc7DvZldLO4
	 Z8+RE0dQweABA==
Date: Fri, 27 Feb 2026 17:49:55 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Song Hongyi <szpcq123@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	saravanak@kernel.org
Subject: Re: [PATCH] of: property: fix typo in kernel-doc return description
Message-ID: <177223619443.995802.16020070778954637311.robh@kernel.org>
References: <20260225093814.124735-1-szpcq123@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225093814.124735-1-szpcq123@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269451-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7E2651BF2AE
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 17:38:14 +0800, Song Hongyi wrote:
> Fix the spelling of "success" in the return value description
> of the kernel-doc comment to improve documentation quality.
> 
> Signed-off-by: Song Hongyi <szpcq123@gmail.com>
> ---
>  drivers/of/property.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


