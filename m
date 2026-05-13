Return-Path: <devicetree+bounces-297098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOakGG7SBGr0PQIAu9opvQ
	(envelope-from <devicetree+bounces-297098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:35:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E952553A08D
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A05A301CCCA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6633AE707;
	Wed, 13 May 2026 19:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDDXiRpA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774132AEF5;
	Wed, 13 May 2026 19:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778700093; cv=none; b=HO0KPZrDtuDKQI0gsg6sf8iuOSLIghE1kr6PebfZKoNwYudOpxeGGri6nsH5q4XvR85XdnXCEkWmyvRWYtGytcD1ATP4Mj91ApYrX8+mG0/L58Go89XMhZmjJyX403b4cYth958qm3WSNcObGkL/QNUepeAkOWHoyaI1sy1O/X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778700093; c=relaxed/simple;
	bh=lWXs1bqOmPoc46gGSfD4IrJfDLSHEiOP2ZwgIfqFCeE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nF1O7lfsq3dhS1wzIkLqsUe+N12M7i6jiCqmyVedvyBlcKzUBGxHRG5jbZyjH79zmoflW7xPesq8h7Ja8VbM09ApLoFJp3EnKfvdlOt5qmLt7rqBC1CENRDoNS+Unyxi1b/X9XDs1ALGQ03lUKx2iS5jp+RuvHcXEZIZVEEmEoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDDXiRpA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAB02C19425;
	Wed, 13 May 2026 19:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778700093;
	bh=lWXs1bqOmPoc46gGSfD4IrJfDLSHEiOP2ZwgIfqFCeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MDDXiRpAo6z5wRS/5+yaIYY4EQErovhLH41ZDVkr0qB8WpqWuFgcJLMgOy/H/Q3N1
	 Jji9uMHWIExSdd3X4E/ua7UQ0tp1T6G4c0x2G3u89CKeAy76o9LIM4yjFVtClZUj7w
	 33R0wttETSyam5oZ/LMjoTJYcP1gc1T2kpJqTbxPUB4ARyk8aeOWdhePWqWLyWmt3v
	 vyy6ueMehMy2siXqW5O72ZBjxGvvMe6Q4F6b4vH88WXDE52mB4yxag2RHIi9WN5/rQ
	 aWKP0muE7fpTNSCMxT5Wlc1s5uPsv+9NQe8Sxfp4ftwQ7x3d+riQ/9arfYg+oUdmsc
	 LqRy4Ur0wODZw==
Date: Wed, 13 May 2026 14:21:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liu Changjie <liucj1228@outlook.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add LCKFB Taishan Pi 3M
Message-ID: <177870008974.1728187.1071588098659841130.robh@kernel.org>
References: <MN0PR19MB6091C07C729B83E594722E84AC3C2@MN0PR19MB6091.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MN0PR19MB6091C07C729B83E594722E84AC3C2@MN0PR19MB6091.namprd19.prod.outlook.com>
X-Rspamd-Queue-Id: E952553A08D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297098-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[outlook.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,outlook.com:email]
X-Rspamd-Action: no action


On Thu, 07 May 2026 11:07:52 +0800, Liu Changjie wrote:
> Add the compatible string for LCKFB Taishan Pi 3M, a board based on
> the Rockchip RK3576 SoC.
> 
> Signed-off-by: Liu Changjie <liucj1228@outlook.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


