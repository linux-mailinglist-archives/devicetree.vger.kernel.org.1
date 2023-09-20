Return-Path: <devicetree+bounces-1696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AFA7A77A5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:34:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CBFC1C20F3F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7435D154B1;
	Wed, 20 Sep 2023 09:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E15611730;
	Wed, 20 Sep 2023 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51BA7C433C8;
	Wed, 20 Sep 2023 09:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695202484;
	bh=QRqraJthrB8s9rPFRvGC6l5CWWwWQnee/47O8rOjCCw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hHW7X4m7KYpDH5gfY61PdqOpjN3Y7rHvb8kCZPi2x4QeZ4282xmLjtH/VG98fLLt2
	 nnMOFneixT9add37HLtFNJq4cPxFz0G0CYiPYBF4mfuu0Wd7Ylcic2Yyig9S88zxI/
	 wZ1y138LMKQb3ZE6Dc99cRaKauE718Qsi7GkZqONwyB7rIFvccLpXII9v54328Y5Xf
	 QMXEZusEupYfBMolEIdWaI69MR1OWSs30AEjcVl3TLDIdedsK3IFxjtHA+Oc2h17Q8
	 HkBgJqIzsp7+r3Xf1XkVKFMg6EwaPxvbBnArHbwZ0wuxPx8VLJEKw6szjW+9BTpb7T
	 nXEayUPV2CyBA==
From: Lee Jones <lee@kernel.org>
To: Herve Codina <herve.codina@bootlin.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Qiang Zhao <qiang.zhao@nxp.com>, 
 Li Yang <leoyang.li@nxp.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, 
 Xiubo Li <Xiubo.Lee@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
 Nicolin Chen <nicoleotsuka@gmail.com>, Randy Dunlap <rdunlap@infradead.org>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: netdev@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 alsa-devel@alsa-project.org, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
In-Reply-To: <528425d6472176bb1d02d79596b51f8c28a551cc.1692376361.git.christophe.leroy@csgroup.eu>
References: <cover.1692376360.git.christophe.leroy@csgroup.eu>
 <528425d6472176bb1d02d79596b51f8c28a551cc.1692376361.git.christophe.leroy@csgroup.eu>
Subject: Re: (subset) [PATCH v4 23/28] mfd: core: Ensure disabled devices
 are skiped without aborting
Message-Id: <169520247904.3353856.9378855807085829647.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 10:34:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Fri, 18 Aug 2023 18:39:17 +0200, Christophe Leroy wrote:
> The loop searching for a matching device based on its compatible
> string is aborted when a matching disabled device is found.
> This abort prevents to add devices as soon as one disabled device
> is found.
> 
> Continue searching for an other device instead of aborting on the
> first disabled one fixes the issue.
> 
> [...]

Applied, thanks!

[23/28] mfd: core: Ensure disabled devices are skiped without aborting
        commit: 36d139dc63db18eb95165fcc2bd3c670c948d605

--
Lee Jones [李琼斯]


