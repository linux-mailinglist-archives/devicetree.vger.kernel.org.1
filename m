Return-Path: <devicetree+bounces-282100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP91DdEnyWm/vAUAu9opvQ
	(envelope-from <devicetree+bounces-282100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 15:23:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D91352377
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 15:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 98A71302330A
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 13:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95AE375F81;
	Sun, 29 Mar 2026 13:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch0n749c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D743375F69;
	Sun, 29 Mar 2026 13:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774790571; cv=none; b=Wm+VqIncQNhzxT0KODmgL4oF2BUwAeZ5ps0a6nEL3kB7YZ2sibrNBRIcmTwNf8qp3EN0arGrMSEmhP2rzJeQkSw6+QZKNpD6E+AUJ469/vFPpCn2Dfd3BgMepn596QcX43iH2hpQ+FWbbGZknPFdadG4hySLTWcycYNvjNnPwTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774790571; c=relaxed/simple;
	bh=ovSEObgeRsjslMxSegbqTaXP9AY03Bd+E9w45gtnMZs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MauVttKLOHENNNacsaftwYy3v22d3cor3NuFsUazVt17Z5opPM0i6dDRlnKl8N0FgFEDXPD7LF2wqjYPHkLa1sDrn7IBISAIjkRse+lX2Uf0vPuEqorFewcNX+udZpAQT+cVUKmYNsmDZdL0NtrBSUT15BbQohsWbmo6EMUSt/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch0n749c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0BE7C19423;
	Sun, 29 Mar 2026 13:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774790571;
	bh=ovSEObgeRsjslMxSegbqTaXP9AY03Bd+E9w45gtnMZs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ch0n749c2exxPRXJhPWOg9Y2Aq5QzOirVWOjSpDk7/qFt/zla8VNq0oNEySTgE7la
	 tkMW/LaZ5uZ6SO7tAs0MeevDvCRcWmFLdza0BFTRxrMgpRFXeJWoqpiSye1eH06uQn
	 /JgCyXb5cwuyHoEzhg+aOFVFarTg8p+bXGTJpOEDeRfDje54m+0dSse4CY/Uox4lI9
	 Rvy3R9+KQjZlEUPm3vxFkmH1D5s53M23fWoDzsj2QCJvom75FjvYlhPorLdFN1qThD
	 ZmPgrgRk+PK3hilQCDVfCMBZKJZWXYb4a+AJ6VhMFOCMxKUUP4d6G6bh56ttnQXAfd
	 +YKcnKGqvFhow==
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Michal Piekos <michal.piekos@mmpsystems.pl>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
In-Reply-To: <20260329-h616-timer-v1-1-5966d0420a66@mmpsystems.pl>
References: <20260329-h616-timer-v1-1-5966d0420a66@mmpsystems.pl>
Subject: Re: [PATCH] arm64: dts: allwinner: enable h616 timer support
Message-Id: <177479056948.84952.5705441423668653540.b4-ty@kernel.org>
Date: Sun, 29 Mar 2026 21:22:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282100-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,mmpsystems.pl];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3D91352377
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 29 Mar 2026 13:43:04 +0200, Michal Piekos wrote:
> Add support for timer by reusing existing sun4i timer driver.
> 
> H616 timer is compatible with earlier sunxi timer variants and provides
> both clocksource and clockevent functionality. It runs from 24 MHz
> oscillator. It can serve as broadcast clockevent for wake up from idle
> states.
> 
> [...]

Applied to sunxi/dt-for-7.1 in local tree, thanks!

[1/1] arm64: dts: allwinner: enable h616 timer support
      commit: c755e39836ec492b0bc210fd96c2b720b5b4a690

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


