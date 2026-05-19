Return-Path: <devicetree+bounces-300031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACwzGRxDDGr/cAUAu9opvQ
	(envelope-from <devicetree+bounces-300031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:01:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D98957D133
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:01:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 868E43087167
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27553370AE2;
	Tue, 19 May 2026 10:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzldBPFF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026D1370ADB;
	Tue, 19 May 2026 10:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779187725; cv=none; b=hYT221CrJvMkq4drY6TIUl3AF4sI/ZO8J8DX/xzoj/G0FP1ntaVxZwmYyvh9Ne6cmF2jSQIoT+NrT4suuHkTnoLCbVZImCSa4N0awyFg9G521ISsta4RO1whRNk6hagg4Gss1q/7ZrAciwATu90vEcF0DiMurn2/wR5CTk4QsoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779187725; c=relaxed/simple;
	bh=O3osayXAPVNKmdWCcmEqTldGekty8xNwlWaSW/MioZA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KiTdqQvJyrxMcPuRmKvhvVxXDS7YANV9DMHXSqNL3j7SnZkhULZ2LgIwBZVtGKtJekkJpBuAao8Yp0ZpQexOlPGm20K4xE5jkMm6odJvvAkmNN8O6tB4lJqSK5eyz5c05t2I93XKLQiErXYfmcXQXmZ3TOlbgpaLMorwYWnGpko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzldBPFF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F0F1C2BCB3;
	Tue, 19 May 2026 10:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187724;
	bh=O3osayXAPVNKmdWCcmEqTldGekty8xNwlWaSW/MioZA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LzldBPFF+eqnDubxLjtWtrpweaDXNUytgGbfbtIo5/cPOwqeVSn+mF9p58LYSwzqc
	 Hj7rjyXUok0kx4uRKK8FrDwNtW/zLo2LRb/4dJqd+HVatFT5jw2I7clDqlWCMetgk9
	 fd5SayJquedFgAzxno/KHlAjYIQ0QXCzQ1f1c49HwhY3hhO2iZ/MCDNd7f+8Gq11zQ
	 f5UsF/cssHWuC9F6RmkrtknM+dV/M1tG1JPa8pcE+6JA3WLKSaIpGFv5XcKd5dJ5MJ
	 PZBZrlD3morwde3vrPNQqkQynXZRO/azap+4e0R5xqVCRtmCMgmzb7OsXJOjCRti2Q
	 0Ux0t0MuUqCww==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, johan@kernel.org, linux-phy@lists.infradead.org, 
 Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260518142026.3098496-1-ioana.ciornei@nxp.com>
References: <20260518142026.3098496-1-ioana.ciornei@nxp.com>
Subject: Re: [PATCH v4 linux-phy 0/3] phy: ti: add driver for TI DS125DF111
 Dual-Channel Retimer
Message-Id: <177918772208.269794.12633369479244518899.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:18:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300031-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1D98957D133
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 18 May 2026 17:20:23 +0300, Ioana Ciornei wrote:
> This patch set adds a generic PHY driver and the corresponding DT
> binding for the TI DS125DF111 Dual-Channel retimer. The datasheet on
> which this driver was based on can be found at -
> https://www.ti.com/lit/gpn/DS125DF111.
> 
> A separate generic PHY is registered for each of the two channels of the
> retimer, so consumers can drive each channel independently. This allows
> for independent control of the channels, which is especially important
> since each channel can be routed to different SerDes lanes and it is not
> guaranteed that the same retimer will do both directions of SerDes lane.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: add PHY bindings for the TI DS125DF111 Retimer PHY
      commit: a62d9440ebbce3d9f0bd6c346a7fda2a53726850
[2/3] phy: ti: alphabetically sort Kconfig and Makefile
      commit: 711f64979e500799b27b33a8f030e2fd939fd07f
[3/3] phy: ti: add PHY driver for TI DS125DF111 Dual-Channel Retimer
      commit: 9bf5c16a6e63ebf2803deb32ba984a7fcf2c5ed7

Best regards,
-- 
~Vinod



