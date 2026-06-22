Return-Path: <devicetree+bounces-314417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5VznNNMpOWq3ngcAu9opvQ
	(envelope-from <devicetree+bounces-314417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 14:25:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9D26AF6BA
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 14:25:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EdXgQ+Fv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314417-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314417-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 97139300D773
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97EE4379C2B;
	Mon, 22 Jun 2026 12:25:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984F2281525
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 12:25:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782131153; cv=none; b=dnz7xHwzbJizebZGz2lN3ygFFT20CGIQi+q+ls1NpT/+vvnN5fM6e1VM6/TPZhqAwMwwS0WZxdU7MUFr+fPGILRMaf9KeZ9G6FzIJxCs/3mzj7Aq/FgePuArD7dWA7KmgnL2kgsJ5wUFinMpvRrN9Ycm4Q7gwppb5i/y1/kJe2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782131153; c=relaxed/simple;
	bh=Tved8OXTIwp9xmkpx1nCKvkd7hGByULRJOyiTNkv/m8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Df8OnPMJVvEPqUUw8P3775IadMIqx1kQdmonk8P1VuVyJWt1zhAoyg7dClioivFFIBXQUgAy0yRaqvYvqbmCeGojJFVvLk9WKvKqp1ZeSfJk5Khgaydg6mAYI3tsOVpdFvvJz/zmweGqDVQdJt3V/fl0sb3kmtp46irLwTObNMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdXgQ+Fv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02F6C1F000E9;
	Mon, 22 Jun 2026 12:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782131152;
	bh=SI0HXGq7FB0HOc+9hNUf3balba0LXes3NbQNPhmDLuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EdXgQ+FvtEuqNgMhWGSlHBhCBpcXfTvhXmSOb3y7f7z4j4V3lZsv3hyCSvBgVMl5C
	 IhnWobl6fwwje0bZa9x2zhtXcvxfNbXzccU0H68Kz4aULAYJ7jhFsrxoTmCkMl60NN
	 ihiAIn22cpnE+15Jmg+WOlzjzgULhMY35uwuXI9siTWN9CSj9brGhn88fdZVro2hAZ
	 9KyNJVkOj11cx+PAqb/cUBbQ4qmXTQCMXj1pxK4rzOGZ7IE1ZcoAlroC2N1JmidPwC
	 ev9OhiZFDk3ayrf9dn8Z+GJesoJBqvmjscIbUNW2axIvSU4dvAbQsqKyloNpRloJRD
	 xh09OciNGmbGw==
Date: Mon, 22 Jun 2026 14:25:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Liu Yu <f78fk@live.com>
Cc: Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: xilinx: Add MYIR MYS-7Z020-V2
 board
Message-ID: <20260622-private-lively-bobcat-e639cc@quoll>
References: <20260619102214.223121-1-f78fk@live.com>
 <20260619132355.1776-1-f78fk@live.com>
 <SY3PPF19552C607716AE1AA440C85D348B6C7E22@SY3PPF19552C607.AUSP300.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <SY3PPF19552C607716AE1AA440C85D348B6C7E22@SY3PPF19552C607.AUSP300.PROD.OUTLOOK.COM>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[live.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:f78fk@live.com,m:michal.simek@amd.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[live.com:email,qualcomm.com:email,vger.kernel.org:from_smtp,quoll:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E9D26AF6BA

On Fri, Jun 19, 2026 at 09:23:54PM +0800, Liu Yu wrote:
> Add compatible string for the MYIR MYS-7Z020-V2 board, based on
> the Xilinx Zynq-7000 XC7Z020 SoC.
> 
> Signed-off-by: Liu Yu <f78fk@live.com>

You should not use outlook to send messages. That platform really sucks,
meaning:
1. You might not receive answer for me, because outlook/M$ treats kernel
maintainers as spam and does not care to change it,
2. outlook rewrites message ids making threading often broken.

Recommended is to use b4 relay in such case. You have been warned...

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


