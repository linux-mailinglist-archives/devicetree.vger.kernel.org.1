Return-Path: <devicetree+bounces-4708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B8E7B382F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:56:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 75EEDB20C22
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB32A4122D;
	Fri, 29 Sep 2023 16:56:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801B515AF2
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:55:58 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B4681AE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:55:56 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1F11EFF80A;
	Fri, 29 Sep 2023 16:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696006554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0s6liZ65S6LcJzLjeut2b8fzES+0W9Bu/QBNIiJjhuo=;
	b=Srl+Z0pKN0Iy2DbOjmmfz1bA4sj8VMcOUJwle+YTtLygArIYYgu4JmXm4j5U2HmZVffHcT
	s0jxEaMmKFM1dMUZcM7u1gYTb8qdhuAhHiZ0okSY8dickP3CwH56uV30hcPBxwOtO50fdu
	tGZsz9kII8WUHXt9IosU8qyThOwREJ33b/GQivWQ3XTydHnw2tw2rOW/BKMQK+MVbZOAub
	Mrw8RTjfhgeFoWpL1i+uhEkFRlQYtn6hhtjMM1aZokrRxkJNz5hJBsFnNA1/2Gv8Fp7ZdZ
	rABKnf/VczcqehgJfCZW9d1ttUEL58CqoiH+wDtSe75Hle9IKw9RJxVP4270QA==
Date: Fri, 29 Sep 2023 18:55:49 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
Message-ID: <20230929185549.18aa57e7@booty>
In-Reply-To: <20230928125536.1782715-2-l.stach@pengutronix.de>
References: <20230928125536.1782715-1-l.stach@pengutronix.de>
	<20230928125536.1782715-2-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Lucas,

On Thu, 28 Sep 2023 14:55:36 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)

I was in Cc on your v3 but not on this v4. Maybe the " (v2)" on these
lines confuses get_maintainers.pl?

> Tested-by: Marek Vasut <marex@denx.de> (v1)
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> (v2)
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (v3)

A changelog would be appreciated, especially as a long time has gone
since I last looked at these patches.

Confirmed for this v4:

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
[On Avnet MSC SM2-MB-EP1 based on the SMARC module]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

