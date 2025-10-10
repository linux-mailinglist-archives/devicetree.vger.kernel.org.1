Return-Path: <devicetree+bounces-225356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC2EBCCCE2
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 13:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EF954355506
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 11:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53244286D46;
	Fri, 10 Oct 2025 11:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VlxP2ush"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3E21494CC
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 11:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760096876; cv=none; b=Oz9daXuq3Y3jgB7812HP6/7Ske2O+SW+w7Ufrk2/4flmg2Mp0NvxZFlvhGs4/2YMvUQbJUoM7VL38XCw3+UYR90ssFsW4N7ul7ffwQRxRf966FO10GvLeoOqMHz7arE9TTxX4rQuJoVh72PG/NvaIItIuN0KiOi44fqFIr77HcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760096876; c=relaxed/simple;
	bh=j8Hd4Iay6zYNggN2mZzljQRaAldF0uuSlvshS+04klw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LM7hSrD9qzwIenUYX53MotmZ8T1g/e0tHLvvppebdwL0FrmHz62AdwJ/wgakdsDFYA6r2kUxGIpGSWvhQYUYMu2kSExrCJzd58mKACIPnhoq8CXyMM0uTkBjs9pMtt2YPSA4mV1WRke2qqw4+LkumkRMsjr6jwrIYuFJzVLKSqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VlxP2ush; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b6093f8f71dso1214924a12.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 04:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760096873; x=1760701673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6G7I4yZCC3xCLDmgNXcqXWYF504/swrtgR3bZf+tR8=;
        b=VlxP2ushFPA/dhlY6hp1IuLoaC+4Ave2aVoW4rvssr3XZoS8/XqiNYadxWKo6KdywX
         O85lvh33daoO7gFlCTXPTchUYZ7SCnYox+bpmXpXZgaPE92IwehLJ7cWOwmupouToONw
         icPV20PQvwaW78IqPfas/rgxAwiBcwcHN9Hrk4TwaV2ZkhlfSTjZwOUx7rVE0Dl0jw9Q
         g1J7ZuSUWFL+1GoPTwa1lOO0I7/RIMXaml5e5MxOLT6DeM0upR3FGoQpd/9O3V89d/rI
         rQbZW117IjRQxlD933uHM+DlRoR8QgmwJRx1syger0cFcIksy4YcmHnZazR42sjlDkP0
         HQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760096873; x=1760701673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K6G7I4yZCC3xCLDmgNXcqXWYF504/swrtgR3bZf+tR8=;
        b=orGF5mkbRMgOXitFHYjFK087iSRyxpi6g6J7yfXEwwpjCEyZxJf7zTt4jq3uSoLiBA
         E72wRD15H1Q7Otk9RHIcH/774xLp8c2EHdz4sfzJxIdJFy1/6zUTF5fMbP40OeYtmOrH
         BnPYSSXzAWY3mRMgQSapWTg1kJFhipqhzDNzhgqE7RqfZwFgw1+IfqNMHzsE0jIU58om
         cq3S8DXkWN6zzvwreTlcFOHlJTAFYjY34hAjvZvhD6pfuCPS89lRGN3m+hI/CErXWE3s
         v8KxPGdiVXy6w/eIg4JMukGah3c6Hj1PMQTBQXGMH3UYHihXDMyKRznQZJzDQKfBUVOZ
         W85w==
X-Forwarded-Encrypted: i=1; AJvYcCXUoq+WnBufvwPGcGouHYK4eHJs1vRbCO0mQ2JDZ/wZsBlCeGc/5rHBg/N6bVO5YUxKy2Am/B/DHFms@vger.kernel.org
X-Gm-Message-State: AOJu0YwnbT6TvUZ7nDuq2L7fsnRwT1ZgXHj6h3Dl7PhAPA7UBcb5sABV
	tT3ApgF16JPtfVwNlXXNshVDJuIEJq17EWVdPhpCr287IejbdRrtyCIp
X-Gm-Gg: ASbGncsZfTJfLsLRWCxM0yU4g5v4J/hgwSnhVoYAvkZGUUIyQ1sPxSjbJS2W6c/TJPI
	HVc/ZvS6YsuZ3b2j0qPW49MSjlflHG5bTcmvjvoVvLFvktOuKJZ1+ZQGqS+fCFjbdk0qUEbydtG
	bOWh+BXFux7abPBIS/dLu5udgU2ZBwWB1L401gw2EzsMA/JinghINL9oR7RQwnajVJ8ZPb8fSYk
	6sCqrLKmtWAzciRuTu8Eq8cNzgH/Fm0Y6Tpm2SuTeBqCWgTF7WYggliM+R1mzrafnEVpEg4POvK
	wAu4eG7HloxHUxhWDBKxmYZHjGwxQX31KnDITlmU93pqRBbEK1jEbmLCVCeQN3bFfAEwvsptfEU
	WPYnFZIqI/SW87KHPJn6Y5Kdey4w0EpoDfTllisAc+pV1shiTRU9GgTLWVFVfkldJNTo=
X-Google-Smtp-Source: AGHT+IG0cfNJnLLfwDicVViuXeEoizTyF3mRCh0vPGnpWvLjbE/ACva2N0i9tIjdj0MQ2LPSn8nOeg==
X-Received: by 2002:a17:903:b4e:b0:28e:acf2:a782 with SMTP id d9443c01a7336-290273edf3amr116504145ad.37.1760096872925;
        Fri, 10 Oct 2025 04:47:52 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f0726asm54956535ad.72.2025.10.10.04.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 04:47:52 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org
Cc: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tessolveupstream@gmail.com
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: Add QCS615 Talos EVK SMARC platform
Date: Fri, 10 Oct 2025 17:17:44 +0530
Message-Id: <20251010114745.1897293-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
References: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the QCS615-based Talos EVK SMARC platform.

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


