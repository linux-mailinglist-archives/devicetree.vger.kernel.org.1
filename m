Return-Path: <devicetree+bounces-311385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K/CgG0epLWqHiQQAu9opvQ
	(envelope-from <devicetree+bounces-311385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 21:02:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC4767F637
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 21:02:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VOXRVzde;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311385-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311385-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11FFF3011C7A
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 19:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8264E282F12;
	Sat, 13 Jun 2026 19:02:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BBF21FF2E;
	Sat, 13 Jun 2026 19:02:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781377348; cv=none; b=OYKY5dAkyjIncPq0FJIIpm6BEf5lhVg/lxnfaflHvoBOUkAX8VuOKzRZqO1yujDjGhudDp9ORc2ig/A0Kkvhs0vn9ivwZMHG6XSe3TN0GqB3wU791IG3jEY8w1grWWIsn6eFEcooPHzrgcS8epj+SUMLSfIuLZwfvNJ5Doaa2eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781377348; c=relaxed/simple;
	bh=l3Oc+tbr/RhE1rUi1i5Q1Q+ay5emOzkZruu4ZXSwpfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AVRjBdGZg+8lQ9YkPBUTBI0qbU0Aa0JMlJlUeeJ7CPk6b/AdAfBOocLOOWXfGiXTcjkEtcyVAtu4vSV8LppnGFwAC0MBwNDFlEj0fmZREQR5BdGXYU46QDfxnuMIEhno2z6pVWgJsMNEz/PqGv2apR/gIzWaKp1VyTRIpAR//Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOXRVzde; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 780D51F000E9;
	Sat, 13 Jun 2026 19:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781377347;
	bh=BcueLZkozm3anAuTSQFkqhfHePtuZIF+/of8GypqbT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VOXRVzdeV+qoT8b1em0T3dLm4ZNgf32iqp3M2/ykzIUWdtfPAq6Hd7lRGatcqgZeH
	 53XROkmhLfrEqkgMaaTFcktT2GhQ9PZ+FuOs4ZtXMIi0O0p84dc5knPaAWOUuKxIPb
	 AzmUslwj5K/wMRyqJ+FqgWDuFaF+ncSaDLIPAAWiTqt5hBIuXOM/i0ty+0dcBK7Tak
	 ghZ4uEFerie7Ae/BJidh2ly5FuurM9spaIYqPK86QrzmCndhLpV5etkxmetePJEcD+
	 0sHAbu4Z3RskolY9Lip6JJvTVZmxf0K9XjSOkUqW/OI9Ta9r25K5wGULJVBjd4M8u7
	 7pPQ5tcMf6VLA==
Date: Sat, 13 Jun 2026 21:02:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: sashiko-reviews@lists.linux.dev, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: st,pwm: convert to DT schema
Message-ID: <20260613-stoic-ambitious-quail-9ea946@quoll>
References: <20260613-st-pwm-v1-1-458c2c89709a@gmail.com>
 <20260613071327.BE3101F000E9@smtp.kernel.org>
 <84be047f-350f-470c-9680-179805152e1a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <84be047f-350f-470c-9680-179805152e1a@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-311385-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECC4767F637

On Sat, Jun 13, 2026 at 12:50:54PM +0530, Charan Pedumuru wrote:
> 
> 
> On 13-06-2026 12:43, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> > - [Medium] The `interrupts` property is unconditionally required by the driver but omitted from the YAML schema's required list.

interrupts were required by old binding and you should document in
commit msg all changes done to the binding with a reason.

Best regards,
Krzysztof


