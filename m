Return-Path: <devicetree+bounces-154295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E40A4F9C1
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 10:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2464E16B793
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B69204C26;
	Wed,  5 Mar 2025 09:18:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-60.sinamail.sina.com.cn (mail78-60.sinamail.sina.com.cn [219.142.78.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DD420468D
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 09:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741166312; cv=none; b=GPaCZBsxHxM+7ud5tSzqayDc+5oZnNdj7iY4tRxU4YE/GdhIstj3cus6uyrB5JIMVJsTCrbY+vNjnvNPHY6Sts04TBGWY79kofv8dynintcxWOmBjVLoVDErl3tJ4zNk8qt6u6jAb5h5uRfvbMwunbqGKz4550QmaJO8GpMrvmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741166312; c=relaxed/simple;
	bh=Jn41vaoxuKDMTnwNiVoq+YRmti9bdY6rpCo90h3envs=;
	h=From:To:Cc:Subject:Date:Message-Id; b=i7PD5JLSdftQkd9awuM83r4LQKS2tgvW50UKW2kx7ZQr5mKDQ9uFngbM28O+Ty+ZHulEZScSWhPkeENBb2fGPO09FcBHDEiytAoCb8pOaRIbCq1x18PdLcoN/GiEyERZRyF3jEri/75AboDHeMsHLYVG92fRSRS1RteN8qSN2YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67C816D500001C4D; Wed, 5 Mar 2025 17:18:15 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 240DE838EFAC402A9673847D6D4DD209
X-SMAIL-UIID: 240DE838EFAC402A9673847D6D4DD209-20250305-171815
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
Date: Wed,  5 Mar 2025 17:18:13 +0800
Message-Id: <20250305091813.49568-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > @@ -0,0 +1,961 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * es8389.c  --  ES8389/ES8390 ALSA SoC Audio Codec
> > + *
> > + * Copyright (C) 2025 Everest Semiconductor Co., Ltd
> 
> Please make the entire comment block a C++ one so things look more
> consistent.

I will fix it

> > +	if (es8389->dmic == true) {
> > +		regmap_update_bits(es8389->regmap, ES8389_DMIC_EN, 0xC0, 0xC0);
> > +		regmap_update_bits(es8389->regmap, ES8389_ADC_MODE, 0x03, 0x03);
> > +	} else {
> > +		regmap_update_bits(es8389->regmap, ES8389_DMIC_EN, 0xC0, 0x00);
> > +		regmap_update_bits(es8389->regmap, ES8389_ADC_MODE, 0x03, 0x00);
> > +	}
> 
> We also had the DMIC mux, is that useful as a runtime control when we
> have firmware data telling us if there's a DMIC?  Can both a DMIC and
> analog input be present in the same system?
> 
> It does still look like a lot of these settings might be things that
> should be user controllable...

I'm going to remove es8389->dmic and everest,dmic-enabled and use only DMIC_MUX

