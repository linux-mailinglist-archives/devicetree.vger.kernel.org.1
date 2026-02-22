Return-Path: <devicetree+bounces-267201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBvQJ6mFm2mj1AMAu9opvQ
	(envelope-from <devicetree+bounces-267201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:39:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEEB1709B7
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B6F83008443
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12F2435C1AF;
	Sun, 22 Feb 2026 22:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="PjGiZXcz"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2EC1A2545
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799973; cv=none; b=hTf9zUSxwfa+wZozYPvIMCozD9fTS/zF5uHVVnjHuznWKICCUqL4t6YU8dMPN7fLYbhVGZ06C65ylHjCPsbZUJQphKGsjmpcwxCUmcLwtTUwrrTQ3FR4eGj201rqYSE9azmzC8K1wxr5aNtMiBnF+6vZ5vfiVfXlD2QnzLZgWg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799973; c=relaxed/simple;
	bh=F+ZNMAude3hkYFl5w6ASFz9h0dC4U57GrrWYcKCAYX4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tKlrD9iLkEoDZIcs85Smzmu+kxeRWXnUQF/WJjxCt0bL+/xXwH2mGe1wKYEYKwufR3skFf4qInYkT0YFHQlMXtG7V+6osj5HJj8QLJFeEW8tscqckwsLiRpNpb+gAbuiX8ium7VXVElEX8kKM21jiz3NXnCdgljYCz2J4azZm0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=PjGiZXcz; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0Z9xezpx4Phocc3z49S/RTcZDdi8MtPGSIseFj+H+WI=; b=PjGiZXczcRvMuzBnyR0qutXjlg
	ZuM6z8HsuDpGt7un3ggVnZUjFvddb0jH+n9CIzpRbPXujP9wbbWFMdYWRPCzMxw5ZbdRDLwx+vsc3
	A/56tdNPz7eEdeH260sZIpFz6bxm5iuqHe+LrjQZID5dL17/QHrVol09s3GkOZOJN9RtxtGLbzre+
	IaH3xY0XOaudJIvDfVSCs6RSiu3VYAEENc/aNW31acG7z+tLzVFdBoaoLSkg3FvYzxnBfd6u80/5/
	XMV/KYo6VgaGGMydaosdPWiC4AKGjAavaVW8GHVwSvPKQbg0aXnwbS8gmulgZHIYLHvWm+2Vpm6A2
	XsCNYm7w==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se
Subject: Re: [PATCH v5 0/3] board: rockchip: add OneThing Edge Cube series
Date: Sun, 22 Feb 2026 23:39:05 +0100
Message-ID: <177179992292.1861430.2391320215739051093.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260214021719.620752-1-jerrysteve1101@gmail.com>
References: <20260214021719.620752-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267201-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,gmail.com,manjaro.org,163.com,kwiboo.se];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: CAEEB1709B7
X-Rspamd-Action: no action


On Sat, 14 Feb 2026 10:17:13 +0800, Jun Yan wrote:
> This series adds support for the OneThing Edge Cube series, Rockchip
> RK3566-based PCDN (P2P Content Delivery Network) devices originally
> marketed by OneThing Tech.
> 
> The V5 patch inlcudes some device tree adjustments, following Kwiboo's
> suggestions.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
      commit: c6d26a9425631c69087a407d3cf8372db0afee09
[2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
      commit: d49566ff47e7748b291ba82d0620a5c93f30e310
[3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
      commit: 53ec6d21fe1ec0677f9db56a23dda8d145eda102

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

