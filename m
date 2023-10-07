Return-Path: <devicetree+bounces-6657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 154637BC587
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 09:24:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 465851C208CF
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 07:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31CDFF50C;
	Sat,  7 Oct 2023 07:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68DF507
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 07:24:44 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id DD05BB9;
	Sat,  7 Oct 2023 00:24:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 56403809E;
	Sat,  7 Oct 2023 07:24:43 +0000 (UTC)
Date: Sat, 7 Oct 2023 10:24:42 +0300
From: Tony Lindgren <tony@atomide.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andreas Kemnade <andreas@kemnade.info>, bcousson@baylibre.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: omap4-embt2ws: Add Bluetooth
Message-ID: <20231007072442.GW34982@atomide.com>
References: <20231004070309.2408745-1-andreas@kemnade.info>
 <6b4968d9-80d3-4a5a-b42e-3982825e45e9@linaro.org>
 <20231007070015.GS34982@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231007070015.GS34982@atomide.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Tony Lindgren <tony@atomide.com> [231007 07:00]:
> * Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [231005 08:47]:
> > On 04/10/2023 09:03, Andreas Kemnade wrote:
> > > Since the required clock is now available, add bluetooth.
> > > 
> > > Note: Firmware (bts file) from device vendor reroutes tx for some time
> > > during initialisation and later put it back, producing timeouts in
> > > bluetooth initialisation but ignoring that command leads to proper
> > > initialisation.
> > > 
> > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > ---
> > 
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Applying into omap-for-v6.7/dt thanks.

Looks like this causes the following #clock-cells warning so dropping
this patch.

Regards,

Tony

arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts:457.17-462.4: Warning (clocks_property):
/ocp/interconnect@48000000/segment@0/target-module@6c000/serial@0/bluetooth-gnss:
Missing property '#clock-cells' in node /ocp/interconnect@48000000/segment@0/targe


