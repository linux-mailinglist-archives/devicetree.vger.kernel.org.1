Return-Path: <devicetree+bounces-231807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2842C11B7B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:32:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2E171A25D69
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A872DEA7D;
	Mon, 27 Oct 2025 22:32:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D359327E1D5
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604329; cv=none; b=hkj2k+urs+gKajH2oosmSdVVzhGn3FG7yQVl9+CcApHwg3Z4Gl4LFwOSECi4NftlDxInA46mUnoZkg90QqDF+3MXtzAAZYESsaAkfU4cp9xScUwSGo6yIMrr4oU08qTTrkh/cHLQGyKkGUtT78SZkYn1Eayuzb5gwybOujBq73Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604329; c=relaxed/simple;
	bh=ZRfoIvt9Gezlr6LUpV6jairCgU7xWN5/bVIDMjXrz2I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mC/KILfJJ+lzr7LDfSdrXmf4UyjjKHOVImCyXVhg3HEnd2wGGeYaXyZyorBZHHEX6VaOUte2A1QctakkWaBEpRnVtxB+yX62yBwnnLCdtf9yez2yhJ/WxCM1kE0a+11PTD+P08InJzxfJeV9GhJiIvJe/GTvdU6i8VBgcsI0uBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1761604254ta1cf0039
X-QQ-Originating-IP: qeEvK7am4rcn+2zKvIw6l7pKdUIEQtur2S5YS1iAGmo=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 06:30:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4733601881892471049
Message-ID: <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
Date: Tue, 28 Oct 2025 07:30:49 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NkLA2q2LD229CtcVGeMGeTD4zCx6cEhayrlDIZ+nfug4CAMaHq2VzH7+
	8vbzXOgrHUHyQC1kAtSH+St5RYN2ogh5HaNbjBtMPXfJu8zcpRpVqNgiskaw6WZxoQOkMvf
	tki0dktt5xvYTFcCB25k5Is/y2mCwXaskcmLq3N7E01rWXw5n1PEvmioWSZoAv+d2eelPtu
	QFD7CdJTfEdcZE/pzvdunrz+u/mzEmynVIfRzdOvARfyXVlgxob3GvUa/Z0krMhZNczlYzZ
	TlmrcYMiLEjB/Xs1ylpK3C4KAKCMvIPTKSIu/oMUmJ60lSYHOLrTkN5mV1mle0+aQoRJ9U/
	VTc5YVBIbANyMMvOrMwxmdDrG0xXyQ2MStHvllMYs0LymJKs2YrkpyUPlO4xo+EYv2PvS+F
	hjPGSPpnqkXdaKQvBcts6s7ilRtcwOrmud+JLT5eH5zWBQaRHreKM+owV3+k/ElUe+oJKWb
	YlE77+M3qhe+CZF12qEROJAgsBySqFWZtewZFhMatUItVqWRdeeJT5cbIVj4bR815qAH7VM
	DbcYdIhWcKPSxH/RrNfp953iROdc+Jxl1KiMUbU1+XBYyXkZsfEhAW0uVUY5s9kHdD3Kt8k
	4AtYz1+5vVFdCSQXWRHqjJPZAIz2C57KhSmDcWzR9SAeVKD+gJNAIg10UK8Wp9meC+z9m6O
	PFp4MotkfDpa42P9uA/7z1IEQtGrHvKydoldkhtsjrKea3mXcLn1vcBjHUYqyMBpXr929nS
	tEj3wmSU5Rror03HJ/Geha4siCh6GD3PImYj6XvCHbyZl5YdpTn3IU5UFf1U4xHj4j+X73t
	Nx7+pjwP+UQ+dqQFxQA1RcTanopBAtBE+EePBu4OaVdn6OGfa3DstyRo3r7pjd2qCVoMGhz
	EvYsRAvKWE16XcVgc47WKEmt/DKoo2LZYDndpJkP5CJjTJWcZR2vs7rltJEE2aTbIbw3v4o
	qfwgWDVRvX/Bv0HlLnIhZYTNkWSIHh2p+Ew4=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

On 10/28/25 04:08, Krzysztof Kozlowski wrote:
> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>> Reorder the Radxa board entries alphanumerically, with the following
>> exceptions:
> 
> 
> Why? You must explain that in the commit. What sorting is being used by
> this file? Why do you think your re-order matches that sorting rule?

I understand there is no rule, only your preference. Thanks.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



