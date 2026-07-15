Return-Path: <devicetree+bounces-326922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uV7oM3Z1V2oYOgEAu9opvQ
	(envelope-from <devicetree+bounces-326922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:56:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 131AD75DD41
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:56:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Rtf7k/8J";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326922-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326922-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18247302BDCC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89311449ED6;
	Wed, 15 Jul 2026 11:52:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C7043A7FB;
	Wed, 15 Jul 2026 11:52:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116331; cv=none; b=dut8l5FELLJfzqwuyG+2z/TUlAOekTneUitrx4fqIEo9Dcg3Xr9kpw/XOORhK6nyhfE0cjb2095jkCut7C/v7j+3JLKnq+wAdELUUuZORkigYXxFue/lLrYIVYJ+fanwYT1C/2WgCCIUTG2r6pja5QT8zQ8HDF4PJpdtjdLT6z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116331; c=relaxed/simple;
	bh=VQyXwMC45NeBJFaVg2nEzOrwh8lZZy5KbQRrJR/P8/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tPOsQi9mWG1nPRqucnqQBf9aVFRAJS2ZqQDFnXI70cpUsGCQ1Dw1U5H3wPrDYjg7zWXJEhg0Pzav4tn1wRpVYJTCUcBUYrKPrpZWJDLMAaWqvT0pjCewGovgNM0uh3OrGgxXiBFoWfVxAgLvA6MlG63es2UVP2q0MnQkSOILKYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtf7k/8J; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7271F1F000E9;
	Wed, 15 Jul 2026 11:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784116330;
	bh=QFDdMoKX1RyN8bBSjTRWdd3gXuAAm8i7lQ495KTpXO0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Rtf7k/8J4bvntFdgQC37Z8dbnz/QGQIQC2JeJVTFZP6LtyDOv0EGNk6mSGRgkvml5
	 e9IGBhIDU3/H+aEkNFE/ZKlo0zI2nrYEwINq64H0hjDvePTWh0IYROUKoyk7mz8OLt
	 mJWICIYDqSeq3AYIERkwEga6hwK4F2Zj/0//oVAp1xyAPBwZ8BakFYlcjSH8AIuUip
	 SaY7UNCMfAC3EOz1arKsranb7dH/w9o6RmBsFWjEYwrnGzzXmwLEs7Id5LzhXS6Qdm
	 o/k3mPFC4XPNW5L7rYcl0YCSlE7aCCt1Be1kw5MLYDcNX5AtB7EwOQ8mRuCf7cnBPN
	 2Dtyxfg75f53Q==
Date: Wed, 15 Jul 2026 11:52:06 +0000
From: Yixun Lan <dlan@kernel.org>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Guodong Xu <guodong@riscstar.com>, Yangyu Chen <cyy@cyyself.name>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: Re: [PATCH v3 0/3] spacemit: k1: Add support for Banana Pi BPI-CM6
 IO board
Message-ID: <20260715115206-GKF106000@kernel.org>
References: <20260712-bpi-cm6-v3-0-8d1e2045179d@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260712-bpi-cm6-v3-0-8d1e2045179d@pigmoral.tech>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326922-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:junhui.liu@pigmoral.tech,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:guodong@riscstar.com,m:cyy@cyyself.name,m:wangruikang@iscas.ac.cn,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:conor.dooley@microchip.com,m:michael.opdenacker@rootcommit.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,pigmoral.tech:email,banana-pi.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 131AD75DD41

Hi Junhui,

On 12:00 Sun 12 Jul     , Junhui Liu wrote:
> This adds initial support for the Banana Pi BPI-CM6 IO board. The
> BPI-CM6 is an industrial-grade RISC-V compute module powered by the
> SpacemiT K1 SoC, featuring board-to-board connectors similar to the
> Raspberry Pi CM4 form factor. For evaluation and development, the module
> is paired with a companion IO carrier board.
> 
> During the board bring-up, GPIO45 and GPIO46 were found to be used by
> the BPI-CM6 hardware as Ethernet PHY reset GPIOs, while the common K1
> GMAC pinctrl groups currently mux them as optional GMAC reference clock
> pins. Since the reference clock pins are not required on all K1 boards,
> the second patch separates them into independent pinctrl groups so board
> DTS files can select them only when the signal is actually wired.
> 
> Link: https://docs.banana-pi.org/en/BPI-CM6/BananaPi_BPI-CM6
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>

For the series, looks good to me

Reviewed-by: Yixun Lan <dlan@kernel.org>

> ---
> Changes in v3:
> - Remove uncontrolled always-on intermediate fixed regulators to
>   reduce device tree bloat
> - Rebase to v7.2-rc1
> - Link to v2: https://lore.kernel.org/r/20260528-bpi-cm6-v2-0-d0eb3f236cea@pigmoral.tech
> 

-- 
Yixun Lan (dlan)

