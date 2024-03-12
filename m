Return-Path: <devicetree+bounces-50126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29631879B6A
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 19:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD6551F23240
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E7113D319;
	Tue, 12 Mar 2024 18:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ci8DnB7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D8F13D2F0
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 18:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710268280; cv=none; b=KPOaU9kp5Z6kBuLmnzshYKm04ECVh1AEpTW2cgiPvBxTqwJyaogjt0ksrJytfTJrpAnNQlzSNf7vrvHfVr3sBqpUSOl/Y0UGULWu1uO2RtQHIEk/PIt40iPG9bFe7cLutbpDZs8o2UOOOo7BlhG0c4GN31+9D4d1TRdWKEVj1e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710268280; c=relaxed/simple;
	bh=jPRItguT0rR1AOyh1nLuIc0iBEuYZWXkQuC/EHQ4T74=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U+U+uBvGDvXPLppT/BaNiDOLpqlk85arTOYnIKgFsuR3izrj3Dwmi0+nkGCmsMBhhDP0celENI218CCFXSsPpgLIaE65cyNyWqM0vR8uijpeGsGwsb2pB2kHMsOL2ghtPK4TbjmgxBDyEQPUMMLNpP5IKEa2PfI03CucR+ksS8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ci8DnB7L; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51380c106d9so4990461e87.3
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 11:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710268277; x=1710873077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=svwNxagQwUw6dGin/+/wtaDz1N/51/WVJ4l0bjMuiYI=;
        b=Ci8DnB7LdQ9i4KhW6/SicTb7YrO39XcBcjFoMgPHZ2rdygifsW7TLLikk5UuhUw89J
         7bmZyotI4oC300OPwV4H7XhOForXKKmZfYRN3oCPo76wdBzCri2cjvy+ooZ5Cdcfqd42
         kvkTsf4tb6Rjj6bq5VWWQaPosFV018jh/ySMgCxz97rHlUX33FWPlkJnSM/L13c6t76M
         WlqTp/cMgR7YQ8v7PRAyMx84Y/pRldanJ+lT5Pq+91mkOVYaivmu2yPvx+x9fShoQPzv
         gdkpDWr9C7m3LoDIZPu1Wn9SXqVVabfBRtt5e5pUfwiFaw8YGMfrIxXGKQAzjoEPoz3q
         W5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710268277; x=1710873077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=svwNxagQwUw6dGin/+/wtaDz1N/51/WVJ4l0bjMuiYI=;
        b=vL5H0K6HjSLayQhgtuszDTh8Se+qvZGk4O4N5f0iwZUVMkVvFMqpG8iljVxe6TtEB+
         jdXlnljSWF0nq7a1IbDDaasYBfXRVHOlKN6ocmrAwrdWuViD5xMy9QoouWZnG1z8cSzj
         HePcnWMAllt9RgrV8aZNAwRP2UIRzSjOIqilJ5HLVMHWSm8WCz3tsvrGL7nnzx6hA45p
         VuTghsv//nqa2PLH0kcqI68VUS6FKkT2eVu2vZR7QZOA7KQHMmWM6Y5z6AqbmiwrkEvn
         HxSS3v5E/4ZjA0if4F14WgKUw6GLEyDJf6bajgeEeLo0kXMu0NKY6dAE9ULsHS5DqUnh
         KpXg==
X-Forwarded-Encrypted: i=1; AJvYcCU7bU3SY57HxVUmapqgnWlF9VGvNOQ59tBfDFiWhG6qwdbIh0PTHeRR8OwzpZkU3QhHtXnXJCVKwNhzyCpKGyR+fxt5pIryXLZE7A==
X-Gm-Message-State: AOJu0Yw1ff27bkuSGRc0IMBOzxiK+6vZfp/ulSX96wTjwgbgsQ1waJzh
	I0vwSY9ot8v3fmRPzSMEcwTdpLTfKXYgR/GV+nRP2mHK2V+koH1TSJLT1D0kKvg=
X-Google-Smtp-Source: AGHT+IEF10AZsbMENd7cz4Aw54PnuDNioiumgrU6CGWMx3XlMQJdOVqhqLJjtt+YrwpVYS26zPiP2A==
X-Received: by 2002:ac2:51b8:0:b0:513:c1e6:3c54 with SMTP id f24-20020ac251b8000000b00513c1e63c54mr723525lfk.11.1710268276944;
        Tue, 12 Mar 2024 11:31:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id b4-20020a056512060400b0051329001f53sm1661012lfe.54.2024.03.12.11.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 11:31:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Thomas Abraham <thomas.abraham@linaro.org>,
	Kukjin Kim <kgene.kim@samsung.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Sachin Kamat <sachin.kamat@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] ARM: dts: samsung: smdk4412: align keypad node names with dtschema
Date: Tue, 12 Mar 2024 19:31:05 +0100
Message-Id: <20240312183105.715735-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240312183105.715735-1-krzysztof.kozlowski@linaro.org>
References: <20240312183105.715735-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT schema expects certain node names, as pointed out but dtbs_check:

  exynos4412-smdk4412.dtb: keypad@100a0000: 'key-A', 'key-B', 'key-C', 'key-D', 'key-E' do not match any of the regexes: '^key-[0-9a-z]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos4412-smdk4412.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos4412-smdk4412.dts b/arch/arm/boot/dts/samsung/exynos4412-smdk4412.dts
index e16df9e75fcb..c83fb250e664 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-smdk4412.dts
+++ b/arch/arm/boot/dts/samsung/exynos4412-smdk4412.dts
@@ -105,31 +105,31 @@ key-5 {
 		linux,code = <6>;
 	};
 
-	key-A {
+	key-a {
 		keypad,row = <2>;
 		keypad,column = <6>;
 		linux,code = <30>;
 	};
 
-	key-B {
+	key-b {
 		keypad,row = <2>;
 		keypad,column = <7>;
 		linux,code = <48>;
 	};
 
-	key-C {
+	key-c {
 		keypad,row = <0>;
 		keypad,column = <5>;
 		linux,code = <46>;
 	};
 
-	key-D {
+	key-d {
 		keypad,row = <2>;
 		keypad,column = <5>;
 		linux,code = <32>;
 	};
 
-	key-E {
+	key-e {
 		keypad,row = <0>;
 		keypad,column = <7>;
 		linux,code = <18>;
-- 
2.34.1


