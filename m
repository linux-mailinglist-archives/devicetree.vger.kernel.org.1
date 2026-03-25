Return-Path: <devicetree+bounces-280440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF9nJyrOw2nuuAQAu9opvQ
	(envelope-from <devicetree+bounces-280440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:59:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9E3245BC
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9943C305D5CD
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C483D0901;
	Wed, 25 Mar 2026 11:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrBx0I7N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76993CFF68;
	Wed, 25 Mar 2026 11:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774439237; cv=none; b=mihZrTd476xybkwJEEv/o6s0MFuBvJZuqpo65W0GwHRaPu/rjygJKFGJVA0Obk14Ng2zoxmttCEzFJKMDeZ6EuZGwIil6U8NwcjW64z8GLbxOeh9HxN/H52yIvfZunvVCI0uow8q5Dtoesb6YM0kgSUTbdzmEEbDNRimtuIOi3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774439237; c=relaxed/simple;
	bh=y936NOWTs6b5YhJhBErZqpVXv+esdC30kXVHTCEe41w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ilGSVWy9BtoI5XPKNz5w2pAG87xnLKO6wuc6I4q3/2/aeafhAGgK5Cz6+EGZTb8dOlDpi0wVLjDmS+vXn6aWlUlFbOjko5C0+ih5Z0hCmhXSJMirMWCvZYP55OTcaDRgNhyBeuDv33kTEKQpUIFX7cTIhDqwPAkXE3bIaxn7BgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrBx0I7N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F861C4CEF7;
	Wed, 25 Mar 2026 11:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774439237;
	bh=y936NOWTs6b5YhJhBErZqpVXv+esdC30kXVHTCEe41w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rrBx0I7Nyosru9NgIWUbAmyJS/R5CjCob0QUBLA9PBtVpIfkKPEhUvTJvbb+eGUUO
	 VnPgoK9Dj4v8TFzcsG54XhOjpjbYpnAfamuzcpOhCuBNgpPwS1WQ11fARXfPRloItj
	 hRknKp16nduw0k/lRMjR3dw373uF6CSnNzbT9zng3C760estZyQ6U77W66Ybhmeipp
	 ISbpJTWU6FXFkQ11ejuP3LpeBon3fpmJnfq3Wua2L8BIUvu9zaPzVXbKXuYrcYhwkl
	 JFd0dD/WRCVmL/pkpdrowekpcu7ohrw2sccFaamxmP9C6nYhAPumDgdja8NDdCbVlU
	 J8UtymH1HHQKQ==
Date: Wed, 25 Mar 2026 12:47:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Meiker Gao <ot_meiker.gao@mediatek.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Bayi Cheng <bayi.cheng@mediatek.com>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, sirius.wang@mediatek.com, vince-wl.liu@mediatek.com, 
	jh.hsu@mediatek.com, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 2/2] spi: spi-mtk-nor: add new clock support
Message-ID: <20260325-amiable-jerboa-of-democracy-5c10dd@quoll>
References: <20260325031900.2099969-1-ot_meiker.gao@mediatek.com>
 <20260325031900.2099969-3-ot_meiker.gao@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325031900.2099969-3-ot_meiker.gao@mediatek.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280440-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F0B9E3245BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 11:18:55AM +0800, Meiker Gao wrote:
> one more clock gate need to be added.

Your patch removes clock, not adds. Write useful commit msgs, because
this is completely useless one.

...

> @@ -828,13 +839,17 @@ static int mtk_nor_probe(struct platform_device *pdev)
>  	if (IS_ERR(ctlr_clk))
>  		return PTR_ERR(ctlr_clk);
>  
> -	axi_clk = devm_clk_get_optional(&pdev->dev, "axi");

NAK, ABI break. Read guides about writing bindings.

Best regards,
Krzysztof


