Return-Path: <devicetree+bounces-2068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D59AE7A99B5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B387C1C20F8E
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB55519464;
	Thu, 21 Sep 2023 17:23:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3C7168C2
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:01 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E41A58C29;
	Thu, 21 Sep 2023 10:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=SR4tc2C8QH3aDcO1yeckMC2gG9159NNEGGM7JsQkgzk=; b=pUsid1Rnlhp5ztvLrvJ2VjuFyI
	57xSUwp8u6pCFSszJ5CmjoFo3QvRQYmCyICbPrFPVo+Pg6fkHjFK5Lo/DEGgu74290o8gDkf3mu1w
	etTvMPT7/P8IvyMVrjCoEaOxQqbNR1j7rpm6Lv/P3XYB9Vue+YojbWFLIyjoe7pqkMWI=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:49192 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qjMRP-0000qN-D5; Thu, 21 Sep 2023 12:22:12 -0400
Date: Thu, 21 Sep 2023 12:22:10 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh@kernel.org>
Cc: jirislaby@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, hvilleneuve@dimonoff.com
Message-Id: <20230921122210.39da471eea03ab602ff60824@hugovil.com>
In-Reply-To: <169525159032.3189577.8595445478621843850.robh@kernel.org>
References: <20230920152015.1376838-1-hugo@hugovil.com>
	<20230920152015.1376838-5-hugo@hugovil.com>
	<169525159032.3189577.8595445478621843850.robh@kernel.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH 4/4] dt-bindings: sc16is7xx: convert to YAML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Wed, 20 Sep 2023 18:13:10 -0500
Rob Herring <robh@kernel.org> wrote:

> 
> On Wed, 20 Sep 2023 11:20:15 -0400, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Convert binding from text format to YAML.
> > 
> > Additions to original text binding:
> >   - add rs485 reference.
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  .../bindings/serial/nxp,sc16is7xx.txt         | 118 ----------------
> >  .../bindings/serial/nxp,sc16is7xx.yaml        | 126 ++++++++++++++++++
> >  2 files changed, 126 insertions(+), 118 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> >  create mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dts:27.13-26: Warning (reg_format): /example-0/serial@51:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dts:37.13-26: Warning (reg_format): /example-0/serial@53:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dts:48.13-26: Warning (reg_format): /example-0/serial@54:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

Hi Rob,
will fix it for V2.

I was already using 'make DT_CHECKER_FLAGS=-m dt_binding_check', but I
incorrectly introduced a space between DT_SCHEMA_FILES= and the
filename, and so it was ignored and all schemas were checked, and I lost
the warnings in all the noise. I now have fixed it.

Also, if someone is interested, I was trying to specify multiple files
with DT_SCHEMA_FILES, and I just found out (after analysing the
Makefile) that you need to separate them with the ":" character. It
would be a good thing to add it to the documentation, I could submit a
patch for this if you like.

Thank you,
Hugo.


> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230920152015.1376838-5-hugo@hugovil.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 
> 

