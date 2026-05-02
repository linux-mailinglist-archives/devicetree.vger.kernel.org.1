Return-Path: <devicetree+bounces-292284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKF5C07g9WmxQAIAu9opvQ
	(envelope-from <devicetree+bounces-292284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 02 May 2026 13:30:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B29504B1CB1
	for <lists+devicetree@lfdr.de>; Sat, 02 May 2026 13:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E94A93000FDF
	for <lists+devicetree@lfdr.de>; Sat,  2 May 2026 11:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73BF33A715;
	Sat,  2 May 2026 11:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUGR2les"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844EE317150;
	Sat,  2 May 2026 11:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777721419; cv=none; b=P+RXwQdAElsICT1Psxv9gEM1TWgD7eCT5WEtGbOhUPv1YCKMgo9tPu8GPaCKTdo30lVNLKWtiA9yc3c/llaQ86RXJLtgu8f188MuwmumedbmAxj9Bt0qwENblBNQrXU+pirSYZz9fr5zT5wzpvx5EYWWwf2BOcCJiyxFYjIAJT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777721419; c=relaxed/simple;
	bh=FuvlxJJgJU3HdpPk57g46YhaAC/85mYDwWNFIKy5F7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HkiQdv707REIBy8NM04pnSEeYIR4V0dhYjloX6PWsmbAy/2Cg2dMPuD1vPlPZjhFm9tG5MjZaiYJCtuSF5Vaz+8DhNOsMrqH1z9YVycDRCMAqFiUiAR9vvVOzML58OZ3plmqFQvNjKzHqpGiTX/Cdx0DTq4oqeo+4jXyt7YY/z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUGR2les; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E2C6C19425;
	Sat,  2 May 2026 11:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777721419;
	bh=FuvlxJJgJU3HdpPk57g46YhaAC/85mYDwWNFIKy5F7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUGR2lesn63umu/ojR8XZG+857Gvr10/s13Cl04FKJ5bcaWBh6W+ZolHqtQVFB5nu
	 SDZSAKPubza1VS04orBQ9G0k1U5WHAbDfDfuFl/ZkLClXKNGqU0F7eFlsqNtANk4Cs
	 i3mf+ng01MGa4zVxZVNCcAPiQ817moQwpo4rpI78bcqXm92+a7JMZhRVNfOCDlHc55
	 /ejQVtBUCTJuiQwkpQsZ9ujVDoFoIg/XeoXieGjJbeurn23ZVgROP/s5niNY6dlvkp
	 U8MtbrqUg1fW+DCHzdq/zM1SO6A8X1AbhhkKzhzWB7T+nJ6vOBjZpeIsMNTudK2yuG
	 eN1Ds6aEkL0BA==
Date: Sat, 2 May 2026 11:30:16 +0000
From: Yixun Lan <dlan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>, linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] clk: spacemit: k3: Add PCIe DBI clock
Message-ID: <20260502113016-GKA3266396@kernel.org>
References: <20260430-06-pci-clk-fix-v1-0-32fdc77c02ab@kernel.org>
 <20260430-06-pci-clk-fix-v1-2-32fdc77c02ab@kernel.org>
 <35a1764d-7328-45d2-8240-6f83eae1f1a9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <35a1764d-7328-45d2-8240-6f83eae1f1a9@oss.qualcomm.com>
X-Rspamd-Queue-Id: B29504B1CB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292284-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

Hi Krzysztof,

On 11:28 Fri 01 May     , Krzysztof Kozlowski wrote:
> On 30/04/2026 12:30, Yixun Lan wrote:
> > Add PCIe DBI (Data Bus Interface) clock which was missing.
> > 
> > Fixes: e371a77255b8 ("clk: spacemit: k3: add the clock tree")
> 
> Describe what the bug is in your commit msg.
Since we've not yet activated the PCIe driver, so this shouldn't cause any
real bug, and as Conor already point out - this is kind of abusing Fixes tag,
so I will drop it in next version.

FYI, for problem I see while testing PCIe driver, 
- DBI clock is required in DTS, so it will trigger a check warning
- the DBI clock will be in undetermined state

-- 
Yixun Lan (dlan)

