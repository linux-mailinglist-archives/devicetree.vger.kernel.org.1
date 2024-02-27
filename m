Return-Path: <devicetree+bounces-46197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EF386867E
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 03:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 278951F25F40
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 02:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67F6D304;
	Tue, 27 Feb 2024 02:00:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 2.mo560.mail-out.ovh.net (2.mo560.mail-out.ovh.net [188.165.53.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545766AB8
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 02:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.53.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708999233; cv=none; b=XvJSomwEzCudmyC3EpKGkmPvke18yf8Jr3lQUscDCzc/o9pDP6MmHHZ2ny+s7m0YK6ZqVZUpC4nrxbhIzHd930TYtbHoGN3i9u7o3386NcuqjScgLPPeQbuNMy+kXt9wDPzQnkx+0AeKtfPMJBvM+Cx2Yk5WJjOXCSmwlyHPl2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708999233; c=relaxed/simple;
	bh=b0rYrIvZ2PxxtMVqAv6cvqq7svsw2UjpEiw6r+xa4/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=L+eaY815cbxAGXmiBHrZFozEEYiwBCqUU2W6iZnBH4z590qMQOxba7IE2GMh+JcQ6WheE9PIYmTia5kp//044TpvbE4wJdAXAUMYFeWjcVTRWhCJw+bLTG2WivLYvJ/9Ir850AZPIdMdFVWEImudQkyYAwWn0H+sC4RNx7BMcx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=etezian.org; arc=none smtp.client-ip=188.165.53.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etezian.org
Received: from director2.ghost.mail-out.ovh.net (unknown [10.109.139.217])
	by mo560.mail-out.ovh.net (Postfix) with ESMTP id 4TkKSy3Z3Cz1R2K
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 01:21:38 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-ktckq (unknown [10.110.113.175])
	by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 445E91FD7C;
	Tue, 27 Feb 2024 01:21:35 +0000 (UTC)
Received: from etezian.org ([37.59.142.105])
	by ghost-submission-6684bf9d7b-ktckq with ESMTPSA
	id 3bEUDh853WW1TAkA7T8CUA
	(envelope-from <andi@etezian.org>); Tue, 27 Feb 2024 01:21:35 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-105G0061aec5354-f92c-4587-a66e-e47a930129e2,
                    9285090D84508773EC2C25A4099646E261C64314) smtp.auth=andi@etezian.org
X-OVh-ClientIp:89.217.109.169
From: Andi Shyti <andi.shyti@kernel.org>
To: wsa+renesas@sang-engineering.com, aisheng.dong@nxp.com, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: linux-imx@nxp.com, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240226070910.3379108-1-peng.fan@oss.nxp.com>
References: <20240226070910.3379108-1-peng.fan@oss.nxp.com>
Subject: Re: [PATCH V2] dt-bindings: i2c: imx-lpi2c: add i.MX95 LPI2C
Message-Id: <170899689466.412407.9784756949191982375.b4-ty@kernel.org>
Date: Tue, 27 Feb 2024 02:21:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Ovh-Tracer-Id: 4116853009816291852
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrgeefgdeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevjghfuffkffggtgfgofesthejredtredtjeenucfhrhhomheptehnughiucfuhhihthhiuceorghnughirdhshhihthhisehkvghrnhgvlhdrohhrgheqnecuggftrfgrthhtvghrnhepffetheduffdvhfdugfffudfgjeejudehheegfeeguefhieeugffhgfeuffdvgfefnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpkeelrddvudejrddutdelrdduieelpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheeitddpmhhouggvpehsmhhtphhouhht

Hi

On Mon, 26 Feb 2024 15:09:10 +0800, Peng Fan (OSS) wrote:
> Add i.MX95 LPI2C compatible entry, same as i.MX93 compatible
> with i.MX7ULP.
> 
> 

Applied to i2c/i2c-host on

git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git

Thank you,
Andi

Patches applied
===============
[1/1] dt-bindings: i2c: imx-lpi2c: add i.MX95 LPI2C
      commit: 2a8d18cd63dc5175c67a42fe8cb7cd3cd465d845


