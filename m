Return-Path: <devicetree+bounces-323936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KFuyJKfXT2pApAIAu9opvQ
	(envelope-from <devicetree+bounces-323936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:17:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD6C733C73
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:17:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bEoxlODj;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323936-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323936-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F0083008228
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A75939EB47;
	Thu,  9 Jul 2026 17:12:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3999639AD2A
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 17:12:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783617169; cv=none; b=FnVAw9r/+otmTP3Ow7Sp+F/dyVlLCqMGA376ckc4pm0fu0YAiTJPttTl6p0HVuiUpZK58PagUHVXKnb12t84kw7jJ6EfOm/mGw1beoXvENex1+fjM9kMka0xC1/oR2+MLhCAtemFkzzRmHLCwmLo4HSXWw+ny7b6NS3fm3h0AwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783617169; c=relaxed/simple;
	bh=ZaXa0oqaA2U2QuXRQne+zYEzNNHILwDIdfhrOVJ2NHo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Y8g+LFu7pKM7pfPxzTMXmL5iR7Ns95gp/oe58qMVLY8nVV2BwrEXdcUhXm3Uw7hC4jgoEGHov1dLwIaKmXceH0Zc2R+sVtRgKQLHsHkpR7teGnNNKEbbbuZmoUAV0E0cTR5sL2Y1RqcV2P19/4Sk7UggnyOdRPXiqe2EbQxthUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEoxlODj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0777C1F00A3A;
	Thu,  9 Jul 2026 17:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783617168;
	bh=6TPisLf7orFWJzUNtS+fZgDVJkp/e+VEBtzUrtF1fpQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bEoxlODjEzJrKqcvmt5hARSMIp6Uee82XI7bnOj/WWJ5N+M4FGw90g9U8RiBA9lUY
	 rYy8Z0FYQ4kmgJZa70zgs86GlFlC+Ft1Ew4PNamKk086pb22JdTIq/Z5qJ+eokwxxy
	 sL+1LQ5c0iMJSQqOkSnj8Q7Y8jAv4zTj7QzYmturyg2beIG/fLKtsWSZgQTm+dRXAJ
	 V9HulBoxL/+cQyy7TJ2E8b7fHQLRas7KolUnpJK3BYTsJ2CLq6HEXqtxXpURGWG6+D
	 JN61Px4/nzdNWp84J3ZcdgEkv3jdKq+biaVdCP2dobyNsPZk8IxHyvPtVd1iAiU7+r
	 DkrVAO6Spfqmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 02/15] Documentation: networking: Add
 timestamp related APIs to OA TC6 framework
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal" <Selvamani.Rajagopal@onsemi.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-s2500-mac-phy-support-v7-2-478c877aa1a9@onsemi.com>
References: <20260708-s2500-mac-phy-support-v7-0-478c877aa1a9@onsemi.com>
 <20260708-s2500-mac-phy-support-v7-2-478c877aa1a9@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 17:12:46 +0000
Message-Id: <20260709171247.0777C1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323936-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:Selvamani.Rajagopal@onsemi.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBD6C733C73

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The commit documents new hardware timestamp and MMS-related APIs=
, but completely fails to implement them in the codebase.
- [Low] Grammatical error in API documentation.
--

--- Patch [2]: [PATCH net-next v7 02/15] Documentation: networking: Add tim=
estamp related APIs to OA TC6 framework ---
commit e50e16165cde4f4360bc2cdd6d9ceb4359237603
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

Documentation: networking: Add timestamp related APIs to OA TC6 framework

This commit updates the OA TC6 framework documentation to include new hardw=
are
timestamp and MMS-related APIs. It details functions for PTP clock=20
registration, ioctl interfaces, and read/write register operations.

> diff --git a/Documentation/networking/oa-tc6-framework.rst b/Documentatio=
n/networking/oa-tc6-framework.rst
> index fe2aabde923a5..325d299d1a7dc 100644
> --- a/Documentation/networking/oa-tc6-framework.rst
> +++ b/Documentation/networking/oa-tc6-framework.rst
[ ... ]
> @@ -495,3 +499,79 @@ the MAC-PHY.
>  Zero align receive frame feature can be enabled to align all receive eth=
ernet
>  frames data to start at the beginning of any receive data chunk payload =
with a
>  start word offset (SWO) of zero.
> +
> +.. c:function:: int oa_tc6_ptp_register(struct oa_tc6 *tc6, \
> +                                        struct ptp_clock_info *info);

[Severity: Medium]
The commit message mentions adding new APIs and expanding read/write APIs, =
and
the documentation lists functions like oa_tc6_ptp_register() and
oa_tc6_read_register_mms(). Are these functions actually implemented in the
codebase?

It appears only the documentation was updated, but the corresponding code
implementation is missing from this patch.

> +
> +Registers the PTP hardware clock related functions with the kernel.
> +This API simply registers. Initialization of the fields in the
> +ptp_clock_info structure are left to the vendor as programming hardware
> +timer is expected to be vendor dependent. The fields max_adj, owner,
> +and all the functions for the clock operations, like adjfine, gettimex64,
> +settime64, adjtime are expected to be initialized in the structure before
> +calling the registering the hardware clock.

[Severity: Low]
This isn't a bug, but there's a grammatical error here. Should the phrasing
"calling the registering the hardware clock" be rewritten as "before
registering the hardware clock" or similar?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-s2500-mac-=
phy-support-v7-0-478c877aa1a9@onsemi.com?part=3D2

