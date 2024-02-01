Return-Path: <devicetree+bounces-37446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 784E9845077
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 05:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C5A91C23EF0
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 04:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DCA3D0A4;
	Thu,  1 Feb 2024 04:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="N8kvZ/ir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD433CF71
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 04:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706762811; cv=none; b=qGmjY23HNMwuESJDKDXxUqPGV9hMo/Vnly/au2fNjtvqhtKkM69j+cm6PprvtCe30iJ/j63RONI1oSl2PwrNFCUW4X/Ks1fgaCqh+7iFQxrgYuCcR6cOwSOf7vN//6F1vLhuUhqYIp2MMmpR7dv9wX3jT/TZl4Tl2TevF0rqiUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706762811; c=relaxed/simple;
	bh=Twt8VpGAnLnDknK+2mkdxRc9XEHSq6p2WMav1kEzpAw=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Content-Type; b=tkQbSBPv4JgLO/NnhIWq5bwR0Uau3IZb9l5QGQuy+qZkbeOHYyZ8UZMCr4wh1WHJ1u+Sx7fq10iAZSTL792Fo7DEH6XGz5N3zXR87I6T4Lr33MEa44/xdRNFz261l//MEqM8yVeQJEigGzEX/c64AUqwPHT3Axtr0+33TadcwW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aahila.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=N8kvZ/ir; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aahila.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-603cbb4f06dso10592427b3.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 20:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706762809; x=1707367609; darn=vger.kernel.org;
        h=to:from:subject:message-id:references:mime-version:in-reply-to:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8c691bs4raW5tl1fD8/M9N6DqO7UPyEHeitm4Vwh450=;
        b=N8kvZ/irzYvcuRYBw0Ut78xk7XwlNAtgF9N5BGOaTXIjxMZre/TZb/nyjnvb504t0P
         aeBELdHdqmSd10ai3mPQ2E/YoACMofobbkxoQQCHFUuV15LHlzqHhjh/ihB0HQwCS/fG
         D5aMjpE8EA7c5zpsepMW/nT+KS54+YoaVRXDNHNYi2FWBHCFyf0Swu01tYZmXdZBp87y
         D09pf+yqRVhcyO2jX6YvRC+nPLaV2mCBxvt00qs+n1DhwI2uW+HqSksFHL8dDEHHo3tD
         iiO/nRI4VkplJJ69tUGaeoC/Y9aXf9+ksQR4DakdR0IF7sYxE4Pg8/76SrMedq1zROyJ
         zdSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706762809; x=1707367609;
        h=to:from:subject:message-id:references:mime-version:in-reply-to:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8c691bs4raW5tl1fD8/M9N6DqO7UPyEHeitm4Vwh450=;
        b=aOK7tJPren9SMEJzs1lUNAhA+30JFp/l3T0wx9WILdmSp1oNW5W4Jek+TTfL1ellLW
         lPp3AHEjr39/5MIcN+WvtIFSvdJb6jl6hof5sG2i1C81+MYiXgYXw3sorHgDrCaxITtB
         gqGzJnjQYtsK/jWkWFh1pZMz2BCKP4yaCT72gRiUBI0c1/tGhueTjqkCnub1y5KDn6FS
         DfTtlC66hOWPdoIQp2Az6Ko18hqh2R/DwVoq8KlzDERjsI3VoxY36hqcXcnonhaTbAGc
         jNcj87kEcJ/4gQArfUrxNXAeP4+eXAn8UMivmTSKE7v19Jp1f13DBmFJeaECEjfKfpWC
         Th+A==
X-Gm-Message-State: AOJu0YyDpufR0EMb/hwBPzyYVVtgIBTuHAwTNwFssqGpfWLWVwnd/sgg
	Ixjoe9Nr54omuk53uXiKj/XDThLBEO1JfjovnLDMwn+g1sJ0lJ9CovwHviBIEzyJOP3rC5WgI5T
	36Q==
X-Google-Smtp-Source: AGHT+IGCqkf4S6bQM1K/unGBkakUD903fQKJFzDx/PsI7m/ghEanV+fd8QwhKiXNvUcW/cWgJucE/HbyIpE=
X-Received: from aahila.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:2f3])
 (user=aahila job=sendgmr) by 2002:a05:690c:f85:b0:5ff:9eb1:29a6 with SMTP id
 df5-20020a05690c0f8500b005ff9eb129a6mr796091ywb.2.1706762809133; Wed, 31 Jan
 2024 20:46:49 -0800 (PST)
Date: Thu,  1 Feb 2024 04:46:23 +0000
In-Reply-To: <20240201044623.374389-1-aahila@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240201044623.374389-1-aahila@google.com>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Message-ID: <20240201044623.374389-2-aahila@google.com>
Subject: [PATCH 2/2] i2c: designware: allow fine tuning tuning waveform from
 device tree
From: Aahil Awatramani <aahila@google.com>
To: Aahil Awatramani <aahila@google.com>, David Dillow <dillow@google.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jarkko Nikula <jarkko.nikula@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, Jan Dabros <jsd@semihalf.com>, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

The Synopsys i2c driver allows a user to override the parameters
controlling the waveform using ACPI; this is useful for fine tuning when
needed to make spec compliance. Extend this support to the device tree to
allow non-ACPI platforms the same capabilities.

Signed-off-by: Aahil Awatramani <aahila@google.com>
---
 drivers/i2c/busses/i2c-designware-platdrv.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/i2c/busses/i2c-designware-platdrv.c b/drivers/i2c/busses/i2c-designware-platdrv.c
index 855b698e99c0..09c464874fdb 100644
--- a/drivers/i2c/busses/i2c-designware-platdrv.c
+++ b/drivers/i2c/busses/i2c-designware-platdrv.c
@@ -132,6 +132,17 @@ static int mscc_twi_set_sda_hold_time(struct dw_i2c_dev *dev)
 	return 0;
 }
 
+static void i2c_parse_cnt(struct device *dev, char *prop_name, u16 *cnt)
+{
+	u32 tmp_cnt;
+	int ret;
+
+	ret = device_property_read_u32(dev, prop_name, &tmp_cnt);
+	if (ret)
+		return;
+	*cnt = tmp_cnt;
+}
+
 static int dw_i2c_of_configure(struct platform_device *pdev)
 {
 	struct dw_i2c_dev *dev = platform_get_drvdata(pdev);
@@ -146,6 +157,15 @@ static int dw_i2c_of_configure(struct platform_device *pdev)
 		break;
 	}
 
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-ss-hcnt", &dev->ss_hcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-ss-lcnt", &dev->ss_lcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-fs-hcnt", &dev->fs_hcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-fs-lcnt", &dev->fs_lcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-fp-hcnt", &dev->fp_hcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-fp-lcnt", &dev->fp_lcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-hs-hcnt", &dev->hs_hcnt);
+	i2c_parse_cnt(&pdev->dev, "i2c-scl-hs-lcnt", &dev->hs_lcnt);
+
 	return 0;
 }
 
-- 
2.43.0.429.g432eaa2c6b-goog


