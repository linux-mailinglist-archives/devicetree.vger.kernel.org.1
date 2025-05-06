Return-Path: <devicetree+bounces-174136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F8AAAC2E3
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E80673B31C3
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 11:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEDD246785;
	Tue,  6 May 2025 11:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dDwVOhtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43FF27A457
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 11:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746531685; cv=none; b=Px6ewl9d0cN6mez9iSjt/d7hBbj/LJnbmLgRlYjktBLD+etXBCBDUISKOWfbsUe9L+qqYwNd7H5OmqBHZjeRYE7Y4zIs4FdCkj8+3FaKerXjnsniIWj6OicDuU0oGT8IArf3r+0/5NtWyfivl8Wcd4MIbNdsDZ1bfGwxGXQR628=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746531685; c=relaxed/simple;
	bh=0/Mb1ah1rEUvHAqsuoDKRCUnTh0Gomg1mKYpqfwdvic=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f3sKRegDb3Jzcm2aIIABnfkfOQ6Jb/f83NQ3A/cn/Ku0jolyD9uFh2bpdCCk7MQVG6WN3B+xDYZNI7paXvRFuYxO1W+3t730nkbpYEbz2EOOFIYcJqcfDeZ91RM78k9NcrpE5IRpmAki6ns+lC2blWZ5texKFKMjGb8i4Gcyvhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dDwVOhtX; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c5c815f8efso558628985a.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 04:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746531682; x=1747136482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hIL4aNRUdWRX+MJw2hpcNbVT2cq828UqZbzjcrK230s=;
        b=dDwVOhtXKKiOOBB9xyKsYyDbzkfQ8lf0ieqMdCS/0H/E30lRzt6+b3D2NOgtk7drlg
         nUQHP3+1VgmGwvw5cZdYRcKG0x0ipaeppnq4lRJzePYRA/NjRYLHISJkiNcwNuTITP0U
         +nt9v3z3XLIoNJFj2EOeplIj02e2dodgUs8pYCVyjhVbMLoItMYB2z3b3N+YsVw6HcND
         iH/GDlaPA2ol7vIn4Kh3ogk5nCNbZzcsgIcivogzyhSjDJyIAQfkWjqLe8dYGwYcN+ln
         bwhkFqhMRVXtF0M3Qk4o9zkg7VuTaLGS3Ge9C9JUqsle7HcdikPeldwbV+mWEL6ddCct
         +Urg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746531682; x=1747136482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hIL4aNRUdWRX+MJw2hpcNbVT2cq828UqZbzjcrK230s=;
        b=xAzlFbvOVP2DIS9/VBOlAeqOw54rP5/HVp/2JNeGErtIa70JVIVDJfwVynzifcXGVK
         fhJche/Sqsb20EdUpHjTteXVWQIpIz4dM8kWtezN1YkRMgyhLgLyLtWjOMbY56aMxW4g
         Mhtbzy9ZUjpD1RWPaplbVKygcO9U8Pu29IIqsIAfXKE7iIJrTUWgkivOX0n0ff/R6+Ky
         QEj3XBnCO4MMBRa7bjB6dmbzXmh4DlcnwfqY5dQ7O+eLV3LKMzWORT4mD4d7vdsbdeRC
         lDVNDaQFJPkT91sYNN+2wcilnZ3PI2hBOD+YcZl910F4Etr2nAFsXyqnfuEK58ayTywe
         G/jA==
X-Forwarded-Encrypted: i=1; AJvYcCWuhbLGwqCuIXiJhg8G3wLnBL+szGdYUu2wWrBye0yZ5maNbIrukK6iXxTbD4V7Zf5U8DUlvZIAHDBZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu4J97p3mBcWjJC7OXJWz6ObrVJA3lEWS4JCNlhvh0wqiN6JTB
	kRORALe/X4qcDXtt9n+bw23uGwBEJTSMSQ5RCxr0s83xt1gU1ehw
X-Gm-Gg: ASbGncsONCz10b69NnERzFNIzRtmbpy0Oh6mX8YfdTM5aMC00IyI0UWN9g1KqxYRUcE
	KHSEbFYc57yQJaeVSFqjuW8c/a/yzspEQd4Cx1+SxsEkG6BISIKPoF/YNh+JXo8a3gHojZ9kUE7
	qq30/EJbedvasZqSTarDWymXJLr/IQgUwMDLe93w4tiG5CHmtr4qUKA/1io9TdphIPkpAwoWb+a
	sduiZQViiGlnhBhPX5IglvjaQ9XPONWy4a49NEmP9DNEqWdNHa+edFbYyF7Gj3kDXm2wqdLYpJ5
	YogHYrXoZ9SKp894/XwBxKv8/ls5qmqiOR7zYrOQDjtKK8QstXyo
X-Google-Smtp-Source: AGHT+IFh+mu0OwMiF9TCuV5bDfMlun+Cy6GZ+EYO1JetDvC5+gP6HEabwF/9M7uubHy5hTOthsdwbQ==
X-Received: by 2002:a05:620a:4512:b0:7c5:4348:183e with SMTP id af79cd13be357-7cae3a9a0f5mr1260489985a.20.1746531682631;
        Tue, 06 May 2025 04:41:22 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23b51f9sm697408485a.21.2025.05.06.04.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 04:41:22 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	frattaroli.nicolas@gmail.com,
	andrew@lunn.ch,
	John Clark <inindev@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Date: Tue,  6 May 2025 07:41:13 -0400
Message-Id: <20250506114115.613616-2-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506114115.613616-1-inindev@gmail.com>
References: <20250506114115.613616-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
produces development boards like the Luckfox Omni3576.

Signed-off-by: John Clark <inindev@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 86f6a19b28ae..9391e0c31bb8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -892,6 +892,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^luckfox,.*":
+    description: Shenzhen Luckfox Technology Co., Ltd.
   "^m5stack,.*":
     description: M5Stack
   "^macnica,.*":
-- 
2.39.5


