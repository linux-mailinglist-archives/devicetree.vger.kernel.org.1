Return-Path: <devicetree+bounces-290632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ItEFnCC72nmBwEAu9opvQ
	(envelope-from <devicetree+bounces-290632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 17:36:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C784754DD
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 17:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81CA93029AE8
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 15:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E0A3358BE;
	Mon, 27 Apr 2026 15:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAM/1+A4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B592C322C73;
	Mon, 27 Apr 2026 15:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777303728; cv=none; b=HiVHACS1FjPcb2kKtqDCF+Wd1bxQfuKfZ9tXrZxg3lLOMs/h1wTSv9RaOU7Ux01JdJBMxivqCvII6XJ95dUk1wBLgX69p64wO+QwZGewv8Y1AOkivJEmKMgdwnSGSAfp505nxUAm9mG9XGWZpg8prckneqsNXFp27RPTjTCg5cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777303728; c=relaxed/simple;
	bh=S7DErCvcDgU3Py7arDgFr4qgCbyyAMW6Q9f787JepIA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pQutOOT+dmLdNb+A67J+WtCPRL+dPKlSISh35mkYQ62nvN+NIggofM0cLvBYUtoNQ4emQrcI6lFVDhEnfZBTD7JuX2lx6+TaBTGN7AIO2dGmCVKBbF70/7ylzNmO/4ECpMB7qEIAlrteBE5lga7rZItp7cosV6kdU/pHOwx2pd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAM/1+A4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90CACC2BCB4;
	Mon, 27 Apr 2026 15:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777303728;
	bh=S7DErCvcDgU3Py7arDgFr4qgCbyyAMW6Q9f787JepIA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kAM/1+A4OaCXK71DHHmcizGEwp0yUfLv6HksjEL25/MiP8Tw/PlJY26PIf0KXPUvs
	 2Ey438DhAr8cDc4mHuQriK0+4r7MPLskgMMp69f9E5zeq96CT3HyGvJ59MdsHTWzD1
	 ekDqPck94/ma2pZlqMTiIMoMfAVZyBTSbtOZiw2wfqGkFAn8zjRIxjzklD+op1YhhX
	 r6hcUQERgiaqg33f/nokLIaTtsJ/qK5BSCWoOUGdNdyOkggQSQ7tk+9yVXAaU4YbhC
	 pp5ECCQTt/w4mO5t3FLibASfBn/lAZMMv9Ii4mpD/uxEIBJ9TYDQENaHkJ5wpUgZTG
	 Nciad1eBWRjpA==
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260324164357.1607247-1-wens@kernel.org>
References: <20260324164357.1607247-1-wens@kernel.org>
Subject: Re: (subset) [PATCH 0/7] soc: sunxi: sram: Add H616 SRAM support
Message-Id: <177730372628.346868.12505267805077002543.b4-ty@kernel.org>
Date: Mon, 27 Apr 2026 23:28:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: B1C784754DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290632-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Wed, 25 Mar 2026 00:43:48 +0800, Chen-Yu Tsai wrote:
> The Allwinner H616 has two switchable peripheral SRAM regions:
> 
> - The VE SRAM is a 2 MB dedicated SRAM for the Video Engine. CPU access
>   to this region is enabled by default. CPU access can be disabled,
>   after which reads will show the same stale value for all addresses,
>   while writes are ignored.
> 
> [...]

Applied to sunxi/drivers-for-7.2 in local tree, thanks!

[1/7] dt-bindings: sram: Document Allwinner H616 VE SRAM
      commit: 5b7f39687b173f042cb9530bcee5f5805020bffd
[2/7] dt-bindings: sram: sunxi-sram: Add H616 SRAM regions
      commit: 775c75e4ae2b0277b5e55644f9890afef4dedee9
[3/7] soc: sunxi: sram: Const-ify sunxi_sram_func data and references
      commit: 7765752f528b5b516d8cdf94faaabcba935dff41
[4/7] soc: sunxi: sram: Allow SRAM to be claimed multiple times
      commit: 67890da74dd1b85a47769561bfc6e0c542762d45
[5/7] soc: sunxi: sram: Support claiming multiple regions per device
      commit: be99eb936b4ffffbf87d34c4a202e15c05b30417
[6/7] soc: sunxi: sram: Add H616 SRAM regions
      commit: b708294322745ce30035d960a1118b4b8d857120

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


