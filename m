Return-Path: <devicetree+bounces-269473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GkgLXdcomlw2QQAu9opvQ
	(envelope-from <devicetree+bounces-269473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 04:09:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1946B1C015B
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 04:09:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83672302AE15
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 03:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26DE32BFC60;
	Sat, 28 Feb 2026 03:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="oh2CS4+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01462BEFE7
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 03:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772248154; cv=none; b=h1SUAIAu+yV3d4yf1Iexb9B9GSBETDKU3MrVDehJsRmCaGBO09GYMLsZkFLTGdUBm/k5d0qU+xFwRtFX1cbMz2hVX142Ot9KFfI2L4ZRZBMrcQ+ilcAcX9fqaDQviqvLIortp9v8VktlbTOanLmnVqb68vsiVbWOfEO7YimQiMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772248154; c=relaxed/simple;
	bh=vF/M05bf2pJzD8Qmsp+h8o7tmLpGmketD+QQvZJn0BQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=tjJBtX19aD34JP9RBkMFkMN/jg6HrXovgIQK+jgkICip6pDOb7TIZVhTYouHea/Y27ds2xN1nM8Q50h8dPj2W2FcK+tkY7vAjUyMDcel4cxMUfJAI20YnfEuVaau2HxiX19JMtrweapMf1a1ukMRnNMVvXGJv4agqCdb/0qjg1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=oh2CS4+b; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260228030904epoutp0396dfa285e50c07dfcc6f6b2d20af8208~YSkxKPhdU1458714587epoutp03N
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 03:09:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260228030904epoutp0396dfa285e50c07dfcc6f6b2d20af8208~YSkxKPhdU1458714587epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772248144;
	bh=vF/M05bf2pJzD8Qmsp+h8o7tmLpGmketD+QQvZJn0BQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oh2CS4+bOC4keOEEPYbn7c77/v0tvNkDHWVyIZA50v+KZq8uQjcli5JdrZvFX7+hz
	 nwZPQFSDKa2k/m69CY4VPiEkIvY7/yDQ9Z+ATH6hnnJqS2iCRfeXvhf1GDn486SlC1
	 lLqND0HK6BQeADi67/W3XMB32VyfK27tpzynnHjo=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260228030904epcas5p1ddfdf408ba89d6a6eb4f5ec69e5c960e~YSkwaydj43111731117epcas5p1y;
	Sat, 28 Feb 2026 03:09:04 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.41.42]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4fN9C40T9xz6B9m4; Sat, 28 Feb
	2026 03:09:04 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20260228030903epcas5p10097b2037bdedbfbbd186ec64c9fa60d~YSkvaATG73111731117epcas5p1x;
	Sat, 28 Feb 2026 03:09:03 +0000 (GMT)
Received: from hzsscr.. (unknown [109.120.22.104]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260228030902epsmtip12312448e74d15f27dcef8a4d8ce4fe51~YSkunxU1L2552525525epsmtip1r;
	Sat, 28 Feb 2026 03:09:02 +0000 (GMT)
From: "ping.gao" <ping.gao@samsung.com>
To: krzk@kernel.org
Cc: shawn.lin@rock-chips.com, ulf.hansson@linaro.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, robh@kernel.org, jh80.chung@samsung.com,
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, hy50.seo@samsung.com, kwangwon.min@samsung.com,
	ping.gao@samsung.com
Subject: Re: [PATCH v3 3/3] dt-bindings: mmc: synopsys-dw-mshc: No need to
 enforce setting two clocks
Date: Sat, 28 Feb 2026 11:13:50 +0800
Message-ID: <20260228031350.3209721-1-ping.gao@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <CGME20260123085150epcas5p42f2cc04843ae7657380b2968261246cb@epcas5p4.samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260228030903epcas5p10097b2037bdedbfbbd186ec64c9fa60d
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
X-CMS-RootMailID: 20260123085150epcas5p42f2cc04843ae7657380b2968261246cb
References: <CGME20260123085150epcas5p42f2cc04843ae7657380b2968261246cb@epcas5p4.samsung.com>
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
	TAGGED_FROM(0.00)[bounces-269473-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ping.gao@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1946B1C015B
X-Rspamd-Action: no action

Hi Krzysztof,

My apologies for the messy threading and duplicate postings. I had a
misconfiguration in my mail client settings.

I will slow down, re-evaluate the hardware requirements, fix the YAML
schema synchronization, and send a clean v4 as a brand-new thread.

Best regards,
Ping Gao

