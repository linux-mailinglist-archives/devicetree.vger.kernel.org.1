Return-Path: <devicetree+bounces-167553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E123CA8AC40
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 01:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DFBC19010E2
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 23:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C010028E5E5;
	Tue, 15 Apr 2025 23:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="Aov8f+46"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FB0253329
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 23:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744760050; cv=none; b=K1lMDi5R5l7ERPR9feWb3YzxbjGTFSIEsjZHw4eLVBxdZ8BkEoH/ZeWDSfAQ5h9vrbE2YRXXlyZwHWjzreFFncPUGS7K+oUYhjTR6+rwZWNY8WAONjKq+S1d/ZSpRyN3S1pbrC/3zlWSufXiitGmpsEeFF45sv2xDm4wvFf9Xho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744760050; c=relaxed/simple;
	bh=0fuGOmb+qatmclqZbJkK38ISLNsb9lHUwwxPGIhTLTI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lz/fYjdcxh1sOK1LIUNEnJRgLW22BreEd4OXiFAtD2WihOx3m+0zEW9VjBXbxLf8F4twq0GbvG6KRe41gNFDDzKXGVEJqt8H0dYd6tP7xacjAPTNWcG4VVm/APQzTfIxAA+9jozx3P2L0pFqZmeuF8SCtqwVPV9P+sGdvSBqqb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=Aov8f+46; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7fd581c2bf4so5373275a12.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 16:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1744760048; x=1745364848; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Hrq/5jnsaS2UvAtZ8/+V6NwQKUrA7NpnKCyv2FlWdc=;
        b=Aov8f+46qD/b/ObjTyCBdl1mIZn8QHOgMXG13pfdyc8EhYog3lgYUwtHeH6chlI4QP
         j1IRkBkgv2nNstj3QB8OugsNtIYBmKZnSultsBolnsKLj3GJRkVyrkl63VCuEaeiX225
         J1wWkLh/5X4XWLTcUl+eVhcTu56V67bEg7YgcHr6geqgusi5LhyYpPqO2j7CsRXr7i7I
         jv3o6Z/DhbRlVMRM9hT9xtvemIpIWRXmvb+arr+yXeEC1aQp0WfcibYkld+n3jVZAYgm
         MYokGvJeur+xg2RU1pz99ZQCMr5eWuFyUOZiUe64iRIgtXorvFEyU0rMo9zfTrlrwaPp
         5D+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744760048; x=1745364848;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Hrq/5jnsaS2UvAtZ8/+V6NwQKUrA7NpnKCyv2FlWdc=;
        b=jCUqP/mi2B+I/BjMKlgYJ+vmSEMqqu08+G8fOvpj7usqGhxnRD9CJkEjVbWAbthx3x
         8Ra7XvxEoEV+Il3OVRBJeCpvZaBDscL3eU+/o2qwdR9eVtC22PVA2mIJoMu2gOqk3FmG
         kA3wQfPvfTE8CRIQYqLivyAzknCXijyZOVcGxXlwq8gmYBi0JsPDznJnB2R/CBB7GBqg
         NzKSdn5HaaNYz35VAUcCMzQ8+l9zlvVPWY05Sc4xdDBg+r9wIxN2+EW0sda60SMz9wKR
         iPocxrMHckMysNsnRvLJKhKeWg1woXvI8TsdrYEGDjdinEFbyTnAoBS/QrPYTCL37zhb
         L/2A==
X-Forwarded-Encrypted: i=1; AJvYcCX/4sYdANM1roT5RL5xx7D0UL9I12HWKik67U/BlqyJz6uSu22yFThON6k4mwtTEgZRIDSHEk+x/Ael@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2QcvMneIE+Ceaq758SHS18LCw+NGQQWySYuoqtJ22pkn2byUu
	zkLHbGR+A5fjwzenFJ5U8M3R8U17ZHZa153vxE1+eCx/pYqgdZzlf43rWFc6RmM=
X-Gm-Gg: ASbGnctyMHrXqOtNb7xgQIcUdcMYBLlg9vnGx0eyqSGI8FWHeAKRbMFH+1sekMQcAVa
	mR7q4GnbxNNtkTMJ4gvyUPQrM01fO10H9jztOeMNisJ6dZe6kGZYHmrjIcs4aKOe+y9dbwcx0zt
	6Fl5SatUbECZkde3f1TGyJcfBNYX4ae5tydSxE57G5FsJ8OhfCvI6YMKGYoFTWyCFvYCCtH98rh
	MY2jFfy29wW+0UnON2cevgr+kBFymqKAwz3zBtXasHxZjfNJil4t17Y5+KvGDGtGZtYVF+wZZJl
	JeQ/i5wOhq4OVgrdmg2A9f4zy1uWLM92SQ6tn/XhBhi7r0mD5aUzvhMisMb8zmAPc3rW9kJlVZl
	+rU9/VRSWC7/oMx1KrxzhGgvcKpk=
X-Google-Smtp-Source: AGHT+IEfEDwFMRmNLgi4NTTzWD2Cmv8qP+8plZfNcu4lPBsBXAVvMOeIdGNyZlsubwfe4N/9/Y6P4Q==
X-Received: by 2002:a17:90a:e7c7:b0:305:2d27:7ba0 with SMTP id 98e67ed59e1d1-3085eedb4d9mr1387639a91.6.1744760048494;
        Tue, 15 Apr 2025 16:34:08 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:ef0:9d76:c8a5:f522])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-308613cbff8sm171782a91.49.2025.04.15.16.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 16:34:08 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH] arm64: dts: nuvoton: Add EDAC controller
Date: Tue, 15 Apr 2025 16:34:03 -0700
Message-ID: <20250415233403.2052913-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have the driver support but need a common node for all the 8xx
platforms that contain this device.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
 arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index 4da62308b274..ccebcb11c05e 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -56,6 +56,13 @@ clk: rstc: reset-controller@f0801000 {
 			#clock-cells = <1>;
 		};
 
+		mc: memory-controller@f0824000 {
+			compatible = "nuvoton,npcm845-memory-controller";
+			reg = <0x0 0xf0824000 0x0 0x2000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		apb {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.49.0.604.gff1f9ca942-goog


