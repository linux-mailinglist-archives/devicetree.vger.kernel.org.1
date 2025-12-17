Return-Path: <devicetree+bounces-247228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC854CC5CE8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:44:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84F6F306EDAB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D68EE288C3D;
	Wed, 17 Dec 2025 02:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hUrqL6aw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD87428D82F
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939348; cv=none; b=k0+nfZWLn4KE6ltcaHKF1FVYBTTsFotV1KIlZE6vGvlEOUUw9RiF0xfLSGUiORD0JvYUG6cU2POz2Bk2GrQCQOplFnYvhSHrRLVMdff7+qJpz2+JfeGBO9ju+coynDwS7bD+OLjCaACRjboH5z+JiH3cYV3dByht8oT3hSOWAZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939348; c=relaxed/simple;
	bh=SxHuyIjADYP1U2icNo/1tBOqaXsA3cfJ/igEM368h4w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b6Gy4Vp4LUoZDSdVNSV0ai6uVQAuAY356Q7LCIL5/7Ds+8UDSyHaBveVp2IL/lrgXpg7KWxxarWJEh4i7P6nMeMOI5iiCgYnOfvBnZFIkE0j37MJZYfeXzBOxKN8aOIP8pTbNezKRRTTYIQhePI+ms5dPtEstbeoZbUGlQKDibU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hUrqL6aw; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7fc0c1d45a4so1105826b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765939346; x=1766544146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5KMCfTLhRPCYocCD5Sa4l3D1sRENu2ZmKQ37zZUrHyM=;
        b=hUrqL6awPaOC18rli1JbKauJ7bBtUHXyl60AZLHxht388Tj/nyAxTD+2T+PfVgu/vb
         S9U2qkRbDnFrvO2fxG9pLHRSeK0/q/L1E01GGZI9EwRZCT/kF3D/GzaxmLLXeoAK6KGr
         IobmMI0PJanRBSiPjA9SmIiNvb9SSE8+SAIWmYfHKWi4fppJwhXNI+Q3LkPDdj0+nHqB
         aPmKyclBTZRdBEE9NNHNqM4HnzaX5iy3cz0yofYkdNzDErwAZuLRC9Ab2L1szdd1QjYc
         VFXa8wHW1JrmFl9o0X/4RjGiLdlphtZBUk3U3Vbj8zs+rhVg4buF/n7FAijYq8OkDDWQ
         nfBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939346; x=1766544146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5KMCfTLhRPCYocCD5Sa4l3D1sRENu2ZmKQ37zZUrHyM=;
        b=MmoP1XKRZchxcwRA8B2iFyXcyEBdI/DjihFk/eQdQ/2tr745TxlYkPszie8HDdPi0c
         WB+6BXTQTYBztGDtlwzBMFhORoEmcGF93KVjfCrDb826//tOCTqMjMT+XewPjZm/b6gm
         hHHvYemHAQ8yY+P8DiiLzdHQ+xGD8qsvmmsXy08TuSqQAeDGHj65QRbtA7MzrgZJB8ls
         6uN40uhBunHC4M1z+Zbtki6OIU/HRJGPfKgqKKcFbb1AdJzDoU/woIl1GvsXCGSZjHVm
         NY6HxkjE1zd5MkukTPbKJowuhcivlSFGClztnYuOlxz1FFRBCvQdTtUctzkdByWAGmWc
         wztQ==
X-Gm-Message-State: AOJu0Yxe0gstfrS3qNySkBC0NU6lYx8RBd3gk17OBMJqRfiqIXYD+pyQ
	qde09zzhFK5xkQZojI4RfMb97mmOgg9QXH6zMwcsQJZWbTOksd4XCgMn
X-Gm-Gg: AY/fxX7kawMwidXjZAK7v4yhgjFkwIe9DauOUPHHhbVMTRH1klnhe0R6sHEEy6tI1dN
	ErmH5lKn/Eo9mK6p+Hg+ijA+qtKDRrXpsJT3hQH+yFhv6nux5BIZWY8Dtw/ygbKCxp9yr2VUz0/
	4FNKySFFgN7B18M4XRUJbIC2s5qkFIy4TyqkbYGJat2C+xCcK6icgZH4IaUXjHQgvpOKKbyKA5Q
	R9Zq4fJtzRdRbOdgkMI6t7xxEhhJ2/jWNSmH1qBLe8XzQHCGRaPpYX/7ZmwvgktqRn7X7YHM8OX
	SfQ34dWFanjNJgdro/fnanvsE2Tpw0gr9iC1QrwESaylcbgJqCq23CCOS6cWOq27x96z+BUyS3Y
	zXYrjj30IV4t7E0W4Y/UyutDOkHLDrpfMocCNs8vZarMmWNNYt0JsNd8VasPfPRlIXDvmfeUkHH
	aX+iwq8X0BQtO/82aHeW459teqMl7dEoS29OxuGx4xUJ6HRSJuHW7wNn3LEITF3g08RobViGRbj
	I7FwXQiJbfNQUs=
X-Google-Smtp-Source: AGHT+IFxLVoztRFrvzcQi+RXpwRMMUWexU05bJJDnAS8n7MfeA0BGia80wGlDQVbtEkO9IYQg3sFkA==
X-Received: by 2002:a05:6a00:b904:b0:7b8:87e1:a62c with SMTP id d2e1a72fcca58-7f6702be6e7mr13723830b3a.31.1765939346329;
        Tue, 16 Dec 2025 18:42:26 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8c29738sm941342b3a.17.2025.12.16.18.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:42:26 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2 4/5] ARM: dts: aspeed: bletchley: Remove unused i2c13 property
Date: Wed, 17 Dec 2025 10:39:37 +0800
Message-ID: <20251217023938.445721-5-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217023938.445721-1-chou.cosmo@gmail.com>
References: <20251217023938.445721-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove 'aspeed,hw-timeout-ms' property which is not supported by
the driver and causes dt-schema warnings.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index 8df145d2bcfd..123e2d1891f6 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -962,7 +962,6 @@ fan_leds: pca9552@67 {
 
 &i2c13 {
 	multi-master;
-	aspeed,hw-timeout-ms = <1000>;
 	status = "okay";
 
 	//USB Debug Connector
-- 
2.43.0


