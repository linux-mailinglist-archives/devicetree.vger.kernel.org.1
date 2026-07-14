Return-Path: <devicetree+bounces-325952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SGZCLnfeVWpougAAu9opvQ
	(envelope-from <devicetree+bounces-325952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:00:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40346751B3F
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:00:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=IdEwe8iu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325952-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325952-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E0F93024165
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6EC13DFC88;
	Tue, 14 Jul 2026 06:59:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964762F8E94;
	Tue, 14 Jul 2026 06:59:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784012396; cv=none; b=qxNIh2FjftYQtoZso8gAWZRVhY1gCW70dRFcDHVXhzGe55Q79jNq3MeRbcOXx2a29cuWOd5OgY6+fpSB7swRomNKX3U8m+hMfqGQws6S6+qc/VWUgi4Eha6e9iJJ9IMFzKTVHH43I7hQXQ5BdIjWxJ8gCQzOkX+C8nc6tqiBjfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784012396; c=relaxed/simple;
	bh=j499OwKt4tdvIo10kDVb5lcqb/FU4jIpUd+BFE9BuIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SxpM7Gv9s7BXgOYFePUg+f96oH5V1c50GdnQ1fxRkInkMyhcSJ/EVmcob18vk9d704g3qAmRZNN8CNbHJ9VqjKD2JZYN6hZaXM80TLa/XYWjxr2N6CZVqP9goNom79h/khXFAWR4wU9an6GE6OO6HTf0aAkGHA6QVXeMin88p98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=IdEwe8iu; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id A0C421F901;
	Tue, 14 Jul 2026 08:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1784012391;
	bh=HZY15Na630cT23+3bnvhccBu3QQYmy/9h6UOo1ApJwE=; h=From:To:Subject;
	b=IdEwe8iuWZ94uJXyoXcJ++1wMCLmuD9eEWQrRYJpNLgy44Z9d0UEaAiotfqJjAVRn
	 w7YW0/qnvJsyfSG9m/t9eNjnBOdvzgWnPEZBHJkHv7nRRg7/4dfK+DEM1wocDil/zp
	 d8ciIJg7hGcp/nK452Z33mg+lOK3xm2rNMZZHK9FXGSIttyle7Grn3EbqH8qfgh339
	 QAoXXNJFbdVmZc9kKGqu/drMEIZRDXmnM/12OjDMHGlr/KSLx5apMcH5sGG1nHXGXL
	 I/WTgVAchHBL0QQlgU1ujs8Te2j3Zz2n8p4R4ERTp1T6x2oKztiecUyAQPnsQHi7vq
	 EiHe4iyzyfyeQ==
Date: Tue, 14 Jul 2026 08:59:47 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Frieder Schrempf <frieder@fris.de>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Pankaj Gupta <pankaj.gupta@nxp.com>,
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Frieder Schrempf <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 10/10] arm64: dts: imx93-kontron: Enable ELE firmware
 driver
Message-ID: <20260714065947.GA22086@francesco-nb>
References: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-0-b8266d93514b@kontron.de>
 <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-10-b8266d93514b@kontron.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-10-b8266d93514b@kontron.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325952-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:frieder@fris.de,m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:pankaj.gupta@nxp.com,m:peng.fan@oss.nxp.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,oss.nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,kontron.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kontron.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40346751B3F

Hello Frieder,

On Mon, Jul 13, 2026 at 04:53:46PM +0200, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Add the ELE firmware API node and pass its handle to the OCOTP
> driver. This allows us to gain read/write access to the OTP fuses.

This seems something we should have in the soc dtsi (imx93/imx91), it
does not seems board specific.

Francesco


