Return-Path: <devicetree+bounces-257751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DFlE+Z4cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:57:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 076B152791
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F3CD7421538
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629F83D349B;
	Wed, 21 Jan 2026 06:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlTpD4+y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EA132B9A6;
	Wed, 21 Jan 2026 06:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768978568; cv=none; b=kEaJe9IN18NLbxX07RvOvE5QHPox9RaSUQRluqBvdOY09mzLk2g8qHY9nPCDJaI2nMqwR3xKwHKwG5nOMlNxCQPT+vWeLIxBKtYViSJGmukga78WmruvNahdEb1CSHYBhQRG2mOxaJmXjnubza1Mxe0uUbqcErp4cVaOJPlxIQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768978568; c=relaxed/simple;
	bh=yOVaNladVEcNrJfwkbxw/j7oi6o2x8nlGkpscTpRLgc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FW0aZR3P3Otoq0oPS/czyXqp2VwzZjqcHQEmleH6YAahGclx6LKnL6UCtH8+ilikEbbEbLPWGZNQ/ousvQglRh2NssC6ZlHWz7A193SQ58FCw0YEAglWXKdxH5Wp3vOqSatYm/Fben2SJhawsouy1WdCq4XIByYdxRCySdehLmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlTpD4+y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EA81C116D0;
	Wed, 21 Jan 2026 06:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768978566;
	bh=yOVaNladVEcNrJfwkbxw/j7oi6o2x8nlGkpscTpRLgc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MlTpD4+yIL0mM3n1qXpxh2CplqAAt2MHScyfFqj6aSHDC4qTGVJkR/1WGdRJ4tAf4
	 aBJGz0QImBlSgJsavzIberDdMg6nmlWQ8Zttr75aK7LQ0NVmJkFbO1H8itJsn47y92
	 qE6XKTiuFKexUmUwT69PWv+t1N9UalMMR1W5c5fFSfOW3qsR0qwYjn6eEZxaXLccmB
	 4xbH/fOvt63lJiLyXkop8GcrE3N0K1LphPHVoz7Kqqdxw54nRfB6AQkmER8jzrlzs0
	 NGqG9fh2FBvjcYwrM+Pz9xfRMw0jV/x/O7Lc6XDD/XeiLi2Q1wQ4Mhw5L6R0v7v6dd
	 LQhxd0XL8GVtw==
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yixun Lan <dlan@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 0/1] riscv: dts: spacemit: Disable ETH PHY sleep mode for OrangePi
Date: Wed, 21 Jan 2026 14:55:53 +0800
Message-ID: <176895691233.28343.4094639440954032303.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120100001.1285624-1-amadeus@jmu.edu.cn>
References: <20260120100001.1285624-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,openwrt:email]
X-Rspamd-Queue-Id: 076B152791
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 20 Jan 2026 18:00:00 +0800, Chukun Pan wrote:
> On OrangePi R2S and RV2 boards, when the interface link down,
> reading statistics will print several timeout logs:
> 
> root@OpenWrt:~# ethtool -S eth1
> [   71.725539] k1_emac cac81000.ethernet eth1: Read stat timeout
> NIC statistics:
>      rx_drp_fifo_full_pkts: 0
>      rx_truncate_fifo_full_pkts: 0
> 
> [...]

Applied, thanks!

[1/1] riscv: dts: spacemit: Disable ETH PHY sleep mode for OrangePi
      https://github.com/spacemit-com/linux/commit/5164e95565d3fd508ca8a95351323f5716dfb695

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

