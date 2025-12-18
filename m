Return-Path: <devicetree+bounces-247930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C66ECCCDD5
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2B9730F6F7A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257CE23A994;
	Thu, 18 Dec 2025 16:42:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com [136.143.188.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E6117BCA;
	Thu, 18 Dec 2025 16:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.55
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766076129; cv=pass; b=VC9ocuDHixxdWRJZlHpRjOkqUiELCrF3w+mSj6gHTg5blpNdkbc7ijzZoLbXc1BLXE1SoFnPUPkwwgJkymH/ZbzVQeM585P3iuWN2bFNxlTDpnlcdY4tc9ONlUf4WERKphzyivo/X0A7pny7h2bF4j6OIJrWBiHOB38YB797qVU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766076129; c=relaxed/simple;
	bh=flkwXIsuycmRFZwE+EeysAAbLRNI56VtCwdtbrplhks=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=H/ELgusg1pS8J/DmSZh9cKKyTZxviYrOEpVMXPlgp0tSEOwt7nDq8d+psUsiRSmi5eYtdvDeco7qhis1IKp+vTp07sZeZxaKS2Mt7OjpneJOeFdpR1XsQxX9RuPxV43JaYc5J6sqt+jRr+UoNiBx43bV2Fzxy6WCtsJOdYInjOc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sakurapi.org; spf=pass smtp.mailfrom=sakurapi.org; arc=pass smtp.client-ip=136.143.188.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sakurapi.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sakurapi.org
ARC-Seal: i=1; a=rsa-sha256; t=1766076111; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VZVOXfhWO2+fL3tvJ5QOL4osPgh7YsMea6XvxbjjozEGSb6nxNaEqqLi+nw6IcZ/H/6OcLzAnBW7XO6HlbDzo/XAFIib/sMnkuPZFRMgCSQxhMrRhm1nsbV9s/DTydKdgYz/um6pcPSZ+Yzcf7E+XyH6+vP5QiVNPhmPLGfnXl0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766076111; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=flkwXIsuycmRFZwE+EeysAAbLRNI56VtCwdtbrplhks=; 
	b=GaJtf7mT2vNoxFDQZGUEdHFDATd4AG/OYcg9V8887rYefRL2plW6CTJYplnG3qiLzgSZVin5hVt/gsXfUiyY1a+7rQRmn13XHljYVhfL4U5RP6sKC5T4XCUkZOmksb/4LAubtGx2A5077GMZaDnI/QnryFhW6eiceFM1/EeW9Ro=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=thesnowfield@sakurapi.org;
	dmarc=pass header.from=<thesnowfield@sakurapi.org>
Received: by mx.zohomail.com with SMTPS id 1766076108310603.0329261278846;
	Thu, 18 Dec 2025 08:41:48 -0800 (PST)
From: Chiyuki Akatsuki <thesnowfield@sakurapi.org>
To: krzysztof.kozlowski@oss.qualcomm.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	i@chainsx.cn,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	stable+noautosel@kernel.org,
	Chiyuki Akatsuki <thesnowfield@sakurapi.org>
Subject: Re: [PATCH RESEND] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Fri, 19 Dec 2025 00:40:21 +0800
Message-Id: <20251218164021.495-1-thesnowfield@sakurapi.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

Thanks for the patch.

Confirmed that the interrupt flags should use IRQ_TYPE_LEVEL_xxx,
and tested on the SakuraPi RK3308B board, works fine.

Acked-by: Chiyuki Akatsuki <thesnowfield@sakurapi.org>


