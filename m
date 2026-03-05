Return-Path: <devicetree+bounces-271424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EA7DN3BDqWkt3gAAu9opvQ
	(envelope-from <devicetree+bounces-271424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:48:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0C420DB16
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:48:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E7ED5300B3F7
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ADCE3659F8;
	Thu,  5 Mar 2026 08:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/3v/oYc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0868B307AD5;
	Thu,  5 Mar 2026 08:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700481; cv=none; b=tcXOitjWCTMo6Or2dqhPhjMzzIcMmq7KZYAeTMqgDyAXwtQ3l3KjF3x7LNwr1pQsp8vRRVZ42uNUtIVkmYnFCNdf3JTcO3ZiXIx3LrSerZN5Y/Es4iOmdAQI7Ohj1D6vhJO+mLHRK09CpQDTjJRCwsDPA4MsWTNatXagyq4hsF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700481; c=relaxed/simple;
	bh=BH6ybdXkzaVXMrrHozlgm+ziJkBJftpAx4qVi+qmy9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lyzEU8sAV00HPtaz0rxMH4LlLuhK8GHU+e61PG+6lkvmuGKDPum50FlWB9Dqi5mamXMzTVVLwisoxft+b83zGlKLx37Ggj/oTVzvuAzcb0dz9KnZiKO9PG0ejRKuNCV82AjwDBDn5VMX/f0oE1IXPLJLc259thNIWYMBKsNQyvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/3v/oYc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3A3C116C6;
	Thu,  5 Mar 2026 08:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772700480;
	bh=BH6ybdXkzaVXMrrHozlgm+ziJkBJftpAx4qVi+qmy9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y/3v/oYcUBE3aE5PiEgCy2QIotZuEEqmuKW4jpaRLD1s10J7qbDh6G/QBN4I701jg
	 MfVrlSA9zgYQzwJgwyG6uBxRdMBzSwiynp8pMx3rktw4Up5d75WZCNsUWJ8jPxkekG
	 vH4a9LDTpegRrrfoIqcORjjsxFzA7jzFJLDfcNbVxWvUqfnJaoA03L4NrIKmy4TKsn
	 Y0Ony1W2C/+YrAUspTnX1sCWqjGBrzqmBEQZA6n6Pb69rFxsTnSJ+IvLUB96jYs1LT
	 9baJJAVZnTt6I2cdEHwy6NSpufzKp29ZBVLwOFimtY/xFwSjMFkqipdYLs2VFW8TCr
	 3z44Tcyuf7Gsg==
Date: Thu, 5 Mar 2026 09:47:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Meiker Gao <ot_meiker.gao@mediatek.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Bayi Cheng <bayi.cheng@mediatek.com>, 
	Chuanhong Guo <gch981213@gmail.com>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Project_Global_Chrome_Upstream_Group@mediatek.com, 
	sirius.wang@mediatek.com, vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
Subject: Re: [PATCH] spi: dt-bindings: mediatek,spi-mtk-nor: Add clock
 bindings for mt8189
Message-ID: <20260305-glaring-unicorn-of-purring-2cc5b6@quoll>
References: <20260305022740.2334033-1-ot_meiker.gao@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305022740.2334033-1-ot_meiker.gao@mediatek.com>
X-Rspamd-Queue-Id: BA0C420DB16
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271424-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 10:27:36AM +0800, Meiker Gao wrote:
> Update mediatek,spi-mtk-nor.yaml to add conditional clock and

Also commit msg is incorrect - you are not adding clock bindings.

And there is no user of this, so entire patch is pointless and should
not be sent. We don't take unused bindings.

Best regards,
Krzysztof


