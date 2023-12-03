Return-Path: <devicetree+bounces-21129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E3E802720
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 20:49:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6E52B207F1
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 19:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A26B0182DF;
	Sun,  3 Dec 2023 19:49:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 266A3D5;
	Sun,  3 Dec 2023 11:48:55 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9sSK-00062s-Af; Sun, 03 Dec 2023 20:48:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-i2c@vger.kernel.org
Subject:
 Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
Date: Sun, 03 Dec 2023 20:48:43 +0100
Message-ID: <4413905.22IY78Rhhi@diego>
In-Reply-To: <20231203190620.26of3xrcoosnpicb@zenone.zhora.eu>
References:
 <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org>
 <20231203190620.26of3xrcoosnpicb@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andi,

Am Sonntag, 3. Dezember 2023, 20:06:20 CET schrieb Andi Shyti:
> Hi Tim,
> 
> On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> > Rockchip RV1126 is using old style i2c controller, the i2c2
> > bus uses a non-sequential offset in the grf register for the
> > mask/value bits for this bus.
> > 
> > This patch fixes i2c2 bus on rv1126 SoCs.
> > 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > Acked-by: Heiko Stuebner <heiko@sntech.de>
> 
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

you're listed as the maintainer for the i2c busses,
are you going to pick this one patch yourself?
Or do you expect a different handling?

I.e. it doesn't really tie into the dts patches and everything will come
together nicely in linux-next and during the next merge-window.

Thanks
Heiko



