Return-Path: <devicetree+bounces-252078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F45CFAB2A
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:33:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AE9B33036C8
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7A33570C6;
	Tue,  6 Jan 2026 18:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="wjrYTKmA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C31B355801;
	Tue,  6 Jan 2026 18:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724937; cv=none; b=m8XfgeMGDvdni66iQgpHYZV1zhmU8f8N5qHYMSuj98NndfXPZDW9bN0vyyAkyOT/l/9hGCuHe4uVEDghw9KD1XjHogNt7bppg9SCMaI8VDMroox/8cZwuP4TYZB7EqZf+tsUuNcPtGvmzco018TLi+o/71pSHsv1qwlhY9+48kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724937; c=relaxed/simple;
	bh=Bvmyld1MDDzxZY17qWx0acZrPwre2Y9ooTNMk8Ch794=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ujg4p4PNWjCKyXgOvYBsFf49vjMant5zUSGLls8p/rnM0RevdRCgkbcOEJJkj4Dipi5+lFVtQuDwtSqfhL33zEhAHKunGZKhJvQ01/RCOom32U+Us4FeOUP+rv8ReJWOssMGztPjUZ7lyNVKkrDdVyLOq1pVHShH/fTVxhNndUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=wjrYTKmA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=p2zwHgmmmKUQpUt0JZaXJQukZ0E+S2rrXrmJMYEwXC0=; b=wjrYTKmAi9lDZF3scqG6qGYveo
	xA2yrj5/FBeCJW1myXSeXowszmG8+o0FBwJ+rRFGO98C8mzMibMq/7Cxjen4z/ztBE2aJIVId9tR7
	6Q4lfAvvKgvI3kTiTDJ42DkRbtYTguHL4WcMmM3jC6oN0fOA0jOu9FSIoo5Bbom3xRD9No7/H0htA
	rjnDjdKFc7pf8SMirrs4yP+ESBpRz1fnJfLzGoJWWUomDrpGhPI8GCXPYu6EpTDj3mPMBepD/V+JQ
	Uov/uQ8O9ttrRbX4ht+UqAGJQTBfWnBJvPcBM0zBQrClDSRKeCa45/OTF0MWqqc6LowAw/u0VbtS5
	mg6dWU/w==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0M-001Hfs-Ve; Tue, 06 Jan 2026 19:42:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: Enable PCIe for ArmSoM Sige1
Date: Tue,  6 Jan 2026 19:41:57 +0100
Message-ID: <176772487181.3029798.17129671560253140548.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260106100000.225445-1-amadeus@jmu.edu.cn>
References: <20260106100000.225445-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Jan 2026 18:00:00 +0800, Chukun Pan wrote:
> Enable the RTL8125 network controller and corresponding PHY
> connected via PCIe on the ArmSoM Sige1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable PCIe for ArmSoM Sige1
      commit: f01f0e0700740dc7a2e5ed1af89d9770c1127d2e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

