Return-Path: <devicetree+bounces-172864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93250AA6C11
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 09:53:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51B067A4ACB
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 07:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87CAA26560D;
	Fri,  2 May 2025 07:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CJwbSugC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B9B2BB13
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 07:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746172391; cv=none; b=lJylAjcjF4OI4iOJ+1QkG8Uzkzonkzw8tA2EkHzMcJnPorIfe5mjBfRPY+swDd7HHBMy9GQqbMyIzb6M89LToQyR98HnQZELKJLCJNybd+ni96u+8PUxqpuW3sgBYFBQfeUtQrWKTjx+fxi6uJSmY0dkFuZrpHb1kAFB2HW1oeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746172391; c=relaxed/simple;
	bh=5ZCByJJL0Ye6jvativsjrsfB/Ql+BeNq0mFm8G1cuO0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=b2VZ3efWKfb2UtCdIWkkneu4r0li3+l/URpAPV8XpInKCHKzEMj9sQzTLsx455fobOwyeB86T3wqSl6wuTmvJdk3vxEZ+pIZLZxpswn4BvJF968dcfHKJ4XQ4EXlZNtiPwkHK50QCQ8vQSpfBqEUq24bneLHXyc/HbLUQ0WMsRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CJwbSugC; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so1203634f8f.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 00:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746172388; x=1746777188; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YIYUYTbkSYrP8WnVzdIpYswDWWAUAS3GFOeRKeDzwWg=;
        b=CJwbSugCwj4+hVoKHUavJngh2taNQQJ9QGtte4zb11JY1khMBQ5KXfhBh5MZWK3EOj
         bICZi17K1WkNTR+5ajyOaHTztaiD+Xv0OTCWE/nIYpf/lugCLazp/OgLmvt2LY1sCyE2
         gaS4rRy5KZq+qkksPtjfEFJzbyDedI6J05RtNwnRYP2f8wY7Vi0H5awrv5pWE6cF3xLB
         F7bWLQMEdB19/UXfhUJahOgsZY5Odn5xyJelQ+Pd2QAIGfd0xj9nBEuniZnEj88S+XJq
         SJ/F6degAkzfJYYppqk1n12drVwYHP1iujzkw68e5T2+zCzd7WWarov68mRu/7XEF2BE
         rPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746172388; x=1746777188;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YIYUYTbkSYrP8WnVzdIpYswDWWAUAS3GFOeRKeDzwWg=;
        b=cGB+Kv39JaArOCvyc4tcGLxMamcKH4H2HLFuOfDGj++a+W25NoSztljbQl7KrbinAT
         CFIk7JgJb7lN60gusJr/ru+BK/fKMvDDAUSAGMpL+QKG+YcAIQF/rWgk5+p10m33b+8x
         k+1Fahq0NXGVOSIlbubSfFDHetno03ZNktIg+Q3Fna5gL72m0z1gnXElOirdEe09Pf4w
         whiTowFrRW/zXSmbl0V03Zv1o/Mc0bS1ipeU1K2WT6OuOm10QeRYl4v3FG5k7HDTyXXz
         meXXDR8UfOpHVyR4z1iO0r+h7x56sR8CMr2NITigU3BSSW3F5PL7KHo4G95onlj5LWTr
         58AQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQOXNRIsk56YPsrVUzObKmsqfbRaH4pYqzrssKDIAcj82KNxd3mQvU7yHZZ953X5aBGc1Hk25yjXKm@vger.kernel.org
X-Gm-Message-State: AOJu0YyMpJTHV+r2751WF7a3XMWqCPyG84J5uqK0IFT+XSdoHWDGO9I9
	lT48F0Rx5E8/CeZRg4DnAcC2xM6bBAXJeRnuNrxZvxqeIGSo+PB2a1y6WqeRtM4=
X-Gm-Gg: ASbGncuxAlK66I+Kv+yXFGu5uSxCcN9lXpHAqyxGp+CZRN65u1WvjesYh6IkLacbS3k
	8VQpo9dQPnh3UeY0bJVeB6Q2xDekWOfRXhrqGHbLBxmAw2LW6iMO6ExXgaw8kfbrChZE6YdqzTU
	JgZKvspjCwk4fGqc59DwPbfGut2JpuFUHlerzjRWfot4FV/utmhKXZglYHPCld1n1HiOP6mHVh9
	hl5qxpESYTTbihGg5vdUuJXUO+CV2uX3K3bY/A7WN9eohiuumUhNiQu9jCeGzlZyNNw40RQSc4B
	uhrN+0sbwvvq8N2CdnHBxPp9xzj9I2dL/mIo//v/OHE8ow==
X-Google-Smtp-Source: AGHT+IFUF0mleYLp1kLBLB8JmgDr7cOlyFKFxJ+vLZzJOkd+YMspUaspCgieTiAUbD8s7VruSkm7fQ==
X-Received: by 2002:a05:6000:1008:b0:3a0:99b1:bab5 with SMTP id ffacd0b85a97d-3a099b1bae6mr1003895f8f.57.1746172387978;
        Fri, 02 May 2025 00:53:07 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-441b8a315d3sm36125375e9.36.2025.05.02.00.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:53:07 -0700 (PDT)
Date: Fri, 2 May 2025 10:53:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Keguang Zhang <keguang.zhang@gmail.com>
Cc: linux-mips@vger.kernel.org, linux-mtd@lists.infradead.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org
Subject: [bug report] mtd: rawnand: Add Loongson-1 NAND Controller Driver
Message-ID: <aBR535RZZT-sa6QZ@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Keguang Zhang,

Commit d2d10ede04b1 ("mtd: rawnand: Add Loongson-1 NAND Controller
Driver") from Mar 20, 2025 (linux-next), leads to the following
Smatch static checker warning:

	drivers/mtd/nand/raw/loongson1-nand-controller.c:730 ls1x_nand_chip_init()
	warn: inconsistent refcounting 'chip_np->kobj.kref.refcount.refs.counter':

drivers/mtd/nand/raw/loongson1-nand-controller.c
    690 static int ls1x_nand_chip_init(struct ls1x_nand_host *host)
    691 {
    692         struct device *dev = host->dev;
    693         int nchips = of_get_child_count(dev->of_node);
    694         struct device_node *chip_np;
    695         struct nand_chip *chip = &host->chip;
    696         struct mtd_info *mtd = nand_to_mtd(chip);
    697         int ret;
    698 
    699         if (nchips != 1)
    700                 return dev_err_probe(dev, -EINVAL, "Currently one NAND chip supported\n");
    701 
    702         chip_np = of_get_next_child(dev->of_node, NULL);


The of_get_next_child() function drops the reference on the current
child.  That's probably not what we want to happen.  This is similar to
a discussion we were having earlier about of_find_node_by_name().

Then it takes a reference to the new child.

    703         if (!chip_np)
    704                 return dev_err_probe(dev, -ENODEV, "failed to get child node for NAND chip\n");
    705 
    706         chip->controller = &host->controller;
    707         chip->options = NAND_NO_SUBPAGE_WRITE | NAND_USES_DMA | NAND_BROKEN_XD;
    708         chip->buf_align = 16;
    709         nand_set_controller_data(chip, host);
    710         nand_set_flash_node(chip, chip_np);
    711         if (!mtd->name)
    712                 return dev_err_probe(dev, -EINVAL, "Missing MTD label\n");

of_node_put(chip_np) before returning.

    713 
    714         mtd->dev.parent = dev;
    715         mtd->owner = THIS_MODULE;
    716 
    717         ret = nand_scan(chip, 1);
    718         if (ret) {
    719                 of_node_put(chip_np);
    720                 return dev_err_probe(dev, ret, "failed to scan NAND chip\n");
    721         }
    722 
    723         ret = mtd_device_register(mtd, NULL, 0);
    724         if (ret) {
    725                 nand_cleanup(chip);
    726                 of_node_put(chip_np);
    727                 return dev_err_probe(dev, ret, "failed to register MTD device\n");
    728         }
    729 

I think we want to call of_node_put(chip_np) before returning on the
success path as well?

--> 730         return 0;
    731 }

regards,
dan carpenter

