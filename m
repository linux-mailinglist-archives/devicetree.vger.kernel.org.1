Return-Path: <devicetree+bounces-308784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0P16FGPDJ2r81gIAu9opvQ
	(envelope-from <devicetree+bounces-308784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:40:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A84765D4FD
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:40:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fREYq8xL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308784-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308784-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79C6930C945C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD1D3DEFFC;
	Tue,  9 Jun 2026 07:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390B83DEAD1;
	Tue,  9 Jun 2026 07:35:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990520; cv=none; b=i7i5MTzooDDtPcTRHyna2RqySyKPm1smgM/4SPuGWSYZoyBE9LcY907KJH27dU+y9aERuOi8LgJMfK2vdPpPCexfrEYEoqaYcA6yZeoHLaQ0WyYv1+3oztkXubFWWya2BLy7eYLd9QcD5Azb9fm3wY9uYaZVhWW1JmGpeynEGIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990520; c=relaxed/simple;
	bh=ATXEGcoKkNSQII+YlcHasrynV/Aez66zbrj8bQ6x57Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j3VABW19ezkja27TxMWr0urhcIOLNCE0MSNW+fdodM8n8ZPv1KzQVK6sC453BmWPp+OawlejMM4BGeHi9Fun0lTcDhIfIiojg+5uAFw24V2cYPNQHmENdmFuf+v0OG/3e1eRK8a9bB8tJE+6qkVf8Eg2HfIlbIITMH+S3Q84bcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fREYq8xL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AC661F00893;
	Tue,  9 Jun 2026 07:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780990519;
	bh=ATXEGcoKkNSQII+YlcHasrynV/Aez66zbrj8bQ6x57Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fREYq8xLUJt/1DEpZhM0r19wTpGD0BgNEykkJynqv3PZma7VYy5HksRI0UzTMKVrR
	 VrJ/ZSuhv7gXFSDwQElrjYwjDK9eatKwXre2KtQKqThbFWdsyAuZAbPzTB24yU/9A4
	 1Zq0ipNn4EeC4r+LDuW1iqVWZvxk2U6zVjsLe8Uq/oq0llNtmIlky3aJZTX30RNzLT
	 FtQg+amzUKJ/XTgZh46wWKWEFoTgL478XlvHI7KNrKNNA74xc5u8Ze1z5ihbJzjDIB
	 xI+dKfqBAVUSlJo1TEW5EjS+NcBzRADLbHU5T+CZmVJi6N/L53vz1qgVSSf//Xp1Ea
	 gE0mSssGnAlww==
Date: Tue, 9 Jun 2026 09:35:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-pci@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: connector: pcie-m2-e: Add 3.3Vaux
 supply support
Message-ID: <20260609-unique-magnificent-eel-eb623f@quoll>
References: <20260609033840.2006078-2-sherry.sun@oss.nxp.com>
 <20260609034408.BC69D1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609034408.BC69D1F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308784-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A84765D4FD

On Tue, Jun 09, 2026 at 03:44:08AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The `vpcie3v3aux-supply` property describes a non-existent hardware feature on the M.2 Key E connector to work around a software policy.

Feels valid. Describe which pin on M2 connector are you representing.

Best regards,
Krzysztof


