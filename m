Return-Path: <devicetree+bounces-252073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FDBCFA529
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AAEE8302D6C1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EAEF354AF1;
	Tue,  6 Jan 2026 18:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="jPNC0wMU"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A98354AC6;
	Tue,  6 Jan 2026 18:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724934; cv=none; b=AYcpPsSxW5SnX49ad/d0nj2yDJ/m8eDNc+qleR9roJnsNPcow24Qm5X4eYw+p6itHA1YBrJVUXLygaLSHMbQ8G9IihnugncoU8G1i00oXO/RLdjW0n8G2PuXKzhvbiNQE8AcPTxzA7dHYnXz+6k4wJ5xyslzPg2a6dkClgsAn0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724934; c=relaxed/simple;
	bh=crjUT4EK61RedBYhQq2ZFsvS7uaJJEc6FaL4ttnmhSE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M39An75FkZ9z/UMfE/RdkB3vjG25plsthyzAed5Iw0NlfaDTu9w9cLxnID34fJQH40BoX+TF4NmWGOGxUWVRWFjTs+aSiInzq88696gcj/6P7urN8vhaqe2555s6ndatY7JBArbsqH+/eQ4K/flaUFbWCCH6qjF+ff3ORCQxdnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=jPNC0wMU; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=L8UU7UO9MTvtaN16IxhFCoptZI6QmiDvDm1zHHC4rIs=; b=jPNC0wMUS0zykPN5u7wzbD6aOj
	w+0L5kxSN5K6G3nUzqfV6/GuzriuSHa7CgHPhY00nMWoXwPVgO7lqiyeScCpN0njSAQMwSiIKNoda
	G/zcBF56mhAJbCm33tGML60fJpDknuHsxGRFOl/zUzowUvAaTdoa/0jLRRAnMZyE8QB9MeRM5tmFP
	EPQ5E7ovXZfoP2clvW1vJVFBlHeI7mJwyuNHYwK4zG2+iW0mJBakV7GLA+Z3ls8YTD6ZDYb+XMS8B
	QJpSEx4oGA+X/xk5aKy8a+nSdaNq5AS8Di1fP1MKHEdkbC8VaMCn0uxBbylcymqO3A57m7khgZTvR
	GL2yBJ2g==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0M-001Hfs-MM; Tue, 06 Jan 2026 19:42:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: enable UFS controller on FriendlyElec NanoPi M5
Date: Tue,  6 Jan 2026 19:41:56 +0100
Message-ID: <176772487184.3029798.254333001425735239.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251230-nanopi-m5-ufs-v3-1-ed188ae34fdb@gmail.com>
References: <20251230-nanopi-m5-ufs-v3-1-ed188ae34fdb@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 30 Dec 2025 17:23:34 +0400, Alexey Charkov wrote:
> The NanoPi M5 board supports pluggable UFS modules using the UFSHC
> inside its Rockchip RK3576 SoC.
> 
> Enable the respective devicetree node and add its supply regulators.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable UFS controller on FriendlyElec NanoPi M5
      commit: cd50298ffc5f98872ddf0ac05c51a014003a34b7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

