Return-Path: <devicetree+bounces-44660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3B685F360
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:46:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CA191F22C2E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B138F2BB18;
	Thu, 22 Feb 2024 08:45:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 17.mo582.mail-out.ovh.net (17.mo582.mail-out.ovh.net [46.105.36.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D95D2BB1D
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.36.150
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708591545; cv=none; b=IGiHpUveIjfgUE4Gu/pi/sIZg8tD9rX6teLrQV9U2j5t2TlZyQskKdvSfyF4JQS0IjjZISH3ginJrzl4+MYRBWJnQQmYiLPNKSnyL2uo3OVlPOIocfwVmAfsXCuJFeobCxx3WhM4YFH73HzJaLK3axXXeV+qmPDPdToQGZQ+D2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708591545; c=relaxed/simple;
	bh=LPJlLHDkajqw80z9ma4e+vfl3sbURWj1jM2baBv2XzU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=NVmsAybrrz/xXD+ZRLLaPBLjz8qpv0duVQYT9VU+aZPfTIGDZtu6aDK/4EM8M6zx/P2ZorSjGra2rl6bet87NCDY23frr8fjETbyEdWHqMba+jRE8Ie+MJggwo1hmuUnawd0gGoMUgCpV6Vc/byxlQwajJHSPnrH14Tbm8Ryq9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl; spf=pass smtp.mailfrom=milecki.pl; arc=none smtp.client-ip=46.105.36.150
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=milecki.pl
Received: from director4.ghost.mail-out.ovh.net (unknown [10.109.140.55])
	by mo582.mail-out.ovh.net (Postfix) with ESMTP id 4TgR8h1sNmz1Bcp
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:27:32 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-62nvk (unknown [10.110.168.159])
	by director4.ghost.mail-out.ovh.net (Postfix) with ESMTPS id BBB0C1FEA0;
	Thu, 22 Feb 2024 08:27:30 +0000 (UTC)
Received: from milecki.pl ([37.59.142.108])
	by ghost-submission-6684bf9d7b-62nvk with ESMTPSA
	id DFvxKHIF12Uj8g8AoXgo/A
	(envelope-from <rafal@milecki.pl>); Thu, 22 Feb 2024 08:27:30 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-108S00278859a77-0453-42f0-9082-a2d4777bd21b,
                    A5D7B7EF969FCE09FFB803620F60B84AE0971723) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp:178.33.236.78
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 22 Feb 2024 09:27:30 +0100
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: William Zhang <william.zhang@broadcom.com>
Cc: Linux MTD List <linux-mtd@lists.infradead.org>, Linux ARM List
 <linux-arm-kernel@lists.infradead.org>, Broadcom Kernel List
 <bcm-kernel-feedback-list@broadcom.com>, f.fainelli@gmail.com,
 kursad.oney@broadcom.com, joel.peshkin@broadcom.com,
 anand.gore@broadcom.com, dregan@mail.com, kamal.dasu@broadcom.com,
 tomer.yacoby@broadcom.com, dan.beygelman@broadcom.com, David Regan
 <dregan@broadcom.com>, devicetree@vger.kernel.org, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH v5 05/12] arm64: dts: broadcom: bcmbca: Add NAND
 controller node
In-Reply-To: <20240207202257.271784-6-william.zhang@broadcom.com>
References: <20240207202257.271784-1-william.zhang@broadcom.com>
 <20240207202257.271784-6-william.zhang@broadcom.com>
Message-ID: <cd32d304d740e3c1875e449d459c805a@milecki.pl>
X-Sender: rafal@milecki.pl
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 392939071277214476
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrfeefgdduudekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghfkfigihgtgfesthekjhdttddtjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeejkeekgeejtdffffevffeivedtueeifeeuffegkeehkeeliedugfelfedutdeunecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipddujeekrdeffedrvdefiedrjeekpdefjedrheelrddugedvrddutdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheekvddpmhhouggvpehsmhhtphhouhht

On 2024-02-07 21:22, William Zhang wrote:
> diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
> b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
> index 2f124b027bbf..336016e334d9 100644
> --- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
> @@ -589,7 +589,7 @@ hsspi: spi@1000 {
>  			status = "disabled";
>  		};
> 
> -		nand-controller@1800 {
> +		nand_controller: nand-controller@1800 {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  			compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.1", 
> "brcm,brcmnand";
> @@ -597,7 +597,7 @@ nand-controller@1800 {
>  			reg-names = "nand", "nand-int-base";
>  			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "nand_ctlrdy";
> -			status = "okay";
> +			status = "disabled";
> 
>  			nandcs: nand@0 {
>  				compatible = "brcm,nandcs";

You disable NAND controller here breaking support for all dependant
devices.

I see you fix it afterwards in PATCH 06/12 but it's still a poor way of
handling such change and this issue can be hit e.g. during git bisect.

Also: given that 99% of BCM4908 devices use NAND controller can we just
save ourselves efforts and keep it enabled in .dtsi?

-- 
Rafał Miłecki

