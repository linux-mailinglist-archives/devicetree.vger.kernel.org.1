Return-Path: <devicetree+bounces-237316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E72C4F4BB
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 021C8188E6FD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811BD365A13;
	Tue, 11 Nov 2025 17:42:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16D92F7AA4
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762882926; cv=none; b=pZVMP+jsg8/KLpIO1WACM8YNZLbLxjHsg/JTDlB0yfsJ/q9wsA6P9p7t4YZC8a5PpGW9C7YGYDGdD/APYhG7K8kqQhaAhSMwdch1mSKvC945U9AEMcO1Ggwda3b6c2NNsaJHD7M3AGfg5h/YmjUEOUM55b4jEzEZ2zIvARV+ZDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762882926; c=relaxed/simple;
	bh=8C3OKfEDERrVEr8x+qfQYC+8B/6S0i1hQBcvICkv4rA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uI9V8P165tK6rjtq3FDYk/ep2QteuEM0N5NTComEoI59XmwMexpvgiIKi/DkSVrJuWE1UUBtI6NijOsMkD+CX3/aSAxId5LTeX6Cg+H4pgQyO7v9xACxAo7zb+MxMD9jpVICO660MbmoCETScokg+LOluLlxPztOmaQ1fp2Cccg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIsNO-00017y-0c; Tue, 11 Nov 2025 18:41:54 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIsNN-008Ewj-2c;
	Tue, 11 Nov 2025 18:41:53 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIsNN-00EYfh-2H;
	Tue, 11 Nov 2025 18:41:53 +0100
Date: Tue, 11 Nov 2025 18:41:53 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	linux-media@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/4] media: dt-bindings: adi,adv7180: add VPP and CSI
 register maps
Message-ID: <aRN1YYaIOZp3pOZx@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	linux-media@vger.kernel.org, kernel@pengutronix.de
References: <20251111-b4-adv7180-vpp-sub-device-v1-0-9877fe9f709b@pengutronix.de>
 <20251111-b4-adv7180-vpp-sub-device-v1-1-9877fe9f709b@pengutronix.de>
 <176287518543.2990003.9870195789780384180.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <176287518543.2990003.9870195789780384180.robh@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Tue, 11 Nov 2025 09:33:05 -0600, Rob Herring (Arm) wrote:
> On Tue, 11 Nov 2025 15:36:14 +0100, Michael Tretter wrote:
> > The ADV7280 and ADV7280-M have up to three register maps for the VPP and
> > CSI. The address of these register maps may be programmed via registers
> > in the main register map.
> > 
> > Allow to specify the addresses of the VPP and CSI in the device tree to
> > solve address conflicts on a board level.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  .../devicetree/bindings/media/i2c/adi,adv7180.yaml | 44 ++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/adi,adv7180.example.dtb: composite-in@20 (adi,adv7280-m): 'reg-names' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/media/i2c/adi,adv7180.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/adi,adv7180.example.dtb: composite-in@20 (adi,adv7280-m): reg: [[32], [66], [68]] is too long
> 	from schema $id: http://devicetree.org/schemas/media/i2c/adi,adv7180.yaml

I assumed that I could conditionally override the properties and use the
existing definition as default. It seems that I have to explicitly set
the default in the else path.

I'll fix this in v2.

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251111-b4-adv7180-vpp-sub-device-v1-1-9877fe9f709b@pengutronix.de
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

