Return-Path: <devicetree+bounces-14418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 748737E45FA
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 17:28:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A83A4B20C8E
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 16:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526CA328C8;
	Tue,  7 Nov 2023 16:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="ajgl1Gz6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491E52F509
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 16:28:13 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0367F1BCF;
	Tue,  7 Nov 2023 08:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=QR8eNGZtZ5/4gDAfH5F8xdJ5v45aXKC3TOBwTCF9ej8=; b=ajgl1Gz6XOyG4dhnPFkvUlQBx1
	M7E8WvCd7CqEbNY6qVXRXFdh3EUHT3GUSQTqUOvHtdNYPDu8iSaro4oddNA9caXjPU7otOvdZiv85
	pFLtkNCqgyLLF+Ys/fThfiTX4SDgNzznSx9dx0mmViWNm/nqXhAdiFNbBlaqf3/8OwoQ=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:60652 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1r0Ovt-0007qL-5P; Tue, 07 Nov 2023 11:28:05 -0500
Date: Tue, 7 Nov 2023 11:28:04 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Message-Id: <20231107112804.e854521b47caeafdc642a2f3@hugovil.com>
In-Reply-To: <8534fc67-83b3-4f41-a1e3-635866e1dd9c@linaro.org>
References: <20231107160122.1648093-1-hugo@hugovil.com>
	<8534fc67-83b3-4f41-a1e3-635866e1dd9c@linaro.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -0.0 T_SCC_BODY_TEXT_LINE No description available.
	* -2.3 NICE_REPLY_A Looks like a legit reply (A)
Subject: Re: [PATCH] arm64: dts: imx8mn-var-som: reorder reg properties
 after compatible strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Tue, 7 Nov 2023 17:19:20 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 07/11/2023 17:01, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Move reg nodes after the compatible string, to follow DT conventions.
> 
> This is a bit of churn... like patches for checkpatch. But unlike
> checkpatch, it's not even documented.

Hi,
I do not really understand your point or if I must change
something...

But looking at a lot of dts, the reg property is always following the
compatible string, so I assumed it was an undocumented convention or
best practice...

Hugo.

