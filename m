Return-Path: <devicetree+bounces-254519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FD7D18DC0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:43:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50886302DD7A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438E5395241;
	Tue, 13 Jan 2026 12:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITei+nWu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C137F38FEF7;
	Tue, 13 Jan 2026 12:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768307887; cv=none; b=Tvh3Fo4iRngKhs+9kSE3I4pvecM6LyZy46vlURUMK0eGapraO8q+R5uv69f2NfsVug/j/9mLm4XdqQwX+zWu1yrNR6XgRWmlDEezWNz8AyS6e+G1g/mZWOzmP3TsO9NNdR7fChUN83kE71CXWULKn4y64v9TlyBLjTCggtx97eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768307887; c=relaxed/simple;
	bh=XBh651uOFdz895yL+g9RcE+L3CQnvJrQsqohr3JUpro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fUEEFSmh0KueyQ9WgTuZynrK2/TsKYx3ofFP1xryRoCg0JBnz21Ok1sybpONjHExBZgV9oY5Hn0W/G1blsdGdlvMPzWvsMzDPNUskbwPO74AdetoQbmbjab5sr4vJXAYA60fQXPv5VUdPbpxv/scpYMRbvR0oC5jkuQJNdgESyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITei+nWu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02E73C16AAE;
	Tue, 13 Jan 2026 12:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768307887;
	bh=XBh651uOFdz895yL+g9RcE+L3CQnvJrQsqohr3JUpro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ITei+nWuD0tmntKUe3z5GLKo96BDN6bl2LcQ2KuQO8tRhW73non6+I7D66FKs+POa
	 9UR+MtSJ9ntb2TxeuPYwi2+LCL8jSaCrg4oNSxQAe0hhp0mvF0idnXxdhWyNUGMiYr
	 l3TS/+ez5GBB9H3iJ5loMPeI1KlrLf2Ey6S96jXSCe+uoF/LTb1Ltv0kas3kJQe1Dd
	 jchfWlDhv7K831iQlXB6QCuUekkkos4sJebdg51tOKi4DiOw+r2ipzWlkRpvS76OfI
	 2J+8K7gnNGsLG4+YDM6HNF7/Wna4d7ca03ON4Kvv8fFDor2cfuZWIb3g65qvFMM5JM
	 +0LCSQ9UIzWLQ==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, sjoerd@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, kernel@collabora.com
In-Reply-To: <20260109114356.36454-1-angelogioacchino.delregno@collabora.com>
References: <20260109114356.36454-1-angelogioacchino.delregno@collabora.com>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: syscon: Allow syscon
 compatible for mediatek,mt7981-topmisc
Message-Id: <176830788476.2846051.17154311682129442278.b4-ty@kernel.org>
Date: Tue, 13 Jan 2026 12:38:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Fri, 09 Jan 2026 12:43:56 +0100, AngeloGioacchino Del Regno wrote:
> Commit a95419ff9f21 ("dt-bindings: mfd: syscon: Add mt7981-topmisc")
> added the mediatek,mt7981-topmisc compatible to the `select` block
> which is used only for compatibility with older dtschema, but did
> not add it in the actual block allowing to specify the "syscon"
> fallback compatible, which is required for such node to do anything
> meaningful in the end.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: mfd: syscon: Allow syscon compatible for mediatek,mt7981-topmisc
      commit: a4d1081e82d588bd549284ad5321c018c86e6935

--
Lee Jones [李琼斯]


