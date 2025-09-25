Return-Path: <devicetree+bounces-221334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7770B9E908
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46FBD3ACE4F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44D72EA729;
	Thu, 25 Sep 2025 10:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jWpOKZ/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA61E14EC73
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794869; cv=none; b=ViTq1xlbn30aE6MIBB/e82tjJP+6PuR887NDKuCstX6QZER1UXDfkL2SOnf2aHMBZw3kwxy0hYRs5hIIrdAUP+FKV+oO3VwwZRqlTAS9qUaWXX38/bdck4oVn8RCljEx2SvB5C8YLEes6j/1irDzaq/Yi7jCjBbhEa6PeDByUvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794869; c=relaxed/simple;
	bh=2wAPPbqLo2LqU/nTBFwRHUuMpcX/WMRKMRc0AgRIv18=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=e3NHM/4hz2U/nMTgJu+gq21r6MM7uqjyEcsEukem01/gTJBv8QdAFzL3ZM5bquWkfFyuj/oGN8pKAQb/vTFYYKngIsbecmcE8E8H8AvDVY6MLEWA0ylEf1BIwagsGUBQJVZDDy174t1rZSGUE11cyGeB0PgdQ5banEVqzXd1kJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jWpOKZ/v; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-62fc0b7bf62so1083570a12.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758794866; x=1759399666; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RQA2xq7mI4lOuuo7UB6QFY4SFCKqLwIJHu6LK04sK3w=;
        b=jWpOKZ/vV5bo8kKY/+8WnshsBI5H2/ZX4tO2y1i4Uker22Xzy8Q9xX46ydvqlNG3lz
         mTt495ck8CjWQfaPrqal7UJUnsNJ93NOJDGYaTCEC3J8wirC6UCJYuzfjUT/4Pz8QdIB
         ohnS4mn0OZCvRNXMCN67LiplQkY01RVxwquMi9td9dfoVmMsraiLDfqmwXYR1UKhceXt
         XUg4CZOLsGBwSnLEEo22CX7jARb5XV2DTmtAAc2X0O9B/0q2fvjx5EeywOX3+v21mJ1W
         vcP0mTvpsR60kGEC4c4WK+K1+aGvatO5NGHQeleSEkK3qpCsMQ+BPErcrQlHb9vxc8b1
         uzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794866; x=1759399666;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RQA2xq7mI4lOuuo7UB6QFY4SFCKqLwIJHu6LK04sK3w=;
        b=jRQxfbGg8/JkUvrsxpTyxOJ2lb9hVOSp0jEPUDo8OhJ5Ye586FNZ8JJWntG2hHFeJA
         eGaoYgqJoJpl3OugFDPB5CoWB/iQgpch1Gg1cS58sjvPUhxgUN5bLD1cP4XD8IC+iOvq
         5/FOwaCt6KNfcFy6Skmj36A0sB2JxLb4s/+k6sGN+8U+10VC2iL0vpHOCoEHViUC+H8f
         SXPxsPApIEHFPJsKhqCzCcNCgYlVaIGjMFnKc4EhC0FXgIJro53Syj+tpQ0rbT3fzTqA
         Y5s8q1FTCAL7MMT99u4II4oqkufZXeRPgpmlRaAmD7+T84w3m7c5tc2I5Kb26hlFTY74
         IwNA==
X-Forwarded-Encrypted: i=1; AJvYcCW2wfnOJ7o+UqqQxOnCd5UQmWN2YW/UIWyKNgP9f2IGqZh4bOm64zt2nMPhUKJJv6TS1/Ust0n9b2PN@vger.kernel.org
X-Gm-Message-State: AOJu0YzRBpLCGRoEKrilq7+Q1UwbODCUTcAZo7M/rq+X1KLHPbCmfx1F
	e+lrgEtY2ydz6h2O6+XuhPyIrLQxOCm/i0/dN8+g/z72vIpqYXPgBDXghdcLjVyb3Cc=
X-Gm-Gg: ASbGnctm9zgVeOqDjRzyBYW6q4MBgIRrJJJxtKiifqV+wR9PCySZD0OzQT2RhkhdZjP
	w6gjTDtO+AK0g6Z/e2HYYu16xu1t3B6AGFYvtUp6nTGW0NgEbA312qMIhMdP/y8i8grJdcd37fa
	QU4PY1aZigtQOFZPmxyJcpPL9yqszgGceXhxytYLptkv3s09MHVr4EmnsU1YWmyBERswfkgR5BO
	I21l5eQ+8vb/PGP67aUP4UQbOPPhV9it5Hwg9zSbVN9tpVoLgDrSaaSj7irH4F/QdAF1TSWejZN
	Uzmz7QZ7jlKrNJyjwLUHEbAxFKeLlJ0KiyDeVP+G8tYIXT066+JGaXRFeUsXQSoa5DoqR61TxmT
	zItS2nk0kNMKuvbWVyFUEtmFONGwcYKGUuMbM2yGVh0haTMmeMZVaYpcaTcXgmvrrsUsrlxpI61
	5JewYg
X-Google-Smtp-Source: AGHT+IE8TAQ0ieTHgs4m7gim+fRDgMGDmFFmvRIfockvNvymGGa0I6tPXCyGsiDJM+I3Aju2cVvIZg==
X-Received: by 2002:a17:907:94c7:b0:b2d:804c:f5c with SMTP id a640c23a62f3a-b34b684a76bmr362320866b.4.1758794866008;
        Thu, 25 Sep 2025 03:07:46 -0700 (PDT)
Received: from [172.16.220.225] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f7746sm134270766b.59.2025.09.25.03.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:07:45 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH RESEND v3 0/3] Add support for Awinic AW86927 haptic driver
Date: Thu, 25 Sep 2025 12:07:27 +0200
Message-Id: <20250925-aw86927-v3-0-1fc6265b42de@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758794865; l=1819;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=2wAPPbqLo2LqU/nTBFwRHUuMpcX/WMRKMRc0AgRIv18=;
 b=K6q9xHDFqVzGDg0/K3TIC4M42C44EAjwZ3LnaQSldYEZrPR+LSp9uqb03ogPaOSd/mx0AmbMf
 4OybTK6Nk29BQYXsj4zEvBALFeNtIKQfZxmoX+kXzUcHlaZ331S+tPO
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add devicetree bindings and a driver for the AW86927 haptic driver, and
add it to the devicetree for the Fairphone 5 smartphone.

This driver does not enable all capabilities of the AW86927, features
such as f0 detection, rtp mode, and cont mode are not included.

Note: This is my first driver I have ever worked on so if there is
anything I can do to improve it please let me know!

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Changes in v3:
- Removed obsolete FIXME comments
- Adjusted Error handling to fit best practice
- Changed formatting due to feedback
- Removed obsolete terminology from patch subjects.
- Properly credited reviewers
- Link to v2: https://lore.kernel.org/r/20250811-aw86927-v2-0-64be8f3da560@fairphone.com

Changes in v2:
- Changed title and fixed license of devicetree binding
- Fixed typo where the 'm' in 'ms' was excluded
- Changed error handling return values in driver probe function
- Link to v1: https://lore.kernel.org/r/20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com

---
Griffin Kroah-Hartman (3):
      dt-bindings: input: Add Awinic AW86927
      Input: aw86927 - add driver for Awinic AW86927
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add vibrator support

 .../devicetree/bindings/input/awinic,aw86927.yaml  |  48 ++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts |  18 +-
 drivers/input/misc/Kconfig                         |  11 +
 drivers/input/misc/Makefile                        |   1 +
 drivers/input/misc/aw86927.c                       | 854 +++++++++++++++++++++
 5 files changed, 931 insertions(+), 1 deletion(-)
---
base-commit: 3624e9a34b36d64a7037946eda28ae9599363a3b
change-id: 20250804-aw86927-9dddc32fcaec

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


