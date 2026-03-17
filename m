Return-Path: <devicetree+bounces-276520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHC6ApwJuWm+nQEAu9opvQ
	(envelope-from <devicetree+bounces-276520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:58:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8B02A5299
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:58:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85E95301D0D4
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704683932E7;
	Tue, 17 Mar 2026 07:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akEovTsS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2433932C6;
	Tue, 17 Mar 2026 07:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734297; cv=none; b=WNea8yevjHf7qfMjGPImPHnh2Hmp94vkfpuUrVecSSkIN3wKE1sJSbwuxs1DG9adDptgqqdc9TQoVNqBbeheSwMKpAs1zTcnnFekpRMfYCBuBMtVvQDjJhQV4KrKNwVhLTVFRBLf8+Ob/jjnKmSd5u6Gryi1B+m7Xsg6ndnE2Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734297; c=relaxed/simple;
	bh=3sLvtGTLJoxK6OLcS/9XxpE1hjPcHKS+oPikARyO1ic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U4i8+dZMTRlMFVtujjo7qzPCmE4ADiuXMtI4r+4ysbWY0Ai8lg1PDgpEsxgpnvJF5pNb1C37175OJmLbNaAYKmZD7ufNVqcX1G5ApvBkv8BEVitYVvKhgE6WTpgmWxcSO7HMI5M4eiMq7iQKhoRMjDKN8XuhUELiNl8IS0PVe+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akEovTsS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAF39C4CEF7;
	Tue, 17 Mar 2026 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773734297;
	bh=3sLvtGTLJoxK6OLcS/9XxpE1hjPcHKS+oPikARyO1ic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=akEovTsSC7Il9hrWdtVCsY6bhZPw4DT1j93GYxId5GIhGR5pjxPyjsAbCIs/4wr8r
	 G0PFfOHW5KbyVXQ4Kjp7GixYvGQ8WTql7qSphH0/mibVqaWRUTV05nq/RO7xk737x3
	 LOh1Zm7pE/QBqTwqro+lcXxDnybOf5KFetPl20N8IEfokwSMFH5sXl3EYsC4Mk/cNy
	 PHqm4ud+HD1SFCCYqirw399iN74vFcH/w6bdoWjUfwtScXU2bsp5iKR7WZnIzj+1Se
	 7PtCIdBURTHAJ2/wtMLQWAsW1Fs8tKsfOrPTs2JHYpYFO/njBs+CYNubJ46BGh57pB
	 0lTFto6vrNJaA==
Date: Tue, 17 Mar 2026 08:58:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gray Huang <gray.huang@wesion.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, naoki@radxa.com, jonas@kwiboo.se, 
	chaoyi.chen@rock-chips.com, i@chainsx.cn, michael.opdenacker@rootcommit.com, 
	inindev@gmail.com, quentin.schulz@cherry.de, andrew@lunn.ch, alchark@gmail.com, 
	pbrobinson@gmail.com, nick@khadas.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Khadas Edge 2L board
Message-ID: <20260317-discreet-swan-of-bloom-cecb3a@quoll>
References: <20260317040248.267154-1-gray.huang@wesion.com>
 <20260317040248.267154-3-gray.huang@wesion.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317040248.267154-3-gray.huang@wesion.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276520-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url]
X-Rspamd-Queue-Id: 9C8B02A5299
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:02:48PM +0800, Gray Huang wrote:
> Edge 2L is an ultraslim, credit-card sized ARM PC designed by Khadas.
> 
> In this patch, we will add basic device tree support for this board,

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submitting-patches.rst#L94

> Only eMMC, UART are enabled, so it's capable of booting into
> a basic Linux system from eMMC via serial console.

Best regards,
Krzysztof


