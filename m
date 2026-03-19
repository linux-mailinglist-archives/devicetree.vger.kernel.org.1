Return-Path: <devicetree+bounces-277858-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEObGqUevGkvswIAu9opvQ
	(envelope-from <devicetree+bounces-277858-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:04:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1DC2CE4CE
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BD72308C76B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F193E8C69;
	Thu, 19 Mar 2026 15:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VInaZvZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CA93E928E
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773935608; cv=none; b=ZAL46HZsQzQ917MaiVMJG/WgcbY51tPXE5wzsGheLUKrdRecv2NoRP2R2Rck4QNJgFxGP2pzJ/RJYnTrLyTRy5LCo5i1ClvUkuc20/zfFUDH3fsqekhhE0zOtv75Q0R7uFhHX6L+ECefshOKP9nhRCYehMTAygYZUGglG19aw44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773935608; c=relaxed/simple;
	bh=5bYAbTkUVnEEFoCcR512hDmK7U1WNVjiltP2U7iH2cA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=bjQG+6pXtXFLKnfTT08I6UH6zm91C5uND3I/lE9oLze77S2ciHcoHjBW12HY0VHfWtNA9pAvVUxINiTK96GRIqSvsEJAmGzvm6ttbX3JO/fGadzbpQtMuQErOZieBbREYelw9pVxdlUjBLSm6EbC0JklxLGS/NSaUDk8/0NZzg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VInaZvZI; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-486fb14227cso9500055e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773935606; x=1774540406; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iIWRiNAZ2M6LL+C7o8xZgnQ+3xY+inOKefwQYaGNdVk=;
        b=VInaZvZINV9QxQyDyy+Klkl7FBs6UW7WYTioD3go8b9GISvWlaScBNwObAFtQZoTgp
         UnKkggbINuJBnE9Fmqgt9Qu3oFMA6BwCINnt/cFzD0o6WwXu0ZtTX9sK+R7+DzZQwfre
         7v6KB7vTAE/9W9iTlCSMM58VQVtYKfhA8yo8o10FlLHVvwe5Tuej29whNJaH1j3fL2Qe
         OWx1HVJFx0vY9q+NQHU4ypi3PwpgXh6F9WyPp1oWY6VSEHA6jQqTXjvIwpLo+3aT5kXH
         c6xaOUqW/HVAUJNE+OLEmak8/IEXOpvcw8+d8lnOv96BqBYYLHJi9PfLlu5xO8Cs2rvu
         frOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773935606; x=1774540406;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIWRiNAZ2M6LL+C7o8xZgnQ+3xY+inOKefwQYaGNdVk=;
        b=bOEWNbdflPnZDPtv9l8hJnLwXLyAwXzjwjcneqEBr+jY43s6iZP0IsA48Fy7xcSM19
         8w4r5B+PFAs386nDAVccxsoVW5fFzNwhHHs+KFtVvYjqVCZd58/4Ii5tFeQYaLyk9hA6
         oftu6kr3Pek96RxAOWs3qCPWY4Kse1bPViEwuvxF1E40YrINassbk+M8aYpi6XM2aqf1
         N3fBlzY+PXjGacMVV9rGOR4FxdZgHYMad4htUr0U3aPcH5bhNlENTt7K1wM39oNWqFeE
         axigsxfFXeEYtvrabUrUZE6RFQZvfyCY+TWb1VDUJ1foLMVMb6grYjKKDkLK0i9gLUGS
         kodA==
X-Forwarded-Encrypted: i=1; AJvYcCVD8B4h84N4O9IJspe6RnCUdzQw1PM1aNDlRiGFJKel1DLiquo6xrZ7GcUUw5YAuxCv15cM+ZGossx0@vger.kernel.org
X-Gm-Message-State: AOJu0YyLmwt0dFseSW+sr2c4409l9hjx+mnlb4WZgaM8cgkvNH7g8b75
	xsXblHXh5WPpAXZLUvnURemKQ0g0G578nzbik8koSErCT29WaN3EqVIkFn12zF1bl8A=
X-Gm-Gg: ATEYQzzTDAZW+O9N9inG13VqYppAxxi81rvL4/EetMrKfvWCasr2aN9SrSFtoI1VcMB
	oQHHAn4SOmebOEc3u3OeckfnmvcP5fVD6ffntd8PdXuTfWXVxzFsYKsOrYh3iXausHZfsdgLh1y
	QkjdbqFZkkpQq2JaLFRVW/gPVLty2NhlVXkCk/6S2Riz1gEnUZFerBFw+kQa4xOkVm4bUTMTwhd
	DH96X+d0gyPkw1EH1CWyEEPDU/R0zYxR44cCfVWkdvmhNopPrqEZsnOK7Pqq335hlmq4eiw3ux7
	DHx3mIkDyP8OtoNqYZJSpMlQaftTbe06k5Z+7zIw3VBMvNeWScTnv971FxIQythigO5ffs8quNr
	iEcWGcQ7d7B1OPN9fM5II5PtJ2rzmyLOWdko6eA6Nnkg7erR1ary4PhYAit4vTSJAirO7MZmia7
	d0GIfRJcln6o1WHPAJo/vHb1JAEvUh
X-Received: by 2002:a05:600c:3b28:b0:485:3aa1:a7f1 with SMTP id 5b1f17b1804b1-486f441bc51mr130418635e9.7.1773935605472;
        Thu, 19 Mar 2026 08:53:25 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b949e1sm128484205e9.9.2026.03.19.08.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:53:24 -0700 (PDT)
Date: Thu, 19 Mar 2026 18:53:21 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Jan Carlo Roleda <jancarlo.roleda@analog.com>,
	Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	Jan Carlo Roleda <jancarlo.roleda@analog.com>
Subject: Re: [PATCH 2/3] leds: ltc3208: add driver
Message-ID: <202603192312.QLMHYKWa-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-upstream-ltc3208-v1-2-015f1f1e9065@analog.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277858-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BB1DC2CE4CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jan,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Jan-Carlo-Roleda/Add-Maintainers-to-LTC3208-LED-Driver/20260319-005902
base:   e68f95a51d1a8c1594b536c4d495cbea38d47561
patch link:    https://lore.kernel.org/r/20260318-upstream-ltc3208-v1-2-015f1f1e9065%40analog.com
patch subject: [PATCH 2/3] leds: ltc3208: add driver
config: s390-randconfig-r072-20260319 (https://download.01.org/0day-ci/archive/20260319/202603192312.QLMHYKWa-lkp@intel.com/config)
compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project 4abb927bacf37f18f6359a41639a6d1b3bffffb5)
smatch: v0.5.0-9004-gb810ac53

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202603192312.QLMHYKWa-lkp@intel.com/

New smatch warnings:
drivers/leds/leds-ltc3208.c:222 ltc3208_probe() error: buffer overflow 'ltc3208_dt_aux_channels' 4 <= 4
drivers/leds/leds-ltc3208.c:227 ltc3208_probe() error: buffer overflow 'aux_channels' 4 <= 4

Old smatch warnings:
drivers/leds/leds-ltc3208.c:229 ltc3208_probe() error: buffer overflow 'aux_channels' 4 <= 4

vim +/ltc3208_dt_aux_channels +222 drivers/leds/leds-ltc3208.c

76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  176  static int ltc3208_probe(struct i2c_client *client)
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  177  {
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  178  	enum ltc3208_aux_channel aux_channels[LTC3208_NUM_AUX_LEDS];
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  179  	struct ltc3208_dev *data;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  180  	struct ltc3208_led *leds;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  181  	struct regmap *map;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  182  	int ret, i;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  183  	u32 val;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  184  	bool dropdis_rgb_aux4;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  185  	bool dis_camhl;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  186  	bool en_rgbs;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  187  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  188  	map = devm_regmap_init_i2c(client, &ltc3208_regmap_cfg);
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  189  	if (IS_ERR(map))
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  190  		return dev_err_probe(&client->dev, PTR_ERR(map),
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  191  				     "Failed to initialize regmap\n");
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  192  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  193  	data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  194  	if (!data)
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  195  		return -ENOMEM;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  196  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  197  	leds = devm_kcalloc(&client->dev, LTC3208_NUM_LED_GRPS,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  198  			    sizeof(struct ltc3208_led), GFP_KERNEL);
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  199  	if (!leds)
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  200  		return -ENOMEM;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  201  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  202  	data->client = client;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  203  	data->map = map;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  204  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  205  	/* initialize options from devicetree */
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  206  	dis_camhl = device_property_read_bool(&client->dev,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  207  					      "adi,disable-camhl-pin");
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  208  	en_rgbs = device_property_read_bool(&client->dev,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  209  					    "adi,cfg-enrgbs-pin");
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  210  	dropdis_rgb_aux4 = device_property_read_bool(&client->dev,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  211  						     "adi,disable-rgb-aux4-dropout");
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  212  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  213  	ret = ltc3208_update_options(data, en_rgbs, dis_camhl,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  214  				     dropdis_rgb_aux4);
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  215  	if (ret)
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  216  		return dev_err_probe(&client->dev, ret,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  217  				     "error writing to options register\n");
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  218  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  219  	/* initialize aux channel configurations from devicetree */
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  220  	for (i = 0; i <= LTC3208_NUM_AUX_LEDS; i++) {
                                                                    ^^^^^^^^^^^^^^^^^^^^^^^^^
Should this be < LTC3208_NUM_AUX_LEDS instead of <=?

76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  221  		ret = device_property_match_property_string(&client->dev,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18 @222  							    ltc3208_dt_aux_channels[i],
                                                                                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^
Out of bounds.

76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  223  							    ltc3208_aux_opt,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  224  							    LTC3208_NUM_AUX_OPT);
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  225  		/* use default value if absent in devicetree */
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  226  		if (ret == -EINVAL)
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18 @227  			aux_channels[i] = LTC3208_AUX_CHAN_AUX;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  228  		else if (ret >= 0)
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  229  			aux_channels[i] = ret;
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  230  		else
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  231  			return dev_err_probe(&client->dev, ret,
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  232  					     "Failed getting aux-channel.\n");
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  233  	}
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  234  
76a4ad1dec9ab2b Jan Carlo Roleda 2026-03-18  235  	ret = ltc3208_update_aux_dac(data, aux_channels[0], aux_channels[1],

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


