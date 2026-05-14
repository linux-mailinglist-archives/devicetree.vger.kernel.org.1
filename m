Return-Path: <devicetree+bounces-297342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILQeDU1wBWoTXAIAu9opvQ
	(envelope-from <devicetree+bounces-297342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:48:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C71F253E7E3
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5CF6B301D6A8
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11CB63AA9F4;
	Thu, 14 May 2026 06:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX298jPB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31D538F929;
	Thu, 14 May 2026 06:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778741323; cv=none; b=qh8DfuPF0YwO5ORfFxAlCodSZc2+VR9W06C9v2B09JdCnDkzG+SyB888vKCSPdH7HBexZ0X9wOI6wNVjomnZjszXPvAYOOoDI8AA0ur3zvnKYNA0nrT3UxNbGbjqyI07bA7rHRNKQ7o+dc4GybZMDGnPYbxarJq+SUu8/m6b53E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778741323; c=relaxed/simple;
	bh=WCHZYIPH+iaGTxC80/OSWRgwos4c3asSFe3qsQ8TwXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qBYd7LLtJWaj7EGppWs6Ehu2ycuaHd66lpIhLFIZ1LPW1+QZUSpNnCz1EEWUPqYSzE0DiZCta+T9ujtmspi5cZBXK2tyB/wMsJigtedduGgndJjL4Zx3kLV1PxNQ4pGX1PtG41GNmCKrt+ZRkvs4ioXvvXNv2IUdwQ0oQ9bHHdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX298jPB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22412C2BCB7;
	Thu, 14 May 2026 06:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778741322;
	bh=WCHZYIPH+iaGTxC80/OSWRgwos4c3asSFe3qsQ8TwXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uX298jPBDF7o+eqVd9BfP4F2VfmWcnnlGfI9rWhTeqpBuLRxa6KRXL9BDtz1Lmx+E
	 QF67ol5dEtzZJKBgKITXZeatRLdL9NjuOyFYaVauBsFnRCYQozpmXNxS2CaU3F3jgk
	 CFgVeXTKx68/VE5ynNbjORuAiwmzz+yWrUVJdDyHA8TySBylMKhe/KAsaydHsMakIn
	 Ms9vSG1kzrgpkwU/hHDthRxR4fGmBwNkj8sGbHNms2uWGsuLDFL3uhp1DhmN4CyMy+
	 P3E/FAX693Xh3A6h4hcE7vtDgumwPitFt9EXpmPs3AWlYq3vy5LqaQaFsZSxYdnXGB
	 FqUGYY7xP+qHw==
Date: Thu, 14 May 2026 08:48:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 01/11] dt-bindings: iio: imu: icm42600: Add
 mount-matrix to icm42600
Message-ID: <20260514-fractal-falcon-of-domination-4704e2@quoll>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
 <20260512221634.256747-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260512221634.256747-2-macroalpha82@gmail.com>
X-Rspamd-Queue-Id: C71F253E7E3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297342-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 05:16:22PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add mount-matrix attribute to schema. This attribute has been supported
> since the first revision of this driver, but was not documented.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


