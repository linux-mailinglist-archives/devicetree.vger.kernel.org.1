Return-Path: <devicetree+bounces-53184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D5F88B34E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 22:58:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B57901C2803B
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 21:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146916FE2A;
	Mon, 25 Mar 2024 21:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="pAWnFV28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97856FE1C
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 21:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711403902; cv=none; b=vBR1X5OspuQF0jmPZS6sCd/oqvieWFyiiUXfDcJJh8ry3VuMWJO6czrv/5jrkLCTlZ2NQQz0xlZE0TXtnRo0U+mLyE14BUsv9cYSG6Oeng1UnnT+Gj00hi/Y2Y6sNzaFu6mGiWQJTDjufby6mN3P2hyzopN3DYKlCMzE0Fgm5Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711403902; c=relaxed/simple;
	bh=BJOUz9I06aqNZxVP54ZPaohgWC8/mYQefFFtGdY0z6o=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=fKtmHt8L50nK6Ra/Sq6vdMlZFmEQiRqypHcV9QVqBo3vcFIZCQIlfQ5pW7Mb97YMC/ydsoU/rFAiGfiJFfNubsaxdAoHYnCItVaJcCudN1I05vE97epIBno3YjwG2X61BOvCYWgeh86vYhD0VX2+xafWsm0MKWqnm1REKNKcDhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=pAWnFV28; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711403897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G3Ju/zcDbTmgTW5u8BFjHe7CtK00btWH1QN2NAmEpIQ=;
	b=pAWnFV28oZfjUb5DcW7V1ZyiTnM0Y65NaXcc03aSpWkMTY1rTceQxgk9gioaXUHx/+Bhz3
	hDEVcsh+G5CuewUEpOMkuWHZI7pPYaKloHt3wflDVExhBpYfxJeUjBl7ffIzLT1eS4GzDP
	OY8Vflk1UlLWEZE7JjTlZ7PHUVXThc0zeB2/OP74zecY4J643lV5dWt8OACIWDVBnvCnZu
	QoQnO0TDnVQiygbhkex6cP36zp7BleGmMf77QzwOfwL5X95cik/BkUgwF1tl+lmLjSJ32e
	VpZh/mTP9/JwDU6UvevUYDgciY3qm/Vq4tTg1Jio6EHaw42ODozdgO+hRkY/Qg==
Date: Mon, 25 Mar 2024 22:58:17 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
In-Reply-To: <2854897.88bMQJbFj6@diego>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
 <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org> <2854897.88bMQJbFj6@diego>
Message-ID: <4a8bd0a6417a7f9a779d907969c6af9b@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-03-25 22:53, Heiko Stübner wrote:
> Am Montag, 25. März 2024, 18:57:06 CET schrieb Dragan Simic:
>> Hello Chris,
>> 
>> On 2024-03-25 18:51, Chris Morgan wrote:
>> > From: Chris Morgan <macromorgan@hotmail.com>
>> >
>> > Users have requested fixes for Powkiddy devices to help with some
>> > intermittent WiFi issues by adding additional properties to the
>> > SDMMC2 node. They have also requested that the model name be
>> > represented consistently with both the manufacturer name and model
>> > name. Lastly, there exists a second configuration of the RGB30 with
>> > a slightly different regulator layout we need to describe.
>> >
>> > I have added the new/additional property of "chasis-type" as well.
>> 
>> Shouldn't this series be labeled as v2?
> 
> I think this is for Powkiddy handhelds, the other series was
> for Anberic ones.
> 
> Somehow they design and build seemingly dozens of somewhat
> similar handhelds around the rk3566 ;-)

Ah, you're right, I was wrong.  It's quite easy to become confused
a bit with such similar devices and similar patches. :)

>> By the way, regarding renaming the mmcX aliases, maybe that would
>> actually be doable, but only if you have full control over software
>> that runs on these devices.
>> 
>> > Chris Morgan (4):
>> >   dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
>> >   arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
>> >   arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
>> >   arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
>> >
>> >  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
>> >  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
>> >  .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
>> >  .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
>> >  4 files changed, 42 insertions(+), 2 deletions(-)
>> 
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

