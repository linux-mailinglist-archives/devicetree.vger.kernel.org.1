Return-Path: <devicetree+bounces-250522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A89CE9B94
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B0E77300182E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D4C200110;
	Tue, 30 Dec 2025 13:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eWh/0dH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB7019C540
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 13:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099776; cv=none; b=AbWj3pQ2gYlS9dTDeRc//9zZGh3InbevwGYuZTT3L/o840v9ct/7a+lL4vncgVTQadA8nVS/0v2YguyDbfhoGchoKIIoDMKmjD6AD1Ncr92Uipt1AqK+Ko7ss7rFelXLkFZGLJN4O9saDbMVnXLrv8gMQl8zRvABOxg0NEfdcxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099776; c=relaxed/simple;
	bh=PxCQTf0sv7QzLd6DqOSDEvSRIeqRvmjXe6fJoD8/mIw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=J5YNnHDfNyzIiRgul1kUWwQBQJ+o3s2/MBqUhqZGBszfB+AEQaPjRbR6qtTpj2QOStjloCWD+dnlAgUUWWVzIVwfAWbjzYx0mt6XRSWjFnHaMedIR4wm5IDRH2uR9I0tfy1YRD48BID3plGxYyatuwpLiQZjwdWHPBnQ5n/uav8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eWh/0dH+; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29efd139227so131283405ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 05:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767099775; x=1767704575; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fkLGkdwc37J5zIcULYPexnsqFBQiNhqOB0YosqQKU/M=;
        b=eWh/0dH+LhMIiMkG4rqF9Ng4K4qVtj+lcw0oJ58y1ze8cpD1Kym5JhNIVeJajSW3PF
         CED+gQ+rr0EPCyrKXhoEm5NU1zgA23aGIAPBSf8bNNbJ2dYvjxMCEzegPdaHE/DgADb7
         VX4j4eUSoMvHm39PpKfMFLQzU+5W0jWS7Z5Yr+7ZYCuutn3uMfPWjMTkY6TX4q8wqCCm
         URgz8XYAtPRGuDcr90lsFCDjsFg8svMV6hZv5vsBS24BpFhlBhi5CtUERfKX2eE5JrCA
         q61LWENnT/RUBtxMtpCtz9blK0mMXPW9f24pr/13ju4ugjQDb9Z2WQ95dagYhFLKZFN0
         LtyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767099775; x=1767704575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fkLGkdwc37J5zIcULYPexnsqFBQiNhqOB0YosqQKU/M=;
        b=JEIHjeZaFLVxmUYdEc3zuA7DocOVmcN7zyPC2MQi1mj7G7NUEYc+NllBr/v85qQbst
         SMSAH5iJD5FeZVyVSZIjuUag2TL2dkuf3KttziTxzBM3tplxy9BQ7htt2SzfUAoxjnp6
         srNZulCizZ9bwHrKMm3aE2dSjSRQL6rsvLDcp7qvg9m/boopNQyz/rUyfspkxCFRBC+6
         gTDJp70RxbcQjkc9Kdln8CqaSmvTmQAMwy3L94QfgAa0qH5iWGGqgE/WzMms0RS+4fDp
         YX6jhp3ldW65Ote37Fqk5U98Ys7y3txpWxKKgIlwr6Nfsi3etRRAnQnYxcVJMNk4Bv7v
         o0wQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhu1Gl2Zyh6rKINUQxxJF7PHVwtXN+m0cuTFd+tR2745RNFdDM7Zn7+VkGtYVxjjkc18GofMo9qure@vger.kernel.org
X-Gm-Message-State: AOJu0YxWrWJVkHaG8jofi+Z0BedG9DfQJzpx8T/44wpgVCDRGsq++r6j
	Wr0doiBSiKZbJVhkstnYrY5XKKyiakdMDVuRXqvnaVxn7UDLOdlJQymG
X-Gm-Gg: AY/fxX7p1exysH0qCuB+7Zfqskf/pRXYIDWsMqcRcUecnkJFJgG0ecwluaTf+zUrTEX
	lz7ZF9VxoQ46hs/XRHwtNHnskrP5lEjDmXBHbGnuHw4xgn+wPMqUBQwlhbUqwE7HFsxuHxUQ4Sn
	z7QXYBidqAG8ZA9wMKKffTSw5h4brCtJKpYYW0r0UBh0NW+YfRpcwVsmBI9+/G0h+5oqveRbc5w
	A4CLv4aXMVWeEGbGiEEwpJky/UdMvdlbXl48Nf05nE4O3yfYBqYEAZ82sxl6BV0uVWa+kM7OMKQ
	04IDMK3yzVIktCEqyOsIY2ADnVDSq6UmJlAGNKEEvWegyR02XTdk+1TMSpI7qq+zRgNlTYCVqcB
	bhTJXUpmXnyZvrhU0y7vk0MMq+zoIiS1KECBR6ZxXNpmvgj8dCa2g2NoZCimA1xvi/sjtwAWgQt
	RKnfKmnQ0cQpXFwrs++hPe/A3mun1dBXuL9jPD
X-Google-Smtp-Source: AGHT+IHeybGu7HHBFejCa/d5Z08toe9rqxykBzbONNCZ/YIld63ToENPUnsHhb3Km6GuQyRowwLAlQ==
X-Received: by 2002:a17:902:cecd:b0:2a0:8963:c147 with SMTP id d9443c01a7336-2a2f2830b8bmr312833105ad.45.1767099774656;
        Tue, 30 Dec 2025 05:02:54 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d6ec6bsm296003075ad.87.2025.12.30.05.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:02:54 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v10 1/5] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Tue, 30 Dec 2025 18:32:23 +0530
Message-Id: <20251230130227.3503590-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230130227.3503590-1-tessolveupstream@gmail.com>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 4eb0a7a9ee4a..c081746636d1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -876,6 +876,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


