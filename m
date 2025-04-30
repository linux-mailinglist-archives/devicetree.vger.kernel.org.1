Return-Path: <devicetree+bounces-172266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F0AAA44C9
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:05:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C141F1C02306
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 08:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F02212FBD;
	Wed, 30 Apr 2025 08:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+iB64BH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6B3126BF1
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 08:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746000350; cv=none; b=B5ek42CR7TN0E5XXotkHfSDMH1nEwW6IawUw6YGH8KsOMKjlBbAJU2D9yjzLQ2me2hCI/06QwCayDP4toamL2EReRO+btn4BDVH8A035zY0hINNhEFv4njc6+r6xV/Wrlm+5iT9mc7jDSIFXhuTHFFMEyVDawKuJ/4On1lIxgc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746000350; c=relaxed/simple;
	bh=ZqvHfDFGxrFXdLJ27WXdmU7pM11pkbcxNPujmSlum4g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=X1qc57mEQu1+qDUylwvv69n0iXZeZYPIJ6+dC/GAswWvqIYgg0HIYq/JL8FwcZbpFkFJbLqCuHIuT47mqDc+6yJV8z8LNQpUWnytzXWPDKeQt9mqUEvGvjy6qPupW6LRS8zlLpxrpHwGarEOwbs/pPP/WXad+qDlF3XWEL7qMDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+iB64BH; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfe574976so47922965e9.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 01:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746000347; x=1746605147; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fqWvU5S5lLe8ZShiLr0+11SRPt/eXf13R7SasBVI7Sk=;
        b=Y+iB64BHp3do9RGctvWSKL5JTVoEk07Gt4MxTNGwIXgfHUmid3wH2LfD1oltt/Q+X7
         TdXsZOCmFYTWOd9xqsxvoti0DJUdvm1oMStYb9LecSkQbgiQl6AuvtdKqaKaCzK4gwFj
         knzsuP8bhNvrpq4gmIUYvLq7jtH6XA3bkR8hxDBLPts9V2ffXbaJMcDEr2Jxfa7wuJVD
         biMrKtHlGjMF/SPI4wArVeak52apkJ5iSOTOFu9Q7SXa6HAFDUH4hIj+I9c+O1Q2S2wL
         uRMcLidSAIxeEUfhD4JHP1slnWrNFrILL5J24VFzS5noV8loAw4jTJdppR2R5OEOM2d6
         927g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746000347; x=1746605147;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fqWvU5S5lLe8ZShiLr0+11SRPt/eXf13R7SasBVI7Sk=;
        b=TwUTyDbR+scTdVsMye5bHfNE6JdjWAfnRccCnR09qJMhq+N1bQRR+VrL7wXG5nCsXj
         OsV5ZlnArdkBI4ZkjR6kHiTERLgblAX/+a1VBhR5jGMcH0pY6j09/1pXbxpbImRSd6yu
         MF3g08fOAJkAiqfhDgkGqOQAMxulLNR+6mhd8+OqcfdlpzNBbLfDsZBT9Cd7WSRvrts0
         E5FHCitgi9QzDqz4JiHPBMuc7M992ehrmpmMh6IhDDKYf6o7Sx0Dts6wfdF7/YE128L0
         t3PNRrCC7QBN173QnGa2dG5FCqSuKhr5FLy4ttaz5HXmRF5RAsEsbuc9Ndk9T+4ghQnn
         Dw4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVtNpZE3NUY0F1WXcYpaV+HA+EwYTNq5Y4BzfOkmWLpLhfob2R7am0xpobOIhF9OgcLjJ7UR0siXfgR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/W3zzCoSmpFTmUDpPG33N3TPZAfgfgJYhwIk9ciWoyLgHPqvY
	k3PdFkTk1NNHWzAWNrwJi19n7322+w22HMZMCcGGJwmh92nynDisFm+7+hJ4G4I=
X-Gm-Gg: ASbGncvukpxX8CbXRYfxAxKeEuQpUxgasTMy0jcLO2rzfEtc18Q8X+IsvqQ+FMRitre
	hylqoNIuaHTkURKnKHGxmAX54t544dXZ+8Tto2GrTPTva6ALboBie1tDNadNMKfpuR1W5EFlu3P
	CqvEiEOOxt1OEcCVBYfW81f2NdaAJ6ftl1+Tze5sXonT7PdaGq83OC23P5i2kE49GRVGrpgCgOt
	QhNjHW831NVzRmElmLWAzd3U4nFRX1/EMXBlQgz0Hzb8/iwZvW9LcpMQewhR8fIj/FWPS0ZnXzT
	EkIlg1AeCLyetokTenv0RfU7vr2xZkMDdbKjaBvqpAI9YA==
X-Google-Smtp-Source: AGHT+IEDP4j6PWm+SFGfBw5+tbnB8EDT0CQ/gUZjNaKthvdfQEhiUCvSW6a6RsNFm+kY0bY0w89Lqw==
X-Received: by 2002:a05:600c:5246:b0:43d:49eb:963f with SMTP id 5b1f17b1804b1-441b1f5bdb0mr13183955e9.24.1746000347523;
        Wed, 30 Apr 2025 01:05:47 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-441b2bb3f34sm14911025e9.19.2025.04.30.01.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 01:05:47 -0700 (PDT)
Date: Wed, 30 Apr 2025 11:05:40 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Frank Rowand <frowand.list@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: [PATCH] of: unittest: Unlock on error in unittest_data_add()
Message-ID: <aBHZ1DvXiBcZkWmk@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding

The of_overlay_mutex_unlock() was accidentally deleted if "of_root" is
NULL.  Change this to a goto unlock.

Fixes: d1eabd218ede ("of: unittest: treat missing of_root as error instead of fixing up")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/of/unittest.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 64d301893af7..eeb370e0f507 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -2029,15 +2029,16 @@ static int __init unittest_data_add(void)
 	rc = of_resolve_phandles(unittest_data_node);
 	if (rc) {
 		pr_err("%s: Failed to resolve phandles (rc=%i)\n", __func__, rc);
-		of_overlay_mutex_unlock();
-		return -EINVAL;
+		rc = -EINVAL;
+		goto unlock;
 	}
 
 	/* attach the sub-tree to live tree */
 	if (!of_root) {
 		pr_warn("%s: no live tree to attach sub-tree\n", __func__);
 		kfree(unittest_data);
-		return -ENODEV;
+		rc = -ENODEV;
+		goto unlock;
 	}
 
 	EXPECT_BEGIN(KERN_INFO,
@@ -2056,9 +2057,10 @@ static int __init unittest_data_add(void)
 	EXPECT_END(KERN_INFO,
 		   "Duplicate name in testcase-data, renamed to \"duplicate-name#1\"");
 
+unlock:
 	of_overlay_mutex_unlock();
 
-	return 0;
+	return rc;
 }
 
 #ifdef CONFIG_OF_OVERLAY
-- 
2.47.2


