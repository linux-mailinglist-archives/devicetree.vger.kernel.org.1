Return-Path: <devicetree+bounces-133762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C16C9FBB6E
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E54961884176
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD81D1B0F15;
	Tue, 24 Dec 2024 09:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6qI958L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899571AF4E9
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 09:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735033402; cv=none; b=YmvC9bw+4TJ0LIASlsR6IzjzeB01P3nCPkJ2VVsyoI2ZZL4Et+f7GDGgfRnqGjnW/O9lTb521o/ln2l6CMgQIEN+VkaT9dRBPiSUISViGL85dR9ba+o7uJ86KbiQ6wpKTdeAKpJ+K0nrnp5PxZiMU3pJ/vxcLZB1tWyhGGsYFuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735033402; c=relaxed/simple;
	bh=RA5sS+LHe7DdBB+p8rWK5aaRQ2sxjMPQzK5z1SuxXUs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lOXXVap6hBXmBsVHCi4JGrfTJM07HDynVSzx25hpwVDU364tDgi+RGOmqOE6Ucz3cohk8QmLXfiyNc0xT/+4tcadOEz65OrUZy42jAOe++UrC8ZSotUiUEG38Ff83xrnDaXzccp2fmsHArue+frqR0yM+znHD+6hNdRMr2u/Emo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6qI958L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB9F2C4CED0;
	Tue, 24 Dec 2024 09:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735033402;
	bh=RA5sS+LHe7DdBB+p8rWK5aaRQ2sxjMPQzK5z1SuxXUs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k6qI958LWgBe7Ke9QTtJLD1XdOBbpACohHvR6nPJtmrkDcf/Z5ViolwskfKJZ6bTF
	 6kLd3fkOh5DR9istquPw0vId18UMY8qox43kfk2bvMpJ+3XANpyLr9l8b/940jl5M5
	 liZ/V3Ch9iOXPKTv1aw7n6nIdSEvAvEervMA/iFgXh5TBD1PxSOf86LVLRv3GseEsg
	 Hq1T45JthNOaB28WM0d1nipvNqwBY0O+PAIO2lCZZBBYEGO7+XIT+4daU44Hb6r7/+
	 z9SJB07yNZ4f+snkD8lp5mWp2KCPkeiXy1Obr9qNXIBR+rE0uPCah5Ot3s9Qz4MQsh
	 HmjEg/LBLFEPA==
Date: Tue, 24 Dec 2024 10:43:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com, 
	andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com, 
	tim@feathertop.org, marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net, 
	alchark@gmail.com, jbx6244@gmail.com, kever.yang@rock-chips.com, jing@jing.rocks, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Message-ID: <hs45mw6utovel4ok53iys2vxy5njv3etsimuotoylfqs2joybt@hgdrv647z4kp>
References: <20241223015318.1999-1-naoki@radxa.com>
 <20241223015318.1999-2-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241223015318.1999-2-naoki@radxa.com>

On Mon, Dec 23, 2024 at 01:53:17AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
> 
> Radxa E52C is a compact network computer based on the Rockchip RK3582
> SoC.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Add "rockchip,rk3588s"

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


