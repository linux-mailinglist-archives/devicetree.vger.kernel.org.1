Return-Path: <devicetree+bounces-52325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB53886355
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 23:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42C23B22B2B
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 22:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD17110A;
	Thu, 21 Mar 2024 22:30:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 3.mo560.mail-out.ovh.net (3.mo560.mail-out.ovh.net [46.105.58.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D3F2919
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 22:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.58.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711060235; cv=none; b=F2L/emgp4WTPiwyoG3sOEetWzJr4zI+/Crdk/z2S3+5OQLuIyOt5zL5X3yfKHydsX2zIgQ/p/xtDtSHTT0lsfGiykBinuvB3B5rntoR68ORK9W2/g2BZPvwEodYT8YLVQDH32aDknhVZvA0UCvbSUX57k7PZpN+no+Wl0b26zq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711060235; c=relaxed/simple;
	bh=djABA0MQUQ/IUXuxCfbdjgnBP5/7imImBFnUbC+vJz4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uyvH/fUesBM/BJFvV0wEg00+fRwxOzEm86HqGxnhyJWGBjit8SVI1tSgfFx5MVt7m5N+GcMhySS+TvUPe0P8eUY6fpknlzBBqfqk4DyyNVM0C0Q1w95DCH/PhNLP13rZ2JIVlzbZXpZItB24oOQLPerGrWdT7cJkjOJMhR7nGDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=etezian.org; arc=none smtp.client-ip=46.105.58.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etezian.org
Received: from director6.ghost.mail-out.ovh.net (unknown [10.109.148.116])
	by mo560.mail-out.ovh.net (Postfix) with ESMTP id 4V0yn6716Kz1M8q
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 21:11:22 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-rvvvl (unknown [10.110.96.223])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 3CBD11FEA3;
	Thu, 21 Mar 2024 21:11:20 +0000 (UTC)
Received: from etezian.org ([37.59.142.96])
	by ghost-submission-6684bf9d7b-rvvvl with ESMTPSA
	id wCfFC3ii/GWbmBoAVwvt7A
	(envelope-from <andi@etezian.org>); Thu, 21 Mar 2024 21:11:20 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-96R00106e97499-cce7-40cf-b671-3279a700b6aa,
                    FCB1700D1C5E2813125D8B0A0227DF34E0FBA9B2) smtp.auth=andi@etezian.org
X-OVh-ClientIp:89.217.109.169
From: Andi Shyti <andi.shyti@kernel.org>
To: Animesh Agarwal <animeshagarwal28@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Vladimir Zapolskiy <vz@mleia.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240320084623.82248-1-animeshagarwal28@gmail.com>
References: <20240320084623.82248-1-animeshagarwal28@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: i2c: nxp,pnx-i2c: Convert to dtschema
Message-Id: <171105547918.707638.11304000819202245225.b4-ty@kernel.org>
Date: Thu, 21 Mar 2024 22:11:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Ovh-Tracer-Id: 11707670182381750808
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrleejgdekhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevjghfuffkffggtgfgofesthejredtredtjeenucfhrhhomheptehnughiucfuhhihthhiuceorghnughirdhshhihthhisehkvghrnhgvlhdrohhrgheqnecuggftrfgrthhtvghrnhepffetheduffdvhfdugfffudfgjeejudehheegfeeguefhieeugffhgfeuffdvgfefnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpkeelrddvudejrddutdelrdduieelpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehiedtpdhmohguvgepshhmthhpohhuth

Hi

On Wed, 20 Mar 2024 14:16:20 +0530, Animesh Agarwal wrote:
> Convert the NXP PNX I2C Controller bindings to DT schema.
> Keep only one example in DT schema to remove redundancy.
> 
> 

Applied to i2c/i2c-host on

git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git

Thank you,
Andi

Patches applied
===============
[1/1] dt-bindings: i2c: nxp,pnx-i2c: Convert to dtschema
      commit: e73b7060deb7da42f4e887cb726d0c7019a84cd0


