Return-Path: <devicetree+bounces-312713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O3WQKNrdMWrDrAUAu9opvQ
	(envelope-from <devicetree+bounces-312713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 01:35:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAF3695BB1
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 01:35:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YXxENTVg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312713-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312713-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B7B083015613
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 23:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 976D9407CD0;
	Tue, 16 Jun 2026 23:35:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C973A7186;
	Tue, 16 Jun 2026 23:35:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781652939; cv=none; b=Yjkqwobz6qUI4CZBYVVAO6RapLyPSIrVgeGom01GQyEnTmlkKO1NChTSD8ynTOSnIXTxv4YxdQvars7uvRcOo10choSKjlfKOaA5oym9bWZ3GPcUkhXjoHE10XqwB/d5aSTvSLj684RSrziQDaLq4hI8zGdBJKtr6boS7lUCsvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781652939; c=relaxed/simple;
	bh=jYwc9ZpSH6RUOWI07PSAPJNIx4nMvftvr/rnKqeE5Ho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t/6UtU+Q1vWjhm9aD/D/l1JlPu8GyAe7ixSblYP893rA0ReOiGEFQlHhZd3H7oe89/DBHEWWhLC009roqhX4Zjd9F+EVSmSAlfCnH27uuSOIUzgJSMp3asqcId8IEFNNwG2Fqc4gdx1rw/WZVdtgDFggVFLv/9LaQHByvZVs4P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXxENTVg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 203D61F000E9;
	Tue, 16 Jun 2026 23:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781652938;
	bh=SjoNDv7W8Yg5iI322q7S6PIYbtYq8yxuevLSVsuupfs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YXxENTVg/qfC3xCHZHuVmQZWVgP/72dAzdKQOJHX3d3CMCfaouNEtc03GcG0Qfewm
	 It3bxXW4ptc/Gv5ga41Q+10yIbSW4NpBA861fG7nGu2RDkpPg9QAvWIxOVs6sANSeS
	 bP6DyeSQAdrc9M8AuCt/AFCbsbuV4MmO6fWxZju45r2jrlmn5hJ/2BIzA+u2UBzHis
	 tlgZEoD3r7ZD9nRkDLGYl3XxmUIVFYXtojqPQTRZJPhrcLjR8a0On+P9rbkE4RGd1y
	 s71EXXRaBT83zOVQMfVeZToXWOB9lH41MLKgXwjuXhHt5jKNJjBoZMJp5KNH2l7evk
	 4FOfmq8MvdfFw==
Date: Wed, 17 Jun 2026 01:35:33 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: wsa@kernel.org, anders.berg@lsi.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: convert axxia i2c to dt-schema
Message-ID: <ajHdow8d1-w5KT1y@zenone.zhora.eu>
References: <20260505100854.5258-1-chaitanya.msabnis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260505100854.5258-1-chaitanya.msabnis@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chaitanya.msabnis@gmail.com,m:wsa@kernel.org,m:anders.berg@lsi.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:chaitanyamsabnis@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-312713-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,zenone.zhora.eu:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEAF3695BB1

Hi Chaitanya,

On Tue, May 05, 2026 at 03:38:54PM +0530, Chaitanya Sabnis wrote:
> Convert the LSI Axxia I2C Controller bindings from legacy text
> format to modern dt-schema (YAML).
> 
> During the conversion, the obsolete `device_type = "i2c"` property
> was dropped from the example, as it is deprecated and not utilized
> by the driver. The `clock-names` property is enforced as required
> matching the driver probe behavior. The example node address was
> also updated to a standard 32-bit address.
> 
> Signed-off-by: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>

Sorry for the delay, merged to i2c/i2c-for-7.2.

Thanks,
Andi

