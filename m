Return-Path: <devicetree+bounces-205988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8ACB2B174
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 21:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F31816DE8E
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 19:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12393271A71;
	Mon, 18 Aug 2025 19:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AoNoxgNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EBF25B301
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 19:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755544770; cv=none; b=Qsi2ZwK5VTpJhZdMm4T4Jkub7/6cUNnboyCBd8uHP64gJcWkMskCVxhs4pFVPbu6P6Jocv0j3geB50pegZd0mAcNePZQ31O2dRTQ5j9cmxIZ/2DTTUpqdda/Zb2qkMRBizDBSG/4kc0UlswE3Qf6pA6EjTDRNl67KCYXawPzRY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755544770; c=relaxed/simple;
	bh=tY6vFDPT5J+UHKClld2vk3D4cPFzFWtftUIMkfzOQt4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LA3MTgcAa81x36/m1xaovCVvcPNeluhPOmv9CRV10EInNdcdhPnNdScZGNrnVO+UVscv+5Rh9Nq9pG579rtSxwyVCCGAsQTJN/cfsYUizAb8dfPDWpKPHMFf0dWobH62ROO75yYdEGBJ66xiTEQMQCDLSjNclIlDEaJwMmyeNJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AoNoxgNH; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3b9d41baedeso2385941f8f.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 12:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755544766; x=1756149566; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9hweCp+yuiy4UnE8tu0U5cdLSxNtzeXo3c5udQqFt3s=;
        b=AoNoxgNHi72NnEmu8AtuTOG5t96GTgzmOl5r82x2cDAOFKxahocoSEHu7V4C2stvRC
         cl8SMdHxKCOSuIpxIYtSckDTg0tVoP1SyV3AUe/Vui46xvl66CJIFnkIwhbOjM0HDCNB
         A1GPe8wQDX66TX+3jvxmQqnwsP2aDarkOAq7trlX++oeJhVlqRxkT2eop//8Mk49+U/H
         cy3oU169kUAfgwJIIb2d/Tm2SHBvys2hZGNqyRc7R07FhtKRocMcBoFtHx+1q+KOahJA
         /ETMm+RFoVQZDKSrT0Xjm0wLmcb3fkmw9pPw6A7RDngQYikNCS8z+x2isCcRZIs5o4Kr
         iL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755544766; x=1756149566;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hweCp+yuiy4UnE8tu0U5cdLSxNtzeXo3c5udQqFt3s=;
        b=voB89iK2fawYXFdaUhVnjf143lFE+jLZqcDwOJZX7MfG2Pti5DqwCW394Xmc7r8NM4
         P+rl2JNNmHP//nyzJ9o0gm2dp45H+BFrCD6sHdxMFCK+k+Qnjcw7nVyX60UCF+T7PDgG
         DqSYm9RTOqP03BcK+QuDfSDduqdDYk9sFT2t4r8uLbwcFizh/merxc2R8RWn24qJloKE
         N0YYnMtzBQ8/jQGEe8CtcDIqEG3VCguL56sWZFTaibnfu4qW5iWnvQUpFy6Zh/AgNTSa
         ZL2c+ImCkLWpZ98FKmK5ZzvqqXuOq1yBr+5fRl17Boq402lUVrm6CyIRRBr7Z3Fs2YOz
         AM9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUI+yK5bpLglJtdG4sUv5OWImlFIk/8tn9v11nGTwdAR8sOof042JMBQYRp/A/oZNsA9X2gkf3YNexy@vger.kernel.org
X-Gm-Message-State: AOJu0YxLtPRNGJnz4cybCME49om0YIFDVbqDWAaAjLfLjMdyxTqegCXx
	MBNQtBOcr24ZoZwmCl9w3Qts1gaeOB6Xemveaya4iUNyDDaUcTWJKoDAF6ThR3XGoiE=
X-Gm-Gg: ASbGncvpb0Ztkn9zBtM4U25IPbmRwqZbZ0ocwKTsZ/YNNySUWl7qmZjmcnUScpIVwBH
	zSb6u8Ff3wX6a1ZPA7mdHQc2BI3kAeKThzKD+Av44LPpmAgCzRtZKe8tUGgWOQjMNma+8XXj96k
	PAihEzRvfTheY1933/sQwQ9WVAMJcnRDJK1XVtTbf0VTU12fGN5bSduO8nfFkutGxiXlzEgwFOO
	4W6Tomwo/WKO/ty9IgQwDhaFWVf0Z5g4fBA4Ez00lwsmME5YuMoVHSnIwNY7oHN+cja/CVAZ+rF
	JNxs7E/BX12+X/4cfl+jrtkbDGBYdGei7wY9Te7zJHgfmROubvApE3XmF7I9YZmO8lRJxgYC6dE
	44AMQzAA7MHRKErlrTcOX2mfRpWy+xhX2Xc2ubN+HfYE=
X-Google-Smtp-Source: AGHT+IEQrkh28DTI0SiPzPg5aApeFJHSZV4MplQJwQE3tUQojVdNtlatmnBQ7z7o9bG5dBtMzxbKUQ==
X-Received: by 2002:a05:6000:2903:b0:3b6:1630:9204 with SMTP id ffacd0b85a97d-3bb66e167femr11091052f8f.19.1755544766221;
        Mon, 18 Aug 2025 12:19:26 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a1c6cfed5sm178233615e9.7.2025.08.18.12.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 12:19:25 -0700 (PDT)
Date: Mon, 18 Aug 2025 22:19:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, lkp@intel.com,
	oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger
Message-ID: <aKN8uvsN-uiJgjFp@stanley.mountain>
References: <20250812214300.123129-4-macroalpha82@gmail.com>
 <202508181503.GrRD2T4C-lkp@intel.com>
 <aKNGCg2rWT7GLNnt@wintermute.localhost.fail>
 <DM5PR19MB4646929CD183E2B110B6AD5AA531A@DM5PR19MB4646.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM5PR19MB4646929CD183E2B110B6AD5AA531A@DM5PR19MB4646.namprd19.prod.outlook.com>

On Mon, Aug 18, 2025 at 11:43:00AM -0500, Chris Morgan wrote:
> On Mon, Aug 18, 2025 at 10:26:06AM -0500, Chris Morgan wrote:
> > On Mon, Aug 18, 2025 at 11:22:35AM +0300, Dan Carpenter wrote:
> > > Hi Chris,
> > > 
> > > kernel test robot noticed the following build warnings:
> > > 
> > > https://git-scm.com/docs/git-format-patch#_base_tree_information]
> > > 
> > > url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250813-054704
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
> > > patch link:    https://lore.kernel.org/r/20250812214300.123129-4-macroalpha82%40gmail.com
> > > patch subject: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX charger
> > > config: parisc-randconfig-r072-20250818 (https://download.01.org/0day-ci/archive/20250818/202508181503.GrRD2T4C-lkp@intel.com/config)
> > > compiler: hppa-linux-gcc (GCC) 8.5.0
> > > 
> > > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > > the same patch/commit), kindly add following tags
> > > | Reported-by: kernel test robot <lkp@intel.com>
> > > | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > | Closes: https://lore.kernel.org/r/202508181503.GrRD2T4C-lkp@intel.com/
> > > 
> > > smatch warnings:
> > > drivers/power/supply/bq257xx_charger.c:392 bq25703_hw_init() warn: potential ! vs ~ typo
> > > 
> > > vim +392 drivers/power/supply/bq257xx_charger.c
> > > 
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  365  static int bq25703_hw_init(struct bq257xx_chg *pdata)
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  366  {
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  367  	struct regmap *regmap = pdata->bq->regmap;
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  368  	int ret = 0;
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  369  
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  370  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  371  			   BQ25703_WDTMR_ADJ_MASK,
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  372  			   FIELD_PREP(BQ25703_WDTMR_ADJ_MASK,
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  373  			   BQ25703_WDTMR_DISABLE));
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  374  
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  375  	ret = pdata->chip->bq257xx_set_ichg(pdata, pdata->ichg_max);
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  376  	if (ret)
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  377  		return ret;
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  378  
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  379  	ret = pdata->chip->bq257xx_set_vbatreg(pdata, pdata->vbat_max);
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  380  	if (ret)
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  381  		return ret;
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  382  
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  383  	ret = bq25703_set_min_vsys(pdata, pdata->vsys_min);
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  384  	if (ret)
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  385  		return ret;
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  386  
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  387  	ret = pdata->chip->bq257xx_set_iindpm(pdata, pdata->iindpm_max);
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  388  	if (ret)
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  389  		return ret;
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  390  
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12  391  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
> > > 7f3b6f1e51a925 Chris Morgan 2025-08-12 @392  			   BQ25703_EN_LWPWR, !BQ25703_EN_LWPWR);
> > > 
> > > Yeah.  This really looks like it should be bitwise negate ~ instead of
> > > logical negate !.
> > 
> > Since BQ25703_EN_LWPWR is defined as 1 and I want to write 0 here (to
> > disable low power mode) I was under the assumption either should work.
> > That said, I'll happily switch to the bitwise negate (~) and resubmit.
> 
> Sorry, hadn't drank my morning coffee yet before I sent the last
> message and should have attempted it first before replying. When I
> make the requested change I get a compile time error of "conversion
> from ‘long unsigned int’ to ‘unsigned int’ changes value from
> ‘18446744073709518847’ to ‘4294934527’". What I'm really trying to
> accomplish here is to simply write a 0 to turn off low power mode, and
> do so in a manner that's easy to understand. I think since a bitwise
> negate gives a compile error and a logical negate throws a smatch
> warning, the most sensible thing to do is simply express this as a 0
> instead of a defined value and write a comment why I'm doing that.
> 

Yeah...  Or you could do "#define BQ25703_DISABLE_LWPWR 0".

regards,
dan carpenter


