Return-Path: <devicetree+bounces-282400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHBnMzlUymn27gUAu9opvQ
	(envelope-from <devicetree+bounces-282400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:45:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CD93599C7
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:45:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AE8030B4065
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 10:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEA93BE15C;
	Mon, 30 Mar 2026 10:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAsYXpaP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429893BD255;
	Mon, 30 Mar 2026 10:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774867127; cv=none; b=soo18LMsSmN6SQAxYzzrakgWCn+6iI+KkJXF7QmGjXGtXj7Hp+4NAOA2S4E7c8/8GC3PKpV2WjfNo9SlNICIsHq6ecXvMfRPfCL3fbPSGopT2FygPj++bmGDTWqk/YGKcKUvjJnZm6rNIUK37JjklgcTdAGuf/Tpot5yV/x0FtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774867127; c=relaxed/simple;
	bh=Up2jSL42UaI/x/7sZuYAASmrStypwv5klvrtpgOj6Tc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bz2rIrKY/6Z8pqyWcFuwq9PfCDtyxh0fnM5GlUAsbcDielyqy6hexQuUVWkegLgrcSeiVl2c4l76/d5tYo5dZS13E7F+ZExCHNC8dykgQ/ePtqZjTNqS/xcM4o1yY7r8hdgQ1pCWGpPUz1tDPXr4pN8jPjmXau2R5F7cxp2CmO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAsYXpaP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78123C2BCB1;
	Mon, 30 Mar 2026 10:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774867126;
	bh=Up2jSL42UaI/x/7sZuYAASmrStypwv5klvrtpgOj6Tc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LAsYXpaPQU8s0/0/r5BVU1VyflN60Ib28AvHL7Z0UP1tsU7+y7TXWL0S+cyhKLIV5
	 bcLKML+0309w5N1OVqszb4td+g5E/RLBzulS0opvYqP7iTwequom5MTuH4jl8w2dFY
	 4qtvLDpJs1hJFAf7q6zliGdOfrqM8nXEpUop653D4Yj3N4UzrxL17ncsBqfQrPwZiU
	 NDNSRy1KHVnMLTNtGXILkb/CNPDhsQfabqHBKM+sFHHw0zvsgwWVfr/8u938t7xzCb
	 bEtJACkZoPqCwhmchB1LtLSGQNft4cW/OnEcJhijk1xqci6y8xCny/atBBzBbrWU1z
	 dVtEm2x+dr9oA==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dts: riscv: spacemit: k3: Add i2c nodes
Date: Mon, 30 Mar 2026 10:38:40 +0000
Message-ID: <177486686484.1895179.11451358903582402960.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260327-02-k3-i2c-v2-1-2119c0918868@kernel.org>
References: <20260327-02-k3-i2c-v2-1-2119c0918868@kernel.org>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282400-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 33CD93599C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 27 Mar 2026 11:40:40 +0000, Yixun Lan wrote:
> Populate all I2C devicetree nodes for SpacemiT K3 SoC. The controller of
> i2c3 is reserved for secure domain, and not available from Linux. The
> controller of i2c7 simply doesn't exist from hardware perspective, as
> vendor directly name the i2c controller used for PMIC as i2c8.
> 
> 

Applied, thanks!

[1/1] dts: riscv: spacemit: k3: Add i2c nodes
      https://github.com/spacemit-com/linux/commit/cb322cbffb1e70b4ca1be7955ed19fe486de8295

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

