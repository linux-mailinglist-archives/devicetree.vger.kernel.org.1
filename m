Return-Path: <devicetree+bounces-304207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODZoC5NoGWpMwQgAu9opvQ
	(envelope-from <devicetree+bounces-304207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:21:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C6E600B42
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A2ADE31127E0
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC64A33987F;
	Fri, 29 May 2026 10:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7vSOz72"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A908231827
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 10:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780049748; cv=none; b=fgCEb6pksUc3sSWvOVP9ikqGRBZUYWuKgzYlvi94oTiD/7pfA5XKxOdqaqL264v9VBVz0Ls5nUl9GLYIIdDgKLUWpUbOfbfneN7k84fLRagiit++7FeA2CcrJZ1rtjoNpkSbA3AFWQyFHfKf798AyTsfrbe9bRJ1xmUyKh9G1c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780049748; c=relaxed/simple;
	bh=Vz7Vsg53qSrYbX9aoq0FE7LBFRDofowjQGPv5VDPqWc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eg07hkBlTv/FHRS2TLuB+z9oLYnnZgo66M1n3m1rl79WQ+SdrSsiGAYmRAyYcUn01MWKFatjyzjSe9BaJkdKj4fQC1tmHF8HG2/AzP1mmsyF7bDBL9J39V+EffQjRv++RtauVw/oKChZYRrhL22t904EBV2zTP1hHfqaAmEfxWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7vSOz72; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E976B1F00893;
	Fri, 29 May 2026 10:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780049746;
	bh=Vz7Vsg53qSrYbX9aoq0FE7LBFRDofowjQGPv5VDPqWc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I7vSOz72EBi+y3NJKT5ggoCwhl8B85Fli6p/7s1u7boMlczDSYqYtcM2VZgjwy+JI
	 St0VQbf0VkLkvu2uIIOtrDaBZAlMixE+LsZ2Mb2aHoHzSYZAQiu00Yltc9FQSs3jcp
	 6ODzoVOHc2QEq+1rN+j79v/eGqRla/wvuW7Im4G3jo/zo/tUf76fe0B6jfiFQEk+yC
	 QZePxAflqQIF/stUSHQYaX1eCX+6FsO9h5s9XyiUtZmtqT64QqCxL1wYJKjQXE/D08
	 IfRgANxwXVL8klXYonG3FAD1tjKnnKJBjuhg45YEuhFA/K3LAREtOoHe/bFOY/bCE/
	 QmFu6GzgZlGbw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/1] arm64: dts: mediatek: mt8186: change CCI OPP
 scaling mapping
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mark Tseng" <chun-jen.tseng@mediatek.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260529100514.52082-2-chun-jen.tseng@mediatek.com>
References: <20260529100514.52082-2-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 10:15:45 +0000
Message-Id: <20260529101545.E976B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304207-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mediatek.com:email]
X-Rspamd-Queue-Id: A0C6E600B42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Logic inversion in commit message due to a grammatical error.
--

commit fce735e343be0e6db7c638f33d66995b238098d4
Author: Mark Tseng <chun-jen.tseng@mediatek.com>

arm64: dts: mediatek: mt8186: change CCI OPP scaling mapping

This commit updates the CCI OPP table frequencies for the MT8186, raising t=
he=20
minimum frequency from 500MHz to 800MHz to prevent the system from stalling.

> The original CCI OPP table minimum frequency 500Mhz is too low to cause
> system stall, So it need update to new version, 1.4G ~ 0.8G.

[Severity: Low]
This isn't a bug, but the phrase "too low to cause system stall" literally
reads as though the frequency is not high enough to cause a stall.

Would it be clearer to write something like "too low, causing a system stal=
l"
or "so low that it causes a system stall" to avoid inverting the intended
meaning?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529100514.5208=
2-2-chun-jen.tseng@mediatek.com?part=3D1

