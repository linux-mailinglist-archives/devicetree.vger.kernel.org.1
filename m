Return-Path: <devicetree+bounces-58423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D23398A1EC2
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 20:43:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 721D71F2A4EE
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 18:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25A33D982;
	Thu, 11 Apr 2024 18:30:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8183D6FCC
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 18:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712860245; cv=none; b=iF8Eh+75aWvkn5HuBZ2sqm1JwXyLVXxNMGirRyVxEgUzFd07krsqg75rgpSBiGMhgnqJY7XwQ+lZfY7Me3KfnaEPtzR2aZNtbUAO888xqxcyg0TgFbssp2u3pQh8/VDHjeAWtP2rpqJsWD636aWC9EbsFTQF8GkzjTUbVzLSSiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712860245; c=relaxed/simple;
	bh=a6pJm296+qn1uWia8xWtyaRyZf33/lRwaAmIfupYboA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ue2/nfzlzW7S8M/Aza73gM7Tfunwok3PrZQXYFeehNp71TheI1TdqbEDe8G21jdI2lmRKlU1A8Iad3jgBTF96DEKJAHMYljV0oB6X2P+m8688hQtQYqpuLyVAwy1o5W+bgERYQcLlp1vSZvYiKA0+BkcF0aH8tygDAO87f7tBpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzC3-0001so-KE; Thu, 11 Apr 2024 20:30:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Date: Thu, 11 Apr 2024 20:29:53 +0200
Message-Id: <171286007456.1886699.6885210862940923599.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 25 Mar 2024 12:51:29 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users have requested fixes for Powkiddy devices to help with some
> intermittent WiFi issues by adding additional properties to the
> SDMMC2 node. They have also requested that the model name be
> represented consistently with both the manufacturer name and model
> name. Lastly, there exists a second configuration of the RGB30 with
> a slightly different regulator layout we need to describe.
> 
> [...]

Applied, thanks!

[1/4] dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
      commit: 9d3d2be86c7d4b1bc16b65a06ba06886913de7e8
[3/4] arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
      commit: 1b76d86dbc5faf907d74343e1b15daa84ab8322c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

