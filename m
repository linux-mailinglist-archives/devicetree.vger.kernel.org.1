Return-Path: <devicetree+bounces-1575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B987A7117
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91401281ED2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB9015CC;
	Wed, 20 Sep 2023 03:44:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7D320E0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:44:09 +0000 (UTC)
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id E6A4EAB;
	Tue, 19 Sep 2023 20:44:06 -0700 (PDT)
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
Received: from 192.168.10.47
	by mg.richtek.com with MailGates ESMTPS Server V6.0(1978089:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Wed, 20 Sep 2023 11:43:19 +0800 (CST)
Received: from ex4.rt.l (192.168.10.47) by ex4.rt.l (192.168.10.47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.25; Wed, 20 Sep
 2023 11:43:19 +0800
Received: from linuxcarl2.richtek.com (192.168.10.154) by ex4.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1118.25 via Frontend
 Transport; Wed, 20 Sep 2023 11:43:19 +0800
Date: Wed, 20 Sep 2023 11:43:19 +0800
From: ChiYuan Huang <cy_huang@richtek.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
CC: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Liam
 Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Allen Lin
	<allen_lin@richtek.com>, <alsa-devel@alsa-project.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] ASoC: codecs: Add Richtek rtq9128audio amplifier
 support
Message-ID: <20230920034319.GA4446@linuxcarl2.richtek.com>
References: <1695086301-10376-1-git-send-email-cy_huang@richtek.com>
 <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
 <eae67380-4eb5-b5b2-d010-ce1f80bc91f9@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <eae67380-4eb5-b5b2-d010-ce1f80bc91f9@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 08:42:29AM -0400, Pierre-Louis Bossart wrote:
> 
> > +static int rtq9128_i2c_write(void *context, const void *data, size_t count)
> > +{
> > +	struct device *dev = context;
> > +	struct i2c_client *i2c = to_i2c_client(dev);
> > +	u8 reg = *(u8 *)data;
> > +	int rg_size;
> > +
> > +	BUG_ON(count != 5);
> 
> is this really necessary? Just log and error and return?
> same comments for other functions
>
Yap, it can be removed. Originally, just use it to check regmap core really
follow the declared regmap config.

I think this check may still needed. I'll change the BUG_ON to if/err/return
following by your suggestion in v3.
> > +	rg_size = rtq9128_get_reg_size(reg);
> > +	return i2c_smbus_write_i2c_block_data(i2c, reg, rg_size, data + count - rg_size);
> > +}
> 

