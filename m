Return-Path: <devicetree+bounces-58609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B50FD8A28BB
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:04:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F9E928A1DB
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EB851C2A;
	Fri, 12 Apr 2024 08:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cfwLn7vm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C1D85102B
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908987; cv=none; b=YYKP/TtKj/qqg4hwLGcQVBbOMYkAdhbNoqYw2kLuG32y5C2Q+ARMCUIz4fEh2TE+/gkxfLHlxnInUJoP9IEk1no/TivQy8iBGW9LtmGwilIQG53zI9YjWeLiCj4JyA/Y4W4Uz8mDSmoyySDGDps+OosIVJxN97JpqcTdM9QTUjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908987; c=relaxed/simple;
	bh=gTnC52BuFuHklvm77ihUpKGOwdcbvc5JJ4SAx0eGNp0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PJqGC7d8vMlYvu+59iX6Ro0dhCqaESceFLjx1E/3efMLm3bgsUHNgZVLVHzAprkHhpRYermmdZXfPHJGP3CYCtnlyVC0xVSzoyfPzrZLu+MRcS2FfQ6i76+cTYqCLo3/TfIzMO7vTCmL8ExcL2qvDO7JluUZaHb8J9gqVIXbouA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cfwLn7vm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712908985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=imYSfgUV9tShp4d1ydGnn8vza1QDI3KMYtf8eE+SzCg=;
	b=cfwLn7vmVB+h5H6pNZ+ARZ+p8MdhYoC0uhj8O1R/GNINJHaBuTbM49DbDn7kLaRDKRu9A5
	PqSnCCDG+I/WkfJ5fYQmixBCMHY61HVGmQWYK7QMh5uVMf9iVhMVT/9S9+6837xbYRXMR1
	g7YoExWfCTewefMFDXlmVXkBS1BrdDI=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-515-jXkF18QlPWihCmgdA9K4Ig-1; Fri, 12 Apr 2024 04:03:04 -0400
X-MC-Unique: jXkF18QlPWihCmgdA9K4Ig-1
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2a47006e272so638791a91.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908983; x=1713513783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=imYSfgUV9tShp4d1ydGnn8vza1QDI3KMYtf8eE+SzCg=;
        b=T/F9IhyhYa9KHgstVeNCNlTLTavsq2FFHC4jEd9GrBkWnUsbpiIBV/vt4XedYrOeaS
         aN7PO2+q3rYquUvozO/Cc1xMFf/fBv0fEkNPw4YDqFw+utwUMOWd+xK4weikFDf/Buhe
         mAgDEydPHovUFCGFiHDOI4gIUQy9Po/QlYI1Aab9RMJeI7c8dl5JmiLOiOnMg3lLAjiW
         h5KPdf7DnQKdu2tklnZGcB9MkQt68sjK/kUqsDh1IAKG90LzsdYqZd6pVKeXIwLW6r3n
         tZA9IRdFIzW19J++XAwsEopnaa8UHwtMe1AKeIZ+NZKHd6jF98/OHXj9j6a1mhXloGJm
         JdPg==
X-Forwarded-Encrypted: i=1; AJvYcCUNLvDcJnf1NNa3ghj7KcHhpnJzJD5C4nG0M9k88EAOEXqmYg7ZzAyMS9bT8p+w3wutNpYmsc8se6KCsvuFUz+prD6uHA2bFSG5Bw==
X-Gm-Message-State: AOJu0Yx1AkoaS5Ihh9F3v8Afz9g5tEVLK05247a2Z1CoC3J/pkSOOzy3
	X8boqi9XwbXX9g4MkYUY+p/g+IT7hbpI/dv9Nu5VtX+8WDZixNkB29Lo3Zmm9LH5FTBJ5OXLQzQ
	nTXwXIc9//YgWB7IWLi3DrO7zm1sS7tt0qW5AkTrkY28OYS+Z/NvN6hcMJ/OChY7Of1lf1w==
X-Received: by 2002:a17:90b:3149:b0:2a5:2ef2:4ce4 with SMTP id ip9-20020a17090b314900b002a52ef24ce4mr1583961pjb.41.1712908983323;
        Fri, 12 Apr 2024 01:03:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgFOZohr24G1rXc3Bo3/PYBVjDbfNE4fUPuj6ECJPGPkq7S6KSCCxgCSovuRZVguBmCNTFpw==
X-Received: by 2002:a17:90b:3149:b0:2a5:2ef2:4ce4 with SMTP id ip9-20020a17090b314900b002a52ef24ce4mr1583940pjb.41.1712908983043;
        Fri, 12 Apr 2024 01:03:03 -0700 (PDT)
Received: from Samantha.redhat.com ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id c9-20020a17090abf0900b002a610ef880bsm2601514pjs.6.2024.04.12.01.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 01:03:02 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	guoren@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 4/5] Kconfig: Enable APM X-Gene RTC for XuanTie TH1520
Date: Fri, 12 Apr 2024 16:01:46 +0800
Message-ID: <20240412080238.134191-5-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412080238.134191-1-wefu@redhat.com>
References: <20240412080238.134191-1-wefu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

This patch enables APM X-Gene RTC for XuanTie TH1520.

Signed-off-by: Wei Fu <wefu@redhat.com>
---
 drivers/rtc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 3a89f1e6095d..b219aeef4ce9 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -1880,7 +1880,7 @@ config RTC_DRV_MT7622
 config RTC_DRV_XGENE
 	tristate "APM X-Gene RTC"
 	depends on HAS_IOMEM
-	depends on ARCH_XGENE || COMPILE_TEST
+	depends on ARCH_XGENE || ARCH_THEAD || COMPILE_TEST
 	help
 	  If you say yes here you get support for the APM X-Gene SoC real time
 	  clock.
-- 
2.44.0


