Return-Path: <devicetree+bounces-271800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFPnFkI3qmnUNQEAu9opvQ
	(envelope-from <devicetree+bounces-271800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:09:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B452C21A7A6
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5331C303FA93
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 02:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5BE32E6BD;
	Fri,  6 Mar 2026 02:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="Uy3ZW8Ej"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2717E0E4
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 02:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772762902; cv=none; b=FmRypYvjOcjWaEgpSaAG73DeUEWre4r6OBIWkgBqvab1Nw9Hd7UkkUGwGBR1oFapCkTtoQkHxwyOVQOZg5Y2TsQbqrhgl4V/ZcNHIwhtXNpz1KRD5hdbdc2QzC+FWK2RvlUxWtcLj/CRZcZUF1QevxUkq3m4R+73sq9ItpVKAlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772762902; c=relaxed/simple;
	bh=tczAGiLTNTlVkAfIKqbcrO1sCTnpBRXtkEo0FQkD38A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=g3HDT5ZHpDabyT+WkDQcE0zgMYMl27IsBvneydx+ThtQd3lItfULmwyFUA6z31TsIx9T1G0HE5uDRR7Ih/8zZiHJrLJeMl3sC2KAlLOeDlySC5oXuiBeVvcC8CjZ23MXqRggDleqnyk6jrQV0JYjbehYvygQkna2fmk+A5e52dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=Uy3ZW8Ej; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260306020114epoutp0366b12d96f2d9b81c9b92f2e4bd8ffc20~aHhP-WUsa1303113031epoutp03d
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 02:01:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260306020114epoutp0366b12d96f2d9b81c9b92f2e4bd8ffc20~aHhP-WUsa1303113031epoutp03d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772762474;
	bh=NWgQzFAZ28BnLYaVoO5JZ4Bx3J4LTL+fK+YOPVejmnc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uy3ZW8EjXifLibGzcgt1AF0jjDhvQB1HCXnFGlUMj5uJjKw7AGi+ysDX6X0QI69sP
	 j1cl8AgqS5Sh8/U/3BwbS84d826vGuFFCvXP/cR5NvrzsAdFh+vXe72yz1nFdkErU1
	 IWenD6ahqFLkmTAKS3qv2m9+Flz8LiAVG9oJ91KU=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260306020113epcas5p12aa5e30ac8c1a4faae2c1b332cba14c7~aHhPc_Xvp1914119141epcas5p1E;
	Fri,  6 Mar 2026 02:01:13 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.41.42]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4fRqQ16nGyz2SSL5; Fri,  6 Mar
	2026 02:01:13 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20260306020113epcas5p1a94d06c1ae38ada4be86abb940996eb8~aHhPOUhfY1914119141epcas5p1D;
	Fri,  6 Mar 2026 02:01:13 +0000 (GMT)
Received: from hzsscr.. (unknown [109.120.22.104]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20260306020112epsmtip21b68d36c0be880fe0a561e85e01af3fc~aHhOcjwdH1287412874epsmtip2H;
	Fri,  6 Mar 2026 02:01:12 +0000 (GMT)
From: "ping.gao" <ping.gao@samsung.com>
To: krzk@kernel.org
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, hy50.seo@samsung.com,
	jh80.chung@samsung.com, krzk+dt@kernel.org, kwangwon.min@samsung.com,
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
	ping.gao@samsung.com, robh@kernel.org, shawn.lin@rock-chips.com,
	ulf.hansson@linaro.org, kwmad.kim@samsung.com
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: synopsys-dw-mshc: relax clocks
 constraint
Date: Fri,  6 Mar 2026 10:05:56 +0800
Message-ID: <20260306020557.3809453-1-ping.gao@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260228-pygmy-cricket-of-chemistry-54a9ea@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260306020113epcas5p1a94d06c1ae38ada4be86abb940996eb8
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
X-CMS-RootMailID: 20260306020113epcas5p1a94d06c1ae38ada4be86abb940996eb8
References: <20260228-pygmy-cricket-of-chemistry-54a9ea@quoll>
	<CGME20260306020113epcas5p1a94d06c1ae38ada4be86abb940996eb8@epcas5p1.samsung.com>
X-Rspamd-Queue-Id: B452C21A7A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271800-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,samsung.com:dkim,samsung.com:email,samsung.com:mid];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ping.gao@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 10:44:03AM +0100, Krzysztof Kozlowski wrote:
> On 28/02/2026 07:24, ping.gao wrote:
> > From: Ping Gao <ping.gao@samsung.com>
> > 
> > In some SoC designs (e.g., certain Samsung Exynos platforms), the Bus
> > Interface Unit (BIU) and Card Interface Unit (CIU) clocks are tied
> 
> Again, no.
> 
> Read and respond to previous feedback. It's like third version where you
> did not do it...
> 
> Samsung Exynos platforms have all two clocks. Look at the sources.

Hi Krzysztof,

I apologise for repeatedly submitting patches that did not address your feedback on the
Exynos clock architecture. My earlier patches assumed that some Exynos platforms
use a single clock, while, as you correctly pointed out, all Exynos SoCs expose both a
BIU (Bus Interface Unit) and a CIU (Card Interface Unit) clock.

I regret the oversight and the extra time it has taken you to point this out several
times. 

I appreciate your patience and the guidance you have provided. 

Thank you for your time and understanding.

Best regards,
Ping Gao

