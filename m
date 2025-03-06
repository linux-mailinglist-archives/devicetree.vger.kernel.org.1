Return-Path: <devicetree+bounces-154675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5BDA5438D
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 08:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4D021672DA
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 07:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36A91A9B58;
	Thu,  6 Mar 2025 07:24:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-100.sina.com.cn (smtp134-100.sina.com.cn [180.149.134.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037A218DB04
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 07:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741245854; cv=none; b=AMwrVVR294lSeiUA6BowZVpm2Xga7FthjJ/Nigihsnysx18qNbbdHe/vMP4m2XKI4adtlZkhhZ1mQnnfwkkIurNCsFsfxR8XERse8gxF50WKkddOgXiRMRK8+DJlIB8MUAmaErPG28F0wosIdrxX/6iPI5VkE3Q7lplEtmjCfmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741245854; c=relaxed/simple;
	bh=wn6xJhbl/Pse1EyyU15U5P4N59HzRgpmak3FGuqgezc=;
	h=From:To:Cc:Subject:Date:Message-Id; b=XdqneBejPsTVbw13cK5knwqREJUKvsN7hTD5nGKndfP+/SyJcwO8QiJI2Y6PFp9t8qeJ9DRxhcysdnFHluQWn+Ka2Ce0u6D8JlvNCPqCqfEBNu5hgnoPT20iV343Bfe9b6vBne4x988t+nEvq/SEeKyLu+oQEt8YypEmze8km0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.32) with ESMTP
	id 67C94D8B0000292F; Thu, 6 Mar 2025 15:23:57 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 855E3EFC9669480CB4C67813C17AA883
X-SMAIL-UIID: 855E3EFC9669480CB4C67813C17AA883-20250306-152357
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
Date: Thu,  6 Mar 2025 15:23:54 +0800
Message-Id: <20250306072354.19987-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > > set_tdm_slot()
> 
> > We will register multiple codecs inside a single dai_link and differentiate these
> > codecs by of_node. And the adc_slot and the dac_slot may be different, they can 
> > be decided by the user.If we use set_tdm_slot,the adc_slot and the dac_slot will
> > be same.
> 
> No, the machine driver should be configuring different TDM slots for
> each device - that's the whole point of the API.

We are using multiple codecs as a single device.So we can't use set_tdm_slot to configure
different slots for multiple codecs under one device.

> > > > +		ret = clk_prepare_enable(es8389->mclk);
> > > > +		if (ret) {
> > > > +			dev_err(codec->dev, "%s, unable to enable mclk\n", __func__);
> > > > +			return ret;
> > > > +		}
> > > > +	}
> 
> > > Making the use of a MCLK depend on the configuration of a TDM slot for
> > > the ADC seems *very* unusual, what's going on there?
> 
> > Because we are associating multiple codecs under a single dai_link, we will be
> > executing probe and init many times during initialization.But MCLK only needs
> > to be used once.So we decided making the use of a MCLK depend on the configuration
> > of a TDM slot for the ADC 
> 
> No, each device should just get and enable the MCLK itself - the clock
> API does reference counting so there's no problem with this, it's normal
> for a clok to have multiple consumers.

ok,I'll fix it

