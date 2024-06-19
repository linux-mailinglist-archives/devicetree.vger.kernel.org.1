Return-Path: <devicetree+bounces-77622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0DF90F6F7
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 21:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6FB52841BB
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 19:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25D4745BF1;
	Wed, 19 Jun 2024 19:31:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2891E4A1
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 19:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718825512; cv=none; b=hn3MLFH1MMvE9xzD6xvKBEqufDGy2vP30fPNDGx4a1GKubAH1HN6mPNMRDKvLPetkKePhj+EyzZknStVmSV3WLZsexN7Tk5bbWvlSynMCzY/wcy3ilWzqGhKZHVCU2s8b0sfHBolPwbknnYUrjExRHMGM5mfM3z4tyYc614a8yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718825512; c=relaxed/simple;
	bh=YZd1kuxfZ0BuMC3yhPLFKD3DbvU1YMlLPqJmnTN/PWA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QOg1901oP667JxtiGr2E1UgY8qXbZmbgcAeQv4Fabi5N2tpo3+/ZoDTwo3VqBrWtIIzZIMaUx7Jhm6FUOK3fUKHywTdS5/4KPZ1MT6Sj1be8Hq5FnrvCpegAUfab5siQcloCu2fK6z9i4GntkbxiwvxzV7lgbGik2WwOJxZ/gBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e8616dc.versanet.de ([94.134.22.220] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sK11w-0000NM-TM; Wed, 19 Jun 2024 21:31:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
Date: Wed, 19 Jun 2024 21:31:39 +0200
Message-Id: <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240619050047.1217-1-naoki@radxa.com>
References: <20240619050047.1217-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 19 Jun 2024 14:00:46 +0900, FUKAUMI Naoki wrote:
> use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
> pre-production board.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
      commit: 02afd3d5b9fa4ffed284c0f7e7bec609097804fc


Patch 2 is not appropriate, sorry.

The aliases are sorted this way since 2021 and the order is userspace-
facing. So for the last 3 years people have boards with the sdmmc as
mmc0 and changing this now would possibly break a number of boards.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

