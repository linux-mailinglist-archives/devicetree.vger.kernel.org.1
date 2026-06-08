Return-Path: <devicetree+bounces-308519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e9evAOciJ2rCsQIAu9opvQ
	(envelope-from <devicetree+bounces-308519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 22:15:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 707CF65A53A
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 22:15:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XOvzTxgy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308519-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308519-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EAD5300CBD4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 20:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 378D93C3452;
	Mon,  8 Jun 2026 20:13:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4813A31F9B4;
	Mon,  8 Jun 2026 20:13:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780949611; cv=none; b=jTGU61XkB/KklGHiY15fNbCY9qdWbkVEEWiNPjZItK0eJ4ZbPyKlrerQ116ydzXz6yOp+ZPtV0HoCM9Gs3KfsD+GBOFd/XOCVh5xtMRKSZkbclzGxn7QrKO+R2jkBTTIzuoiCJ4+k89/8stUcklwtGsbvDPUHRUSvcCQf2JCNwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780949611; c=relaxed/simple;
	bh=iWVovnFzh+bEnMYp9DX0f7p8eU1RhfumFbRbE3wftSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ru4KbOOEaFcitDaUNL5T4DjOp+VrVLSqaw1tAO47PqFQ/w+VgApbDmTNYREnfp3tBOA8UkMHiCd3fpvOagSxwvg0Bydtdel4oPU6oRtK0uMOpr4j8Qem/9atSzX2ue4kOX+VRJZPW+ZMM5Xm/+rnAiaK0tzzpYuBDLISeAlYBNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOvzTxgy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 325881F00893;
	Mon,  8 Jun 2026 20:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780949610;
	bh=/Nkm+QTApKgvTUBxs1ooUYCSZ5ByuaiIRIcdaSQG6oA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XOvzTxgydewfnybo9SqE8JNXk0ckbJi0KobBrVHq+HLnJDd9IuSVjOwDDX06rwZP9
	 sC+3hYj0RENlR8wpDNnZG3wVLGYAFnUtnuuFXWAwddlZzOeW22MmsdsbFDeilm8Qbz
	 KVGscoC1Iqe3M8oUIBuCddNjpWJR1exhU/DZkTkrE0AIjNRbkWLppBZYae8xWQs9Bl
	 2lEkmyumt8dkyAgyEz6WA7jy5c5SNCG8su75Z4vSs8QdmlNRwgKnTQyiYoGpzz2DTp
	 9cAhBFKSyjwZf9v0wfzO88FUCzreog1c8Kbw20MOtMTjt1TE+ZX/zjX0nZoChB9d3b
	 ncfuIVfLlRSog==
Date: Mon, 8 Jun 2026 22:13:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: mfd: syscon: Drop unneeded case for
 syscon + simple-mfd
Message-ID: <20260608-hairy-scorpion-of-culture-e79dae@quoll>
References: <20260608-n-dt-bindings-simple-bus-syscon-v2-2-0203e6c249dc@oss.qualcomm.com>
 <20260608140853.BD7BD1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260608140853.BD7BD1F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308519-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:krzysztof.kozlowski@oss.qualcomm.com,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,quoll:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 707CF65A53A

On Mon, Jun 08, 2026 at 02:08:53PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Removing the `minItems: 3` constraint introduces a schema validation loophole, allowing device trees to use exactly `compatible = "syscon", "simple-mfd";` without a vendor-specific compatible string.

That's a good point -  I should not remove this check, it still serves
as warning if people add syscon+simple-mfd without front specific
compatible.

Best regards,
Krzysztof


