Return-Path: <devicetree+bounces-310078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qfRuFPw8KmohlAMAu9opvQ
	(envelope-from <devicetree+bounces-310078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:43:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D59E66E440
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:43:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=codeconstruct.com.au header.s=2022a header.b=b8MYOE3Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310078-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310078-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=codeconstruct.com.au;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C45D630F0612
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 04:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39F1349CF6;
	Thu, 11 Jun 2026 04:41:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E3D331EBB;
	Thu, 11 Jun 2026 04:41:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781152898; cv=none; b=nsqIUmHSAObcXzTqnvHJjK1yz5I3cguKeULgm2gvnQxC9TpwGRJCEABMyarEls1S63hkwihKz21wRRu8v+8py+E41OYePMk6HVLphEQw5iY5cS9+RCxR5raGvmYhqyZd2/CaO+WSUFcyUFa79PsvJ2AnZNdbOZgUX6p9dIUd8Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781152898; c=relaxed/simple;
	bh=O5UL50dL2j3gIRJdcn1CXWPigbewWppsf4WHWE0i3FQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p5wCe0AbmjjMX7kieQLunJzHByk4HiKW/UK1emtKMhR6uIeQhN2DCp9wry15l5qW75pfF1Xvz3P6KkB8nOTgUaqeNO4ZQeK6e8+IasnW2l7XM/rG9y96FQluuHy/Z2nC1M4ix8dX/UBNfM7PEuFK4TmKYv7e6qgwt3ZVIezBGsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=b8MYOE3Z; arc=none smtp.client-ip=203.29.241.158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1781152894;
	bh=eiWLnSSU4F3awHVV3u2QFSYxQvFnUPM+p2QcVcY5/5c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=b8MYOE3ZN+SFjNp6KT/5fHfj4AojvYFBsSCBKVSlU6Uc1Sr14LmGgTDs6AE+ZHiNi
	 NSEfp48voioC4dUce+kF2tyeXgaQ1cPhlNmR64/UkPcu0T/Y4FrMS6qbjBwrpiD4Dz
	 ynKRVzVUcCWah7kDmj3teMHO7sO/NcUo0igkT7DVBFLxcPqohgGYImxxiuWrAaygwk
	 8redMbewx4PisQ6NRWwjXi6Qv7sCyLfppXuzc2FiFMH7yX4wk69gohZdmYUQWS+Rl9
	 AUkjdRHzczNwej4SjcAHM9Dm0ON1j3AKhAh2wZMv1pCx4l2ob2JIKGJS5gJ2pyasBk
	 JDXPqYl0M0Luw==
Received: from [127.0.1.1] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 3B13C60A0C;
	Thu, 11 Jun 2026 12:41:34 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Tomer Maimon <tmaimon77@gmail.com>
Cc: openbmc@lists.ozlabs.org, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com, 
 yuenn@google.com, benjaminfair@google.com
In-Reply-To: <20260610121822.2524634-1-tmaimon77@gmail.com>
References: <20260610121822.2524634-1-tmaimon77@gmail.com>
Subject: Re: (subset) [PATCH v5 0/3] Nuvoton NPCM FIU DTS fixes and binding
 conversion
Message-Id: <178115289418.1513794.15361783177002818407.b4-ty@b4>
Date: Thu, 11 Jun 2026 14:11:34 +0930
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tmaimon77@gmail.com,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310078-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,codeconstruct.com.au:dkim,codeconstruct.com.au:email,codeconstruct.com.au:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D59E66E440

On Wed, 10 Jun 2026 15:18:19 +0300, Tomer Maimon wrote:
> This series fixes the in-tree NPCM7xx FIU controller nodes so their
> resources match what the DTS actually describes, and converts the legacy
> Nuvoton NPCM FIU binding to YAML DT schema.
> 
> Patch 1 drops the bogus "memory" entry from reg-names on the NPCM7xx FIU
> nodes.
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


