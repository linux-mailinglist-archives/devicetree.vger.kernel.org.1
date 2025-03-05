Return-Path: <devicetree+bounces-154208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EB7A4F502
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 03:58:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8D2F3A9533
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 02:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D83C2156F44;
	Wed,  5 Mar 2025 02:58:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-79.sina.com.cn (smtp134-79.sina.com.cn [180.149.134.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6FCA95C
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 02:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.79
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741143524; cv=none; b=YlaX4x7Dg1FZ/NKb2AX5RPw7AgicCZuS8Z9ftR3a5Sm84RE03FZLm8h1vY1Y7gIIbT4/2Kt3dt7KwjNEIPF/tVAiv0a5/358ZbhqS/O0L6tF/FKedLOxHLBiOA8Ciy62ztGs0nEKfcmYMttuA3zLCdfijPv6+3dC+vVaTApIVaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741143524; c=relaxed/simple;
	bh=G7lNHb5FcPzHpYwz16TxGaZ/8cEKwfkgGB9lffwD2f4=;
	h=From:To:Cc:Subject:Date:Message-Id; b=E/BEmxgJZBgQNFU79Fth7l9lQ1ifSsubAIVrOv/7MK8Q/r1jb4no/UXPPkYOq2ibXNm8r/HgB0oB2O8dxqHZmZoXUPHDX/FIkDmJRVTSjsknU9NmXwJ4+SUWSiHGqkAyt8Y72QTHaayLu9pjtAKCKTaZF0Mjkl7i0DaIKqzQKAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.79
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.29) with ESMTP
	id 67C7BD4A00000ABB; Wed, 5 Mar 2025 10:56:11 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 90DE6B9322F841CEB486904D9CE450CE
X-SMAIL-UIID: 90DE6B9322F841CEB486904D9CE450CE-20250305-105611
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: RE: [PATCH v4 1/2] ASoC: codecs: add support for ES8389
Date: Wed,  5 Mar 2025 10:56:10 +0800
Message-Id: <20250305025610.58476-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > +	ret = device_property_read_u8(codec->dev, "everest,adc-slot", &es8389->adc_slot);
> > +	if (ret != 0) {
> > +		dev_dbg(codec->dev, "adc-slot return %d", ret);
> > +		es8389->adc_slot = 0x00;
> > +	}
> > +
> > +	ret = device_property_read_u8(codec->dev, "everest,dac-slot", &es8389->dac_slot);
> > +	if (ret != 0) {
> > +		dev_dbg(codec->dev, "dac-slot return %d", ret);
> > +		es8389->dac_slot = 0x00;
> > +	}
> 
> set_tdm_slot()
> 
> Please don't ignore review comments, people are generally making them
> for a reason and are likely to have the same concerns if issues remain
> unaddressed.  Having to repeat the same comments can get repetitive and
> make people question the value of time spent reviewing.  If you disagree
> with the review comments that's fine but you need to reply and discuss
> your concerns so that the reviewer can understand your decisions.

We will register multiple codecs inside a single dai_link and differentiate these
codecs by of_node. And the adc_slot and the dac_slot may be different, they can 
be decided by the user.If we use set_tdm_slot,the adc_slot and the dac_slot will
be same.

> > +	if (!es8389->adc_slot) {
> > +		es8389->mclk = devm_clk_get(codec->dev, "mclk");
> > +		if (IS_ERR(es8389->mclk))
> > +			return dev_err_probe(codec->dev, PTR_ERR(es8389->mclk),
> > +				"ES8389 is unable to get mclk\n");
> > +
> > +		if (!es8389->mclk)
> > +			dev_err(codec->dev, "%s, assuming static mclk\n", __func__);
> > +
> > +		ret = clk_prepare_enable(es8389->mclk);
> > +		if (ret) {
> > +			dev_err(codec->dev, "%s, unable to enable mclk\n", __func__);
> > +			return ret;
> > +		}
> > +	}
> 
> Making the use of a MCLK depend on the configuration of a TDM slot for
> the ADC seems *very* unusual, what's going on there?

Because we are associating multiple codecs under a single dai_link, we will be
executing probe and init many times during initialization.But MCLK only needs
to be used once.So we decided making the use of a MCLK depend on the configuration
of a TDM slot for the ADC 

