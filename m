Return-Path: <devicetree+bounces-275311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YETwKSIdtGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:20:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B894284D04
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:20:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1208D3105A4F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154FA3932F8;
	Fri, 13 Mar 2026 14:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uR/8lat9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E411B3264EE;
	Fri, 13 Mar 2026 14:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411134; cv=none; b=dPiXLk/i9efp/2aQL3GNVTzqvTHFzTeS1DmpijQzNVqVRyorlRyKgNCJYP5dtT+8ehH3bfhRaGAGfA02SATM8k1vJ29TbOBswOLx1ddHmDEstQ9MsQmFrahoFKuZZo7nM7lOEwdyGgqXfD08dLplQQ/4MM7z3wd4qs2VZDm2Sp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411134; c=relaxed/simple;
	bh=fCDSGdh45iA1riKZcxhhDtMhhbaysPCQejZ0j7VYQ/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CByBt7pdNHbtcnaF5tPZkN6Dcy8yEvPe0i4XUwJfWYwhkAKJ0wGkxJBgvNGHan7YqVmpZtSq3iK41BCPNz+ACYA3kJ0PXtmM4RU/fp06jt7bbiqqXBlRzK/qHiEF53lQhnrKQ6OhLC5S0S7GSfja1hBFHEFoPWW4giCl5s4bPpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uR/8lat9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3528BC2BC87;
	Fri, 13 Mar 2026 14:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773411133;
	bh=fCDSGdh45iA1riKZcxhhDtMhhbaysPCQejZ0j7VYQ/k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uR/8lat9dmWVqSArt2oms9SCCRV1D7aER4Ee/1m8itl5hzbSrC9MkLTHho6AeHWuJ
	 sqXUKFedbkly9Fc/cosYvvLRAFzLZ6vxjz1cMrnbto3KK2BWcu3fXQsj0I/ROkL8Nm
	 fNl5+tXIntQhNtU+MiZ0Owh1zzHsSqrtUjg4JYVmDPPErwhS802P+Ocb/WXozR65IS
	 QVQeQs4Fl7e1MwUTS7dxKlzuhs2wllwvPmYJVof3coDX10aYfP9YXJgB1P+ugwvuct
	 7sdnDCcOkVO9iCWy/BKspaZSOQM9L85s0nVn3Ne5W9tVdC6IpeAWz9Ygu8rfB5dL5y
	 OWXcdjIZFQbSg==
Date: Fri, 13 Mar 2026 09:12:12 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: input: touchscreen: convert
 fsl-mx25-tcq.txt to yaml
Message-ID: <20260313141212.GA1847704-robh@kernel.org>
References: <20260211-yaml_mfd-v1-0-05cb48bc6f09@nxp.com>
 <20260211-yaml_mfd-v1-1-05cb48bc6f09@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211-yaml_mfd-v1-1-05cb48bc6f09@nxp.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-275311-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1B894284D04
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Feb 11, 2026 at 04:41:04PM -0500, Frank Li wrote:
> Convert fsl-mx25-tcq.txt to yaml.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../bindings/input/touchscreen/fsl,imx25-tcq.yaml  | 69 ++++++++++++++++++++++
>  .../bindings/input/touchscreen/fsl-mx25-tcq.txt    | 34 -----------
>  2 files changed, 69 insertions(+), 34 deletions(-)

Linux-next is broken as the MFD binding has been picked up without this 
one, so I've applied it.

Rob

