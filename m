Return-Path: <devicetree+bounces-266831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCrNOYwSmGmL/gIAu9opvQ
	(envelope-from <devicetree+bounces-266831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:51:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 484A7165679
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E49C63016CB8
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5589430AAB3;
	Fri, 20 Feb 2026 07:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVA3/mir"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334061D555;
	Fri, 20 Feb 2026 07:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771573896; cv=none; b=Kfns3EAI8H5XyIpUqjAMhGLUN6dVwCu40KaR0LmMl10kKvm1zpZdbYSd7w+XsuNpGwDU6ikb4GFSG2RpKPn1QqZ0/dTcY4k4rmgDkDq45Z30SCxR5MOZd2zF8md1sXGql/5cYI3jAC+7VoSEWi6lSyBxM+6MgSvfrjz5HvZy5nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771573896; c=relaxed/simple;
	bh=8BzeL6OtW1xxqVp2So7EwtUL67QY4V4CLXtCVdlFdxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lub9PJB76PCOAWhxpDacKrKM9DAldK+tpTdTp1UWPynAJoPZdyglhHj8ayEyv4C4RiHbEFTtTm5xzOR2Flm+2/RMxVuDkc2XLJLalVMrJu5JzaQ1n/L7zO7qDAWlwZjcZ8cpr1GIsvgEakYehiz34PEmdhewOfQIHcXXtuVFgFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVA3/mir; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72DCDC116C6;
	Fri, 20 Feb 2026 07:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771573896;
	bh=8BzeL6OtW1xxqVp2So7EwtUL67QY4V4CLXtCVdlFdxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iVA3/mirqgpBxJmHFHRCJfTR3WchRt6JDx56pu/c0fhaRRaQHhLv1cs91yoCh7SLT
	 iQxgk+fihDthjWCJVWHPZcfXMBFdZk1SYRLxG3JgbonusxmJttgelxUbJvnqbrC3o7
	 fTNarmpKj6OfBwst6A4NcbFmoqDtz5jf7ZIj7Va4cGJrTzLKZLur5qtBMGGymEljxw
	 Jt4q3IuYFT8sCNgw2p+TGrjNoy3KCrkuNTyqTlRaAR5zJQJLXn1sAd31ScHU8Is8K+
	 qvRY9cc2Tb8iNCgmhi7XW7gnnEfrcM+ea4oCx8hnE/L/Ip96ICEQ0aBB5ovq1k/fZu
	 m8yah7z2u4khQ==
Date: Fri, 20 Feb 2026 08:51:33 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 2/2] dt-bindings: regulator: mt6359: make regulator names
 unique
Message-ID: <20260220-bizarre-tricky-stingray-94db2b@quoll>
References: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
 <20260219-mtk-mt6359-fix-regulator-names-v1-2-ee0fcebfe1d9@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260219-mtk-mt6359-fix-regulator-names-v1-2-ee0fcebfe1d9@baylibre.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266831-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 484A7165679
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 04:55:30PM -0600, David Lechner wrote:
> Update the example devicetree with unique regulator names for all
> regulators. This reflects the same change made to the actual .dtsi file.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---

Subject: regulator

>  Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


