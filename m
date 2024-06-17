Return-Path: <devicetree+bounces-76742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AA54490BCBB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 23:16:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32FAEB23297
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B8818F2E1;
	Mon, 17 Jun 2024 21:16:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEB514F128
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 21:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718659005; cv=none; b=dfLUKFJE0O5cfxZbgAanISOlhTnohxpCf4U/cMNlV6XTu3br2C1EMOBFoto3Ynv4i2hedREqv/OMYSlK1LsJv/Qf0PUJkjovGiQ7G29h+ssQl4gpvAWrMcFYtz3z3yQd3iy67+MUhipcvH0WiN4U48NZWt8IHvMcHWc0qMmNwHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718659005; c=relaxed/simple;
	bh=mW58XywBocjhhgcofo9KaYiylllCjmLMWGwyHAGZ6fo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e9mNsCjRw4mC2y46y7dyshHgFIB71UNscv/o07iM5SBAJaR/MTmSuJsol7rri+ypdyMArvSiHM5pz3OrosPnNODGOeVASzoqPcf2jFwfMiGD+GiJ4aDKMkyDZoHJk3qMToSMhn6LyEaTCir0O2lTn7G6fXA4LBrk6nkxlWZcrEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJJiS-0004O2-O6; Mon, 17 Jun 2024 23:16:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant cd-gpios from
 rk3588 sdmmc nodes"
Date: Mon, 17 Jun 2024 23:16:39 +0200
Message-ID: <42969001.doPnVEEUbh@diego>
In-Reply-To: <20240613001757.1350-1-naoki@radxa.com>
References:
 <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 13. Juni 2024, 02:17:57 CEST schrieb FUKAUMI Naoki:
> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
> 
> Inserting and removing microSD card is not detected since above commit.
> Reverting it fixes this problem.
> 
> This is probably the same thing as 5 years ago on rk3399
> https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/
> 
> So we'll go back to cd-gpios for now.
> 
> this patch is tested on Radxa ROCK 5A and 5B.
> 
> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

applied as fix for 6.10

sidenote: please don't send v2 patches as replies to v1 but instead
start a new mail thread. Tooling like b4 does not cope that well with
multiple patch versions in the same thread.

Thanks
Heiko



