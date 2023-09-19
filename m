Return-Path: <devicetree+bounces-1449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F2B7A6469
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:08:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 648801C20A59
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 13:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C444847B;
	Tue, 19 Sep 2023 13:08:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F3F28E01
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 13:08:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B75C4F0;
	Tue, 19 Sep 2023 06:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695128887; x=1726664887;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=eHGLPuJLnfYPHZJ2U5imVvNKpQ7YRooOfvMe9p3pXJc=;
  b=hELsZW+QV+e2yDOnc8rCyX/3K9AEIRdxPpBQmpgvtnzNpbpBhSrgCeH+
   ETN3vAKdAbFWJwPfk5b7mitK1z4fSdmK9pBecwfuOk81BAirA+P8xCUmJ
   iOvCmIkVX7j/NCpiKFW+Yf1fTHxO4KupalVI345J/Jzn40ZVDSb+4TMqd
   UbPiXd8yN1jN2P7FnnoeVa4dLIbuaiXBsBBlzCxhN7rMLv66MtmDxZd/R
   COV+xBVMlgl10avTPOP5dWIag5ngJorWQZIBn9sAn4KVMtGEQDBYZdj17
   t0DF/1qq0h3iEr1616Bqt4dqupGAZscwETY8xnmWUfVvUsveShKLSNSmd
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370249839"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; 
   d="scan'208";a="370249839"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2023 06:08:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="861538519"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; 
   d="scan'208";a="861538519"
Received: from lwatts-mobl1.amr.corp.intel.com (HELO [10.212.5.115]) ([10.212.5.115])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2023 06:08:04 -0700
Message-ID: <eae67380-4eb5-b5b2-d010-ce1f80bc91f9@linux.intel.com>
Date: Tue, 19 Sep 2023 08:42:29 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/2] ASoC: codecs: Add Richtek rtq9128audio amplifier
 support
To: cy_huang@richtek.com, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Allen Lin <allen_lin@richtek.com>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1695086301-10376-1-git-send-email-cy_huang@richtek.com>
 <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
Content-Language: en-US
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


> +static int rtq9128_i2c_write(void *context, const void *data, size_t count)
> +{
> +	struct device *dev = context;
> +	struct i2c_client *i2c = to_i2c_client(dev);
> +	u8 reg = *(u8 *)data;
> +	int rg_size;
> +
> +	BUG_ON(count != 5);

is this really necessary? Just log and error and return?
same comments for other functions

> +	rg_size = rtq9128_get_reg_size(reg);
> +	return i2c_smbus_write_i2c_block_data(i2c, reg, rg_size, data + count - rg_size);
> +}


