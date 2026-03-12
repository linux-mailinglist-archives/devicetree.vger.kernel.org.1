Return-Path: <devicetree+bounces-274795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBg6KNgbs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:02:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 131572786B3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EF10A3010B72
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6A87401A1E;
	Thu, 12 Mar 2026 20:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="GObeaW55"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9002E401A26;
	Thu, 12 Mar 2026 20:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773345736; cv=none; b=lI4ffN9SgXotRXFtPUb1fS0sxaKz7EAA4gCVp2PKiUAVHJ4FyjKmjsicy0bNzDIcXo1nv6Mvx8b+oDXjuHJnXBXX+goCndTkdiIexk8xAVFS+Q75nbA0MbK6ZJHlP2c1qEgW5FE0oPKr3OtyDBSuOoIIxiy9cCvP2G+iC2oWz5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773345736; c=relaxed/simple;
	bh=H0VPKwOjkq7fatcsy6LPIYlTrzijNNRflWLgd6WN0pg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PMXGT4nyayAoUWiv8R0N95o3sd1ObncO2ZLOxk7oRuS0WyPu1yaxAGAWo9QkEselvNi88D+/g+92+Sbwz5+QxMaP6GZ1P71aqmKBcN6/VVM0iJfFov8EyJDr3/87gjxIa9B/dTgwzr4sQOoNAASVosQK4rfqGZ7GCdpkCgTIp+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=GObeaW55; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dEWf7d7u2qtY1h7kt2ogwyBl8RlAkVQjKkU0vbu9Csw=; b=GObeaW55IjuMyneDDClwv1kUfM
	tApPzylWbRw4/VYHK8NuDJusvOMQIr+WqWCFHmgCJzRbcufM6IGbt73W1pmB5Z+eoZuPFyy2hmHIF
	/mYYGuOkj0Q/sPRkjDRQNjjr73dN+FLK2RPfhpwvfCRe1VV/aEo0/S7KTtJgEjPPIzXJGMiaU+Vv3
	C+8o4wi5GQ3hIoFTu8OiGmhZkgfjJh542HYyYlwIApANEDlxZ6zKAXExlXUbePy3r67GQr1E9LHCM
	GuOqbCKY2DRYV8zMhBFMlq7Cjo0DZNz/bD9/gBkQ24Q7zfjIcbnmx3zxCKqdm10zIuWAz6jvJRAGL
	xDQLm48A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Fix LED node names on rk3288-phycore-rdk
Date: Thu, 12 Mar 2026 21:00:57 +0100
Message-ID: <177334565380.2520391.18416759606426475557.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260311135604.21634-1-festevam@gmail.com>
References: <20260311135604.21634-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274795-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.62:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:email,sntech.de:mid]
X-Rspamd-Queue-Id: 131572786B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 11 Mar 2026 10:56:04 -0300, Fabio Estevam wrote:
> According to nxp,pca953x.yaml, the pattern for the led names should be:
>  "^led-[0-9a-z]+$".
> 
> Change it accordingly to fix the following dt-schema warning"
> 
> leddimmer@62 (nxp,pca9533): 'led1', 'led2', 'led3', 'led4' do not match any
> of the regexes: '^led-[0-9a-z]+$', '^pinctrl-[0-9]+$'
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Fix LED node names on rk3288-phycore-rdk
      commit: 8d11cbff066fd9ba866b20ff823eca15301095a6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

