Return-Path: <devicetree+bounces-154250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F7DA4F7B1
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 678633AB851
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 07:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32DB1DFD9A;
	Wed,  5 Mar 2025 07:11:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-63.sinamail.sina.com.cn (mail78-63.sinamail.sina.com.cn [219.142.78.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3B778F39
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 07:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.63
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741158701; cv=none; b=dLdKMVNCQsvtWM9rXVwBZ65kDGNb1no+dgAdqYZbLCfNK949AFA9GuPKnk/UsyH1zHFffKOjI2VrpYTH70ohP+F/ZPU8UvuBdygzR9ehZtk0dHBdzO7dbYH3Vr8NowYE9SdwEEezSelHYU0G1lAQLOE9WfzDtWe4fqw9kBfbv0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741158701; c=relaxed/simple;
	bh=RUHAQ0IAj4zC/gRQ1ipF4hh2/5ZA+MCebufmX5tubNQ=;
	h=From:To:Cc:Subject:Date:Message-Id; b=c2jUvDxEucgtML4/z0q5/FOqRw8P627zKEkaDFftaZv0rtTY8pIQDW3kCC7f7s61tZ3pqD6GpnYYnoiDN7s+h2I5sw5eb/u9MWHcisqrC+zoEvYRMSEO9+whvBsHAtoHZXehQ1JwYTR0uazp4HxlFOSUYNZM7MBD4aGfNRVv7UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.32) with ESMTP
	id 67C7F8FA000079B4; Wed, 5 Mar 2025 15:10:51 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 6B0B3AE3CA3B4F78998DCD2B2CD2AC50
X-SMAIL-UIID: 6B0B3AE3CA3B4F78998DCD2B2CD2AC50-20250305-151051
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzysztof.kozlowski+dt@linaro.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Subject: RE: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Wed,  5 Mar 2025 15:10:50 +0800
Message-Id: <20250305071050.113541-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > +
> > +properties:
> > +  compatible:
> > +    const: everest,es8389
> 
> Device is really different than es8388?

yes, it's different from es8388

> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> > +  everest,adc-slot:
> > +    $ref: /schemas/types.yaml#/definitions/uint8
> > +    description: |
> > +      This property is used to set the slots of recording data when multiple
> > +      codecs are connected in PTDM mode.
> > +      please set this property to default if you are setting STDM mode.
> > +    minimum: 0x00
> 
> Drop, unsigned does not allow -1.
> 
> > +    maximum: 0x07
> > +    default: 0x00
> 
> All of these should be rather decimal.

I will try to fix the error

> > +
> > +  prefix_name:
> 
> No underscores in node names, missing vendor prefix... but more
> important:  I don't understand the need for this property. Description copies property name so it is not useful.
> 
> Drop. You maybe wanted dai prefix, but this is already in dai-common.

I will update description at v4 PATCH

> > +  everest,dmic-enabled:
> > +    $ref: /schemas/types.yaml#/definitions/flag
> > +    description:
> > +      The property is a choice between PDM and AMIC
> > +
> 
> No supplies?

I will drop the property

> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#sound-dai-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c{
> 
> Missing space.
> 
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +      es8389: es8389@10 {
> 
> Node names should be generic. See also an explanation and list of examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 
> > +        compatible = "everest,es8389";
> > +        reg = <0x10>;
> > +        everest,adc-slot = [00];
> 
> Please open other bindings or DTS and take a look how single number is encoded. In general, please rather base your work on latest bindings and DTS accepted by reviewers and use them as learning/template to avoid common mistakes. At least two comments in this review could be avoided if you did this.
> 
> > +        everest,dac-slot = [00];
> > +        prefix_name = "es8389_0";
> 
> Drop

I will try to fix it

