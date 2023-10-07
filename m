Return-Path: <devicetree+bounces-6653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ADB7BC54C
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 09:00:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DD0D2821AA
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 07:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B7A848B;
	Sat,  7 Oct 2023 07:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E736C79EE
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 07:00:18 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 42174BF;
	Sat,  7 Oct 2023 00:00:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id AE4DD809E;
	Sat,  7 Oct 2023 07:00:16 +0000 (UTC)
Date: Sat, 7 Oct 2023 10:00:15 +0300
From: Tony Lindgren <tony@atomide.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andreas Kemnade <andreas@kemnade.info>, bcousson@baylibre.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: omap4-embt2ws: Add Bluetooth
Message-ID: <20231007070015.GS34982@atomide.com>
References: <20231004070309.2408745-1-andreas@kemnade.info>
 <6b4968d9-80d3-4a5a-b42e-3982825e45e9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b4968d9-80d3-4a5a-b42e-3982825e45e9@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [231005 08:47]:
> On 04/10/2023 09:03, Andreas Kemnade wrote:
> > Since the required clock is now available, add bluetooth.
> > 
> > Note: Firmware (bts file) from device vendor reroutes tx for some time
> > during initialisation and later put it back, producing timeouts in
> > bluetooth initialisation but ignoring that command leads to proper
> > initialisation.
> > 
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applying into omap-for-v6.7/dt thanks.

Tony

