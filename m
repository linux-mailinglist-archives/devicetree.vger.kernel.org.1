Return-Path: <devicetree+bounces-307564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O20zHZxxI2oUuAEAu9opvQ
	(envelope-from <devicetree+bounces-307564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:02:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B983B64C123
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:02:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KpIMnnY3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307564-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307564-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64CAD302BE95
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 01:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2285C23A564;
	Sat,  6 Jun 2026 01:01:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166D022157B;
	Sat,  6 Jun 2026 01:01:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780707685; cv=none; b=FCgPAFORESljLcIVkGPA9TTDiQXk0iYJNAoGO5FpJjR858c3ifm8dJykCUnWNVEBGv767qKR239p0kvJwYbmv2TyEORCDv1de87r4oX8uULhtUEJNVKVPekcROG/JQjDQ+7hIFbSmdfHamkfqTe+x/kDu6Er9yKWGjwiORLwKXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780707685; c=relaxed/simple;
	bh=axisrcMlKNXae4n5ynJzdI9g+w7xmWFxiQ49t7gOoqQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZPzXZbNpiiiqplAvOtLCvBvaXHMeLfRs4BAdPSx0mGVKYfuWYfbYeTTqzMoUCT+Ji1BW6mkpws05qf8bhJsSK0LogHO9M8rFROB1tAyCHvDLkDd5KBbolvVJcEHSVuib5JRtUYMf1izlS4u/gsYQlxRa6caStjJLBsjGmhYDM7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpIMnnY3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07D01F0089A;
	Sat,  6 Jun 2026 01:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780707684;
	bh=ZaNVmPRZAoLAImGnhWU1P6cdf0SRoHr9ImqdiBE8VfI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KpIMnnY3z9W4KH7bU0UOtT50DT9j7O1oJcgpdctjTX9NvBeAuV/NqZHx58NAOvbyA
	 HOOVJmaPnxtEwAAeNx+2aXJagIqigiUJcNtRx7eMJaHUO+iZzplXxQ1x57Srl56MQV
	 OS9FQveEWTEOl5yy+3on/b3/OLootnF9Boqnuz88M5iWxOOrvS9g19UIGkbvhbOHu/
	 YlgxcuH9pTFSd3FZEo14xWpdlNvvKtLibA0JF/r8wygd0Kmsk2A+L1rk6tdv/Yk/Xi
	 Be2IVrr/H5iqEjzYq1z3R44/Gmnej7CEA/9cFtxKAOKtXRXB86q2UmkeveA+vpAL7E
	 RQC+4XdU6RfQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 03/14] net: pcs: pcs-xpcs-regmap: support
 XPCS memory-mapped MDIO bus via regmap
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alex Elder" <elder@riscstar.com>
Cc: robh@kernel.org, bpf@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605010022.968612-4-elder@riscstar.com>
References: <20260605010022.968612-4-elder@riscstar.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 01:01:23 +0000
Message-Id: <20260606010123.B07D01F0089A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,riscstar.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_FROM(0.00)[bounces-307564-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:elder@riscstar.com,m:robh@kernel.org,m:bpf@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B983B64C123

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing colon ':' after 'F' in the MAINTAINERS file entry.
--

commit 2d23c3db72012c33d05246dcd5eb68b21952d164
Author: Daniel Thompson <daniel@riscstar.com>

net: pcs: pcs-xpcs-regmap: support XPCS memory-mapped MDIO bus via regmap

This commit introduces helpers to allow drivers to register an XPCS using a
regmap for the memory-mapped MDIO bus. It addresses issues where the MDIO
bus is allocated to a register window that does not align to a page boundar=
y.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index eb8cdcc76324f..2aa6ea012c848 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -25931,8 +25931,10 @@ F:	drivers/net/ethernet/synopsys/
>  SYNOPSYS DESIGNWARE ETHERNET XPCS DRIVER
>  L:	netdev@vger.kernel.org
>  S:	Orphan
> +F:	drivers/net/pcs/pcs-xpcs-regmap.c
>  F:	drivers/net/pcs/pcs-xpcs.c
>  F:	drivers/net/pcs/pcs-xpcs.h
> +F	include/linux/pcs/pcs-xpcs-regmap.h

[Severity: Low]
This isn't a bug, but should this entry have a colon after the 'F'?

>  F:	include/linux/pcs/pcs-xpcs.h

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605010022.9686=
12-1-elder@riscstar.com?part=3D3

