Return-Path: <devicetree+bounces-293245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MH6ECbM0+mlLKwMAu9opvQ
	(envelope-from <devicetree+bounces-293245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 20:19:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D4D4D28F2
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 20:19:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D40303040978
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 18:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F26823E717B;
	Tue,  5 May 2026 18:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="bwpaPBEY"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BF314B08A;
	Tue,  5 May 2026 18:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778005166; cv=none; b=ejKMor+a7Bnb1gwHoXEUjAxIrXiI8Q/Sm9+X22o5IUxtrfChm7J2/RkjRo/te+cpeWNCcrjs9Z97lCfqznSKAHC6AkhKE1dk8RsY3ic14RX79CnajgDeB2eN1SLCYwpLZTfV4VIyz+Lxhj8GI5OCNykOOJ+AXiURfpo+KLyQI2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778005166; c=relaxed/simple;
	bh=1h76UCxeu5irplD2zuDzm51pIdNtqy5JLRJjUgnE/0o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C4BWEjGmMD9j3EuEN3QomZ/CS3VUxXXf2wO9Xg0DuJpKbzpO3dHNh69aUFBVjVuYy8AptYE8A7nra2d5YizRV0ZyEcmAtkB/96gI13/NuY523CpDcRis09ObW693sbU5sWpVLCOy4ikSGIWEUhRJeuEMEAOu+30eS+up0/gINSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=bwpaPBEY; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=u1URRL+D0IW55GxDynNyuWn3Vy4glMcloxA1EwhRJKk=; b=bwpaPBEYmEDx62hZUYUWPQDLi8
	tMB7vkwQVMm62ZrY/wO0b1XJRTZZZt87h6knJMK5aERnj8JmIFBXWCd9Lcyeknjmjqi9YcN8qYc3y
	XtEm4jLv4QObWULVUrqNQzds4s60zQiIRf5opGW3Cjd646VNB5DbCWeXeGSQWCHbH2hLaJDxvD3g4
	Zcq2Ch4Z4zpybgarvXQjhmJMSzZQYSYhFrODqgqQPGoR7QooqsyjNwx1paLSm4OtsOBW8t+oxZFft
	W55avGO3XYqmNfrgYitVLA5O6n9y61wIfdE9SdXhKDvtbjoMRKnDSvmaDGumCcZdV3NYeuiAPjEjo
	t+8A6Urg==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Gray Huang <gray.huang@wesion.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	nick@khadas.com
Subject: Re: (subset) [PATCH v2 0/7] arm64: dts: rockchip: Add peripheral support for Khadas Edge 2L
Date: Tue,  5 May 2026 20:19:09 +0200
Message-ID: <177800448365.3286457.203841726866148802.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260429063712.2150938-1-gray.huang@wesion.com>
References: <20260429063712.2150938-1-gray.huang@wesion.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 65D4D4D28F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293245-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[sntech.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]


On Wed, 29 Apr 2026 14:37:05 +0800, Gray Huang wrote:
> This patch series adds support for several key peripherals to the
> Khadas Edge 2L board, which is based on the Rockchip RK3576 SoC.
> 
> These patches build upon the basic board support that was previously
> applied to the rockchip tree. This series enables essential
> functionalities including power management, RTC, wireless connectivity,
> graphics, display output, and USB support.
> 
> [...]

Applied, thanks!

[2/7] arm64: dts: rockchip: Add HYM8563 RTC for Khadas Edge 2L
      commit: e477eff6303b3c5cb9bdbe5f6568ce1ef74b5f66
[3/7] arm64: dts: rockchip: Add AP6275P wireless support for Khadas Edge 2L
      commit: 76cf96cd9e21aa6c3846d1449aef991a32d3e13b

Some remarks:
- when individual patches from the previous version were already applied,
  please rebase your patch series on top of the relevant branch:
  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next
  or just linux-next in general
- I've renamed the rtc node, nodes should always be named generically,
  in this case rtc@51
- as Diederik wrote, please don't do unrelated changes
  I've removed the cpu_l0 / cpu_b0 re-sorting from the wifi patch
- For the cpu nodes, you can do a separate patch with the sorting, and
  also add supplies for the other cores. I.e. while the kernel only "needs"
  the supply from one core for each cluster, each core should have its
  supply declared in the DT.
  - rk3576-evb2-v10.dts does it correctly
  - rk3576-evb1-v10.dts is also mssing the supplies


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

