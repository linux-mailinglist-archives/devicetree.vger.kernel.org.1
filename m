Return-Path: <devicetree+bounces-20913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B042E80191A
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 01:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22281C20AEB
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 00:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DAF7E2;
	Sat,  2 Dec 2023 00:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="0W7GSsCG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57486FF
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:44:20 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id 7CD34379434
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 00:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hTdry2zvMKu4 for <devicetree@vger.kernel.org>;
	Sat,  2 Dec 2023 01:45:56 +0100 (CET)
Received: from werkpc.localnet (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
	by mail.rnplus.nl (Postfix) with ESMTPSA id B90863793AD;
	Sat,  2 Dec 2023 01:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1701477956; bh=yRBPEQxU6QTn7AumN8CC7LcN7WuQwY78yyLiGx2740g=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=0W7GSsCGwYC8FMG7Ils5SuWyAqyZJGF8bDINj62Wqb53kV2eBh6mstVrI+f4phf/I
	 6FdLKR168fsp2mZBV1EVnedjh6vFwfmvY2DxrSpFNCbAI8h0q9V3+9AREQe7M4IlYx
	 BYCR+gz0WJ2UOmyxJgVaMMPUQBUSTZuGEyDbk2Xg=
From: Renze Nicolai <renze@rnplus.nl>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au,
 renze@rnplus.nl
Subject: Re: [PATCH v3 0/2] ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
Date: Sat, 02 Dec 2023 01:44:17 +0100
Message-ID: <12332130.O9o76ZdvQC@werkpc>
In-Reply-To: <20231202003908.3635695-1-renze@rnplus.nl>
References: <20231202003908.3635695-1-renze@rnplus.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello again,

A small addition to my cover letter for v3 of the patch:

I forgot to mention in the changelog from v2 to v3 that I also modified the 
tachometer configuration to correctly map the tachometer inputs to the fan 
headers on the board.

Greetings,
Renze Nicolai

On Saturday, December 2, 2023 1:38:43 AM CET you wrote:
> Hello,
> 
> These patches add a device-tree (and a bindings update) for the
> Aspeed BMC on the ASRock X570D4U, so that it can be added as a
> supported OpenBMC platform.
> 
> Changes since v2:
>   - Renamed leds to led-0 and led-1 to match
> Documentation/devicetree/bindings/leds/leds-gpio.yaml - Added aliasses and
> labels for the i2c-mux on i2c bus 4
>   - Added the missing blank line between the ehci1 and uhci nodes
> 
> Greetings,
> Renze Nicolai
> 
> Renze Nicolai (2):
>   dt-bindings: arm: aspeed: add Asrock X570D4U board
>   ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
> 
>  .../bindings/arm/aspeed/aspeed.yaml           |   1 +
>  arch/arm/boot/dts/aspeed/Makefile             |   1 +
>  .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 377 ++++++++++++++++++
>  3 files changed, 379 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts





