Return-Path: <devicetree+bounces-17736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD1B7F3EF2
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 08:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B115D1C20B9F
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 07:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3E7E1DDE9;
	Wed, 22 Nov 2023 07:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9147318D;
	Tue, 21 Nov 2023 23:36:49 -0800 (PST)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id A1AFE1F8DC;
	Wed, 22 Nov 2023 08:36:47 +0100 (CET)
Date: Wed, 22 Nov 2023 08:36:43 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Lukas Wunner <lukas@wunner.de>,
	Lino Sanfilippo <l.sanfilippo@kunbus.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-integrity@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] reset: Add Infineon SLB9670 TPM reset driver
Message-ID: <ZV2viyiBdK4zh4TY@francesco-nb.int.toradex.com>
References: <ae40859b82494d75e9ad7bf616b3264138ad1f6a.1695754856.git.lukas@wunner.de>
 <75b775d0526e72f292e0546a306b37680714686c.1695754856.git.lukas@wunner.de>
 <ZV0+Zk590YSsvhFo@francesco-nb.int.toradex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZV0+Zk590YSsvhFo@francesco-nb.int.toradex.com>

On Wed, Nov 22, 2023 at 12:34:09AM +0100, Francesco Dolcini wrote:
> Not to mention that I would have expected some firmware to implement
> such reset timing and I was not able to find any (I looked at
> arm/arm64), if this is really required I the driver can work at all?
                                        ^^^ 
                     ...really required how the driver...

Francesco


