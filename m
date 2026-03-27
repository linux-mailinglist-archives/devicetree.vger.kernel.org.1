Return-Path: <devicetree+bounces-281751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOX3CY29xmnoNwUAu9opvQ
	(envelope-from <devicetree+bounces-281751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 18:25:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7133484C4
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 18:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30A653010D9A
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 17:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A343783C6;
	Fri, 27 Mar 2026 17:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LQ8i3rxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A212F4A14
	for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 17:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774631801; cv=none; b=SZrRBLU6+NTePwFq5Yrj2HqTdiKRmZhFER7fk/0SxRshKTeCuhEm/lJKiDfj6abEvvV5GOQwGdDN2j4nUj1ywOQ3FJqvZQ1wFT/oyY65zu8xqRI7B6qpnq/cHRXh7IGlN+Glj4zeo+PV3u8GaI6KT2g8/t4qFvPU5uDB2vLJTCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774631801; c=relaxed/simple;
	bh=ieDfxlzG2E3LaTCNMrozmh423Pobxbf4YDtO1gx/bAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vn9GSe67WySJkN2pAEoMrItT04Rxne4IKIWynoCMNzP7Ms/xQ3auO3lZRH4WYeRHYy3i33vRh2YfZ/OZdKbKxIuuYTIYDyMu/JsDyoCii/qAiXMyoDsc7gINKASlq3rBpRZd2Y1r5y++z/nxDYLO46R8H1yB+TCkletJSZABOnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LQ8i3rxu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-486b9675d36so20842585e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 10:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774631798; x=1775236598; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vV6E9yjY+PcJxkfGX/VZyyMBIRVFPjQlBGDGet9H4gE=;
        b=LQ8i3rxuREDQ/2ceTAgiq71AGcwaH/9c741/VD8USIDKma+rqRa/12WweWcU3u6f2J
         oOH1Eo7AcC8mJsOxDwFNEE35Tip3KMGwDzMdCNGykJwHRkQ4GkKpZUtnt1aaTK01h+WO
         0dXCgCB4764hrbT04NRyhcLy/cTKlQXkxsjHmGD01aRc+7nwBG4xSNLni2Exsa/I6Dhh
         v7sOfBLmB4tRGTmjYZZkCyiWSg1hMp+aAqpnWt9nrh+PJTfhRzLKQlmcoTwjg3iuCuos
         CZe6VGda9OFajGwZOCvR5cB7iW8VPQamp726N6y+kYC1+KeEggDsn8zJXgBEpSUEaiCs
         NfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774631798; x=1775236598;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vV6E9yjY+PcJxkfGX/VZyyMBIRVFPjQlBGDGet9H4gE=;
        b=BAs6O1TcVV5zdul0Rk+68VgR4KRNtlT6BKVw4cK8WbCEYPrSSMPvZOLlYG5IyqFyN6
         4BJVr4ru3gM/4cI6b7wHHXUQjakhhvPmpHU+mH7LRhgH/zfnx1ibvGexjrXJpDD3Bpkj
         FAiIR91Au1Ij23p1W9hiNHC3MFwE1Ka99GbGB2V1NRdeGOG0vlx6Z2P17OKBZRQRRLVg
         Ouab8D+Dud8FhtSBiZtm6PtmUNt5BXU9NrvSxn1HxW2Fm8VPtRVvtDZCTw11UMxl6wPP
         gZY1XKBFBV1czUUzU/Ni2DMtILWnHZe3jrQ4H7dFtoH5mxG6ME03AQg6Ywls/TjAqfzj
         70vA==
X-Forwarded-Encrypted: i=1; AJvYcCXke2xGVE5PnxuS/eGgOj4BdPVHYkxiyLShlOOQ+alZZKqFNWrV+MaaGoO1eIzsIFqTp9gCJjHW/WlS@vger.kernel.org
X-Gm-Message-State: AOJu0YxtK0Z00dfBS15rCyhm9I/62a2cNwj6PrZn8COYAqDOKUoC47OP
	vzatXjShxV0jdMA+lKw2JlMZN2iZyjbob1l0rKM2X/h0LXjENOXiB4Aq
X-Gm-Gg: ATEYQzxNb1aKXtzsTJdhbeGDmyUyXci5AVMmTV+44npXGhs72J5ESsbbeCk1c/rcAJ9
	cxqCv+nL6wzXi0cCpgXiOHMrkiqt7n4VgEvOwxIvMwCswCwLlQYXcdustVHhxJSuBJJ5s4aY2lM
	1m5UVNKrG9kJW2qC8wKiNj7ljsCIEfaEXgS5tLnBz9vgE5o4iwUyAu7l69uRFQ5dNwfD/yGkUGA
	LJvD0MVh0BR7bMJLuehA6YVHzk4+XLyirSGNp2x2g8BkeqZ4fUs2GPsIy0n51819Hux4Xh37UE1
	D95hTmwMrndpdL4/HCaGYC2/ZzofXfFiDpj8b3m24tpyrm+aE7VzPuK4xbG6rFTczxcyTr7g+e3
	4eEqnsn4opHZx26QgX3rbtIA1AyGQZJ8Ps1fkw5Psq8zFD9m1ebazHt3lEahTtxjyotx5fe0SgD
	KbYW/wTBBQDsGA8csLAmqkDCaiRQYTfnxW+15rUQcCNFpeTCPG7G6E4FNtpFovLyeXzwyzzE8TX
	+OAYj4MWyCA8OjtG5N+6y+6oeII91w9Cn0LAAsL/OQ=
X-Received: by 2002:a05:600d:1c:b0:485:3f17:425 with SMTP id 5b1f17b1804b1-48727ec7681mr45535245e9.21.1774631798048;
        Fri, 27 Mar 2026 10:16:38 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-20-233.cust.dsl.teletu.it. [93.144.20.233])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48725d9e85fsm34322455e9.1.2026.03.27.10.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 10:16:36 -0700 (PDT)
Date: Fri, 27 Mar 2026 18:16:34 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: imx91-var-dart-sonata: add RGB select
 supply for PCA6408
Message-ID: <aca7ckVY9ure8Cwe@Lord-Beerus.station>
References: <20260327163243.17334-1-stefano.r@variscite.com>
 <aca1jdx0DjmmHqFk@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aca1jdx0DjmmHqFk@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:email]
X-Rspamd-Queue-Id: AC7133484C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Frank,

On Fri, Mar 27, 2026 at 12:51:25PM -0400, Frank Li wrote:
> On Fri, Mar 27, 2026 at 05:32:43PM +0100, Stefano Radaelli wrote:
> > From: Stefano Radaelli <stefano.r@variscite.com>
> >
> > RGB_SEL controls the routing of some carrier board lines on the Sonata
> > board. The two PCA6408 GPIO expanders depend on that path being enabled,
> > so describe the selector as a fixed regulator and use it as their
> > vcc-supply.
> 
> Does below resolve your problem?
>  https://lore.kernel.org/imx/20260325-pinctrl-mux-v4-0-043c2c82e623@nxp.com/
> 
> So needn't hack select as regualtor
> 

Thanks for pointing me your patch, interesting improvement!

Actually, in this case RGB_SEL is not meant to model a selectable mux
on the Sonata carrier.
On this board it must stay asserted permanently, otherwise the
downstream path to the two PCA6408 expanders is not accessible.

Modeling it as a mux might be confusing for users of the DART-MX91, as
as it would suggest that the routing is configurable, while on this
board it is actually fixed.

Best Regards,
Stefano

