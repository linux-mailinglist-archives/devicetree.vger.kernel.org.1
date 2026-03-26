Return-Path: <devicetree+bounces-280965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mN1uOQHjxGnz4gQAu9opvQ
	(envelope-from <devicetree+bounces-280965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:40:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B79C3308B9
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDD7B301DBA6
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 07:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B6D38E5CE;
	Thu, 26 Mar 2026 07:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2EdTM1j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF392FFFA4;
	Thu, 26 Mar 2026 07:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774510499; cv=none; b=Ofn4GDUkRgDeDn9qltgiIRN4qn49JZv/6TEY1q+ly+S4PJvbY2pcsW7WKq8SSOlE3XMLlGfjRgb1+VRWFcAUtpvNZM7E40T/TSUi69fwrjturuV/xJXDJ9LGZV9n0nbLX1mNTKNNFk1jAA1nvKyQaZsTraZIMq4OF6eteeUllqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774510499; c=relaxed/simple;
	bh=i9G0GSY9TeIGOxDzdr8Ir22Ps+YtLJcsSy7NDz39L5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dEtwc/QZaiw2YteOoY9YXGuY7ef+NEikZHJw5NDEV5DkTrcwx7aKLSQMlVBQNJlDiXPnXeX6uaelJMF0ggs+VF4PVW1foFwJU5x+vBV4eyHm7xS1pUwm497NgrMnUVVv5KczV8EQGrvoc4RW085eR0m0hAPRW20cLPZ7zVgA2KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2EdTM1j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF12C116C6;
	Thu, 26 Mar 2026 07:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774510498;
	bh=i9G0GSY9TeIGOxDzdr8Ir22Ps+YtLJcsSy7NDz39L5Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D2EdTM1jIZcDuLvJ/zWbxKykGQvqYDbXRLb2ZNFKKDdyswvTxeXfZjFOdeDQRileN
	 UL2jfl0J4Gp93lVIy1b34lTV0gvnTUfWZ1Pf8QmaSQzwonocfyPDYfVZGXVVulth7J
	 7fMTY/HIayOAdqw0lIvDkDljMlmRL8A8kHZ/JigGMs1NisYOVrxy/1bw8I150RwUAV
	 EL8J8bhLOSyp2VFp1BJYKdhHNIKzI7kv8qjvdUtN1N4HaPpgejk1wCns4yVj0Nl0IM
	 4X0GYI8RkSNjTJhz/LyCd6Tgr9tZsaL/WPMm95FRfIswRHlJUVJvOxm9C/NqdyOv1D
	 XlsnHt7SCGCag==
Date: Thu, 26 Mar 2026 15:34:56 +0800
From: Yixun Lan <dlan@kernel.org>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V SPACEMIT SoC Support" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>
Subject: Re: [PATCH 6/6] riscv: dts: spacemit: enable PCIe ports on Milk-V
 Jupiter
Message-ID: <20260326073456-GKH777612@kernel.org>
References: <20260322203356.2206927-1-aurelien@aurel32.net>
 <20260322203356.2206927-7-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260322203356.2206927-7-aurelien@aurel32.net>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-280965-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aurel32.net:email]
X-Rspamd-Queue-Id: 4B79C3308B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Aurelien, 

On 21:28 Sun 22 Mar     , Aurelien Jarno wrote:
> Enable the two PCIe controller along with and their associated PHY. They
> are routed to the M.2 M-key connector and to the the PCIe x8 slot.
                                               ~~~~~~drop one
> 
> Add an always-on regulator sourcing 3.3V from the DC-IN input, to power
> the PCIe ports.
> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>

Can you re-spin one more version? along with previous bootph-pre-ram
change, you might also wanna adjust the commit message accordingly..

P.S, It's easy for me to pick from the list instead of amending locally

-- 
Yixun Lan (dlan)

