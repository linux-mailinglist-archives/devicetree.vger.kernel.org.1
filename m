Return-Path: <devicetree+bounces-321779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kFYvHKiwTGrIoAEAu9opvQ
	(envelope-from <devicetree+bounces-321779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:54:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 551EA718BA3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:54:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eCvNH+1p;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321779-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321779-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3524301964F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A00D4252D4;
	Tue,  7 Jul 2026 07:34:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCBF4252C2
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 07:34:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783409642; cv=none; b=YfNDc/Wevvg3eoY+cbEg3iYRa9S7EvR7ki120xR20nbfh3uahlP3NzoFv4CvqIqHbtPMCjNk0Eag4xghYePCJkFmwgfW+fH63aKTjg4+qLJE19EgFywPaILecX02jnP12pWff0VmYU0OfMF0/890+2HdHDhCb5BGrVcJR4n3KNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783409642; c=relaxed/simple;
	bh=OgZuBGxJrhsyOOFDGuNGAo7gJdmsKtZSRuERRNVrilg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=knqNFU/ekYaG0xbKCNqvaQpBsxFgkBrzIT+CzYZDNv2dRKytMB5A2QBPxtTANK8a7FuNjcDdy+RKoWwP+ht97OkFG2mKOVuLhCVoZH558fHG08Ctpn/q9OKNoWAEZmIprwSPQUdmJXhnZsvehF1JEwMUokM1Fc9vhbhG4BtTOcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCvNH+1p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A6A81F00A3E;
	Tue,  7 Jul 2026 07:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783409640;
	bh=sBplC0xGBMNyUkHBgIKBHnQYYBiuFmJlDcUS/P7b/zw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eCvNH+1ptxqS0v/34Rjf6o0R4yPC8oDSbIGWXcxG6gLXsUPD4chQBzX3uaK4z0PAu
	 Qa+A7rvvQcsR61f9rSMQpUGgvVKTuFTyeaBaa4hcUE/UDSpg3REqNKaOhlkJcJOjmY
	 uxaWmoH7juT6BH1t0iseaHFKrfaLnYxNisp/bFjBV8grD6Xq/VRZZsEDSgup3DeWZY
	 S6pEY2SXbfZLZrQ0pLJZO407emzvIj6dvWQfH8MAWVby0LuZVbR5RwhAU4ZxBvoCKr
	 tM+0+RvGRZ4ZBe5GgMAKyCcxsQte1v6Iru3w3SasR3L467+WCxQ3+Va4eDu8SkEGfm
	 vwTh9avHWm22w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: xilinx: Remove EDK/Ethernet references
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michal Simek" <michal.simek@amd.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <43b2cbe78468fdfaf849a44a7b68ecbae521e611.1783406609.git.michal.simek@amd.com>
References: <43b2cbe78468fdfaf849a44a7b68ecbae521e611.1783406609.git.michal.simek@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 07:34:00 +0000
Message-Id: <20260707073400.9A6A81F00A3E@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321779-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:michal.simek@amd.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 551EA718BA3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] An orphaned transitional sentence referring to a deleted section is=
 left at the beginning of the file.
--

--- Patch [1]: [PATCH] dt-bindings: xilinx: Remove EDK/Ethernet references =
---
commit 8e2d62721bc765ab6c15f7e5831230b0e1f9eb33
Author: Michal Simek <michal.simek@amd.com>

dt-bindings: xilinx: Remove EDK/Ethernet references

This commit removes outdated EDK toolchain descriptions and generic
Ethernet bindings from the Xilinx device tree documentation. The EDK
version 14.7 was the last release in 2013, making these descriptions
obsolete.

> diff --git a/Documentation/devicetree/bindings/xilinx.txt b/Documentation=
/devicetree/bindings/xilinx.txt
> index 0ee9de99b3aed..7e8ad67134b28 100644
> --- a/Documentation/devicetree/bindings/xilinx.txt
> +++ b/Documentation/devicetree/bindings/xilinx.txt
> @@ -1,91 +1,3 @@
> -   d) Xilinx IP cores
> -
[ ... ]
> -		xlnx,odd-parity =3D <0>;
> -		xlnx,use-parity =3D <0>;
> -	};
> -
>     That covers the general approach to binding xilinx IP cores into the
>     device tree.  The following are bindings for specific devices:

[Severity: Low]
Since the preceding "Xilinx IP cores" section was removed, does it make
sense to also remove this transitional sentence? Leaving it here makes it
the very first sentence in the document, which might be confusing for
readers since it refers to the deleted general approach.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/43b2cbe78468fdfaf84=
9a44a7b68ecbae521e611.1783406609.git.michal.simek@amd.com?part=3D1

