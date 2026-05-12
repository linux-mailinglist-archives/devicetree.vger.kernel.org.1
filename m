Return-Path: <devicetree+bounces-296084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKpTLhXcAmrJyAEAu9opvQ
	(envelope-from <devicetree+bounces-296084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 09:51:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE96551C358
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 09:51:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9BA073024AB9
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF524418F0;
	Tue, 12 May 2026 07:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="ukOLU+jn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196D436F8FE;
	Tue, 12 May 2026 07:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778572288; cv=none; b=gGmBM+Ji3qw9OuN905bgAoF1ComPoscszt6UIuLoOcbk/CocFsHpfRzm9jOjE1NbzeCHi7wIM4QF6noyfKditSiOm7DOpSnCrIkxE0SjCjYhvEKqODtygsgSG2JnPvJB9sF4BoCDNlem+eS0UL84Qh9lHRA/5/LCslG1z2JUcPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778572288; c=relaxed/simple;
	bh=QzOERDsu01teqRpJ/12Op6SVSFHMvsDpCuNgtRTgCpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dmIY82kfGRA9Iizw7cweo6B4kYNHHzu4VuM+KjydvpTZPRwoD3k8OpWlg6aI60Y9u65Fvy64Ze1o844B2hejLYrUuQiXVA1Lnc8Gtlg4jC3ETqEzrqsDvkCiSgaq62kzEC04hNtcAAC4+Pzqpjy7iZKiPPxzjWdrH2+pgScQ9LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=ukOLU+jn; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 5B3A11F92A;
	Tue, 12 May 2026 09:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1778572282;
	bh=UMQBXrU9FT0dD0+vFXxYp0huKRYdo7AaaqC5mS/KqME=; h=From:To:Subject;
	b=ukOLU+jnyf7tyziG+vS3l59YEiSDEnBB6kbfjmmR5Eoqhn5yE+U9LSKtp347Wv2ta
	 yMeANjw/xMVlYN5GTOyZyGlokPO5HopM7zXZJl98uAw4JyQq7IyrrzBmseeauDoUoq
	 YB5F/1sCQat7R27vo1y3SLaZs0NVfLCSNKtIUCIdpJxoczRC1OkFbMRAiQV0UlnYcO
	 iLV4reulN618GIUUifmQPvFf0wh4ZsqWkynriFRN1qoKLW0qHqLLZwDhbmcfdQoKn1
	 O4yZfIHSx2REDx6U2KaZu4otYWbBXSIhqV9BtDCbmn9fkPx29jNlNy7ju40L6bWqbH
	 uPYPsr6QDjB3A==
Date: Tue, 12 May 2026 09:51:20 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] ARM: dts: imx6qdl-sabrelite: add mdio phy address 0
Message-ID: <20260512075120.GB5820@francesco-nb>
References: <20260511-b4-imx25_dts_simple_warning-v1-0-01b855a5ce25@nxp.com>
 <20260511-b4-imx25_dts_simple_warning-v1-1-01b855a5ce25@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260511-b4-imx25_dts_simple_warning-v1-1-01b855a5ce25@nxp.com>
X-Rspamd-Queue-Id: EE96551C358
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-296084-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 05:04:56PM -0400, Frank Li wrote:
> According to IEEE 802.3 Clause 22.2.4.5.5 PHYAD (PHY Address), A PHY that
> is connected to the station management entity via the mechanical interface
> defined in 22.6 shall always respond to transactions addressed to PHY
> Address zero <00000>.
> 
> Use address 0 is safe because only one MDIO phy under mdio bus.

I do not think this is generally safe.

Not all ethernet phy answer to the 0 broadcast address. The one that I
have personally worked with consider 0 a unicast address.

Francesco


