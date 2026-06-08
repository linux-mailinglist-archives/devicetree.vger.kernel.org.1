Return-Path: <devicetree+bounces-308517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZspTOqQjJ2oOsgIAu9opvQ
	(envelope-from <devicetree+bounces-308517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 22:18:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B4865A5CC
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 22:18:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ji6fq2wF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308517-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308517-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5E1AB301AD8B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 20:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600DA3D3CE3;
	Mon,  8 Jun 2026 20:08:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7370F31F9B4;
	Mon,  8 Jun 2026 20:08:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780949317; cv=none; b=XzQA2OTT09WicYncxx4nfNnbUmXc9B1UxVlpIO2STOBaALJoTzgiMZ/V0rszQ7eiGQq9T3rs7n9CRSJGequ70gT7w7B1vBre7TmM2SH3NMj4+a/g0SqZejhWUsmTmyTA+R2q7pWjJchtrO67U7sxBoPyB7CvIHidgIoilYOhnEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780949317; c=relaxed/simple;
	bh=fMjM5wg8cX+907PUCBHky1U1a7zB/P3Dh4DUM/xUIb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GONj2lXmf6GoWPLqppSpp5bG2GSWUvO/xqr6qKspKA30GecaK0SuZTSTqnOHalpO7fO7p9ZusDY08Xv6J0gVgiu6lieBBPWzMU4+gxH0zTJB8VYlJzuHknvoSzded3GSfJ/Ppd+qKqecFU2yMQgJK3jA9DtWVpGhNSRPkBMx1zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji6fq2wF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABDE61F00893;
	Mon,  8 Jun 2026 20:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780949316;
	bh=fMjM5wg8cX+907PUCBHky1U1a7zB/P3Dh4DUM/xUIb8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ji6fq2wFo1VzsLXlE0V1IxLasIXC/gnpX5fTXMb/0XXUim9S/xSO/jlG+JN4Ueh3S
	 kS/iDB/RlLZv1jD7Kfau3gAmbpMySsN9codrKKnZay45XpzJ6Eu+H+wx+NP6VTu20t
	 RIn39JBRGY9HafquR46/2kO/6idHVRHwfxIjitcL5A3PONgI44PkE3nYrT8BzlySD7
	 /gDNbkcLRCpo9tG20xzk/R895Gy5hTkIiom+UWjhVs/cdobSwRu91cTPV0fGdxMCzn
	 au0QEcND01I8UM8s9VRZxgtGV7IB9hOHYNfRKoevOGmZrh1lPQC1Ofa8/6nn644fHp
	 KqV98sgsiS6uQ==
Date: Mon, 8 Jun 2026 22:08:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	conor+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: mfd: syscon: Disallow simple-bus
 with syscon
Message-ID: <20260608-alluring-melodic-jaguarundi-f86bf5@quoll>
References: <20260608-n-dt-bindings-simple-bus-syscon-v2-1-0203e6c249dc@oss.qualcomm.com>
 <20260608140650.CF8DE1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260608140650.CF8DE1F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308517-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44B4865A5CC

On Mon, Jun 08, 2026 at 02:06:50PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] DT Binding Violation: Undocumented Compatibles and Validation Breakage

No breakage although compatibles could be documented if we cared. The
DTS already had existing issue - missing specific compatibles, so this
patch is not making things worse.

Best regards,
Krzysztof


