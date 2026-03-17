Return-Path: <devicetree+bounces-276519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJzODNsJuWk/ngEAu9opvQ
	(envelope-from <devicetree+bounces-276519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:59:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5A42A52CE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72CAE304CA7F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB8F938F22F;
	Tue, 17 Mar 2026 07:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yrj3g6m/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C737F374E71;
	Tue, 17 Mar 2026 07:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734248; cv=none; b=tNyZCzfj12T7uwzXwF26g+jERhHGGCfCchIvXLZgWJbIaEer4C1cvL7s9jP7kH5/pBTu9OtduYqGrQZrKkWsWHzre88Od4X4oIAVqKVK35BGwgzrBY3wZgcK/8HguIzJA1wJxXw+n5F4YnwoUsT5/s4o+FAcFit7eUrtbLNU340=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734248; c=relaxed/simple;
	bh=IyXN2TCK4hpZjTBei8I7EpYihgR5hkgTrEpVtpaNzqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gDzKBJh15baDq938wTiAi6Pt6+xFy3AKIzNJ3n10wroGuMj/ikfyVwj6EBLU4dPGtfLa+CwpP2/rq/gfIsNORqUZ8z9N5VsJlRSbs81tfMFdS7sQNp5JQwzxYgieJ0d0MuyTpSZGEV9zUkdmy4b56BnYRy2hKiypb8qrfQP6tGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yrj3g6m/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4CEEC4CEF7;
	Tue, 17 Mar 2026 07:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773734248;
	bh=IyXN2TCK4hpZjTBei8I7EpYihgR5hkgTrEpVtpaNzqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yrj3g6m/v3NubZpGS+qxy1IXDOIVsayNxmGnLxQVu6t/SHYHyimr1ame2rsxplSfB
	 SojmfXnbb9JLLVb9YqoDScDVt1OHxUp5AcCM0rwNRptaAA0ptR0t86fV17pBUoAszZ
	 cJdItJz6Vha543FlAN1EaBvssduDWXrVejc8SsUdlOUj5UeEMVpF+DOVzcI4GcupFL
	 8h17nPN/2sQQeZK4Xok8hg5X2lLRI0yrYBLVPA1yNpcY3Tc8ISWbqA3Va4hFBvpHN0
	 f6ZFn3gkhfT33PcrAWFreq8VW5LK3rH+COJq5SfPjjGiOk+UHa/hP/hjqCxeRDeRla
	 SCfcR1VbNFEYQ==
Date: Tue, 17 Mar 2026 08:57:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gray Huang <gray.huang@wesion.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, naoki@radxa.com, jonas@kwiboo.se, 
	chaoyi.chen@rock-chips.com, i@chainsx.cn, michael.opdenacker@rootcommit.com, 
	inindev@gmail.com, quentin.schulz@cherry.de, andrew@lunn.ch, alchark@gmail.com, 
	pbrobinson@gmail.com, nick@khadas.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Khadas Edge 2L board
Message-ID: <20260317-hypersonic-axiomatic-fossa-d5dd2b@quoll>
References: <20260317040248.267154-1-gray.huang@wesion.com>
 <20260317040248.267154-2-gray.huang@wesion.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317040248.267154-2-gray.huang@wesion.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276519-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D5A42A52CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:02:47PM +0800, Gray Huang wrote:
> Edge 2L is an ultraslim, credit-card sized ARM PC designed by Khadas.
> It has quite a few rich peripherals.

Drop marketing, please. Every board manufacturer claims they have rich
peripherals.

> 
> Specification:
> - Rockchip RK3576
> - 8/16GB LPDDR5
> - 64/128GB eMMC 5.1
> - AP6275P WiFi6 LAN
> - HDMI2.1 Type-A
> - MIPI-CSI x2
> - MIPI-DSI x2
> - USB3.1; USB2.0
> - RTC clock
> - PWM fan
> - SPI Flash
> - Pads expansion board (UART, USB)
> 
> Signed-off-by: Gray Huang <gray.huang@wesion.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


