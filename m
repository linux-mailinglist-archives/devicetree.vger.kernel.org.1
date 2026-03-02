Return-Path: <devicetree+bounces-269951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM4fFcV3pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:43:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BD41D7B18
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C08530745FD
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC8A36308D;
	Mon,  2 Mar 2026 11:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="TeRlkJ2T"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AFC35DA4E;
	Mon,  2 Mar 2026 11:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451606; cv=none; b=tIkBBUu18YHfmQRRqKhPn7YtKtziyVbFIsBslJDFGPAH7oDWUR8saRjA4TAlBu6ka0+2GI4pWI3EepSWdBfKWpu3nUdVIT5sjNyCoqv1GrKlz12zZN7q059qv4NFZAFG5BfFEAcPZWdMeUN1W/KVzJjXcX2vksyILn+N0M9r2mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451606; c=relaxed/simple;
	bh=bD8TlYtkygFT1QqS6VC2yWu2Zt1m39YlwWsWYs7zhc0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fxFI1eIJ0k3112+EZZqHu6+mmRVDGGOiMf9lHWtlZem+z5QMOUTEUBUGFSdkvErzNy2yDMqUhGFi818mvoxcqDff1X5gQUIJzIO8WbBTGfZHxCGtzFtnKAaOL+cx/ShT6ucloHhDXxs6xiFMfUd/VRBh/g56x4FKBm+pjKxUNMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=TeRlkJ2T; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ROqmfpiP9UxR05NUIHfXDOcphLtJmZRpXBnqjdcQAEc=; b=TeRlkJ2T5GkuZjK8NaJcC3fc2I
	BLkjoQF/9EvWEdImkMNcusobbMDhiL5wiLWKvSF82aQjsuXu0/5y2BzpNuLsXbv+VJkGQY48yZenb
	VDWQ7pqThqd/Z2mqDwu79rp56iRAp+3unyvYTUSNte2gPPOEIGijDb5/AfPzSdaxT9DBotceIohBL
	eygIlDm/qt+cUHD4EqmFpSK5D4cPhSOajranmmCwVWdBi9rPbj4pxY1a/p9Qlt6XIRJ0yFDvIBK2u
	+V4PvjaKNviypepisxRWkyOPmW9S3l56Ag1iaejgJkTPp6Qku31H3fwI0HZ07JtEgIBIIBvgTRPX+
	1nExo0Jw==;
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
Subject: Re: [PATCH] ARM: dts: rockchip: rk3188-bqedison2qc: Use mount-matrix
Date: Mon,  2 Mar 2026 12:39:55 +0100
Message-ID: <177245158236.769695.5354203962089996196.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226145916.2729492-1-festevam@gmail.com>
References: <20260226145916.2729492-1-festevam@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269951-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.29:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:mid,sntech.de:dkim,sntech.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B8BD41D7B18
X-Rspamd-Action: no action


On Thu, 26 Feb 2026 11:59:16 -0300, Fabio Estevam wrote:
> 'rotation-matrix' is not a valid property.
> 
> Use the documented 'mount-matrix' property instead.
> 
> This fixes the following dt-schema warning:
> 
> accelerometer@29 (st,lis3de): 'rotation-matrix' does not match any of the
> regexes: '^pinctrl-[0-9]+$'
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3188-bqedison2qc: Use mount-matrix
      commit: 6916fbb419b3fcd2275e658e1c29b3a29d550338

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

