Return-Path: <devicetree+bounces-281967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDE/Glbfx2kfeAUAu9opvQ
	(envelope-from <devicetree+bounces-281967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 15:01:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ECD34E9CC
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 15:01:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25704301AB88
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 14:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 141BB2E3397;
	Sat, 28 Mar 2026 14:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HddS3TNe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6211E505;
	Sat, 28 Mar 2026 14:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774706452; cv=none; b=uq+zd4BD8/dlk+x6Ltl3rGmjWeJDkWQNRugTRuusRiKmUcrA4sFYkHqIrJf3gCSNV5B6lUKdOq5/BU08sALcaLhLby10AcHlP8NU3tumbuyjAt7up+2+s8X8i3U3uX1ykjEI/7b2z79YwCUHK5FZjp6bhiMQhGlYJJoIsvIKXT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774706452; c=relaxed/simple;
	bh=Zobnm8Gsre+7Kuc0iSNYsM0HgWB1z4kDfKWLknn5fLw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SRmuTzVqmRoC1pcsP3C1LFbSePjvwrDCNy3uZZZtX7XLhs4JcsoaTpi0XraZNd/WwhNCUDs/gMjHvk5d/7NK6AehXuRtxolHwlQqKam76UjN21IegXaGwsmNXEjKB0nEpFG/RovbvCwzV1XpSqGVh8MrWNJutYUYMwpfx03Y5x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HddS3TNe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E76B0C4CEF7;
	Sat, 28 Mar 2026 14:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774706452;
	bh=Zobnm8Gsre+7Kuc0iSNYsM0HgWB1z4kDfKWLknn5fLw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HddS3TNe9Jas0l8WxwWwGbr47IPEkYAMtc9BAKgQVjfR4Gp1qjsJEcZNeLnixauzX
	 22gb8Zx49DDGpHAnVF5AW9MqzyrTuBuWgrA0dP9gNEdgmdFqnA++q/GdA6vWq3zdSG
	 B8eR9o6b1Tumk3ZB/hmeQeqA7lX2ny/cJ4copmQTOoc/64UyBBg0OUTwepnAcJIygF
	 j0BbdE8Ox2iMFJpeL8RCgrFS1KaDFv8z7gGG70SMrYqVyJCD2m1bTITLGNygNzRSFq
	 KZYxGHR7w4vPRYpinDDzoktkbsG4Vxd/Ik27CXBA6+4pfxUqnhKSsY66220iG1cKNK
	 sF/3unpoLkDvw==
Date: Sat, 28 Mar 2026 15:00:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: catalin.marinas@arm.com, will@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] arm64: Kconfig: Add ARCH_HPE platform
Message-ID: <20260328-resolute-tan-waxbill-3e10c4@quoll>
References: <20260327174445.3275835-1-nick.hawkins@hpe.com>
 <20260327174445.3275835-3-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260327174445.3275835-3-nick.hawkins@hpe.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281967-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hpe.com:email]
X-Rspamd-Queue-Id: E9ECD34E9CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 12:44:44PM -0500, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add the ARCH_HPE config for HPE ARM64 BMC SoCs to Kconfig.platforms.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  arch/arm64/Kconfig.platforms | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


