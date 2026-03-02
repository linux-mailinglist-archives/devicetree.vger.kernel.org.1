Return-Path: <devicetree+bounces-269949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBY9FRl3pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:40:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1641D79E3
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:40:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E06953014FF0
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D48363088;
	Mon,  2 Mar 2026 11:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="213ordRx"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B3C359A69;
	Mon,  2 Mar 2026 11:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451606; cv=none; b=Z8moFLTQlu+lLkk+VSAqpr2fjpste+WkFlboOvPXZlMeUxl8hG1uo9KCrbA5GPJV/52TjiadoCr9g/P/VlfH8bmN4jBHtf9LzAOJ87jylYlS/Wq29dewTPCuEBq05hWyotASkCfscM9ZVYzqHyh24wChW4A3Oo5oxWrBbnc6t7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451606; c=relaxed/simple;
	bh=1CIRMMNdQM1DcPDaxfTJLHTU3CDUZrgp57SefybG2xo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=t9QeLK0mJEjP6zFI+2CGoXu+Ha1wJlxrL4Lvu6/VNxmZN00Ly+0kLF+d3FZsCZ51arNLbW/5D1IioBQ6MUIpbl42Oq/h+DlbGhAI3cQD0Zk+fvs52GJNHAMDAnlCOXED0lvfw4qm99iaV6aw6wfMixd3oE8aKV1+N9PgwjUWRhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=213ordRx; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=at8PnShVMfshtIkjpE0qopOFBgp0mzWKYpLQrhnUqZU=; b=213ordRxKdkoLy7UcfBCFG9tJh
	aZLqgrPFOyu9CeGiEJknDIpr8HwuK5HFjGfOalw2xLxC0fpCFgMZBT1CYahsRdkM/KG9aMx1psD3W
	NrJAc49oMQ2SR7MilRMP9h889rut+iepDflfyYlk4FLmao1nTdHUO0Uyg5EVf6U5tL7uLIQjvmueQ
	RZynFA7gEULVorWl+dS3/7QBCqh8UUiGqrZCN2CMZxxDt+bpqNaijUAEIB5oznlVcYDckHsTj7JiX
	BcHqSlr+fIyv6BAKSUFgabWmSOl8bufUxua39wAK+x38K5kQVeyWWJY4M86fd5bqlq2yuMZG0HZIt
	oKq5Henw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3288-veyron: Remove invalid property
Date: Mon,  2 Mar 2026 12:39:53 +0100
Message-ID: <177245158237.769695.12935872735393881924.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226144842.2727107-1-festevam@gmail.com>
References: <20260226144842.2727107-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:mid,sntech.de:dkim,sntech.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF1641D79E3
X-Rspamd-Action: no action


On Thu, 26 Feb 2026 11:48:41 -0300, Fabio Estevam wrote:
> The 'regulator-suspend-mem-disabled' property is not documented nor used
> anywhere.
> 
> Remove this invalid property.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: rk3288-veyron: Remove invalid property
      commit: 56e224f848c4e2a6f758bc142ae9d293544adbae
[2/2] ARM: dts: rockchip: rk3288-veyron: Fix the Bluetooth node name
      commit: 801d1afc6b6cdfb67b0098a795d2130ae0f775a1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

