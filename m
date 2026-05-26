Return-Path: <devicetree+bounces-302835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id r97sFxMmFWpcTAcAu9opvQ
	(envelope-from <devicetree+bounces-302835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 06:48:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D51555D0B28
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 06:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3ABAA300B18C
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 04:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C5235DA40;
	Tue, 26 May 2026 04:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJlgBL5h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46C72BD11;
	Tue, 26 May 2026 04:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779770892; cv=none; b=bMQH+VDRqj6iBAWClE87PEUCyYSBwAY0GVfj7UBRgL/q0LKkQoXWG7dQUjEUidbs9kzXfJW1OCS1ttDDvARVc+K/Vl0s1/zgrfjosaR3d4QS+xoJobKEDb5/b4bS0iRcgZkhaQR/zNhWDpMK8povXGgtGRT6yIQLKSgoTPunLto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779770892; c=relaxed/simple;
	bh=SUtNPWzFD5t+h1ecCR6QbYXITUB4wllnivqOM+s1Puk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sGzFOG7d1rjtH56WCjfazn6xVG6+chTEeap/9tBCWqNUUN8ezaqDhom5P92FllkXfVNuzLIoCJ3v++65j5PLTBBxLEkMke/t1oV136Umv0/X2q2Js4wN5Cmlag6up9i0qU1QPZI5EnOR4f6pKCG1mjblNPr77O0GJxR3dOv+iCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJlgBL5h; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1AD1F000E9;
	Tue, 26 May 2026 04:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779770891;
	bh=1NEJLKo37Ve3sSi9fF3jtlIXIxD3NOka5l+Y/9sfLuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bJlgBL5h65cDlNcBAsEY/xeIS06gMA9SwlZoxMRSu8gVxrybyP0EzPAqb8KBjPjbd
	 a5Yap1XMmiJMDUVQ/grIFNnJ0sJOssCvxgyBJZfJRUJp9wR/rN23C3gl1Oq4edj5zu
	 63WHEFDGYVLiNqoadrio4pIeou7aM6aTZqlt7vN4jx97gLO2p7wwbk2YHmtgRirOQX
	 LofIrER6ktjiU6lv0sTBxvryEQM2jySpSp9G687yQNrf10/qE3yOvyAdoC7WokT5LT
	 AI5NRYHhE1PCTKQySALfGfBe05IQWmZw0LHdZluXkfuOAokot+wYCWzjYvyTguShm2
	 Th6rpoJjQyxMg==
Date: Tue, 26 May 2026 04:48:08 +0000
From: Yixun Lan <dlan@kernel.org>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Paolo Abeni <pabeni@redhat.com>, Guodong Xu <guodong@riscstar.com>,
	Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] riscv: dts: spacemit: k1: Split gmac_clk_ref into
 independent pinctrl groups
Message-ID: <20260526044808-GKA3727415@kernel.org>
References: <20260522-bpi-cm6-v1-0-707ef1917a30@pigmoral.tech>
 <20260522-bpi-cm6-v1-2-707ef1917a30@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260522-bpi-cm6-v1-2-707ef1917a30@pigmoral.tech>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302835-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pigmoral.tech:email]
X-Rspamd-Queue-Id: D51555D0B28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Junhui,

On 18:01 Fri 22 May     , Junhui Liu wrote:
> The gmac_clk_ref signal is optional for the GMAC controller and is not
> strictly required for all hardware designs. In several already
> upstreamed K1 boards, this signal remains unconnected or the
> corresponding resistor is marked as NC.
> 
I've not checked all exist boards which already accepted by mainline,
but just ask, to be sure, none of them actually used clk ref pin?
otherwise we will result with a broken GMAC/Ethernet driver..

> Furthermore, the pins for gmac0_clk_ref (GPIO 45) and gmac1_clk_ref
> (GPIO 46) may be used as GPIOs for other functions even when the
> Ethernet controller is active. Splitting these into independent groups
> avoids pinmux conflicts and allows boards to use the reference clock
> signal only when it is actually needed.
> 

> Fixes: 60775f28cfb7 ("riscv: dts: spacemit: Add Ethernet support for K1")
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>

-- 
Yixun Lan (dlan)

