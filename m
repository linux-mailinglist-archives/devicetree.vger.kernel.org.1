Return-Path: <devicetree+bounces-269591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCExGLH/omkJ8wQAu9opvQ
	(envelope-from <devicetree+bounces-269591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:46:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 594F01C3A0B
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:46:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 861633110C02
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11FE0334683;
	Sat, 28 Feb 2026 14:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6Vkf1du"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E345230F93C;
	Sat, 28 Feb 2026 14:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772289854; cv=none; b=gYMDWeuVHjvnBaDagd4IJywGgXxtVPRnRn+27YZL39MAIt78tBfua6jOFQ1paT7ysDSsgC2iK5qcjhjHaw0r7yifCnr6jXNZVBKnJEIJcXGuaM03xWeY0pRc1G/kq/rI3kW0rFVaNwavYvLHT1r5HnyWV/vMA89LneoYzOKD94Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772289854; c=relaxed/simple;
	bh=8uBL+lM1E6r1mevBWfyFVMB3IGUpvr/djhVuaXmKqhc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=m7ZVpDB1QbE4JMqDS+MdGZHC+KLfv/4w3VeiWbYazBh5z6X2VJMd44fYfoxpF82FAduuAiNOCs2l5cpFF5d24yPbwuUtopGoy/Z6bv3j7Ov0Betsi+SK86LoN5nzAkU1q9c93CIgsbYe+PnDTyNoz0w3f46dz1LJoQg8AdLg46A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6Vkf1du; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 682B2C2BC87;
	Sat, 28 Feb 2026 14:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772289853;
	bh=8uBL+lM1E6r1mevBWfyFVMB3IGUpvr/djhVuaXmKqhc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=I6Vkf1du4xFWzgVNJFeMdki+NgnDQO3zCAagEE+lfQSxyCfK2iMEWPQmN5s1g9y/O
	 9Ak2srQ+Cn4n+YSfya//t3dBNG7mbBRwavZDRTGYXeFZ9ZoAgnVyyo32qSvkGZ8mc+
	 R7RhnVjJkHOGyRwH6kykbtkWSAjabGfbuoH5Sj3miqthZvr/SaeYIH49nod7gQmkAw
	 xgMeCDTnHqErF4Kb4bsibeEMFmSc7gAzYcUYVh+E9ddB8yd5dRiQUqS7rS9sbBXZBA
	 04gooO4UPBFz5Cm2QhtniFC8K3xwUkxi5vkSXdPF9ySEqDIr9y/oNceIl83dnLxGbA
	 qyreKpnpOPtBQ==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
 conor+dt@kernel.org, sunyeal.hong@samsung.com, shin.son@samsung.com, 
 Raghav Sharma <raghav.s@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, chandan.vn@samsung.com, 
 dev.tailor@samsung.com, karthik.sun@samsung.com
In-Reply-To: <20260202103555.2089376-4-raghav.s@samsung.com>
References: <20260202103555.2089376-1-raghav.s@samsung.com>
 <CGME20260202102001epcas5p4ebe15ce1cec50c6ca024464ffdbe9d79@epcas5p4.samsung.com>
 <20260202103555.2089376-4-raghav.s@samsung.com>
Subject: Re: (subset) [PATCH 3/3] arm64: dts: exynosautov920: add CMU_G3D
 clock DT nodes
Message-Id: <177228985014.54920.4826846692131993586.b4-ty@kernel.org>
Date: Sat, 28 Feb 2026 15:44:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269591-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 594F01C3A0B
X-Rspamd-Action: no action


On Mon, 02 Feb 2026 16:05:55 +0530, Raghav Sharma wrote:
> Add required dt node for cmu_g3d block, which provides
> clocks for G3D IP
> 
> 

Applied, thanks!

[3/3] arm64: dts: exynosautov920: add CMU_G3D clock DT nodes
      https://git.kernel.org/krzk/linux/c/a94b4c84ae9294e4f2e398c61d94bedd56162785

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


