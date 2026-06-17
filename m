Return-Path: <devicetree+bounces-312846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2hNWOiVXMmpaywUAu9opvQ
	(envelope-from <devicetree+bounces-312846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:13:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D62F69775E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:13:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JuW6jAzR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312846-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312846-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2E35630087D4
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6245D3C1413;
	Wed, 17 Jun 2026 08:13:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716A43C0621;
	Wed, 17 Jun 2026 08:13:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781684004; cv=none; b=TZtuA8ocx687I5j69O6IUXgTRSGjuijcDXVD/7B1wOlDbCNtOmhp/eEqiRR0qLw8u1eEC/4Q9LtnshX+YHWxgKQD58vZJUfedqXNr5Y5WImBtBimoQc+U/dHZYmIiYyGGfgZRP/KgkZIWPpb8dd43FaKd5qCwXz8k2Jit2rlqy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781684004; c=relaxed/simple;
	bh=IbPJGthCUIWDIr4yDGyV37GcvhhD1fZOC0aZZ1pGYNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZKV+ehBGJIbQ5NRmvICbQsp8h+sV255LKfV/VnjPQM+wBKO/HZo3F4J3YRBtA8qVD/d1sG99OAyQKmtAGe30LN4EIjViCarrHcx3e+mtlH9ClKvG4NBVkiZN8VnHtg6RN/1awK6Y4p1QCaFnU9CP+S71DNyL0L9LliX13yyW7sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuW6jAzR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E97A1F000E9;
	Wed, 17 Jun 2026 08:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781684003;
	bh=IbPJGthCUIWDIr4yDGyV37GcvhhD1fZOC0aZZ1pGYNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JuW6jAzRSuE5+tI5/ckDh0EkpYdZXD8bTNc+4HR4p+qzt8oHKVjray+Ra++avQsuq
	 /B9ShX60QfFuqz+hbcu2BTAHDpcwIw8ccAcDBxaiIsiorFAHQtD0kxNQnt0SgF981O
	 QowYPYs4B1NtWf9GIUpN8PlBFpPJdvoyBo0Pb7u8vHTzy5mSEytna9Vq4w42M5zFlU
	 SCMFU42jluJ0lkgMxeype753ZkxzUiayVF/ov5xwwr9aAOxJixPr3yMQysvvjbkMCq
	 /VKdMPdFiDRu2Cdg9L0bJ4CWhR1QyJDiV5C6dPVowU0Va7RGLQJjg+RqCEagMTLadC
	 P/vJUuA/Ui/uw==
Date: Wed, 17 Jun 2026 10:13:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Teja Sai Charan B <tejaasaye@gmail.com>, robh@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: rtc: Convert rtc-cmos binding to YAML
Message-ID: <20260617-practical-blue-collie-dd94ca@quoll>
References: <20260616085659.12809-1-tejaasaye@gmail.com>
 <20260616090404.534451F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260616090404.534451F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:tejaasaye@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312846-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D62F69775E

On Tue, Jun 16, 2026 at 09:04:03AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [Low] The node name in the YAML example uses a unit address that does not match its 'reg' property, which will cause a dtc warning and fail `make dt_binding_check`.
> - [Low] A stray file `result.txt` containing intermediate search and build output was accidentally included in the patch.
> - [Low] Important explanatory text about firmware initialization was dropped during the conversion to YAML.

Please address Sashiko reports as well.


Best regards,
Krzysztof


