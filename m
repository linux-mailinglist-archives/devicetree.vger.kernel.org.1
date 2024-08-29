Return-Path: <devicetree+bounces-98129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0883A964EB0
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 21:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A5A01C21BAC
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 19:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3438B1B86ED;
	Thu, 29 Aug 2024 19:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NorwlYGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575F15C120
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 19:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724959350; cv=none; b=HhuezSRW3QKIZpZlBTStbEsX1MlA1t0TWCFf0myl0mj21hGuTySTbiQYYlUeMc6xBuV4dSomCB0mIohrq84MBXUVDFhy3sezgzFdO6RYRCRt69Gey+zbC1X9Hq1XyTaDfqhv4rgX3qb57NyOPtM+WgbqUZvVEoZCW3Osw38cnaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724959350; c=relaxed/simple;
	bh=3oeJy8xp0qRqDQhW0XhyhKbwV3fB74QQUTjsF8C5pm8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=VUuVZl7WzfySEqmFltx3HwHcvxU3uSS3pUu9YWo5MLAu5nObj4mwIDoojOcCHNfXoNNNyiSyNB0zDQDv5XIS1cisS8NbSQes96K/msJl5I0KFqynq5tS6FFGvJqm3Zj3cEZ2G7AGrSiOumSefmaNaxuiwqlTRlmx0fyfXwFoRQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NorwlYGA; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4281d812d3eso11455665e9.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 12:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724959347; x=1725564147; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WJDPj3HB+IFHAdkbut5TRbbLbxJhDZLcDE5YnCdPI9s=;
        b=NorwlYGAKcAy+wpIwsTiaQBGB4YRZUo9XzXTDFleDOhDyDv/oUkcXLqQKwO1wLoa0r
         twOtT1Kfo5KgeAwWVLRfv2LstmeOITOsr1mPPXqv5427TadP8uQVrbNCFANeqaFx2EmS
         fssyeDzUBF4c+7FMWiqgXgYnZqGEvTODr2CsbNHr6CspCmiqLCuoVN+QqgQ0fUs8tDny
         iPHi7AEQuskcXCgTIrFM8uZxx2tS6Pe+j46bnYrovZUGcvSIoZ/fRuKpmCMC1dl0MAyV
         tVhbp/cLKfFkmEqTAn2UUDKYvVuG3Ht/Ul80YsY+rWibtkw5finQ0m5uqB6xV+DAbSDI
         Oxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724959347; x=1725564147;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WJDPj3HB+IFHAdkbut5TRbbLbxJhDZLcDE5YnCdPI9s=;
        b=nY7Lffy+975C5hd4ht7zE40qwg4z+PE1tsMVo5JRRby0LgNvq6Zo0opr0Yh7I/VZms
         GGjWqDNbjQyzijTEMlyG2lUnhNYmTWG/8O3EeSbdOUS7W1BNaSXYUkrDqSdat4uAHCqG
         exnzYAZQzqzxoOCvsvo4jW3QGFSIjrhEGX9N5bk7gKW7R8YgZS5QMaPEtHR+swBj5OFf
         +YtxC/Ie5shUhKThHrAruwDLvhfE9BBX6Ll8zjeDkSeymKwSNwhvsldRon9TroTOMiml
         8rUXKR0KhGoBXVUrEWUEvfVeIiNcf2lH6EO3RM978gLR9vM2QiVLPJkt6ezVgSD3+Jcp
         Dk0w==
X-Gm-Message-State: AOJu0YyC6NWV9G++v8dNiJ9W6PBAKAvJEQgKCkdNvowOH+1vt0tjrtIP
	nX2Gy4CPfWJhV7+KaBlCg/f+l2D00FyVTxDxyuBT969L30hZzOaFJ1MKxua6t00UhyEQ8Oe16C+
	qdY1t3w==
X-Google-Smtp-Source: AGHT+IGraCA9vNFClZeg91StfX/UBDWq/pGcYUxAfaZtO+5ebq0GHfvvcal/gI9pYLvjHJtXF9vdzQ==
X-Received: by 2002:a05:600c:1c83:b0:428:29e:8c42 with SMTP id 5b1f17b1804b1-42bb01b5a90mr42295925e9.9.1724959346454;
        Thu, 29 Aug 2024 12:22:26 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749efb2c91sm2114525f8f.102.2024.08.29.12.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 12:22:24 -0700 (PDT)
Date: Thu, 29 Aug 2024 22:22:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Subject: [bug report] of: unittest: treat missing of_root as error instead of
 fixing up
Message-ID: <c546a19d-fb2d-4022-8528-8a0ae1736ba3@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Frank Rowand,

Commit d1eabd218ede ("of: unittest: treat missing of_root as error
instead of fixing up") from Feb 16, 2024 (linux-next), leads to the
following Smatch static checker warning:

	drivers/of/unittest.c:1934 unittest_data_add()
	warn: inconsistent returns '&of_overlay_phandle_mutex'.

drivers/of/unittest.c
    1857 static int __init unittest_data_add(void)
    1858 {
    1859         void *unittest_data;
    1860         void *unittest_data_align;
    1861         struct device_node *unittest_data_node = NULL, *np;
    1862         /*
    1863          * __dtbo_testcases_begin[] and __dtbo_testcases_end[] are magically
    1864          * created by cmd_dt_S_dtbo in scripts/Makefile.lib
    1865          */
    1866         extern uint8_t __dtbo_testcases_begin[];
    1867         extern uint8_t __dtbo_testcases_end[];
    1868         const int size = __dtbo_testcases_end - __dtbo_testcases_begin;
    1869         int rc;
    1870         void *ret;
    1871 
    1872         if (!size) {
    1873                 pr_warn("%s: testcases is empty\n", __func__);
    1874                 return -ENODATA;
    1875         }
    1876 
    1877         /* creating copy */
    1878         unittest_data = kmalloc(size + FDT_ALIGN_SIZE, GFP_KERNEL);
    1879         if (!unittest_data)
    1880                 return -ENOMEM;
    1881 
    1882         unittest_data_align = PTR_ALIGN(unittest_data, FDT_ALIGN_SIZE);

We never save unittest_data anywhere so how is this freed on the success path?

    1883         memcpy(unittest_data_align, __dtbo_testcases_begin, size);
    1884 
    1885         ret = of_fdt_unflatten_tree(unittest_data_align, NULL, &unittest_data_node);
    1886         if (!ret) {
    1887                 pr_warn("%s: unflatten testcases tree failed\n", __func__);
    1888                 kfree(unittest_data);
    1889                 return -ENODATA;
    1890         }
    1891         if (!unittest_data_node) {
    1892                 pr_warn("%s: testcases tree is empty\n", __func__);
    1893                 kfree(unittest_data);
    1894                 return -ENODATA;
    1895         }
    1896 
    1897         /*
    1898          * This lock normally encloses of_resolve_phandles()
    1899          */
    1900         of_overlay_mutex_lock();
                 ^^^^^^^^^^^^^^^^^^^^^^^^

    1901 
    1902         rc = of_resolve_phandles(unittest_data_node);
    1903         if (rc) {
    1904                 pr_err("%s: Failed to resolve phandles (rc=%i)\n", __func__, rc);
    1905                 of_overlay_mutex_unlock();

kfree(unittest_data);?


    1906                 return -EINVAL;
    1907         }
    1908 
    1909         /* attach the sub-tree to live tree */
    1910         if (!of_root) {
    1911                 pr_warn("%s: no live tree to attach sub-tree\n", __func__);
    1912                 kfree(unittest_data);

This used to call of_overlay_mutex_unlock().  I think that was deleted
accidentally.

    1913                 return -ENODEV;
    1914         }
    1915 
    1916         EXPECT_BEGIN(KERN_INFO,
    1917                      "Duplicate name in testcase-data, renamed to \"duplicate-name#1\"");
    1918 
    1919         np = unittest_data_node->child;
    1920         while (np) {
    1921                 struct device_node *next = np->sibling;
    1922 
    1923                 np->parent = of_root;
    1924                 /* this will clear OF_DETACHED in np and children */
    1925                 attach_node_and_children(np);
    1926                 np = next;
    1927         }
    1928 
    1929         EXPECT_END(KERN_INFO,
    1930                    "Duplicate name in testcase-data, renamed to \"duplicate-name#1\"");
    1931 
    1932         of_overlay_mutex_unlock();
    1933 
--> 1934         return 0;
    1935 }

regards,
dan carpenter

