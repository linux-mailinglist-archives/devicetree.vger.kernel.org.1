Return-Path: <devicetree+bounces-284724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMbSA+YM0mmeSwcAu9opvQ
	(envelope-from <devicetree+bounces-284724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 09:19:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F17D39D93D
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 09:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE2FB3008D14
	for <lists+devicetree@lfdr.de>; Sun,  5 Apr 2026 07:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C505336886;
	Sun,  5 Apr 2026 07:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqx4mayq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B0FDF59;
	Sun,  5 Apr 2026 07:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775373539; cv=none; b=p5vk6pUKAUUokEt6/pT64NvtTM539T+/fT3JwtEihOlywZDEHvN6Tt+MuPMd7oGR330WzMaPK8ld7/KZYOGnUhzWgitmk3yYyoKuxOWP+GPKcWQ2FNlNj55gsyLaAj0f2cwcgxW3FUFM3SBw8l1NpKX4I/v8+SQrWvELanPioAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775373539; c=relaxed/simple;
	bh=sembIhwHWHesKkKOxQFV+/J4/sEb65hw4yDq+FpY858=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NYVqw++L9oTtFm04tDjloWW7vSZW8GDBoyskvJ5ucBRH27UrknvC7Hw07frBX07IKUX4ImU0jsAWgrca66dWbIpSNvupXWU7+nShi0o/96Xx0YQ6pq7J7aRv5G51pSRNxg4dUxdQf93d/UgM3sR59CYzhLo0tfigUdzKqHT76VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqx4mayq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3180EC116C6;
	Sun,  5 Apr 2026 07:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775373538;
	bh=sembIhwHWHesKkKOxQFV+/J4/sEb65hw4yDq+FpY858=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xqx4mayqvD26ucN9ZPO3b3m45iY0inJpy22eUCon49tpRExTBbbw9tO5nMTvzsq6u
	 v2DahNeqe7sVRh95pE99fAC5OXzqLX1YnZCNoPJhZ2p4IIKDKYcBp0SEKi4bFS6AsX
	 CgJaLlbL3kE5BDiOqMPg4D1AtnNIlkCiNq9zdSMPMiut4A929dnaJ5pvOVQOXOMm7G
	 TXchoeKzB9EHH6ij6gj5l9Prc1C/s/8iaHZY4wb8JTLfVN2K5hcVhCF/y4qvV0hHjI
	 Qo38DC+wBYcdO4JZIvi7F73VPPGA8NP3j2Dq6q28S/F0nAGa1M7joBBXOsCP+RLDfa
	 azCI8x7zpUALg==
Date: Sun, 5 Apr 2026 09:18:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Emil Renner Berthing <kernel@esmil.dk>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Alexey Charkov <alchark@gmail.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Keguang Zhang <keguang.zhang@gmail.com>, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Ley Foon Tan <leyfoon.tan@starfivetech.com>
Subject: Re: [PATCH v1 00/13] Add StarFive JHB100 syscon modules
Message-ID: <20260405-thick-independent-okapi-abc771@quoll>
References: <20260403054945.467700-1-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260403054945.467700-1-changhuang.liang@starfivetech.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-284724-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,pengutronix.de,esmil.dk,outlook.com,gmail.com,alpha.franken.de,vger.kernel.org,lists.infradead.org,starfivetech.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5F17D39D93D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 10:49:32PM -0700, Changhuang Liang wrote:
> StarFive JHB100 has many syscon modules, as listed below:
> - pcieep0_ecsr_syscon	(PCIe endpoint 0 externel syscon)
> - pcieep1_ecsr_syscon
> - host0_syscon		(Host0 syscon)
> - host1_syscon
> - husb0_syscon		(Host USB 0 syscon)
> - husb1_syscon
> - husbd0_syscon		(Host USB device 0 syscon)
> - husbd1_syscon
> - husbcmn_syscon	(Host USB common)
> - gpu0_syscon		(GPU0 syscon)
> - gpu1_syscon
> - b2h0_syscon		(BMC to Host0 syscon)
> - b2h1_syscon		(BMC to Host1 syscon)
> - h02b_syscon		(Host0 to BMC syscon)
> - h12b_syscon		(Host1 to BMC syscon)
> - vout_syscon		(Video output syscon)
> - pcierp_ecsr_syscon	(PCIe root port externel syscon)
> - pcierp_syscon		(PCIe root port syscon)
> - usb_syscon
> - npu_syscon
> - per0_syscon		(Peripheral 0 syscon)
> - per1_syscon
> - per2_syscon
> - per3_syscon
> - sys0_syscon		(System 0 syscon)
> - sys1_syscon
> - sys2_syscon
> - strap_syscon
> 
> Some syscon modules contain PLL, reset, and socinfo nodes
> This series will add these syscon modules, as well as the
> nodes under them.
> 
> -PATCH 1:	syscon binging
> -PATCH 2-7:	syscon PLL driver
> -PATCH 8-10:	syscon reset driver
> -PATCH 11-12:	syscon socinfo driver
> -PATCH 13:	syscon device tree
> 
> This series depends on the series:
> https://lore.kernel.org/all/20260402105523.447523-1-changhuang.liang@starfivetech.com/

So nothing is testable here and I am sure there are obvious build issues
(already spotted one).

I won't be reviewing it.

Best regards,
Krzysztof


