Return-Path: <devicetree+bounces-115986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ED89B1957
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 17:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 157071C20A91
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 15:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C403A1442F6;
	Sat, 26 Oct 2024 15:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="efZXZbhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A1212DD8A
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729957424; cv=none; b=ZahsAhDm+/LVLNzURSE2qOIk/du6/8KWWtM0SMYqbcj5BouzAbC736LHz5UsESclsFLZAeM8BmPR+YHtsy08BYp3NPrOQ1LkNYWzh4ScPLZhPOTMOQ+PxBNbJoodCMbJLAcuTRbv3yLWhN/TwvD3jdvtJY6nLQJDWAimfD47+p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729957424; c=relaxed/simple;
	bh=JNYm01EL3hKXW1IXLFDCoevjjIcG1eZeWDrkOscklKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qQalJVJZWf69KhIpJx5oGwbHJUkbz5W06AMaM76dMZkZ7NJV47DFG5kKNc/kDWWAt+sjYYawhH8v5XS86qB1TQd0XZvPe0uIB3DQPscC2Qc5oen5ZcAZNxOpjXZnn8IBpSo/ZZQ+NwonfPdsy6ZnAtvsNFCeH5EhCC2ZX3bYwpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=efZXZbhX; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb3ce15172so36034041fa.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 08:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729957420; x=1730562220; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+/+uWCmT59bp9pRc5n5hys0S2s1koHFnPngmNR7CmKg=;
        b=efZXZbhXr20KrTVqndfq7VDwKl0Q2Fyb8DODUtt+FpzUNJ47TAuEFL5mMmtmWo5SMR
         4JQIqtzSSDHkR2YwILAP99UaOyIUjIzbx+DjHUpYc3kTW1rl3th//aZefrRnqg8bTk1N
         J3hfk3kZ2c68qklFusWZ3mWa3Wv1kXZvLw12SZ54QDESL/NNBdWLvS1PoCHwE3sHexxi
         j+lT+WalgdorRAB/Bbd49l6wMneJv/zAh7H6mDaYjLA1BT+ONYJKlKqqhxBg5NkGbuRv
         mKmGZju491ArnPIEDkBwntvdliXzwEo7sopWYFnK5luhycRxHoMFvT6YTiKpU41tQAMH
         YXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729957420; x=1730562220;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+/+uWCmT59bp9pRc5n5hys0S2s1koHFnPngmNR7CmKg=;
        b=uu1gUlCnsmHtVaSeldna7mred6px7075zyCbUSPLD1Msiw2A4Rp/9hEyAS0ntZxpsm
         KUmJwy1njvmnrqRFsPC6dQwlIpHZk1YADDUqEh5HyiUxyUZFKl9FgpNG07cy1L8ni7ZW
         rkb/KRyqgBoysL0mdhpu6RhnH/0tdojPN7GkFpU4X2ZVhyz2sKDPNwkBJe3UFvSz50nO
         y8ISrK0I+0XHi3q4MORtOj1uph4FT/BjKXkosVSFqjxplbmDUoHJ72U6bgdSYKf6NuZA
         74Gb+MF8CM904tM+Qbwv8Pm+ZwA/KpO4x+puY76LsZc0SBVQ21nYtMyugKKY3TMqvC3F
         NwLA==
X-Forwarded-Encrypted: i=1; AJvYcCVFAKz7JWogUcznPT6h9FUBNk5+vyDRHQGE/d5plK95dnR+9YxqNvEXKSvCjmadQtp/Y5tbhj0QCbcn@vger.kernel.org
X-Gm-Message-State: AOJu0YzZSxnRhEoBJ8qS2R6605T97EVlR8O3xmylVliw8MdBFmg8iSla
	dOngB2ggUhg5l+iSL8p164gRepVmSMA2a5qHuJnb77BR62RcWc8ZyTVD3d+TNAA=
X-Google-Smtp-Source: AGHT+IF/n/FyaCKyNNcO0Zotxv1NCvrnEQlLx/I51PzKRC4pehAcMMOQgXKBd1K1J94UcGAMAi5iog==
X-Received: by 2002:a05:6512:239d:b0:539:918c:5132 with SMTP id 2adb3069b0e04-53b235c402bmr3345025e87.0.1729957420518;
        Sat, 26 Oct 2024 08:43:40 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a47asm534934e87.1.2024.10.26.08.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 08:43:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 26 Oct 2024 18:43:32 +0300
Subject: [PATCH v3 2/3] soc: qcom: llcc: use deciman integers for bit shift
 values
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241026-sar2130p-llcc-v3-2-2a58fa1b4d12@linaro.org>
References: <20241026-sar2130p-llcc-v3-0-2a58fa1b4d12@linaro.org>
In-Reply-To: <20241026-sar2130p-llcc-v3-0-2a58fa1b4d12@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1491;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JNYm01EL3hKXW1IXLFDCoevjjIcG1eZeWDrkOscklKY=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHQ4nasMetUT0jQKjOZQmu5xN7QHT53dIMYf8w
 op39b7E9zeJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx0OJwAKCRAU23LtvoBl
 uDLgEACVF0VcvPhQbRO4GaJeJzQ4M9ncUK58WmX1R0dKoKCdx/Gcc1GgsC08rNar+MBcUC9Vqq1
 GvOSJOOc2rTrfLu9l4fmTTihiFxCZMXtno05SoF52o3QZe1W5a646XiguPBbXfH8sNplBMFFUO7
 guxo2IR8tQcoJQKOLdOmG0sSrSnrwMiSv8vQm/wO5nPt7EEknjDho0oQxbhxZgg86IZ9PwQpFgV
 7swuyPrd0DoobdrBU7G/yIML5KSo2418YnxeHPTSLNkYnwp+jZZ5ZXeSuPdqGuVSfts40cTt04r
 EzEHJ0n0Q1iDVteCY399btY4zmXFDA4E+q8ATYorE7fgAyqrMgawaA8sDBQd1YEb3f4EduFkCbt
 C9KSm5LA+/JruY3HKP2/Kvui2riR7OtVwRFJzUiTyRBJm/PH88aHdEDniCRbTauaIoy56rN0eGP
 J9ij7fUuUQ28BgFWk3LHk5LTATXHewSGwQ9eOXrneTbYYyJZOkv6EJoK5Rl2YUE+99tVcoazaql
 Q+uP6HXrvumYgIOYMpe/fbbcd/v/ZTuwZr+nV1clgASk6iiMQRiOI/BtSBpUVk9itHftr8wP4zu
 WNHHDZY5/uds2buOcAa5DD4mzBq1XzEBjFdE+J1WoV9iE9fNGZLqxZpLBIBJ1SHnXruBJLyB24p
 bo/rzKSk0FmEsFw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

As pointed out by Konrad Dybcio, we generally should be using decimal
numbers to represent bit positions / bit shifts rather than hex numbers.
Use decimals for consistency.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/soc/qcom/llcc-qcom.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index a470285f54a875bf2262aac7b0f84ed8fd028ef1..891efd008b8e3d8b851ccf19d91e508b7a7bff40 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -27,14 +27,14 @@
 #define ACT_CTRL_OPCODE_ACTIVATE      BIT(0)
 #define ACT_CTRL_OPCODE_DEACTIVATE    BIT(1)
 #define ACT_CTRL_ACT_TRIG             BIT(0)
-#define ACT_CTRL_OPCODE_SHIFT         0x01
-#define ATTR1_PROBE_TARGET_WAYS_SHIFT 0x02
-#define ATTR1_FIXED_SIZE_SHIFT        0x03
-#define ATTR1_PRIORITY_SHIFT          0x04
-#define ATTR1_MAX_CAP_SHIFT           0x10
+#define ACT_CTRL_OPCODE_SHIFT         1
+#define ATTR1_PROBE_TARGET_WAYS_SHIFT 2
+#define ATTR1_FIXED_SIZE_SHIFT        3
+#define ATTR1_PRIORITY_SHIFT          4
+#define ATTR1_MAX_CAP_SHIFT           16
 #define ATTR0_RES_WAYS_MASK           GENMASK(15, 0)
 #define ATTR0_BONUS_WAYS_MASK         GENMASK(31, 16)
-#define ATTR0_BONUS_WAYS_SHIFT        0x10
+#define ATTR0_BONUS_WAYS_SHIFT        16
 #define LLCC_STATUS_READ_DELAY        100
 
 #define CACHE_LINE_SIZE_SHIFT         6

-- 
2.39.5


