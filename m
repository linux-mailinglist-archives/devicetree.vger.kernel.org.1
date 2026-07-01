Return-Path: <devicetree+bounces-318407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UacBH+r5RGp+4QoAu9opvQ
	(envelope-from <devicetree+bounces-318407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:28:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC31E6ECD02
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:28:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d4gE8m2T;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318407-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318407-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 780F83044094
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24D8477E33;
	Wed,  1 Jul 2026 11:26:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F195143D4ED
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 11:26:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782905208; cv=none; b=RBLtl5WnH8TMHo26qt71PrYyupyxLfJ4h8piTTqNEtX2Dz1aEqhL6QHfSFJVrongajwzH4Tyur69orWXZYIxkBjpoVxH9F1yS+//gyTAMuLJJxfBPqyrJZygOpjMiUDqTHld+ystAoEN7PNMD6IlIIp68nHBxvKAToQapbOm8XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782905208; c=relaxed/simple;
	bh=UGR7sklv+yVmoPff446S+Uk9T/WEgf0DNWiolB+wQp8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aCIyeeysTjGzH3GSK3M4YdOcvGrJ5p//T988dUYOpfHAiNnR9EM47k5o9hMz74mhQipHP/lWLSZdwZ9Wku1T3zsYhCyHYGcGWCdwsva2hM7LlCuwH4GaRWGanKF/d6XLJcmL/igqkirZSbSMczJJFPFWcp+bBslAK+TvXsv+bgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4gE8m2T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D0331F000E9;
	Wed,  1 Jul 2026 11:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782905207;
	bh=UGR7sklv+yVmoPff446S+Uk9T/WEgf0DNWiolB+wQp8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d4gE8m2TSE220UYDkcmZR/tYpycEQ8157/JYVng77H8k6FA0e/hEAcFZl+U3NuH3A
	 re45U2RWEne95BJd7vC96SgVrPX57oFQmWoBGeXlJ6y9cXOn8bFpyBkqHlxAJdL0+y
	 WBY9qQx+vF/2sxnINjx5GtgqD5lfGFazgIjKJ6k0w7lFKaf/Ab01MpkaLCcP+x4gcR
	 nKJXv8tPWbKdu/GNjxiI0929pIF4lErNAD37z13M1PdTIfuzob1j9v2kqgtL+Bnc/l
	 mmqjz4OrK3YE7LK6cmDmmDDKEy5dTA2XfpvG8KB/7aSr8teTo+ZkyMmnf+j5cYuT6i
	 WkhwiAITsTGCA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/11] ASoC: qcom: Add QAIF shared data structures
 and variant interface
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701105757.2779738-4-harendra.gautam@oss.qualcomm.com>
References: <20260701105757.2779738-1-harendra.gautam@oss.qualcomm.com>
 <20260701105757.2779738-4-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:26:46 +0000
Message-Id: <20260701112647.0D0331F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318407-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC31E6ECD02

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to define QAIF-private MI2S port IDs f=
or the senary and septenary interfaces, but they are completely missing fro=
m the code.
--

commit 8d9f33afe0d4dfdd253d758e8763fc39a3c80578
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>

ASoC: qcom: Add QAIF shared data structures and variant interface

Add shared data structures, register field definitions, and variant
descriptors for the Qualcomm Audio Interface (QAIF). This introduces
the common headers needed by the CPU DAI and PCM platform drivers
for DMA channel allocation and interrupt handling.

> Also define the QAIF-private MI2S port IDs used for the senary and
> septenary interfaces.

[Severity: Medium]
Is this description accurate? Looking at the code added in qaif.h, it does
not appear to include any definitions for QAIF-private MI2S port IDs for
the senary and septenary interfaces.=20

Did these definitions get left out of this patch, or should the commit
message be updated to reflect the current code?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105757.2779=
738-1-harendra.gautam@oss.qualcomm.com?part=3D3

