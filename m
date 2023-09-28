Return-Path: <devicetree+bounces-4391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D9A7B255C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:35:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3CB092827F4
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD16523F;
	Thu, 28 Sep 2023 18:35:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F70137C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:35:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D123C433C7;
	Thu, 28 Sep 2023 18:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695926125;
	bh=kRFAwJeerof4Xj/Rqpb/7KVVGbGiS82bsy23rOFcCBM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jpHtj4087rKeHQLPj+FQ8XNBIAQHRNj9h2vBN0A+kuPX6ON0t7JWcysR3NLYGpZpv
	 IBSLmR3gfLm7qEyFGPKJBNJvzD5UGjGQfjlg4Gnt84ilSfD5eUn+EDHRBQdMCAlHsA
	 GXHd4DRtERaQTIcE67G43tJ2Y3Uieob25sVWjssfuzkTiveSg1PzwJXTLuUg6Phqgb
	 TbkAtOFuJirbyLjpjtp4MqqkDFnPaPt+CGscmTFGdjY49s8IgQbjleHs14m8dnW+sv
	 LCHJ+ALNL+ClD2l795B95g0WFkvcF8PXlSxvN2I9NQUB+JQGdiryvEsUqHdErq5V26
	 lpeBOSQN7WZtg==
Received: (nullmailer pid 1034755 invoked by uid 1000);
	Thu, 28 Sep 2023 18:35:22 -0000
Date: Thu, 28 Sep 2023 13:35:22 -0500
From: Rob Herring <robh@kernel.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: tali.perry1@gmail.com, venture@google.com, joel@jms.id.au, devicetree@vger.kernel.org, avifishman70@gmail.com, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net, linux@roeck-us.net, benjaminfair@google.com, openbmc@lists.ozlabs.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, yuenn@google.com, jdelvare@suse.com, andrew@codeconstruct.com.au, linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: hwmon: npcm: Add npcm845 compatible
 string
Message-ID: <169592612186.1034699.3436968254453890969.robh@kernel.org>
References: <20230927173850.103435-1-tmaimon77@gmail.com>
 <20230927173850.103435-2-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927173850.103435-2-tmaimon77@gmail.com>


On Wed, 27 Sep 2023 20:38:49 +0300, Tomer Maimon wrote:
> Add a compatible string for Nuvoton BMC NPCM845 Pulse Width Modulation (PWM)
> and Fan tach controller.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


