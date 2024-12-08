Return-Path: <devicetree+bounces-128343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3527F9E86C4
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 17:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8125518816BE
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 16:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47FF1891B2;
	Sun,  8 Dec 2024 16:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1TMMbtS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C050D18871F
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 16:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733677132; cv=none; b=EsHE8l0Glrdca33WOnQcLn7o5IBTzhFzyejqB4ojvEXXrOuvC+unYUpTlxKUI0+BMp/SGdFkqY/iMFrfR7SNKu+4qigBHelOm4H2T4urdx67VZS2js+qkkVwlPzuiTzaaRJhXpuHo54Ig3moj3WTdAvfZ8nNVeiFgOsHHvNC1kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733677132; c=relaxed/simple;
	bh=c0/oRVMKi8RM3KwoeAcA/Gjd8kM3l17avco564yZ2a4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FZubqSbMMI/PjbTngV5bMrZP1OrOzxUiNhkXFHJA2Kom1n/1NZN5P+mndTUujPQMXz6220r87DBiP/u+kb/WRq+9fGTZ4ZJSZPK0HwBrOlCT9MHgMJi+IdjMfd9469wkwTS37/N/HU/FojPvWT/Y0f5XUW+PiA+2Ozp04p4RvvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1TMMbtS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12D8EC4CEDD;
	Sun,  8 Dec 2024 16:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677132;
	bh=c0/oRVMKi8RM3KwoeAcA/Gjd8kM3l17avco564yZ2a4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=K1TMMbtSwtNRoSSGL5/o42luALup4wGtbz8DdgNYee88KT0cI2Iunz3HRGwvRzXe7
	 8NQOspNB9we09oCA9fNlDyPkbaeIJxbU7vl5SrgE+CEHqD/4IX/B/P8EtzqfAdI8PH
	 UIGIHe3kMff5sZY2QqruBfc1vX2bHGzZRwtVg1EhffH33gXWX5eQT2doWN4lO0Q+Lk
	 jpX8t5DukEZ2JFmyJ7t8pS2tmhuiX9vElu8tUKprlVuTeHr4ObvCRVAVTNE0DHEB3R
	 RC10gEhmmSKZpsh0CkvB8rJnNXYobyoP8vrq3XniSZYw6qM31sBHaAzGQ1qwCmW4mu
	 6RIFzFgBLMmhQ==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20241122073006.99309-1-amadeus@jmu.edu.cn>
References: <20241122073006.99309-1-amadeus@jmu.edu.cn>
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: rk3568: add
 reset-names for combphy
Message-Id: <173367712869.1031947.3262464465649332012.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:28:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 22 Nov 2024 15:30:05 +0800, Chukun Pan wrote:
> The reset-names of combphy are missing, add it.
> 
> 

Applied, thanks!

[2/2] phy: rockchip: naneng-combphy: fix phy reset
      commit: fbcbffbac994aca1264e3c14da96ac9bfd90466e

Best regards,
-- 
~Vinod



