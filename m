Return-Path: <devicetree+bounces-238359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DEAC5A77F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 182F24ED597
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272A531B838;
	Thu, 13 Nov 2025 23:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Wk1B+rR9"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720A32DCBF4
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075080; cv=none; b=oo0aOKjSGgAN4UJaiBbc7gWh3ofwgjvuzSOXGhjg31HFlq4bUzq6QOYP3hCcsYutksRqVWU3EIR2wxku3AClNDIn7jNXW8xFTriamE/qxSi6dy20JV5sf/h0TVdInQnd5h4nlUhIl2gtgIvItVURf9UOTz7wUyKjT44hooiuEvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075080; c=relaxed/simple;
	bh=TxF6VDjkGMUEXFN3OrE0A/KdhT41LNnA0baOt9jnE+k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FLTi8d6TX0WwkPw6KzQN/Q3lKZwTWsHariq2B5cHq/lmoXREDEyu6kJdpT5RfYNhuhWDcA2maQhU+olOz1NmPxfGnUz8Tq/6qxu4RWw+TToeK7qoFzEwJJPPl5xMI3gFc8ayM0cFQAMNktNHJfeXQgMTxKRJdCjVefmCjlxa5j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Wk1B+rR9; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dCqx29Rc1ck4IsdZkarUioqaw/QiURT/qw2fgwx1ui0=; b=Wk1B+rR9NqqursXSj9rNtf5XF0
	arBqfrURJcrwsYDBSKpjqzHaQAykOAZavsDxc0TH3mw906lLNfnUZyiOjMvMZ6wzcI3isjqa57B8D
	4EMmGzW/7kbnt67+MXGrH2QPZj2cbLf2dhKadpn3si1aMt6I+zPUE8TSVD4jhDVwcDc6FPyvXw93M
	ATbyXgpyNA7vHq2Nv+CnX7ngX5KgMTM/h0SAfrSC2vyAvr5oJjVQMBU+x1Nm4wBFIRw4KW0+R5sWl
	jStwgnOWs/B9NtBnmmCXnawcxzUURlk1MsSm9Uh+6+jgDBCb1iWc94/3vrRNCfCXAExPrpY59YrQs
	me2CMmiA==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMm-0005bo-9g; Fri, 14 Nov 2025 00:04:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	damon.ding@rock-chips.com,
	sebastian.reichel@collabora.com,
	jbx6244@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable USB-C DP Alt for Indiedroid Nova
Date: Fri, 14 Nov 2025 00:04:27 +0100
Message-ID: <176307502902.495066.1512477613240846697.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251107214724.878955-1-macroalpha82@gmail.com>
References: <20251107214724.878955-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 07 Nov 2025 15:47:24 -0600, Chris Morgan wrote:
> Enable the Display Port alt-mode for the USB-C port on the Indiedroid
> Nova.
> 
> Note that while ROCKCHIP_VOP2_EP_DP0 is defined as 10 we need to
> set the address to "a" or else we receive a dtc warning.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable USB-C DP Alt for Indiedroid Nova
      commit: 7230cdc1fc3cd1b6721df1dbf46c1e2403042203

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

