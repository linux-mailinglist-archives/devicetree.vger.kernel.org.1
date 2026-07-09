Return-Path: <devicetree+bounces-323594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bJ5XF/R4T2puhQIAu9opvQ
	(envelope-from <devicetree+bounces-323594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:33:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6C772FA29
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:33:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cdH4Z+jd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323594-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323594-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 30041303B6A8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A37540629E;
	Thu,  9 Jul 2026 10:32:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0AA406267;
	Thu,  9 Jul 2026 10:32:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783593164; cv=none; b=KGAWKBdXGIvXjGVTpAnRL6eBNXrL3rehWrSmRG6KoSuqInoGJxrvICA34xDOkyXe+Jnq6zS55e59an7tadgigo7AUpx7Li0gsYskc8BCsDPWk4uYuuxA78a17XTeKKfKkguV3W2vjOa3MeMCT5H/XcjAoERjr3JF55VMAbpyuCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783593164; c=relaxed/simple;
	bh=cB9ohpukroUgok4mqguDMjNC4wywPZEtebFHigsj1GY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U3GgfFF0GRIJpYUUho2f8eYVGl74HO84vUkaSda2fGXqnRKw3cJZUZ+QmAlNjmuM/azDjoIYxQibCQv1KpxiaiAKLaZfwd8nQ9gmrW01/ly5fbps/MIRjtLoSbp0tGHb9wsDeJbTwUa/c6zSU+SBnok7iov/O9DSx5VzgYiWnng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdH4Z+jd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A84A41F000E9;
	Thu,  9 Jul 2026 10:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783593162;
	bh=EjZvlpJSXYOhVZuRppmSko+dfxbbl2+AcegT2rC1JKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cdH4Z+jdnHyig2RoKQtqKol7ECXjkpU6SSRU97vFOWRucE8qG2E8WSJk05+E9cp+z
	 /5zCMDdX22Vyt1y7hPRNNG5pX29YmIP4UmOVxXWjOxSfFdUkNgGT5lGanbSFnr8zOy
	 v7RVuazvUSRGJLh0CmxM49K8Ym+6FyfuRGLH7aA2UyX6onQN4hn4xzIr9ovkIWtcfj
	 6ntAr6jJ7QKJm0GjDtbOLK/KWdaJY0hTlj5WVSt+UYDjHiyLwIKVDHBA2/H3suIW95
	 jO4gj33lrGzsL+V0ioy1eaQYQdzbTNxeX3t5oLRKgfXMuAEyJ0jr6ISoyHr5m1uTe3
	 pX+QvwkFVzG0g==
Date: Thu, 9 Jul 2026 11:32:37 +0100
From: Lee Jones <lee@kernel.org>
To: Frank.Li@oss.nxp.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Linus Walleij <linusw@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: mfd: st,stmpe: add deprecated properties
Message-ID: <20260709103237.GF2045740@google.com>
References: <20260708-dts-stmpe-v1-0-1f51d15bb358@nxp.com>
 <20260708-dts-stmpe-v1-1-1f51d15bb358@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260708-dts-stmpe-v1-1-1f51d15bb358@nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323594-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:linusw@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,foss.st.com,pengutronix.de,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,lists.linux.dev,nxp.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email,devicetree.org:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB6C772FA29

On Wed, 08 Jul 2026, Frank.Li@oss.nxp.com wrote:

> From: Frank Li <Frank.Li@nxp.com>
> 
> Add deprecated properties st,sample-time, st,sample-time, st,mod-12b and
> st,ref-sel. The both driver drivers/mfd/stmpe.c and
> drivers/input/touchscreen/stmpe-ts.c parse these information. Some dts
> put these properties under mfd, but some put these under child node
> sample_ts.
> 
> Allow these properties put under sample_ts and mark as deprecated to fix
> below CHECK_DTBS warnings:
>   arch/arm/boot/dts/nxp/imx/imx6q-novena.dtb: stmpe811@44 (st,stmpe811): touchscreen: Unevaluated properties are not allowed ('st,adc-freq', 'st,mod-12b', 'st,ref-sel', 'st,sample-time' were unexpected)
>         from schema $id: http://devicetree.org/schemas/mfd/st,stmpe.yaml
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/mfd/st,stmpe.yaml          | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Why is this attached to submission:

  [PATCH 0/3] ARM: dts: imx: cleanup st,stmpe touch screen related CHECK_DTB warings

And where are the other 2 patches?

Pleas send new patches as a new thread.

Never attach a new patch to an existing thread.

-- 
Lee Jones

