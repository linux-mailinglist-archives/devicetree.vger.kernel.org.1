Return-Path: <devicetree+bounces-313196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XuEqCaM3M2rd+QUAu9opvQ
	(envelope-from <devicetree+bounces-313196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 02:11:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 757D469CD99
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 02:11:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ac+2uviU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313196-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313196-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E08EE3022E48
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 00:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1A414ABE;
	Thu, 18 Jun 2026 00:11:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D4E800;
	Thu, 18 Jun 2026 00:11:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781741471; cv=none; b=qPB/iURWzgK9h2T2HmXX0l6LZmebVHzRznjSLy6+bX4VVKvwc7nJAYngnb/wJm4umjzfpXD1Xo3hjZUoLFE18o9Ei4nuTlLliNtK01MC87nJggKrxkbLlGc51DoZ9kL0Qfvh1b1P3Z+jstrYGvEoZMiDQ0fAtfXs3+QnuELURJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781741471; c=relaxed/simple;
	bh=dzwf6C30U+S3XZlPHCXkMqhVx4umM5UNhj73oBkRKrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hyZ92eWGoTVOXk1pt7HZCnV3wWKiUSmAGRnmxMeia2H7lGdzPlfg6o9VDWVypuzIwgeADmn5/oxga0bJYetK5z14W7WqOqziRTzpNswqi/I0u4DjMZdSFpNoQKPCq1i9sfydSQjl79RFokxMWNLYyLUsZxyczDgPdWXn7kunzKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac+2uviU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3D0A1F000E9;
	Thu, 18 Jun 2026 00:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781741470;
	bh=BthPJgZpS1+N4wzOR0iD8v+QR4QpG3XPDyaK2/42WLo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ac+2uviUL8lBCBMVEfaABvD4ML7bAXbfqi03SRHtS43JdZpuIdcBX7XSLu1DwOtbO
	 SSFvg6lQqWd9pGQojIeu7mWJxqMpegjbgEGXlJ8EEX/FSsDzsWzilhaxDscDuGWuz1
	 NwJi8qgEqOkYKbigdvZ+8P7HNvmzSAoT9uSkKxQXNmfm9erfYGwgUTB4SSD++n3ri2
	 Gaqccil4QlJqaUdG6bg118KJD+bZfi4FQlxkRHOiNE+dVhnrzrxzFZCQqXQgtFGCEy
	 +URqrzHA9EQLodhdLRZBMDOi4H9lV6P55Eno7Kn3/I0QAHr2eNKmGj0oV5ThZsCp3v
	 YxY0kliYWm3Pg==
Date: Thu, 18 Jun 2026 02:11:05 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: wsa@kernel.org, thor.thayer@linux.intel.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: convert altera i2c to dt-schema
Message-ID: <ajM3eOzcq7g_VGjF@zenone.zhora.eu>
References: <20260505053201.5795-1-chaitanya.msabnis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260505053201.5795-1-chaitanya.msabnis@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chaitanya.msabnis@gmail.com,m:wsa@kernel.org,m:thor.thayer@linux.intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:chaitanyamsabnis@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313196-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,zenone.zhora.eu:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 757D469CD99

Hi Chaitanya,

On Tue, May 05, 2026 at 11:02:01AM +0530, Chaitanya Sabnis wrote:
> Convert the Altera SoftIP I2C Controller bindings from legacy text
> format to modern dt-schema (YAML).
> 
> The hardware constraints and properties remain identical. The example
> node was updated to use a standard 32-bit address space to clear
> compilation warnings.
> 
> Signed-off-by: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>

merged to i2c/i2c-for-7.2

Thanks,
Andi

