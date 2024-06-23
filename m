Return-Path: <devicetree+bounces-78914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E28B6913A70
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:13:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B8471F215B0
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7B6180A95;
	Sun, 23 Jun 2024 12:12:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F52C95
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144777; cv=none; b=FKs0yP2hFpUG8dVt2pIrpv2+VcbxKqPMvUiKtxBqjsNjHH3hnIRuG2WH5QvOKfOgptXAk02bunioGu5y/kfktQrycW0NXpn1yhULimVNVDK1cG9TadfoZisdQrNxdMVpUH+Wa/uWinD9+SsU7sPPkILzGCTgCkuw5E9kp7+TFGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144777; c=relaxed/simple;
	bh=fzhjtfs7/LL+79U21nNxIE9c06zYo6rVWsc+UtFJgp0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eKvBqbUGtC17FL2mLkKrazRkes0blpHw3ilxQcWtNgn5bSE/qP9If7n0y7m8AeqDrJeU7qfMHFjZYStmDwMtuLnm4C2ej4tujoPdn5Ow8WRVeCmK3FYiK5L+n6aEKGgnZc93fWvsUEiZ8+TUD5ptacdxiUEn0XTHtbC0tSGcQTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz6t1719144718tnr1oj4
X-QQ-Originating-IP: lvSdtWzGw74y0pIOzFRPYLJbPCgAP1nJPyiEmIdlvOc=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 23 Jun 2024 20:11:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12654803974381824126
Message-ID: <9A5C6ACA074B094A+171f5286-c19d-4a9f-ac27-b4506e468227@radxa.com>
Date: Sun, 23 Jun 2024 21:11:55 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240623120016.82990-1-naoki@radxa.com>
 <059eec26-b7ca-4bd0-9e63-cfceffc4a777@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <059eec26-b7ca-4bd0-9e63-cfceffc4a777@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi

On 6/23/24 21:08, Krzysztof Kozlowski wrote:
> On 23/06/2024 14:00, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa ROCK Pi E v3.0 board.
>>
>> Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
>> RK3328 SoC with a compact form factor.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Isn't this v2 of something? What changed here? Provide detailed
> changelog per each patch (see submitting patches).

this patch set are for adding new board.
please discard previous patch set.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 


