Return-Path: <devicetree+bounces-106813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 748EC98BD3C
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 15:17:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99ACA1C2367A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11FDD1C57B7;
	Tue,  1 Oct 2024 13:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FEr/GEjE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332BB1C579C
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 13:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727788564; cv=none; b=s8tS25HqkdHwP2NR2Kmi9VcY25bL5tqVVr7ygg6fh6YVdf5EkeqF5H3tMPYNP0FkPhNPqGZqcevRV2iBneQf4Zf7xrKYYgimKqcrmOoJnRTqoU8K7kQkUnjTC5aHia7TgtmBOexQ66zTMTUAb5bwEif7Xar86sr6M9XyBcct19k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727788564; c=relaxed/simple;
	bh=KuJYhS6BLwFHq2M3BsUApExs70W98G5/TG0tISRMP7Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y8M8OmMyd5leHR/dNoOwLIdRnrFelHuAG+39AZgGWsNs55fNobMyQOgbQILqxfbodoMUEgUU4Gb/UyhcmaHiCXyjDuyqWHgz+v5am7dL3+94vB1m+pb4GRCRh1DSYHUFfHNsywLJwYLY0XEedBdar+nV1GXJW4eKct8VbcIPpXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FEr/GEjE; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5398e7dda5fso2686132e87.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 06:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727788561; x=1728393361; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wDWnOefZjmiIEjMknhotah0eI13dQMdxoD4kz7zvhSU=;
        b=FEr/GEjEdMWP65mZYx+q4PRPbWv5eAueMd679Z3kBe4KS1MW5aPE4yOA0liMEjU3Iv
         /sWy5JFgXPST44bwG5hCSLq7kfdYwzeE/5hEL38l94Mx8tRMkBn3Oe5oEtfPLis8UeCh
         A34wf5u7IuKTMhG8KST9smHhe6A7F7WdZztENbpZjLD9Eamr7atRasIk1OZYF2hI6WCH
         bpyLgMo4CYU36VUWm1I+reXrJProONX17AfKPLxm0rmUcgCCptLe40CBbjV1OfWk8wZV
         GXuWR35pJfKGYlASAHKEJsQ9nOItLsehgld5gpiS0CoykjceGd0/eVxFJHWQ4iNXyabb
         lSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727788561; x=1728393361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wDWnOefZjmiIEjMknhotah0eI13dQMdxoD4kz7zvhSU=;
        b=QJZr4wOSCz0Fd6ZXBW2bag/vdu4QR9L7rhLzNtKqfxkLGoqgDB20bQ0rOYXEKTvequ
         z9rCbvbmbQ3Vz/+NjYIQHZCsF2MeAAxAiuHCClmDipxebeM+/2rWkKq7cQ3jo3Uprdap
         1T1bpdI7r15LOrFNCCU6YAjyrRaGxy4JjayYtihggLVH0sWWWRNvFfEAn3T6RtpR5Uiw
         ZXgAJq/+S6vNl5P0KISpraciqwrL6Se52tN1592PlVIAb1A+n4y0FYyGLtjFFRC16AWL
         7d3bNfG3T94bhYnu2GF1lO1178ZlvrnKfXfUF9C3VubCs1WV29ydVgVhccKdKd4zArcK
         eB0w==
X-Forwarded-Encrypted: i=1; AJvYcCV6TMMh6ETkAfNPQUwp+QWSU4+QqFN13M0degsZlRmmQXH/G+78DKOcB8Pvgzot1E2naYcnOqHTiOZt@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp1Pf8SG0RTEW6QiMyNKXpIohHloCh1Ivy/TH60RgtB1eVV7fZ
	z75Vs6Je+oZ2md0s1KuUmU9Eiuh9UObYY3pM3ROPB6M0iI5z7hiA8SR/kSBV/cNo+YT8rNqYAqq
	Uk5g=
X-Google-Smtp-Source: AGHT+IG/fw6UTWNuX/m2S/JOjvVxWHJbYxhho/MAY4qRlXDPE1784ETsLkH4i6A5S/ZYtCGWLlilpQ==
X-Received: by 2002:a05:6512:684:b0:539:986e:cd68 with SMTP id 2adb3069b0e04-539986ecf7amr2697367e87.60.1727788560923;
        Tue, 01 Oct 2024 06:16:00 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c88248abf5sm6170875a12.77.2024.10.01.06.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 06:16:00 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 01 Oct 2024 14:15:51 +0100
Subject: [PATCH v2 3/4] media: ov08x40: Rename ext_clk to xvclk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241001-b4-master-24-11-25-ov08x40-v2-3-e478976b20c1@linaro.org>
References: <20241001-b4-master-24-11-25-ov08x40-v2-0-e478976b20c1@linaro.org>
In-Reply-To: <20241001-b4-master-24-11-25-ov08x40-v2-0-e478976b20c1@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1588;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=KuJYhS6BLwFHq2M3BsUApExs70W98G5/TG0tISRMP7Q=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBm+/YHmai8wAoApJZH2dpa4ZHi0kOROlr8nU3Oi
 /MdUv5CmV+JAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCZvv2BwAKCRAicTuzoY3I
 OvjeD/9iyuEkpcja5ZKuhS1H0/8uvYdamUVhZAhK6XO9vrMG7B+G2bwVNB/keDeUGbLmimmvkso
 1+rLtcLjherL0DBIlskWFIEs/kqZQ6lsUr2xbUyBhxqkqNWqIK2GMbcnarrOUoRXvA4KYlHDxJf
 HIrRoyfVPqKEi8Rcl4CnqBuwdqS8c8HdPBgidfDeM+QrNkpjrIgorQGYBESqW1PVeJeKox567dy
 xRo3zfT69SgeCkF3aSiyvnVuP2oQwEOBIvSgoYo+uJB6kWUA6VuJbOdiLwIlx1d1xOd5Aw4/TA1
 /HXybETQ5lTzZRJI5TIl1o10or1BNC0+GnXPcKNoAulabegS01NqFAmELszNDJsvP/ALmswwnGf
 Z6rTmAtDqf+iaI0VAH/aZaC3EIBx95Vl1OyBG8kN6UGJ1tWI3rcIMczULQGj3MT2sp24+g7K1tf
 ep7Y3ASveW9+ooNwf5byqy6pDjtvMsfVzE4sFgIjmOm+94sN3w1H8k7UvCKiCGgSI/qfIGgMXAG
 dUUFWnM38lycNwDCHpKQ0S88xzwVT0GCQTilvxT1C0Ypqv+s9BKyCVzR8Q/am8ipiIkF/DmqNLw
 i1kSGlbawRqYqjtR6p99MIIuZiUr7oAVUGYnv0no9ZDB75LCUaabITz+im6luWJMpIpnRcOatde
 6T3RGL8FxIpLd+g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

The data-sheet and documentation for this part uses the name xvclk not
ext_clk for the input reference clock. Rename the variables and defines in
this driver to align with the data-sheet name.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/ov08x40.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/i2c/ov08x40.c b/drivers/media/i2c/ov08x40.c
index be25e45175b1322145dca428e845242d8fea2698..3ab8b51df157af78fcccc1aaef73aedb2ae759c9 100644
--- a/drivers/media/i2c/ov08x40.c
+++ b/drivers/media/i2c/ov08x40.c
@@ -1215,7 +1215,7 @@ static const char * const ov08x40_test_pattern_menu[] = {
 /* Configurations for supported link frequencies */
 #define OV08X40_LINK_FREQ_400MHZ	400000000ULL
 #define OV08X40_SCLK_96MHZ		96000000ULL
-#define OV08X40_EXT_CLK			19200000
+#define OV08X40_XVCLK			19200000
 #define OV08X40_DATA_LANES		4
 
 /*
@@ -2081,21 +2081,21 @@ static int ov08x40_check_hwcfg(struct device *dev)
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 	unsigned int i, j;
 	int ret;
-	u32 ext_clk;
+	u32 xvclk_rate;
 
 	if (!fwnode)
 		return -ENXIO;
 
 	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
-				       &ext_clk);
+				       &xvclk_rate);
 	if (ret) {
 		dev_err(dev, "can't get clock frequency");
 		return ret;
 	}
 
-	if (ext_clk != OV08X40_EXT_CLK) {
+	if (xvclk_rate != OV08X40_XVCLK) {
 		dev_err(dev, "external clock %d is not supported",
-			ext_clk);
+			xvclk_rate);
 		return -EINVAL;
 	}
 

-- 
2.46.2


