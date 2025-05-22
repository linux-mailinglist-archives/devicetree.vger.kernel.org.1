Return-Path: <devicetree+bounces-179414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D83BAC0438
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 07:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD3A19E765B
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 05:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C445F1AAA29;
	Thu, 22 May 2025 05:50:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-90.sina.com.cn (smtp134-90.sina.com.cn [180.149.134.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E682AE7F
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 05:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747893007; cv=none; b=Kg8yEpPwfDPCDZQ876I8gBCHvAWwIZHjHDFIgmhBxt7Vx/sCvrcIEGb1dACI98OOoDbgZqCrHEoGMd8+vQkXM1pKU42f5OejUqNolwHQHQ91XaCGSU2uRckE3qUzmvN6nQihilFqJNAtLBzaIsoMsP8U4mExlNytFzlbSzFSxEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747893007; c=relaxed/simple;
	bh=COoArKPhM0O1twtk8c40WHTH20QejO+o6b3Un7o8Eqg=;
	h=From:To:Cc:Subject:Date:Message-Id; b=WCgq0P+iRSynrzg0M4n1QZs1xBiRhBX71TwgnYIZBSpD22LxCORsmDL02tv2qE2pF6bkK90qBkMgKhJ1t9lJwx+SkMN8qSnzXr7sIOcKTDOMvhMcOW3CrNkfIWUMq/s0J2V0Rl/tzf7gX6w/QcMrt6hDr60Sa8xUigE6CMAnBko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.31) with ESMTP
	id 682EBA75000072A0; Thu, 22 May 2025 13:47:34 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: C61064C92CA44517821FD0B647842F70
X-SMAIL-UIID: C61064C92CA44517821FD0B647842F70-20250522-134734
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzk@kernel.org
Cc: robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org,
	amadeuszx.slawinski@linux.intel.com,
	broonie@kernel.org
Subject: RE: [PATCH 2/2] ASoC: codecs: add support for ES8375
Date: Thu, 22 May 2025 13:47:32 +0800
Message-Id: <20250522054732.9629-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > +static int es8375_read_device_properities(struct device *dev, struct es8375_priv *es8375)
> > +{
> > +	int ret;
> > +
> > +	ret = device_property_read_u8(dev, "everest,mclk-src", &es8375->mclk_src);
> 
> These are not documented for DT, but you have here other interfaces. We
> do not have such case nicely solved, so please add explicit comment that
> usage of this and dmic-pol in DT based platforms is not allowed and this
> is not considered ABI.

I'll add the description of everest,mclk-src.
But I noticed that es8375->dmic_pol is not used inside the driver,
so I'll remove it.

