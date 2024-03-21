Return-Path: <devicetree+bounces-52324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C554E886349
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 23:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66205B22B1A
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 22:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C548613666E;
	Thu, 21 Mar 2024 22:27:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 4.mo576.mail-out.ovh.net (4.mo576.mail-out.ovh.net [46.105.42.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64FC135A50
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 22:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.42.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711060038; cv=none; b=EkhcFVWZv9M7hcv0kEMy5ejgiDOmCArcSzXuj1hqk9s5isL7ZgunVO06W/j6xmuHa0U08zWgmpHWQ+HdbTgXL0K99+H4IlrhYDa3ACnJcd87YaoDTxskmsNBK+irgHMYzDI2UjrSjJpl+5IhVyw2q5l7LyxeHDaH08BUAFQ81c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711060038; c=relaxed/simple;
	bh=zwyKEdRE7H7IEjiTB5cpnvbkLQwliz0oDs02JUVfFfw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tn2gToUiO9EUc/q8Wvhu+dFs6gQgFOrSdgHzoENK6xnuXKecqNzsLsdSAdRSnwVcXWErfr+iuZnSw1cd0rXe6M8NUg+gu3KHwq/9L6rwELyb+fjuTO9XYR203UkqgPMwyAjqrckun+bjr+REV4NEctRpUpMroibY3p+jcJPLh2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=etezian.org; arc=none smtp.client-ip=46.105.42.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etezian.org
Received: from director3.ghost.mail-out.ovh.net (unknown [10.108.17.39])
	by mo576.mail-out.ovh.net (Postfix) with ESMTP id 4V0ynC0r8Bz1jNv
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 21:11:27 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-4n95s (unknown [10.110.178.52])
	by director3.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 3A1191FF08;
	Thu, 21 Mar 2024 21:11:23 +0000 (UTC)
Received: from etezian.org ([37.59.142.106])
	by ghost-submission-6684bf9d7b-4n95s with ESMTPSA
	id ZsTyN3ui/GVHywEAi1cfxw
	(envelope-from <andi@etezian.org>); Thu, 21 Mar 2024 21:11:23 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-106R006a4f822df-6018-48a0-80a3-c6ca87ca3952,
                    FCB1700D1C5E2813125D8B0A0227DF34E0FBA9B2) smtp.auth=andi@etezian.org
X-OVh-ClientIp:89.217.109.169
From: Andi Shyti <andi.shyti@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>, 
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20240319132503.80628-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240319132503.80628-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 0/4] Add RIIC support for Renesas RZ/V2H SoC
Message-Id: <171105548307.707638.3662266860210403199.b4-ty@kernel.org>
Date: Thu, 21 Mar 2024 22:11:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Ovh-Tracer-Id: 11709077559784311402
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrleejgdekhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevjghfuffkffggtgfgofesthejredtredtjeenucfhrhhomheptehnughiucfuhhihthhiuceorghnughirdhshhihthhisehkvghrnhgvlhdrohhrgheqnecuggftrfgrthhtvghrnhepffetheduffdvhfdugfffudfgjeejudehheegfeeguefhieeugffhgfeuffdvgfefnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpkeelrddvudejrddutdelrdduieelpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheejiedpmhhouggvpehsmhhtphhouhht

Hi

On Tue, 19 Mar 2024 13:24:59 +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Hi all,
> 
> This patch series aims to add RIIC support for Renesas RZ/V2H(P) SoC.
> 
> v2->v3
> - Included RB tags
> - For riic_writeb() now passing val as second argument and
>   offset as third argument
> 
> [...]

Applied to i2c/i2c-host on

git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git

Thank you,
Andi

Patches applied
===============
[1/4] dt-bindings: i2c: renesas,riic: Document R9A09G057 support
      commit: 1de515913c0fd8704d72d47ca5282e33b94d0992
[2/4] i2c: riic: Introduce helper functions for I2C read/write operations
      commit: 8c6a8f350c6338070b12ad62a71314dbea9e91db
[3/4] i2c: riic: Pass register offsets and chip details as OF data
      commit: fbe81ad8b4242980d951926015e4fe306dccf5b6
[4/4] i2c: riic: Add support for R9A09G057 SoC
      commit: 6d7c1c58c11c6fa5e7a4380478151d0860664601


