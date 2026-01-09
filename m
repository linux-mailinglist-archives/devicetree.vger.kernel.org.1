Return-Path: <devicetree+bounces-253412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA12D0C1DC
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15A8C304DE02
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12973644BC;
	Fri,  9 Jan 2026 19:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="k0SIetiy"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D83D3612E4;
	Fri,  9 Jan 2026 19:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988331; cv=none; b=LpLI0Tf9Mdz6lFrpL9LomxROClaLX/UqJeoWzvyx0YMgbkY8bu5sS0sOlpWmUR0VIBdNCoaOVQAshAb8rQO0QCVjTpQ66Uv2i9YP4q6gXBSBqp4ON8QMqikEuhKJkWkpNE9IvHVjnMWeJHQlWRNyzyPeNWlj8ad43F0LUb+dYKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988331; c=relaxed/simple;
	bh=1q+cpEiPzowiSZDOccol6KJeYCcKrj3txTN3Ej1U8Qk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ILa38QjJK7XgVWEHzxXi9najLcQsV6UdLljDeXuqEr4HEZNqyYmWN/GkyNz0nBOmFYgQqf7SV9rOlAEjH4EOkxVqIWp60EJDBUxkF51febQ4A9wSDNiBIcBwCc3OikKAFRwWQXXPzpSFNx2H5KAxxB5anA7+iyscV0hmS6i4TsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=k0SIetiy; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4P1BZ2S3ppg4BrswMFpKk0YRpZ+g22ZUu1DsWyom+wc=; b=k0SIetiyKlkNC85ie9wDPucjzi
	ev2Zp2p2s13okdxtHJ1dtRs3/iyP8xpwMUHcb6tcV4U42RoUmQpp1k8FpWK58pYpcOaZ4HwnP+4M7
	fkkk3fgJj6NP6fbSfNf0Qq8RDAvarieMXEsp5tyFaGe7SK78iMzrUQJXFdZHbNcZI+R4c/xsEVIuB
	LDG5k2RwBmfY2TAs5FtLUlvuMRE9WQtL6/Wmazk0POWH4lT2N57e5BzMcRYDthGKs331LHmd2tB97
	MZ+WE0/hDgNFXOFw43xqGu6wUDWsT9YD+Vhgsz1aeXxWEN8/QIgoj/VPnKjeS3n+jKl4ZIcolTUxS
	zOiQkuPA==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWj-001fth-ND; Fri, 09 Jan 2026 20:52:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3568-wolfvision: Drop "sitronix,st7789v" fallback compatible
Date: Fri,  9 Jan 2026 20:51:58 +0100
Message-ID: <176798831391.3446147.10313596091782977499.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108230600.1348699-1-robh@kernel.org>
References: <20260108230600.1348699-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Jan 2026 17:05:59 -0600, Rob Herring (Arm) wrote:
> "sitronix,st7789v" is not a defined fallback for
> "jasonic,jt240mhqs-hwt-ek-e3", so drop it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3568-wolfvision: Drop "sitronix,st7789v" fallback compatible
      commit: 3ea9fe578d1d2c1fb88410f53e378561d1531e45

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

