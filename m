Return-Path: <devicetree+bounces-126174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DB89E075C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A0B8285B3E
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3625D4204B;
	Mon,  2 Dec 2024 15:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="yRpuJQGm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392661E1028
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733154308; cv=none; b=KspZINUX/Iq4xkd+jO4JbFy8HfWx8MdLWw/PhiYOOKnh5tgbof4WQoKQf6UyPvDaaNI2ciz8dMsdKUagSfoM2ZFC+wjn4SgEak/ey6TL1M6OYtoK/iBoJzpVtDAm2TWqqezxJg9mlxLIdUt2J8Zf7O87YVCpZTV8kp7uELfdgEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733154308; c=relaxed/simple;
	bh=g9aUICujfvbjpqeM4w3JMq2L4/zhb7YLW+mfp8bRqU8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=UKDMEVz+5uZyc5Ib+rvqGVMGMh/rWdrNNR5rCRQhJ/g/l1o1xWQqt1ggAA6NWjxdtfVnEaKnVMILzgrO5vxtgj8c6FIx1+vXdtg5k2ULGtzZtcP/2woQR72dsYg1RgkFv9Xk1w04v9cg4ngiujBeGwWOrWVRtE7PsWdlFcxPVOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=yRpuJQGm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434acf1f9abso40801215e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1733154304; x=1733759104; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xXCuDP180luZ4JePdaAEPqLFzpR2coh76lHb7Z0CuU0=;
        b=yRpuJQGmtPcp/0xj+LTQkGBZ6UtxWROEWBR80euqB8nBcEPVp4ftOh2ElW1Nkq7nhE
         gAUPsTNKLUysXWAOLsFFwJDCvBUlWElLL0KLtWPnsiL3zZgk66MpKWw3lrmWbYwdKzdZ
         O0iQUe1wGUkbglDOeCKGuUUWJ4vYtoPrkI+S67MV7UsYyyFepzMqhnsW6OCBbcuJ4aQ2
         l2I6TR/C7mPi18wvxN7HX/n4L1SreMq3ZJRAdj6ZpUgF+KyeopLtTtVp/8JcDiYXkEKX
         1Ebd8Ennu/olGPWKoA6oo7NSp9+MlQwKGQHqcbYwozdW7vYgBthMylWHs97ArpToVz+9
         IQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733154304; x=1733759104;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXCuDP180luZ4JePdaAEPqLFzpR2coh76lHb7Z0CuU0=;
        b=S7SRBK9se4jRhEDq1ESggcHV4ker12sgr9fQ1UkelDFp3JFwoLwriyM8xC6Oqx6itI
         qCJOfFWP8WjThi4qEPdDD5QLOrxVA3II7US2KHNkK+c2RwiAP1nez+xRodE7SIq6PPl0
         PtH05dabA6a+XDyjLxVx5OVFu1OxOMkBC540Jxg55SJPnyjaxVBS8FcKz8IiSJ1cqj70
         We/6iDrwjbAutSMQo501dBkLgxIk2U3HDQFeSEIYDmTwWk5MiiYJC9rQEjXgeMOhPeMe
         pRIXth5XKEQEDSlDn6AalSGZKG4TtGSeA0qOXb30CqiMAWMCVaH/0BXETlR21/Rrh0Vb
         9Jtw==
X-Forwarded-Encrypted: i=1; AJvYcCUy5dYQ9AgfyG0toNkW660TSbJa7Hi3/OF1CJLMonbSWlSy3abFbxYFrReqDTZ2IB0kfhwgCkCky3VH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1QQtZTfb1UjrW6f3soxXIvnbzWCixSJr9zA1dxdbS1SXznIcR
	ydnNQIYUjOBUSLDYM+O4xBCDIA5FBs/CrnpPxhYNTNzWHVjigFoyTUH39gAy47s=
X-Gm-Gg: ASbGncvs7DSmy99l5+padAp90vpZrGzPHpRhQ2tBnXxYI+S+LtdBYiTG4lb/O+Kutom
	s8f1OY5H7HZ1R58ldzRT5K39A1kAWS8LFF3nFwjY44fpwZodqiwZ59KSwjQ9rLljtLYad+NAhyk
	jmXW07ApnE3bsZTQCUMXxc3lpXu1E/v7YriktvqqCzOAJdifjfM8mBBrZOC6LtxO42CnDlrKMFs
	tZ11SuOt9urnFFwqGOor1w8Djjdwg3BgKPMe8lEMBmhxEfdDiXECsz/jGTUYoAlBEGVUVL8E+n4
	+FLwL2VcW3G+hDx2QkUtt2s=
X-Google-Smtp-Source: AGHT+IGgu7NcMFp/eaHdVsUxC15X5VcowG3qWNXAtBMGKtwV64OuR/ITdkzi/tMktSJ0w/eSu83O5Q==
X-Received: by 2002:a05:600c:510c:b0:431:52b7:a499 with SMTP id 5b1f17b1804b1-434a9df270fmr189824075e9.20.1733154304558;
        Mon, 02 Dec 2024 07:45:04 -0800 (PST)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0dc63b6sm155711085e9.22.2024.12.02.07.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 07:45:04 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Dec 2024 16:45:02 +0100
Subject: [PATCH] dt-bindings: power: rpmpd: Fix comment for SM6375
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAP3VTWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIKFbVJBbkKJbnGtmbG6qa2BmamGUamhklmKepgTUUlCUmpZZATYuOra
 2FgB4/GQDXgAAAA==
X-Change-ID: 20241202-rpmpd-sm6375-06582e126d7f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

During an earlier commit, the comment from SM6350 was copied without
modifying. Adjust the comment to reflect the defines.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 include/dt-bindings/power/qcom-rpmpd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
index df599bf462207267a412eac8e01634189a696a59..d9b7bac309537cbfd2488e7d4fe21d195c919ef5 100644
--- a/include/dt-bindings/power/qcom-rpmpd.h
+++ b/include/dt-bindings/power/qcom-rpmpd.h
@@ -65,7 +65,7 @@
 #define SM6350_MSS	4
 #define SM6350_MX	5
 
-/* SM6350 Power Domain Indexes */
+/* SM6375 Power Domain Indexes */
 #define SM6375_VDDCX		0
 #define SM6375_VDDCX_AO	1
 #define SM6375_VDDCX_VFL	2

---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241202-rpmpd-sm6375-06582e126d7f

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


