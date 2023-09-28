Return-Path: <devicetree+bounces-4089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC127B1371
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 836AE1C208F8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28538273FD;
	Thu, 28 Sep 2023 06:59:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F1D8467
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:59:16 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5613BE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:59:14 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40566f8a093so95203045e9.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695884353; x=1696489153; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IxtdkWUQyRUGTWll+i5PkjZHj3/ZutnR3Ko0Ft8Vpf4=;
        b=cHWb7Q0X2rRfjh4LpqywXlpBBmOLku5nUK8F9Kk+CJyt5yfE7i4Qv4q/6/ITe87EeJ
         8civ/5e2ldG7bCHJMdzJyc6yoVohBt5UpOIiJADA24NaQA+5sClB3rztOAYn3iS7XHD6
         sfiUQDZ+agai70UpFpbjPBc13ojMT1sb2dRZE2r5a0oJOV6HHco8pueFAu97MYCRPehO
         4UhtZUF2MdjwkaHF9pxjD9nojkZmvFNi2bNaBkEPgaEEFZqjbnlkkw7u66cjLbXDeKQe
         wId9Ckxe9Xc0cvwmR7j2sa02Q+LLC7WvaJZIFL+b0CWjxilj4eR4nEvLv4gLk5ZKSwS4
         yv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695884353; x=1696489153;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IxtdkWUQyRUGTWll+i5PkjZHj3/ZutnR3Ko0Ft8Vpf4=;
        b=R82GJa0naZvr9CY5/YhiKfWGekBYt8x8J7VsEm5DjJ+nq8Hl6U0JBB0HuceX5Rg41X
         zUQVcnIBqGj2gPvvy+ajSjuVrwRa/VkptUDQjz9dpr9cha3EbJjE14pac9ktE8M45agz
         ByJI1aok7T6FlyM49Wi6lZFYKIixaWUkRGLQmut3tDMWcjoDSZAYK4HcF/8aUCGSLv40
         yeukcTWh0kYNg0wkVfzREFoUulguc3eFLc42m8wRK8GGr8qEgBXpCOW9/4vn7/8KdDcC
         uUJL311/tozssDQURIH2F6ihXtZDQCBITi6L7/htaSdjkhnXfzg00g4M6E4kf3HcCd6l
         hAug==
X-Gm-Message-State: AOJu0YxSgHn2UmMcnJu8UadK73yQlV89EyiqiIy+8accXkdDlGjN41va
	A1bwgJlph6wCWlVQrFJI69j0eQ==
X-Google-Smtp-Source: AGHT+IGKeFwM5Om0OMVfRkBh1YdUioiRAuzKQMZJEqVhiuiiZ7tZD589pp+o//kNbzitL+JePrtmtw==
X-Received: by 2002:a05:600c:3b22:b0:406:5303:9be2 with SMTP id m34-20020a05600c3b2200b0040653039be2mr304954wms.0.1695884353220;
        Wed, 27 Sep 2023 23:59:13 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id z4-20020a05600c220400b003fe61c33df5sm6326296wml.3.2023.09.27.23.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 23:59:12 -0700 (PDT)
Date: Thu, 28 Sep 2023 09:59:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: wangweidong.a@awinic.com
Cc: 13916275206@139.com, alsa-devel@alsa-project.org, arnd@arndb.de,
	broonie@kernel.org, ckeepax@opensource.cirrus.com,
	colin.i.king@gmail.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, doug@schmorgal.com, fido_max@inbox.ru,
	harshit.m.mogalapalli@oracle.com, herve.codina@bootlin.com,
	krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
	linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
	liweilei@awinic.com, perex@perex.cz, rf@opensource.cirrus.com,
	robh+dt@kernel.org, ryans.lee@analog.com, shumingf@realtek.com,
	tiwai@suse.com, trix@redhat.com, u.kleine-koenig@pengutronix.de,
	yang.lee@linux.alibaba.com, yijiangtao@awinic.com
Subject: Re: [PATCH V5 8/8] ASoC: codecs: Add aw87390 amplifier driver
Message-ID: <71f6bff0-c173-4de2-aed0-38ed2c15ec59@kadam.mountain>
References: <464ada20-072d-48f8-a270-155dfd4a06b9@kadam.mountain>
 <20230928064330.104265-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928064330.104265-1-wangweidong.a@awinic.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 28, 2023 at 02:43:30PM +0800, wangweidong.a@awinic.com wrote:
> Thank you very much for your review, but I have some questions
> I would like to discuss with you
> 
> > On Wed, Sep 27, 2023 at 08:16:34PM +0800, wangweidong.a@awinic.com wrote:
> >> @@ -668,6 +668,17 @@ config SND_SOC_AW88261
> >>  	  boost converter can be adjusted smartly according to
> >>  	  the input amplitude.
> >>  
> >> +config SND_SOC_AW87390
> >> +	tristate "Soc Audio for awinic aw87390"
> 
> > Capitalize A in Awinic.
> 
> Thank you very much, but our company prefers to 
> use awinic rather than Awinic

Ah.  Fine.  I did Google the company name but hadn't scrolled down
far enough.

regards,
dan carpenter


