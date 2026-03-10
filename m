Return-Path: <devicetree+bounces-273630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKkoEwNGsGnFhgIAu9opvQ
	(envelope-from <devicetree+bounces-273630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:25:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98520254AD8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B3E9306DF0F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7B653C13E9;
	Tue, 10 Mar 2026 16:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="qcreGSmD"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D303B6C04
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 16:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773159936; cv=none; b=Smv6XASZVJcf9qWhMpVdEbEl4SopqSxueM/jzXeNFbYYdhzSCDKo4CQWvOeXB9cqmLjo7K5v2zvkaKwoh3/7dw1gOFIDS8yqW8S8Z/ZYEGcpso4fd36cIf5PE+x7NpufGp1WNhtT7Em0Ocsk9I40rVXLt4/tZbajMYda7x4hcNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773159936; c=relaxed/simple;
	bh=lPmtWmxnomDN/valacBHp6IXm+28b74pnINQAnw3Lm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZY5McbYeBMoSnoi7NilGadmQ5kv5SToYSC3FMVtqnbGaYywd/79N1NbbLJleN1EXKVHXVJ+7Vk5npMI9U+fxMnJeZq5txC9VzNknMKJ6MEwIZHPfQx2ZsGKepJKLkcjuVzxIeD/vvC351hMNvrfJTyfJy0Cl4SEJzlZq++NCD58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=qcreGSmD; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ZmlweOlRxI9TYGhuStgUAoSkF3murzujj5mzJOXAUP4=; b=qcreGSmD2NWlfSWfQ9V5B6AdSQ
	zA/HYMCvReWBEtW4F6/FhSa68UEJTs0XKZzDObABUzfwOHJwJl2O1AWWfF1f+kxeYsDLxoB+2Ny6o
	jiWY6EQlkxxNxMF7HQZzqMw/rjykdPN2Ah2VS0w5CYV9goPFTkv2l6oT/Ti8OikVElpY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vzztf-00B3Ui-RB; Tue, 10 Mar 2026 17:25:27 +0100
Date: Tue, 10 Mar 2026 17:25:27 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: airoha: en7581: Add switch node to to
 EN7581 SoC
Message-ID: <a05947c7-0cc1-4cb1-a971-0fc581949c2b@lunn.ch>
References: <20260310-airoha-7581-dsa-switch-v2-1-852692ba68b8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-airoha-7581-dsa-switch-v2-1-852692ba68b8@kernel.org>
X-Rspamd-Queue-Id: 98520254AD8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-273630-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lunn.ch:dkim,lunn.ch:email,lunn.ch:mid]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 05:12:47PM +0100, Lorenzo Bianconi wrote:
> Introduce dsa switch controller node to EN7581 SoC and EN7581
> evaluation board.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
> Changes in v2:
> - Fix ethernet-phy node name
> - Remove unnecessary phy-mode property in ethernet-phy nodes.

Looks sensible now.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

