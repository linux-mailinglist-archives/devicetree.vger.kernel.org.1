Return-Path: <devicetree+bounces-15061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 889CE7E8397
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 21:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E48B1C2098A
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 20:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFA23B78F;
	Fri, 10 Nov 2023 20:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06973B785
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 20:18:52 +0000 (UTC)
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FBA1A9;
	Fri, 10 Nov 2023 12:18:51 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r1Xxe-0008HJ-0s;
	Fri, 10 Nov 2023 20:18:38 +0000
Date: Fri, 10 Nov 2023 20:18:33 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: mediatek,mtk-wdt: add MT7988
 watchdog and toprgu
Message-ID: <ZU6QGb_4kjw2katx@makrotopia.org>
References: <d7b72b3e-c8f4-4675-ae62-26f5ae576f0a@linaro.org>
 <ZU5A59KO8Y_Q97IG@makrotopia.org>
 <a56cfe76-ab03-4187-b6f1-04a5c3414e64@linaro.org>
 <ZU5DVNOmtyFwUTdC@makrotopia.org>
 <708046ae-a821-420c-959a-ab5cb712aa9e@linaro.org>
 <ZU5IcrjqQpwMopJC@makrotopia.org>
 <6576d4a6-31fa-4780-9a8a-5a1d1974836f@linaro.org>
 <bb0ed593-082b-4edd-9a1e-78cccf796677@linaro.org>
 <ZU5jU-T0m5QW4ZeF@makrotopia.org>
 <8846adad-9504-4ffd-b9c3-f5e78082d261@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8846adad-9504-4ffd-b9c3-f5e78082d261@linaro.org>

On Fri, Nov 10, 2023 at 08:58:57PM +0100, Krzysztof Kozlowski wrote:
> I am repeating myself... but I don't know how to put it other way. I did
> not ask you to rewrite your driver. I asked to drop the change to
> bindings, because it is entirely pointless.
> 
> Drop this change, only this. No need to rewrite drivers, they stay the same.

Dropping this change (I'm assuming you are referring to the hunk adding
include/dt-bindings/reset/mt7988-resets.h) and also not adding that
header file using a seperate commit means that there won't be a header
defining the reset names.

The result would be having to numerically reference the specific
resets in the device tree.

This is, of course, possible, but I don't understand what the advantage
would be.

