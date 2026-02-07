Return-Path: <devicetree+bounces-263585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JJlHfUZh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:54:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 134C6105AC8
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5878F3005AA4
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E9233F368;
	Sat,  7 Feb 2026 10:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmrGv1Sc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37401A9FA7
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 10:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461683; cv=none; b=WDGwxj6ts4Rciwj2arsD6rN57cFrbbYMrgt8GvICeoitHayDFv/4OMERHhg5DQiiFIbSMbNx8uCrNeK8Qzs8P+13xc8ooT29z+DRX7h/9LmmPk8nc2tV4TahrppC023V8vOkXTfkHUH/FUCGFLFS6/MaXOtpchusPzmnc+oj6IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461683; c=relaxed/simple;
	bh=CIaNvMArFVinijQuP/o4enEv9UIgW3e3adWKyMKaAi0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hR1Tm8vRHg3gaQjAcK8QeAFkvWNt/36LjpvTNFKE3oWr+yUNNwDu9wZYvirVesxTSZCJb7yHp4xAoiZXqH8mohcjXNSRHaCFdfO1W5ov4LM2KwENmcc/aKjs2nmKxROPjnjmwJLV8k82xXMmjWPGAhrZCN0OdDxW0xZ+wQY2Xm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmrGv1Sc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6F1EC116D0;
	Sat,  7 Feb 2026 10:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461683;
	bh=CIaNvMArFVinijQuP/o4enEv9UIgW3e3adWKyMKaAi0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XmrGv1SckVtBKJ+pWBXHBXcT6024nUGgM/hyt9lZn7rl4SXRJxpTNiS5Ph3GvK38V
	 r9SAJxRCWdBrz4OzTmAiKxu+1JLMrdIObTGiwoCfngNo68kMOmk1LHR9CauGC/sHnE
	 D5xYlsv405D3TFu2w69Ndv48uXvgS3BwJar/CEJQ/SFd8Wl3dAXMOM+XvpmAdzWC0j
	 gg0ko3myxX3Oxds6uvE0hh/lnoIRs56XZmAtqWVsN4zseL67qhan9eCTzJCMvvT5Zc
	 IkeSDilsdAuC5pftdihQk442yXzB1m9bUI2ZPDRg84Fqf8jzxoGpjjfHaQirzjZGjp
	 WoI7+27oheBrg==
Date: Sat, 7 Feb 2026 11:54:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 01/11] dt-bindings: clock: rockchip: Add RV1103B clock
 and reset unit
Message-ID: <20260207-miniature-granite-piculet-4becd7@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-2-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263585-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 134C6105AC8
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:12:59PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add device tree bindings for the clock and reset unit for the RV1103B SoC.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  .../bindings/clock/rockchip,rv1103b-cru.yaml  | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
> new file mode 100644
> index 000000000000..fa7298955aea
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml

Exactly the same as rv1126b and others. Why do you need separate file?

Best regards,
Krzysztof


