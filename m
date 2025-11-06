Return-Path: <devicetree+bounces-235736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9A4C3C14B
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC7BE1AA7551
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7A9296BD6;
	Thu,  6 Nov 2025 15:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="CxGpMew1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2FF29CB48
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762443091; cv=none; b=D1uVM3TsAmaE6fMtG7XVTRJuWFZhJiyYbo/nM/ydVK5Rx1VgBOB1mfibalbJ2x1yFi2CvGmY+b6SglM1VSzwN6kqjNDIyekcmwAiVrm1NVQClxmzwWTxN19ADaP8FZSkzD/CVQwxL/iuaLDjI7EAnhNeYPdPx1JMBbgYSv7fitk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762443091; c=relaxed/simple;
	bh=d46gMm7iAqkq5ja/k89Jqo7GJI5rgDOyd5tUdQbUG1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PtQmaRFdZo6ONxhqgtTxme4Gi4D7ECHhNChKpZM43ShdispEvMSDLPvUYarrv3+TAHlxWremrZqGxI1+Y1qDdn/44GjjeNin93OHaTazAYMkrAgjN0Udcprggzi/GBAKb6ziMDq5vKc1GJj/cD8hQekoQAwU/KOsdliQpzS5K2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=CxGpMew1; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-421851bcb25so600632f8f.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1762443086; x=1763047886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NaXeZHBypXQ9AI6NR5KHVtefsgfrl7pnV/7arSANDLQ=;
        b=CxGpMew1KMsN98nuVQsyY87ch6ieaQFk4IdU/auNxZQ+3Vdr/xDHwSjwBm1kwA0SGV
         rIXs1dXXsRN/XSbYwzsLcZF2vMmS1/uo18bHtz6F8NfEyJ/LIOUW9qmuuO9R+eHk+8FR
         NJuzYCGDYqx79pL2wV9A8mKbq2B9yvXF2Tygs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762443086; x=1763047886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NaXeZHBypXQ9AI6NR5KHVtefsgfrl7pnV/7arSANDLQ=;
        b=v2571+42/kwIjFFLAfCNPgHSf4i4QdYatCWjWN9gMA1vOFysKkyXxsimgenyMDbzgt
         Z/o9PHPq6TLDi/1ya6MsqfgkdTESmZPUeNxiPRy93fkLkl34iT8aEGIjJY+8H+GIAv0i
         bzkEXb+uXz1Us0nyhAPrUhXty00TY9C6Go+Z0D91EDw26JjNKOyV0KOhkUTsC68btdK0
         VTcSglXudn2AbCftwG/LlXy90kg80ixOB67qI/0UBWivXeRgUfjcA5UnE3UN4pvZQiHL
         Ludl+l0LxOVmiUbKJJTS9M1MjLbmPg099/ICzqx8RmjyxdLl7Oc/TUt+StOi8JSQkDP0
         NhVA==
X-Forwarded-Encrypted: i=1; AJvYcCVQFUvMuZgtUthktCCn6/aDigmv2jqzVvvsvX0ULbflGiklOaSsTAAAqhxx4eR+wLpk0V8BqI6UyslQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9RrSzTiJ5DT7jj2+pp2DbfLymFjiAwV3isQyRPPgcUDO1whRf
	vnPvFOq1EAVoT8q9hvP/vRHmOD53lx2N60MuEG09lhnEq8BJrHd2qoINsLKfmi+nXTg=
X-Gm-Gg: ASbGncvVgxOCNV79hvYElRu9lPBiGbgN1ZCcH3cHS+szLr/wsgkYImG1KDVjn3wByGZ
	5gvdPm60Lv3zSTwiWB8qqEoNOymUQ4sF0EylSpiPqED8jjOW4jZZ08EOMsNtO+clJK8iRYta39q
	HTVoXmZZGYRjqH+K6yj/SnNnHET9PbsAUjDZI2LvJDghvIS1hvjZvWxumZfCUSM+f0yStTNllHp
	FvXRDZfwpZDhR/78SC/hIgtlD4kepNR7s9R+zm8mGpV3gsoUP4M27S6vrxYr5J5iG7v62WfCxMi
	Yc3YqAnFubKqcVGF6NK1VeojN6DQUGXJ9IsYxCtWrXDRiIRYPYE/NGKPRasyVi8pfQ3vty/eFmQ
	NI7fuBXb5c1wmmAUG2bHVTCI0QTcUVWvz+LeqbQwITRtbNbAkMmEPhbi+Z2reNosIUw6RII2DT0
	V85tW301ac+/hEO1j9zjKbowvR
X-Google-Smtp-Source: AGHT+IFyU9B6PrVivm8Ey9C3gGeg3vLDWayLnp/yQBozk7q8OZ+iEgdw4cIjtCmIUPVOhruID2h90w==
X-Received: by 2002:a05:6000:647:b0:427:6c6:4e31 with SMTP id ffacd0b85a97d-429e32e43e3mr7999624f8f.22.1762443086154;
        Thu, 06 Nov 2025 07:31:26 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb49a079sm5966719f8f.32.2025.11.06.07.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 07:31:25 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
X-Google-Original-From: Riccardo Mereu <r.mereu@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	mm.facchin@arduino.cc,
	Riccardo Mereu <r.mereu.kernel@arduino.cc>,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH 3/5] dt-binding: arm: qcom: add arduino unoq codename
Date: Thu,  6 Nov 2025 16:31:17 +0100
Message-ID: <20251106153119.266840-4-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251106153119.266840-1-r.mereu@arduino.cc>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Riccardo Mereu <r.mereu.kernel@arduino.cc>

Document Arduino UnoQ. Arduino UnoQ is a single-board computer
combining Qualcomm Dragonwing™ QRB2210 microprocessor with
STMicroelectronics STM32U585 microcontroller.

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..1af19245b1d5 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -336,6 +336,7 @@ properties:
       - description: Qualcomm Technologies, Inc. Robotics RB1
         items:
           - enum:
+              - arduino,imola
               - qcom,qrb2210-rb1
           - const: qcom,qrb2210
           - const: qcom,qcm2290
-- 
2.51.2


