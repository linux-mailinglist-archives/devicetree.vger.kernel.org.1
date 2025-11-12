Return-Path: <devicetree+bounces-237553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 613EBC51EBC
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59D9A1887A8E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E18730E0F7;
	Wed, 12 Nov 2025 11:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I2ch7Ctl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E392F2914
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946286; cv=none; b=PzHx/FdhdL0rQVR3pZ5imZnUagsVIOJtsYUOtlJzRVDZe6PhtOCkt9HdX8+CCGgKti0XFc1AcI1sh447tuc8rfFFOWLGe9n00JsTAX/GJORBo2YrY4b/sia/bqSundJYIcMUXgaGWTdXhTX8u2y40j0JIlMaodeGVXJmgWqoPWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946286; c=relaxed/simple;
	bh=0X8ztOxPIoLqy18jxO5aLU25sae5cz22Tql+G03LG0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i4UKryfMV8GiZCHSW+wJDy6nqY63eu8WdCqFGGGyT0OOz5aikqwiKJK4DX3yq5TSnw96ydHysciTYag3wF0Ewis5E8x+OgBPi3Ht6HgdLGMx6EDLsTEQZ/Qk4dSIIqUJxYdEHmWFdR+qVuy4RjDKturSuh3pFtV7SOfLKHJIAoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I2ch7Ctl; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-29586626fbeso6516585ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762946285; x=1763551085; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TfBBll7plQVG4jmIJcdQk3DSYpimQWr9oy8pKjz02Aw=;
        b=I2ch7CtltF7ZjK8PZWnMl98TvD+vcCsYo2nQMCkMSJfgU+/XI4nsU8MeXURmvBMj0V
         dggQ52R1mlyS00dRB/AokCUpPEKXsb3WsP19jw+GnufzI3SVI4CsAvbIdrCHrDhwPrNU
         QG9O2wYsoM1bqcKVJwpT1vF2ZuehqtiayXshaPda2+Cz6kqz1sOsT7NKRSwD6nizSoF2
         L+CPQBUGGrJ/H2fFiGjaCypKEfbxHK3Ry4GxQ52QPFma2CrPA5Z2PR6VBDtr/jNdDRFg
         VBu/cJnWDGfx+92e40SEdgke9g2+qLGaUA31i+iP0QElbq6HdjJpfCYi/fgY4QHquRg0
         hs/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762946285; x=1763551085;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TfBBll7plQVG4jmIJcdQk3DSYpimQWr9oy8pKjz02Aw=;
        b=I9zgP54BL9LRISsIG45aYSiJ6e/aob0CzAhznIEbgnEBptm/yAmuY4234mj4oFbk0y
         5xQWNmi/bI7sS3RmZOELrrv1/aIk/xUdHIjxTwH9+5qbG+hjmpmDknX6yJhW8h3NYDmq
         wWCphNyoUdYynS2uZmwf5Lfy3KpEohhs8tvfRB7PkvrKdtbX4z8l5Z/gXLViZWSuKSAA
         RP+CaTtFdhxut6Umdqs1aVRA8RwVq0DvbjBpWpCRUvCuKFGtOPvvshG1+V4lFDDEHUN6
         cetPkbWhzb0TrWqgo+v0Ekt+uZnxotIDRRXqvktFX9v7JLvpe4tUOb1ihI4nNyCGbrj+
         MzVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkEGrwgBanCvOZ799vo14P8tWvob+3PssZ5yYaseKvE4pBUuq6LXKHSQabUWVJen/8LJc5UnSOymgb@vger.kernel.org
X-Gm-Message-State: AOJu0YzzXGYIeuPriSEuB7lCF11SyPXscTEQgrFW12yBoPlCJftbxoEw
	igZI/HavN9vNMvUGB5DmGuV2S10vfeeZPT0UDZS8JjdgpKE48Er5wOCb
X-Gm-Gg: ASbGncuEMOxLMXWCbM/mRxVOBvevIKSFoaGjxSgZUflXXqg5bUG5Ue0zgP0KdRwcWMs
	zNNHQVwArKfcXlA/0xm/R7S99+sriUOorOAMHJChVSgBIadTCpweIDtzPLOcf8CWwhfxpa/iH7F
	Dtx9ULie4k4UlxJ7N7EEeM1C4uWg8VTeJB+o55dVXuMemhf3ZMruuomNCkT2gXVbcrebKCnvseV
	knudckMxO6JjwkqnQ+DmkkuCOkb8ePuX9o4kvt3fRqQvj8bMiwsTgtXDGv+o4b/uDKb9DRoCUtE
	2rtkUeBzmDrw+0YWhQKRjkmqjm0HLkvFzqLQ46ILcTPRlbMZGKZq/aIA+WMNI5W3t+ORkD1sWDJ
	dlMrB/+lh+PojflCHlYeRelNCU1Agbm5OLKh0qFRm9i6U22uQj1z6oLtLtG0hfG+wos/ClXQiIU
	X3R+LGM/U/dWmdjLxzbNzePu+LeykN0oQ37Ia6DVOfTwuNjK7dYCKe8wPbLR3zytORRne4r/Iml
	GF5r0/lFZJVGL0APH0geB/toHFNvoAMahii/0UEn48EfINNlbpFoRI=
X-Google-Smtp-Source: AGHT+IHA0P4UnsPFIhj4utJwEq6rWs7Nkg1EY8pIQ9eKSlMotkC1tp8iAeDrvqrEcOWVVi+EwKFK9w==
X-Received: by 2002:a17:903:2f88:b0:274:5030:2906 with SMTP id d9443c01a7336-2984edcd3a1mr35066775ad.46.1762946284740;
        Wed, 12 Nov 2025 03:18:04 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dca0f28sm27386695ad.60.2025.11.12.03.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 03:18:04 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Wed, 12 Nov 2025 21:16:50 +1000
Subject: [PATCH v5 04/11] mfd: macsmc: Wire up Apple SMC RTC subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-macsmc-subdevs-v5-4-728e4b91fe81@gmail.com>
References: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
In-Reply-To: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=747;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=0X8ztOxPIoLqy18jxO5aLU25sae5cz22Tql+G03LG0c=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJkiOUeYXSp6HTiumdkXFc1P4lS9PK9pZfHi1fzZ2ef4u
 HINXwV1TGRhEONisBRTZNnQJOQx24jtZr9I5V6YOaxMIEOkRRoYgICFgS83Ma/USMdIz1TbUM/Q
 UMdYx4iBi1MAptrWmuF/hdDOyUmTfkptiMp9whlc1h/rFWiQ075Z8Ps7E5W4r7/9GRkmt8XcOv9
 ZLjFA4cGDV3ZBzGeuTKy/kmDxwz4r+r3ILmcmAA==
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the new SMC RTC function to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index e6cdae221f1d..500395bb48da 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -47,6 +47,7 @@
 static const struct mfd_cell apple_smc_devs[] = {
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),
+	MFD_CELL_OF("macsmc-rtc", NULL, NULL, 0, 0, "apple,smc-rtc"),
 };
 
 static int apple_smc_cmd_locked(struct apple_smc *smc, u64 cmd, u64 arg,

-- 
2.51.2


