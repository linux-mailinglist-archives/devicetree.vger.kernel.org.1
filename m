Return-Path: <devicetree+bounces-155111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD208A55A34
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 23:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44573188A244
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 22:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8307D27C85A;
	Thu,  6 Mar 2025 22:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="iLvFTOS1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C386DA2D
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 22:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741301622; cv=none; b=YrDVSqzxunCfyqQWPd4qeRx6tjf9VuHID3e4brnnZpdxy1NDjRgmQ+sXACMvJJLa6F+aNOZ26cwmvP45ecOepLIGLwcFn86fO4udXkwKyY6HVG0ZgSKoAtq6OMjSNzeQCvEAszdKP8W6JjNM4Sh31hDG7tO/85TmUfovbEJ+RkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741301622; c=relaxed/simple;
	bh=qa2UV/Sy+MaIwgCS6wwLKc3HutozQpnXULdpZhWQNpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lnG4aVMkxE1rT2kTH9dItfvvF3MFkCuXjyjenHQhR20vp9hzivClbUc43LqhxABvL8UuGfxbvrL/PIjkADdp/srFWb34Ur3Uo/gpJTFr+DJ5p4sAB+/azwm+3X3Bs1k/VK1TfJaZ79j+gnz7BxyFBsOTfGFRomQwODNQS1vpT4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=iLvFTOS1; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741301614;
 bh=BL399FFBDZ59QPzqtz+58fHUwMJC7+0wO+ycM6zcMQI=;
 b=iLvFTOS1rKWtnuzsH63gmdQJl3v1p61z9K5Gw6lclRCg/pPdZagDff3itldNJEyfU4Bu5DjXD
 /c5PI5qFisP5ahh65qIA1sjGwlrkdq9qSgazshzKsvZrARthy1AIUguZgr3l+zZ45tODlC2J0Cp
 jPD51WlpoQI/Jjr6AqUzmXuRAQQz6ah0oT8OMngQsSlJ01Vk1HTTVlpguL5KHDVArAPK7/B57vI
 WfeSzpdvgqr5VuTRMYtRYfC6suVcNW22LRPSZ8lH+TzwVikr5j2tgHQn+A2yQ/W5QghJw2vWBj5
 QnBaTUj2dlpJQw+gj0DqvE4VmDVc9/+T6r6eBPncURFQ==
X-Forward-Email-ID: 67ca276cc1763851c065c79e
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <24a8691f-9faf-4657-b819-183fec3d1a15@kwiboo.se>
Date: Thu, 6 Mar 2025 23:53:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add compatible
 string for RK3528
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
 Yao Zi <ziyao@disroot.org>, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250305214108.1327208-1-jonas@kwiboo.se>
 <20250305214108.1327208-2-jonas@kwiboo.se>
 <20250306-frisky-spiffy-bullmastiff-ad9e49@krzk-bin>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250306-frisky-spiffy-bullmastiff-ad9e49@krzk-bin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 2025-03-06 10:36, Krzysztof Kozlowski wrote:
> On Wed, Mar 05, 2025 at 09:41:02PM +0000, Jonas Karlman wrote:
>> The SDHCI controller in Rockchip RK3528 is similar to the one included
>> in RK3588.
>>
>> Add compatible string for the SDHCI controller in RK3528.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
> 
> No power domains here? Post complete support, so this won't have to be
> changed in near future.

To my knowledge this should be complete support. However, there are some
rx/tx tap num and strobe delay num configuration that needs to be tuned
to fully support the faster HS400/HS400ES transfer modes.

For that we could need something like the PHY output/input tap delays
described in mmc/sdhci-am654.yaml. Still unclear to me if the different
delayed used by vendor driver is SoC specific and can live in driver or
if they instead are reference board specific and could be part of the
device tree.

Regards,
Jonas

> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 


