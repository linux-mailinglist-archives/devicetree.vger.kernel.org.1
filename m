Return-Path: <devicetree+bounces-82347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB127923F2E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:40:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28B8A1C2121D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 13:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AE01B5811;
	Tue,  2 Jul 2024 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6LehY74"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E6E1B5806;
	Tue,  2 Jul 2024 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719927634; cv=none; b=LnRoiyYMVGlk18pGMW5sUnJ7fkI6l2leWdXtUEEO9Pw4fkDEcVdxA9v5lpxVxacNcXOWLhY+XJcYE8IzqWngBXpsOVYfXqpxA1TsAZzkXmRu4Zpc9nZ/Qn/oHZf+XwS2HXgbFiXgjnxcUFOTX0DxoECEcW2/3ylriMO21ne/qXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719927634; c=relaxed/simple;
	bh=pirxWw773xu5RQIIpdcnxs6Z4AgajmiN1N9tjfkWv30=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=qn8VLv8qwLvSpEGcOZ6NNQWwtdwmHbioaLf7YR4N/vwE3OdYOclkI16dfAuXcDFdTFOI0prwJp/ayKLHjF/kCjo/jmBXs0LKO/GvMPPEz48bDp3+XrLgNTf4MwDSB49025Jd1TKQZIR0GlyK+3NhpOx+4mRpwK+nB/I3Jd24wDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6LehY74; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89082C4AF0C;
	Tue,  2 Jul 2024 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927633;
	bh=pirxWw773xu5RQIIpdcnxs6Z4AgajmiN1N9tjfkWv30=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=u6LehY74eg+cOh6kEtnIMnRGosYjQ7jUv7ET/UBgLnQeOhEnwc9Ut9koYabzR5GRU
	 CwFw2WCyCoymXKuJbdcF4SKbt9MK47avpEbbjUnJzE6swFcPSJh6Muv7zDNook1zID
	 vBShPDV59Fgoc5qN2c/RSUHbB5V5loNbFsxpVuTJ26PgVEvs5WDy0mq1gaec2eih3S
	 uYo3YVWZK7BqKUjCukJdMFE7oNh2B1xOOfxhpL3t+LjgL4Tie+EQL73mBCjvXhTWFq
	 aGgjpcHDiqejWSZBoF0qSYL3GNM/s7SZlmFwtnMRx5fkJoJaeweNcQUVJ+pgp+krg8
	 CgB1GNX30OiHQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 79454CF3B95;
	Tue,  2 Jul 2024 13:40:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next] dt-bindings: net: dwmac: Validate PBL for all
 IP-cores
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <171992763349.28501.13027793993497248100.git-patchwork-notify@kernel.org>
Date: Tue, 02 Jul 2024 13:40:33 +0000
References: <20240628154515.8783-1-fancer.lancer@gmail.com>
In-Reply-To: <20240628154515.8783-1-fancer.lancer@gmail.com>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alexandre.torgue@foss.st.com, joabreu@synopsys.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 peppe.cavallaro@st.com, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org

Hello:

This patch was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Fri, 28 Jun 2024 18:45:12 +0300 you wrote:
> Indeed the maximum DMA burst length can be programmed not only for DW
> xGMACs, Allwinner EMACs and Spear SoC GMAC, but in accordance with
> [1, 2, 3] for Generic DW *MAC IP-cores. Moreover the STMMAC driver parses
> the property and then apply the configuration for all supported DW MAC
> devices. All of that makes the property being available for all IP-cores
> the bindings supports. Let's make sure the PBL-related properties are
> validated for all of them by the common DW *MAC DT schema.
> 
> [...]

Here is the summary with links:
  - [net-next] dt-bindings: net: dwmac: Validate PBL for all IP-cores
    https://git.kernel.org/netdev/net-next/c/d01e0e98de31

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



