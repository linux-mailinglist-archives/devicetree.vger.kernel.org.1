Return-Path: <devicetree+bounces-319986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id inWMCmSGR2phaAAAu9opvQ
	(envelope-from <devicetree+bounces-319986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:52:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B82700D5D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:52:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YtUbTTQ3;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319986-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319986-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D2AE301AAB0
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA84358388;
	Fri,  3 Jul 2026 09:52:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49936282F05;
	Fri,  3 Jul 2026 09:52:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783072334; cv=none; b=h2Iqcqr9Tz1lLyLLmcGOCYOlc/vTDrutU9raVV4Xd+3NXJNxfJPKHGnLX8P6F+G5kdJwzhHxFE7zN/Hl1hWY32LHST1v2wqk4nzy+PY/JuZ1MSzFkNNYhImfpDVUJzZrWaAtH2bQq/5PVIV4skGWGn7Kf4fig1b9nwFU+NTxcR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783072334; c=relaxed/simple;
	bh=aYhfIFavK+1hKnLZufQaPwNtSrp5cpBxxYWlNUIOlxg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XystzmlVDA8NmK8XeitOx9Cdzs89WtPOkoEEmSrrftGnSatPVCtVS/c6rHNxZG4r/lU41SAYNJ9YiiAd4IG/sd2WjEBq/TFdwg5CSi0IHA2zn0o16gRUQSc0I5wzh2gAmdjuBg3YcgiX1ZnlGmnVlrn4KtrS1oj0VJ4qb4oY1bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtUbTTQ3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6CEB1F00A3A;
	Fri,  3 Jul 2026 09:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783072332;
	bh=zbH6EOaxJJwCRaD9Scc4jGAt/kQtlCmPLiShqgjHmu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YtUbTTQ3YcY991mOo25WNvGwKaUMGOgMXJtkYRzWNIqaO3m9busfvfeIgVVSegEpe
	 VLK1OyZtwnzS8g9JKKmn6OrOHH+Nt7+pA/I+0l+rcKAShqA+nt9XKUWCvHKhV9cFXB
	 71b4JlWf0DbrPtl0FxbVLN9MnclG5c7n3ZBA1rsyO67B0ZI+PalTS2PE2Hf2GMPq16
	 meqBprpcQAJ+kgGFGUj5SutsD1m2zFhJ0QyOwOEvtP/ifv38+kvvKlwR1c3pei2bUd
	 pmZQcU/TvosCWqsfPSSbCAHUuckJhomayHQPOnTIthay1HjLNJ3oaU5/Ls8npaWkAd
	 hKny2xpSoaW8A==
Date: Fri, 3 Jul 2026 11:52:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
	Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: soc: apple: Add bindings for apple PMGR
 misc controls
Message-ID: <20260703-spotted-silver-nyala-b39ec4@quoll>
References: <20260702-pmgr-misc-v1-0-4f075a3a95c1@chaosmail.tech>
 <20260702-pmgr-misc-v1-1-4f075a3a95c1@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260702-pmgr-misc-v1-1-4f075a3a95c1@chaosmail.tech>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319986-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:k@chaosmail.tech,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,quoll:mid,chaosmail.tech:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82B82700D5D

On Thu, Jul 02, 2026 at 02:06:26PM +0200, Sasha Finkelstein wrote:
> Certain Apple SoCs include additional PMGR power states that are
> controlled via a different "misc" control block. On existing SoCs, this
> includes the fabric and memory controller state.
> 
> Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>

Just a nit on top of Conor's review, if there is a new version:

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v7.1-rc7/source/Documentation/devicetree/bindings/submitting-patches.rst#L23

Best regards,
Krzysztof


