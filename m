Return-Path: <devicetree+bounces-5763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2F27B7D40
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id D08BF1F2217D
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 10:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C02107AA;
	Wed,  4 Oct 2023 10:36:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8388E29A5
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 10:36:39 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B4D5A1;
	Wed,  4 Oct 2023 03:36:38 -0700 (PDT)
Received: from pd9e2f797.dip0.t-ipconnect.de ([217.226.247.151] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qnzF3-004Vf9-BE; Wed, 04 Oct 2023 12:36:33 +0200
Date: Wed, 4 Oct 2023 12:36:31 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: bcousson@baylibre.com, tony@atomide.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: omap4-embt2ws: Add Bluetooth
Message-ID: <20231004123631.3827ab26@aktux>
In-Reply-To: <8e37d1ff-be19-4f70-a1a6-9a013a61782b@linaro.org>
References: <20231004070309.2408745-1-andreas@kemnade.info>
	<8e37d1ff-be19-4f70-a1a6-9a013a61782b@linaro.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

[...]
> > -	/*
> > -	 * BT + GPS in WL1283 in WG7500 requiring CLK32KAUDIO of pmic
> > -	 * which does not have a driver
> > -	 */
> > +	bluetooth-gnss {  
> 
> If you changed the bindings, please share a link. If not, this is not
> currently accepted and dtbs_check should point it out.
> 

$ make dtbs_check &>dtbs.log
$ grep -q omap4-epson-embt2ws.dtb dtbs.log  && echo yes
yes
$ grep bluetooth-gnss dtbs.log
$

So no complaints...

Regards,
Andreas

