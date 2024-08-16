Return-Path: <devicetree+bounces-94255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C46954780
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:09:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFE781F2209C
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B004E1B86C9;
	Fri, 16 Aug 2024 11:08:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg156.qq.com (smtpbg156.qq.com [15.184.82.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2267E1ABEA5
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 11:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.82.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723806513; cv=none; b=n12DNT6dAWCS1HOVIXKW+Nz56/O7dqOObKtWGZ1C/oMvMXFF0D6HKxPJpolHh/vzcRzUr2VYHsp4ztg4/zTiC3FD7Rlg94lMOl9L6ZANFWtgYtNGrfrzUuYq7PdFe/HKzsYwrthsEKN17DqTR1OD6CDOxgsg3rgvCUhbjy28W9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723806513; c=relaxed/simple;
	bh=+EwnqTOhresiPp5Ytc1Jwes+RK65YDZPTFVwKrDPMQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AKtxHxWKhQ3ZTUyXu0am7TcPZXic/sEqZ0gFzCqeXHiagniXj/UuxkB50TvDp7hZVaHtPtYFwKaBDyMXI6pdFm83a28EGOCscbIM0DOiHNfJRLXkSu1dKsf+lKQMV/3nS6Fn41ufrRDMZnY///ue3ufj/U+5KJIIKEI/3fT7nOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.82.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp89t1723806401t3aec35p
X-QQ-Originating-IP: 0wlRF3zxp1l3iIw3+OaRPWaiC5FyfaU4cNMqjgS+Sbc=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 19:06:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14139005040169718902
Message-ID: <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
Date: Fri, 16 Aug 2024 20:06:37 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816023243.487-1-naoki@radxa.com>
 <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

thank you very much for your review.

but, I decided not to use "pwm-leds-multicolor" for Radxa E25.
please ignore this patch series.

really sorry.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/16/24 14:18, Krzysztof Kozlowski wrote:
> On 16/08/2024 04:32, FUKAUMI Naoki wrote:
>> enable "pwm-leds-multicolor" driver.
> 
> Why?
> 
> Best regards,
> Krzysztof
> 
> 


