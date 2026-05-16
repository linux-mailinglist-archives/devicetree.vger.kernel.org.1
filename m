Return-Path: <devicetree+bounces-298592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKvrG1fRB2o2KAMAu9opvQ
	(envelope-from <devicetree+bounces-298592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 04:07:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1261559D93
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 04:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 704623019816
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 02:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F8425F99F;
	Sat, 16 May 2026 02:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFuKdFAA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4811A683B;
	Sat, 16 May 2026 02:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778897235; cv=none; b=fAxbNr0E02UFoZPe9vsL+KJ3Te4Bz4rpomyKo/zrker/ifBgqgdg1ckw8ZtmfSsDsMZV3IS+ujwAPbR3uN5YFY3e6lGPp7QT5vNBf1lsQhDXvwxhpyuQeBH6CiNlOVhFLcqKo2B1J1nP7E7X77ofhIiSoZrIJeedEXSd/J4PwbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778897235; c=relaxed/simple;
	bh=iqCIplJrqfaiHknlrsPCYdWY6TiMpIdZBid5zJCNkGE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jrFVLgBGZKTWlARvt5ERQd3P+mpidXHFMvCwRfFpBM4owPKqOga2J/LuJ9YfNPXu2CpONdpTgvJ8bCDHK9Fg3ho9YqVa7kGZ7dvT+gXqe2yUyWiGPiC3HLKeERVrMqxcmMcD+9dcUJ1zNq8GhgVq2QhxBBt4YIJJIFE4xW2O80w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFuKdFAA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01B8FC2BCB0;
	Sat, 16 May 2026 02:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778897235;
	bh=iqCIplJrqfaiHknlrsPCYdWY6TiMpIdZBid5zJCNkGE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VFuKdFAACaO2gG2mF0pAsPqW+U5ygN31EDpTvZADccBwfqZ5b1uYXD+79dj3KBecc
	 2x5+81wsmC1ULUYJz5AlMv0NIvq9rph5/yuzVUR+T6KePKGnRZYI+R1cxe3br2nT32
	 n/Yf+45tJcxol25prBdxczVb0J2L852cu+KS+rNElUk0YSDc4aJL1KLoIzTODETI35
	 OSCcEncLwgm38tB/no0wCVLd6ib7Lj8ARq/JXNhluhMyLR/btdczu61RW3jWQoOPuM
	 cizul79Ox73ddRKnMZjzYfROLAmNAmYgfRtfN8aUHKc5F2Dl5OHRuHZfMos8ClZKZb
	 QjNUkgUxlU9Aw==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] riscv: dts: spacemit: k3: Add USB2.0 support
Date: Sat, 16 May 2026 02:07:08 +0000
Message-ID: <177889719089.2290560.15121464517928343972.b4-ty@b4>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260330-02-k3-usb20-dts-v2-1-46af262fb4a9@kernel.org>
References: <20260330-02-k3-usb20-dts-v2-1-46af262fb4a9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B1261559D93
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298592-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Mon, 30 Mar 2026 22:15:21 +0000, Yixun Lan wrote:
> There is one USB2.0 host in K3 SoC which use DWC3 IP but only provide
> USB2.0 functionality, and with only one USB2 PHY connected.
> 
> The USB2.0 controller on Pico-ITX board connects to a Terminus FE1.1 Hub
> which fully USB2.0 protocol compliant and provides 4 ports.
> 
> 
> [...]

Applied, thanks!

[1/1] riscv: dts: spacemit: k3: Add USB2.0 support
      https://github.com/spacemit-com/linux/commit/d3bd58f3060f28ecd30df51925a9b1f62e5e8c9b

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

