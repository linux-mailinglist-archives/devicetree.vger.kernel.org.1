Return-Path: <devicetree+bounces-288954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Gt2L6gi52ki4QEAu9opvQ
	(envelope-from <devicetree+bounces-288954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 09:09:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 374FB4374D1
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 09:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26F16301411A
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 07:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E0F311C36;
	Tue, 21 Apr 2026 07:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiBe5E5F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C96B2E8E09;
	Tue, 21 Apr 2026 07:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776755364; cv=none; b=MwdOr/xNuLOtDhQjS9cyQXCpW7vtN0FfACKPRDau6q74P7fHNyGYF+wR40xns/DBGW5+1YmX4Z/9mGOc9Rz0k1aQfHgbBEA6SiT7cvVtAp7NSoeORdRLcO6PcVrkVyu/5bnrLbCRH9Xytvm2XyAa83k4abCqL/xCNaY8k0uO484=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776755364; c=relaxed/simple;
	bh=WPoqfm9NoZN5vEKQb0rOqoe7dINrxuCn5z0liFHeZiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A0CF8GYM9eMS461Lz4j/YAPsmj6LsUF/i/IKJTi4Mb15DrXkvMFFoShb2ZPAlDPLO2Al2YiabyIKDhTx1YNAT/0YHBC4Ozis4aQK3Hm/uV/HoXYZFAzJat+zD+LS1iUGKfbpHwpuTPs/SDg3Fa59o6Gi93K5yGUAxhHE8nwoChc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiBe5E5F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74523C2BCB0;
	Tue, 21 Apr 2026 07:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776755364;
	bh=WPoqfm9NoZN5vEKQb0rOqoe7dINrxuCn5z0liFHeZiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hiBe5E5F+8iLTRXK1YilMqAkr3hg6wdGJZBUeZduozOOoYJ+F+DuPZIhVnRKHEvc/
	 qq1/vyVvoQJ7DLmFkUmXYeQbWrDZ+wEb+Y7AuUdcq6IVv4NCuJz4IzvYOUlCbh/1rn
	 76LSLDyGnSTeiVnjbpfWNuV5MYhVWLWlgWlXQwlY/caXQiiO0HVT0+tYHmY3p2bEOy
	 nbSIYVRI6QYigMc34GZIswlX2ECfCeh5U943ZEU89QTjgrqgKd4noHq+gYRJhaJAfl
	 f9eQWBfBujl+b4dhpFnenfKdPFRHij8qruqSZDcyx5+WfsvJN+8KgfAcfXft02Y4gy
	 tsfYJ1LqBwqEQ==
Date: Tue, 21 Apr 2026 09:09:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
Message-ID: <20260421-courageous-rigorous-angelfish-97a51f@quoll>
References: <20260420191941.81834-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-1-adilov@disroot.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288954-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 374FB4374D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 12:19:35AM +0500, Rustam Adilov wrote:
> This patch series for Realtek USB2 PHY driver adds support for RTL9607C
> USB2 PHY.
> 
> RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
> supported by realtek usb2 phy driver, but the phy initilization is found
> to be very indentical in most areas.
> 
> Most of the code was based on the Realtek's usb driver from the GPL tarball
> in [1] and adjusted to fit into the realtek usb2 phy driver code format.
> 
> The patch series was split into smaller patches that add/change something
> in the driver that are not exactly related to RTL9607C and that also
> helps for easier review. That also means, patch 5 depends on all the prior
> patches that come before it.
> 
> USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.
> 
> [1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c
> 
> ---
> Changelog in v5:
> Mostly addressing LLM review
> - Patch 1
>  - changed int to u32 type for new_reg_req and vstatus_busy data fields.
>  - changed comments in rtk_phy_read/write from PHY_NEW_REG_REQ to phy_reg->new_reg_req.
> - Patch 2
>  - explained readl/writel native endianess issue in more detail.
>  - explained why vstatus register doesn't need byte swapping.
> - Patch 4
>  - moved reset_control_deassert to rtk_phy_init function to keep it outside of for loop.
>  - changed msleep(5) to usleep_range(5000, 6000).
>  - explained why reset_control_assert is not needed.
> - Patch 5
>  - explained readl/writel native endianess issue here as well.
>  - explained why FORCE_DISCONNECT_REG doesn't need byte swapping.
> - Link to v4: https://lore.kernel.org/linux-phy/20260406181228.25892-1-adilov@disroot.org/
> 
> Changelog in v4:
> - Patch 2
>  - moved the le variations of read/write functions to Patch 5 where it is actually used because
>    otherwise, it results in unused errors when only Patch 2 is applied.
>  - updated the commit message to to point the reason for le32 wrappers around readl/writel.
> - Patch 3
>  - added "Reviewed by Krzysztof Kozlowski"

Where?

Best regards,
Krzysztof


