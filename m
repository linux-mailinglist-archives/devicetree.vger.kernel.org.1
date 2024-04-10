Return-Path: <devicetree+bounces-57726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B7289E984
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 048E01C20B84
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 05:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA3511C94;
	Wed, 10 Apr 2024 05:15:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3586111A5
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712726116; cv=none; b=kjc7aQDWcekupmuA6pAfDMyPINOeMlbmw1FGNs/c7iQ+1ZppvN0PBGDh2GHZyjhr2X0E9AysO8rnRYifVRcz6sAS6hBVRvCeHI/zfkfQ9jpH1sRYxm/6wGWT8pg6qfB6setfd/lZ8yEUDE/UUyrEbx+2lMHS3qgcg150e+KAdh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712726116; c=relaxed/simple;
	bh=AG33JSsLTvoPkkR0qvf+V8VrlVHQdRDWV5cmraUDvIM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rkJMItS1wRv1sIlgs9a6NVqgW2Gfq8zU7b6sdc2k2Iu0EJUJAA6z3vRChBowuZVKn7Ex6HKEhcM+MDGCdBDIcONrk//5b9tfbH4JtRMC/tmF0yYpNnIJjuXrKz/dLQFdgpTzunkjYXPZNQ1JMREKpj0145abYMQ76fuAFxK4zyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIi-0008Ut-SD; Wed, 10 Apr 2024 07:15:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Designate the system power controller on QuartzPro64
Date: Wed, 10 Apr 2024 07:15:01 +0200
Message-Id: <171272604789.1867483.1717225065687252209.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
References: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 7 Apr 2024 19:56:24 +0200, Dragan Simic wrote:
> Designate the primary RK806 PMIC on the Pine64 QuartzPro64 as the system
> power controller, so the board shuts down properly on poweroff(8).
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Designate the system power controller on QuartzPro64
      commit: c2b6d3a2bbf6352f7cddff2abe81dc4af4887672

Added a Fixes-tag

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

