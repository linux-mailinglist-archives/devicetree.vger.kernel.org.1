Return-Path: <devicetree+bounces-42404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A823857710
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26332281814
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A946E168DC;
	Fri, 16 Feb 2024 07:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JNFXtl+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95A217721
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708070154; cv=none; b=hnKH9S4FJP5S3jrwlTs8vz2D7gEnIdroNcqRSQdCZvg6wAZyccoreXJzmsp2y47L2Fxkawn0u/7P3Alf7GI35b18Oac2aFNcJnCGIkia3XyLLCSb5S1QFrqBe0sXLYVodZETozc7qlx5svmrq2k5XxqPr2KWoO4arzAkQyF7HCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708070154; c=relaxed/simple;
	bh=cSxKbeYGrXBi01u9f2n15BRakjqNeU6etmH0wZRAkZg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FvGKLvEc1IC6qW7zMFmNZK708T6psxO3KrLnV5Om+tw+ZFKKhjCnA3fIJI+IoMv0YP7lKqkYcdAou+Lrqon6HaRKF63c0ZuvPLoLIUjvSsLeTOj4TsXEkOopXYA1gWHkmsr5D7da4Jl5e1fkcC0SD3x9knJBhkMstwhOxOUrWts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JNFXtl+7; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-511a04c837bso2056912e87.0
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708070151; x=1708674951; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=emO4NNy3LKusCPqGhZZ7GE4y/efsFfuCMAIJiM7fXOw=;
        b=JNFXtl+7MO7GHIQCGQEfu+TqdvWbz60dgmCfTLafOCv3PsAA7TmTGkBDqCC1ewBxcE
         9Dp/7OAE3TVe8dq/ou4prwgihIJkuLdNcpNdYVnDDNCQ4+SC0FwRuDuCkXQfPD+71alW
         zWtk7A2gDU7goq1R0u6Y6CPs9YLlc7TBCzP6SfUpUHLN37HoW5F0mSoTQNt+kxnth7bq
         ba/skncyUDLZHIz+UDhehBOG4H4hD//DjM5ObwTIFL7Jh06UL/Jk5REWr4Lu1RC8uSK5
         LuuXMm51N3snkKrCRKG/ovOpZJPLwFO8dIAn3ytjil1jIQ4XxhYfXc/2s2wzOapfVuVv
         Dpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708070151; x=1708674951;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=emO4NNy3LKusCPqGhZZ7GE4y/efsFfuCMAIJiM7fXOw=;
        b=fa9ifLZSNTk5nQzUAnTLUa7yCEjmYCGuOGrFy8thnJwA86yAFHqdVBWAMioOQG4KJ/
         ycf93uF8JKQpeEgjX9KRNk/sLk68YYh6yiwWDLejzaMqaU9gKdflPzhO3BUrSBVZ85x1
         F1RHsgkzegbF5OxD5CZIcyseZOHRBEcjBXyeIk573sVKHoGelBSbNFl57y7sUFBbAzM1
         GvkySljFf+1MxJisVc5kgSUQfMXzkf0SaaIic62CG59wzkWHFWztTIqdjUAz1AUz8Tm5
         2ZbL+g98wyWBFGiznIAboXZZrLXJ+n88U9bLisw2Hp3666LgYG6vWuaodphr1lmUsClI
         f+Qw==
X-Forwarded-Encrypted: i=1; AJvYcCX5Zy/oW2f4TAK3Vx91oj6ZNEFi7sWjtVUXXJarci1wjQzUtZlnCQtEBoyOJ/K9rea/+6gQ/WJOE9rAQpXDf54Ak1LRY6178X7KZg==
X-Gm-Message-State: AOJu0YwCJ9fbBcE9aSw2PdTGMSP3uEnSiMQkGMkhGudOnBo+aIv5tE4M
	N12jRE5glFD/S3x+1z4QXt99ILfRhjPA5rJRe/RjCbLzJ2pbSoc739AxKmbpKgU=
X-Google-Smtp-Source: AGHT+IEEoOtTe0HdxVvfqlQ6O+495RGQe5JtxVOZNl6Dponqsw8clxuHh3d3yoyjwq7es5Hs95e/hA==
X-Received: by 2002:a05:6512:3f06:b0:512:8d30:6dce with SMTP id y6-20020a0565123f0600b005128d306dcemr1998999lfa.52.1708070150828;
        Thu, 15 Feb 2024 23:55:50 -0800 (PST)
Received: from [127.0.1.1] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id f23-20020a170906561700b00a3d828c54f1sm1300750ejq.135.2024.02.15.23.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:55:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/2] dt-bindings: hwmon: common schema
Date: Fri, 16 Feb 2024 08:55:45 +0100
Message-Id: <20240216-dt-bindings-hwmon-common-v1-0-3c2c24ff1260@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAEVz2UC/x2MQQ5AMBAAvyJ7tkmVoL4iDuhiD7bSChLxd+U0m
 cPMDYE8U4AmucHTwYGdRMnSBMall5mQbXTQShdKZyXaHQcWyzIHXM7VCY5u/VCbylRqyE0+aYj
 55mni61+33fO8MvUNl2oAAAA=
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=815;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cSxKbeYGrXBi01u9f2n15BRakjqNeU6etmH0wZRAkZg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBlzxUD8/15G35K1Y17sS9k5UgCkpWQ7K1rEWJou
 1XAE20W0H6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZc8VAwAKCRDBN2bmhouD
 1w6QD/4r/0zhv7EhrFTlGZ28Fd+s5H5qQGJLEoNeXizCIFhElG2yR+LJ0GuAJC8DhBgFTHkC7rl
 sAlQk21uZKFHxSHcebhHV8tt/gnFnV1FNjBk4AtvjCT+slEemIan3X9/UhSbSNS0lqZWFcJtq0O
 IPHdL0P4Q/7vQa/zm1HTsX9Ilb5DIby1iy9yvc4GE9+vNf18MwN1CvXBHxNbusAj5GrBRW2M/bp
 olg2k7W/Oft1WWFtT5YGtgvECuZZbtm/07h31yy/D2tVjTzsJbRBNncJOUbpFj7tuYxJoG4gh7w
 rpcsOYkg8u2isAs79mlorVFBBKoaXmVoqozjePv5Z9M3GJ7vFY/5xor/Z4Zclf/C4ejAbwouYqo
 8sbpCRnxTDPyyHNmV79aRQ2Rb+DSTiBagcoaBP1VBP/9/5KOGAN/X1Un9ttV//PuKnj9DRFAqNF
 emGmo1MLjKHWO8qHjpYeGvHMmb12RfCfLTfJLrq+m9Lm6r8UmMBWWxtlmM5EF8N4KGWloKGBf5g
 w6OOR9ZRBMjpLY0ex4G/p2TLvK1wb/xbLo6MkVvCpgc3Uu4nlpY/qlNxNE5V139O3Aw1rMNjNn1
 cOQmCiRVTMwYPn8AbqHuBQM9MAnh79YV5pT5BFCozO9zaTshB8AZikLVw7UVPCEn/6yg0r+QH9S
 qYREtDoCUXiaz4Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

All device bindings could soon get a label like:
https://lore.kernel.org/all/20240215-mbly-i2c-v1-3-19a336e91dca@bootlin.com/

Add a common binding. If this gets acked/accepted, I can add $ref to all
existing hwmon devices.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      dt-bindings: hwmon: add common properties with label
      dt-bindings: hwmon: ti,ina2xx: use common hwmon schema

 .../devicetree/bindings/hwmon/hwmon-common.yaml          | 16 ++++++++++++++++
 Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml   |  8 ++++----
 2 files changed, 20 insertions(+), 4 deletions(-)
---
base-commit: ae00c445390b349e070a64dc62f08aa878db7248
change-id: 20240216-dt-bindings-hwmon-common-897970b393f2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


