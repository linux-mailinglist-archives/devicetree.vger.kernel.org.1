Return-Path: <devicetree+bounces-320198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nARZLEbHR2qUfAAAu9opvQ
	(envelope-from <devicetree+bounces-320198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:29:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D445703695
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:29:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chaosmail.tech header.s=mail header.b=TU+tJkDB;
	dmarc=pass (policy=reject) header.from=chaosmail.tech;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320198-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320198-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C04D73014680
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 14:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89043C98BE;
	Fri,  3 Jul 2026 14:27:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.tech (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993CB3E1235;
	Fri,  3 Jul 2026 14:26:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783088819; cv=none; b=CFDtomG1B875UFVNQVriXzVfi09dXo4mLlagV1F6Yf7PDYaSbcrzV4RSODyQRWYYt7R+/SIKCFrRd8o1VxojsHNeuajhV3qCo1MBMp84uMHFOj1Ji2pfud7XXPCQ+Dv1o84lc58cWoQZXVVWhHcVaYZMFdiJ6QZOzz8BQfRJsMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783088819; c=relaxed/simple;
	bh=eUnlE9+0l8fJKoLTHs0qb/oMYwfGR8LWWl2uZHjushc=;
	h=Content-Type:MIME-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=mjnhf21lbKFzzAnLTMwk6ozVCka9Mc/mTB6A/M1jYyrIL6wz8HFnW8npIHJEuhI2tDy+SlrKEz/9zu343ere+IgneRca/aTiiXuxbw5SihE7dW6hsslAqzoGGL5Wg3u3plNgjtNSv5rLuQO4N39WhhUPst350OQpz45j0WjBA84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=TU+tJkDB; arc=none smtp.client-ip=77.81.229.115
Received: by chaosmail.tech (Postfix) id E47031CC21E;
	Fri, 03 Jul 2026 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1783088814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wKuBmxQ8JnReynxOFnIhAbMgNLWozbwQA/XogGS5Wg0=;
	b=TU+tJkDB8A+jF6w/GXb8peZBii67lRfq1fEtlzuSt6mglAZbbU23DaZiCXxZQl/KGU7SGr
	Ix0bQX9x99yQ5wJH6oPtozF49LXN1rhCvgs28k3bekzPY75tv+GSYsT/dKd8lBJ9Hx6yIO
	dEBy7ydKaLP40tT+f8XXgrq7FXrVbD4=
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/3] soc: apple: Add driver for Apple PMGR misc
 controls
From: Sasha Finkelstein <k@chaosmail.tech>
In-Reply-To: <3e7a26e0-5ba5-4440-acd1-ac9547e1d403@kernel.org>
Date: Fri, 3 Jul 2026 16:26:43 +0200
Cc: asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Janne Grunau <j@jannau.net>,
 Hector Martin <marcan@marcan.st>,
 Neal Gompa <neal@gompa.dev>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Transfer-Encoding: 7bit
Message-Id: <4A1676D4-8B60-40E4-8E21-59DF4657BEC6@chaosmail.tech>
References: <20260703-pmgr-misc-v2-0-4b26ba10c5a4@chaosmail.tech>
 <20260703-pmgr-misc-v2-2-4b26ba10c5a4@chaosmail.tech>
 <3e7a26e0-5ba5-4440-acd1-ac9547e1d403@kernel.org>
To: Sven Peter <sven@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320198-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:j@jannau.net,m:marcan@marcan.st,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:sven@kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chaosmail.tech:from_mime,chaosmail.tech:dkim,chaosmail.tech:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D445703695

On Jul 3, 2026, at 16:19, Sven Peter <sven@kernel.org> wrote:
> 
> Do we know what 7 means here? would be nice to also have that #defined

We do not. Probably a way to pick a clock multiplier or something
similar. On t600x, setting it too low results in other blocks failing
to power up after sleep.


