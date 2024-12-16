Return-Path: <devicetree+bounces-131452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECDC9F345B
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:22:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A490A1680DD
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 15:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6781474D3;
	Mon, 16 Dec 2024 15:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="mHukM9SS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B3D143725
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 15:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734362500; cv=none; b=McnX4KupPnnFBPNbTEWKRgNy0Xgsa/l0dce4Eu9nxuK5/1xJH5KUb7vRn2XDHy7RYwoPaVvwkDfpXCgrf+IaEGl0Cs9zkQy9P0skwmxoKtEMd5eGvptb6olm+/vOAItslmDt42ERb0/qcj/wqy4HzyZVJWPjb7sdCy4e8Yr/lFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734362500; c=relaxed/simple;
	bh=qwpXs+83vcDuRVd3lkd+cv8XHwhPoB3eihl2qVuy34s=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=kZ/M0UW6fdlRjOtk1+6/ywNrpQNt0y1Xct0L8eB1vyeL0bS555dN4JofyHfsNBDB1T0CXOULva/5NAH9q/Zyc5x48jbAYSb3li0Jfc+N3IuAtTnXnLpTHG2M6KRPGHwljSMB0nUXOSNbwciUBAOQsmJ7lWaVeCTEUZQKu+ET0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=mHukM9SS; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734362496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NMbeOcfZxLWF4PhwS0eZbEbckpVN85Mz3aWtoaOn+yE=;
	b=mHukM9SS8FJwK0srtGF1GvVHfN0YklsWTcFT00EEjEWwijUHkbbGHZnidqqYNsNU5c5sHu
	QUudXqrxPEWjTtdft46YvQ5uRsUhIdkFfdV7hDSyOgdMmpMrC9esvwFmRpHUm5XOA6ZFGT
	MIExNzQb+GKJJAmS5yNifuDd1owKgjjS22ct2lsL8DjssckDOm5ljTOSbQCzdA16mupZJt
	zHUs9QjkCMszgqSSSQ+eYo8pUu4lRuuXT98bgaZCLcQY7NFYDn4wqBo1ZeJ8u5ckgy085c
	yW/mTrdaMbV9I/DtRzQu8NX71MHeFIiRyWwBzCgYE5doHIq97oCtedeUhreIvw==
Date: Mon, 16 Dec 2024 16:21:35 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
In-Reply-To: <2a811610-b132-47a2-973b-6a9cb7956c43@kernel.org>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <629ae206a3a463da7839fa4ee438f381@manjaro.org>
 <2a811610-b132-47a2-973b-6a9cb7956c43@kernel.org>
Message-ID: <bfe16f355a4923bea704c90f18975f6a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Krzysztof,

On 2024-12-16 14:42, Krzysztof Kozlowski wrote:
> On 16/12/2024 13:43, Dragan Simic wrote:
>> On 2024-12-16 12:30, FUKAUMI Naoki wrote:
>>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
>>> 
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> 
>> Looking good to me, as a preparatory patch.  Please, feel free
>> to include:
>> 
>> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> That's just incorrect. If you really want to review such trivial
> patches, perform a full review.

Well, I don't see what's wrong with reviewing two fan-related patches
that go together?  Moreover, in this case it's about using a generic
name, which you prefer, or using a more common name, which I prefer.
However, as a maintainer, your preference matters more.

