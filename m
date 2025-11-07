Return-Path: <devicetree+bounces-236057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF07C3F99E
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87CEE188F919
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA48631AF25;
	Fri,  7 Nov 2025 10:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gtYwOPwg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242E931B82E
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762513068; cv=none; b=tGIId6UA13zZoknehzvqPvseXitQXD4xHlEbqnFt1VA/NXS1K3v4kOEz2PfFL/227ICefrcGHoRFDqm7pNIqMkULptKOju+VMrL27qM+pXHfXMKrrz8q2eNVoOk1zmy3gSDalIc8doneZ6SutFtYTGMRglDzowlEupcjmT5ibrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762513068; c=relaxed/simple;
	bh=zfksRdzqKJhRlSNkDPTjQcTPNmX+bLOPlYzuDXVDI+A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u1V71MdcfXMZe1EbQ/CKkibe/+IvkCcOsOEOuGC2oGGL2agA8ivLdXbcWuu+uoVV0nZjvWzFtErsxapwA2B/eizb1OqJmCH57sVOvU4cR1frkM9wKH5Ek9XoiigTQK0gfQYeyKlPnjk65OEVqYZIiskysKl+o1Z5eNJRPSsjHvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gtYwOPwg; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-339d7c403b6so633003a91.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762513066; x=1763117866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=gtYwOPwgpcTJpXmlwgZvT59+fWqIUcGGSvCcW6p6j/QYgqeV0gzNv4JHnxmm7/qitq
         EpHd0GyC0dF+K9v+w0gqIzjAbeLN5j/kKBnWTb/F6NkVUYqvfewbG5DdefjoJtoHYg7u
         /Y4uxcJMkjsE9wXw8vdFgaFRAxehS+egjipcNExUCf0eJm9QD38bopyfNjvQ/Pl9+wpV
         fdUZdwQxmH2q8SP5aUGb2VWZcIK8x9nummbWkjfMo/6YEaAPnUNNp35d30bzOSZQgbmr
         dVdQ2rNUQ4+mI3947GyOvZ+DEfcTPfBz9tFRmn7eB2RUk9/ebtZ+my4P78Ga4ba9bt+u
         v5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762513066; x=1763117866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=p1kopWXpbo4fzv3CbAufFNV+b5flnJBfgS270daDGYVYa9ETcjfTW3/9cP4t206M50
         b0r7lCdIVDKWNgKpw6750le7RmUIYpV30EV895TNYlKzjVKn2U1s8khOKd9o1/1uVmAE
         nFENrHA8J2OnvmQO/fpRRR2dU78CjxRk7hwSBXG6Ykj2aN4QZxJlXWHyb+k8iTIgN+OO
         9g9gNM22XaC6WxFXc3etRelOe8jwqegE6/DAAVTJ4Sw+CFCK4zh+mZOetuIOCpbQVt8W
         BZ+4BEV/hOdenuiXDsGtw5XbxGmMrQ1FoLUB7b7Mxw8lNSf3BZPqtxXjKLiyCFwmwUta
         Aa+g==
X-Forwarded-Encrypted: i=1; AJvYcCXwH9aO2CzTOwQCA2So0sKj9XWvdhwkCN/CtQYDFWxBdymJhSmx3sSVO8mAfZQxJQ79s7pgxCT+DYX/@vger.kernel.org
X-Gm-Message-State: AOJu0YzQBtHhxPFXl79OLUrcopqjqilOACwGymHaNnb0w0Bo+BKBxmJx
	yFnyj4FGbD/5Q8yKe0gBf/JgW6HwtFqwvqPbEd6CTAIB83JlEnYVffmF
X-Gm-Gg: ASbGncvL5yOd7bv44yqVyNU2V7VzmbeDArZhcaA6fiiIOPdnBxlo00+0j6I+yfuBhFy
	zy4ARE42GtKnyLET81AgXp+bWoS/JTexB/O1XvQTofCYz/ys/VMAyitIjN9GnNkGIkqW68cwPoO
	WztjunDU7O+4V3mRF/MdO7ULNoZIyq2Zhf5tAViuS+g9ZJk5J3WAVKW0V2wwdGNgwFh6NoF0h7J
	Pth6a9AAgEV3Ja+jthYZGHMCl4eoKhS5l2L/QEKrCROBODWLIDDbOQri87AwLqLl97r32PLpA5H
	i5iGXoeTtMMpHIiansmmNs6VqzZbPODQj+F7+CF30BM69YuwevJvyU2oVzIPAvT9hbVI5Mixnn7
	pBA8KLMK120/zQSL3mmxF+86zn0BkomlFGwjJsLmijcEKg9YeUtB8fUMnru7LjE3dA68mQioHwM
	YLNm+cRLLS/4DatJB7a95saC7sjSKmc87K147e
X-Google-Smtp-Source: AGHT+IHOk78PY2GqDtWJJ84cSkZC37nrcnYrnsWzuRanAE5JOwBSLoL0Qc/AvnORMx4bE6VO7s7UlA==
X-Received: by 2002:a17:90b:3d91:b0:341:88ba:bdda with SMTP id 98e67ed59e1d1-3434c58521amr3275232a91.31.1762513066448;
        Fri, 07 Nov 2025 02:57:46 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c30b96dsm2276332a91.5.2025.11.07.02.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 02:57:46 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Fri,  7 Nov 2025 16:27:34 +0530
Message-Id: <20251107105735.1491273-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251107105735.1491273-1-tessolveupstream@gmail.com>
References: <20251107105735.1491273-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f368..a323be3d2ba2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -862,6 +862,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


