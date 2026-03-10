Return-Path: <devicetree+bounces-273621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BR9EQ5CsGlLhgIAu9opvQ
	(envelope-from <devicetree+bounces-273621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:08:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF249254541
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51B273125883
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359513BED31;
	Tue, 10 Mar 2026 16:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWp/papl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114023BED20;
	Tue, 10 Mar 2026 16:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773158689; cv=none; b=QuAmwgpmWuthVn2faNd2YeakHs84v3JB3zPjD0wVnueNo8cEuEofmXZq4zudo86IfRZSraVvh8UBODBHMeBQWmVdY/tE5bV2hE+lOkIyyKu28c4XT2sUshJcJyhvH0fhxfD5llXP9YQXpOrEsjZiqqjEwy4i/RDFjJXK2/RqNfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773158689; c=relaxed/simple;
	bh=599XQUj+u0HpLGnVBeL+8eF691wPvbQV+mEAtH2dpcw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FwNEXRTlNYlohfR2U1LE2VwSm4hvDb7b4V3xrkof2nkGazzGDsGxsFbKZ54ciPGoH/XpWI+WTcdv2IKFEs30CFiznswyqMzUZW8btRjZijJMPcAFDMqPgLKttGjHew1NLonNzspELK+aUYP2qKN9mu9elv4hK3Um2ZKrViOWd5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWp/papl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD2BFC19423;
	Tue, 10 Mar 2026 16:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773158688;
	bh=599XQUj+u0HpLGnVBeL+8eF691wPvbQV+mEAtH2dpcw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IWp/paplcXI+fO43fgIA/0YwOPbsNrc2e2RPNDN02NErSMHWxitNc5q1SmafqbW1P
	 go3kHt/ut2euvOZeMofHJ1UHlqSf1P0nw2BdACPabWlYYws67f0q6U20jXWvNNqDCa
	 7QXwFAFEWddJqUU5IvEhetZ6YeBlQhcDmcDm9y81J3F/fB1zrqL1s9/BRn2p6q7bOn
	 SBhhRNbDT+MQ/InMvqFp4LYNLhiG6b2TCYuJZMd2HuJCWW+7nOepCVkjLKtEFz6F+W
	 IfLn8zwIHdNHjZckfsbAGBOgnqMmEaaD4A6bQkRKW7dPBEVSIcOQrZullQS6eTYMJ3
	 cE0jMxJv5Ssgw==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
References: <20260305-dts-exynos-i2c-v1-0-2c8d3df3b9ca@oss.qualcomm.com>
Subject: Re: (subset) [PATCH 0/5] ARM: dts: exynos: Cleanup I2C
 address-cells and size-cells
Message-Id: <177315868659.219585.16811317225740215009.b4-ty@kernel.org>
Date: Tue, 10 Mar 2026 17:04:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: CF249254541
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
	TAGGED_FROM(0.00)[bounces-273621-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Thu, 05 Mar 2026 10:09:23 +0100, Krzysztof Kozlowski wrote:
> No functional impact expected.
> 
> Best regards,
> Krzysztof
> 

Applied, thanks!

[1/5] arm64: dts: exynos7870: Move I2C address/size-cells to DTSI
      https://git.kernel.org/krzk/linux/c/41dadc6f78150b7bf0308269fba7ba8a1a516392
[2/5] arm64: dts: exynos8895: Move I2C address/size-cells to DTSI
      https://git.kernel.org/krzk/linux/c/90f771a9745476a5e2b95b5efe225a943c090bb9

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


