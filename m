Return-Path: <devicetree+bounces-267206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJzvG6WGm2kD1QMAu9opvQ
	(envelope-from <devicetree+bounces-267206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:43:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D90170A25
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 92FFC300C6F9
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F1435CB69;
	Sun, 22 Feb 2026 22:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="bJve3Sgp"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8A919539F
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771800219; cv=none; b=LQDR6moRGgen7G+hMwP5acvU8Kzi0nrFjP9JRVLlLvCTqu0E8853yqL1Q69ozUGzU9yJA+RYptdMVIkOWRR+A/yPPCqO4+GLKG9vBHyddsNwR06+Y5idUj3gFeADb3gwCxgzkJMNxOeiprbdJXz3mrvyVymk0W1He3HVLEnxRAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771800219; c=relaxed/simple;
	bh=sN4bfeYDm0txDD8FmQ4Racq5vkrWPTGxaLYl5+TQEvs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZfhbQIm2U24QzV7EinO7+UAXwricFSbvXEnZR5e90fV5X5Kz/IqntBpH5/Yp8DufxocmAsVOD/MK0QGBUvu7Ihu3EHEUwKb7+M57i2v8I0hgjfkbo29ajcCxvXAcJHP7T35xIe+wYdiDpe2q90cOkOcJZ7EA1Ss5tqfMrm+0+oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=bJve3Sgp; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WSMGllCz9tMfYswt3AUYSiavWgtrCi20va1xoKb1UWc=; b=bJve3SgpG+XbEd5mdkZzyDcNrx
	Z+AHBtHNkCIH+iwuIfvw8yOkAWJ86+wkY2WY+L/LAl64uPAcJgWIO7rYSDiEy2TOtw7D5npr7r31R
	EQQV7ehnTsjkRrESEh3E8ci5PC7EFo54DeifbQ0L2YT69IM/OJcnztqYaCUvTNOg0x+BM0ABHF8b+
	dyssUHUEzQGy66KDhDTig1Qlgj7z6wGLU32iPWtUQCFG5Kf1Dap6xlItt24p0TKhGye2WT6BB9xVL
	E+R8vor3/WOIA+lGadjFUbaTcR80+1rme6evXwe+NsS6Qw2alVAwLSXt17R5iH6SZr7LsCnTntuhQ
	vsusqBXQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	wming126@126.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ming Wang <wangming5719@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Bluetooth stability on LCKFB TaiShan Pi
Date: Sun, 22 Feb 2026 23:39:15 +0100
Message-ID: <177179992297.1861430.8124521533934492277.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260206090453.1041919-1-wming126@126.com>
References: <20260206090453.1041919-1-wming126@126.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267206-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,126.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sntech.de,lists.infradead.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: B8D90170A25
X-Rspamd-Action: no action


On Fri, 06 Feb 2026 17:04:53 +0800, wming126@126.com wrote:
> The AP6212 WiFi/BT module on the LCKFB TaiShan Pi (RK3566) is prone to
> communication timeouts and reset failures (error -110) when operating at
> 3 Mbps.
> 
> This patch stabilizes the Bluetooth interface by:
> 1. Updating the compatible string to 'brcm,bcm43430a1-bt' to better reflect
>    the actual chip revision used in the AP6212 module.
> 2. Lowering the maximum UART baud rate from 3,000,000 to 1,500,000 bps.
>    Tests show that 1.5 Mbps is the reliable upper limit for this board's
>    UART configuration, eliminating the initialization timeouts.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Bluetooth stability on LCKFB TaiShan Pi
      commit: c215b9681a1cae05e8d52b5b57ffde2f17fd3029

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

