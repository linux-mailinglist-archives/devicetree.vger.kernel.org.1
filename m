Return-Path: <devicetree+bounces-240766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A97CDC753F0
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C1E53358BF7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170DD3624D4;
	Thu, 20 Nov 2025 15:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="UqyMqJ8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B1B35F8C6
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654318; cv=none; b=cjdxwF34h2v0SmBqgm9eXbC3J3RavUPC9BaUkE1CQxDRa/njk3+0ljrW0s6aRMy/U4JtEG0wxXxfVvJSMpnJqi33UdgNTHUhChUKUI6ep98liNw0Lt8Pm7zP9vGw6mDJlfC7wVu6XTuDn2Du4bi2qs5Ig31j9G0XSsGAg6Ac6A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654318; c=relaxed/simple;
	bh=uefBu6hnnHu7KoVRBXBGpdQGhdbjZYZrhr6zCkuXgCY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FsqEY3aZ07oRjjs8sOdBiiVwxhTn5v7GWHnfy5yQQx8VgOym94ev61Jvi/KGsrNfcDdh+BGpvxwhXyYyrtDnpBWT9TkNoHE9bboHJIULmqQVp094C+XdwKwokMSQC98AR3RgE/TqLqttNPNdq46+4ChaZcNWOGYYSCWLziERHwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=UqyMqJ8n; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477563e28a3so7525245e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763654314; x=1764259114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pFLIOuElMJObR8yP1W5WYQVxR8UuBIpAgy2xBphJcsE=;
        b=UqyMqJ8nflkdM3dI8P976D+sZdRpMkdKGPe1A+m/6/WuzSpUUWDeXgyZ36yknq/IBm
         rosEt82HTsQORmUSc5Dmfv/YhTOb3EM5ZlhTV325tcVY3G02lnzRaDktdCGZUdRHgdoD
         k30RwFgkGyGSUzq7N8mt59YUsYZzDdRefXYVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763654314; x=1764259114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pFLIOuElMJObR8yP1W5WYQVxR8UuBIpAgy2xBphJcsE=;
        b=psndpDk74p9TWifV+TNJDOZ5xnb2pQLECp23ygXJZC5Ayp2R/s87XQMwcdjvpY4fzj
         KnckPCNqyT/xa9Rg5xapTMJChx0VNTHp2lCLW3AJ4D+5YnE3V7OkEASkwWrwSkuuivTP
         I5pG9PGUnUaRS3eKOIVKKqExNPAiENCQZlBvKWPOv8rKsb599cw++EMc3kf2KaMdxNoP
         oihNWkLctNYMvMtb1X6y9RiF0kOVZQJFG+8eh/7D0AOQG5APMiDqvTFWybpfuxPa6L0O
         9RGccrQ2H/H3A0QCps/Qm5s8Tzk/woGDVwY9aKsbdbrKwAWgSMmxJdqnp3lJdCMYAD7J
         c0fQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlqux4X/ei4mzCfNvvMinl7O5TPQmmkuqP1FIUm8l4ndzaOYD8u6/btv8KdPOGZbBqqsEB6P7zwjE7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx41K9cLg4cOy0Mq7wM1HZJ0CwsXB4Dgv1AaX17ZmXZjErEJicz
	5FSL01Hg0MiQ0TaDEQ9edZv15GbHI9fjJcM2jzArKUDLsS2pzOs/SF8uDXNAst6q7+g=
X-Gm-Gg: ASbGncuHC4crQvnUX4WNqd3D/bWt9/sGBLXkOFcuLu9GVfF68gzMlfVKjg1GDDoUihx
	L44xL4vW/yrVG+TTnx8ue3NvpFa+51fuTNLbzFiRM4HCrV77PaJ+aAA1l1Oa1ZtxBWSMbXpZFnv
	m4glAUti4t4RJkIw/s0rvWfzLezBzAWImZ00Kma10bznaZKgZjfwlfLrn89ViiTdmHITqhRdSK0
	BHPBr6/onrAXc8B3i1Ucpuw0kasTcFn5LiB08dmen/2RsRdxQ5239dHviHXlI0c+e92ncaf33bC
	WJnEAD5Bt8E+qozxrgD22hWf6U6Q7LB5uropV/QuyskNT5OrGHJvhJ9wi8XTc1w7PySgPyhw1kB
	TzeNFvXeo2KpW94nAldyBfQEXtg6VhFWY8hDEhUV2Yt+et5QVNp6EZ1O3t7335mcQ6hdIl/giAd
	Hh3jXbAwIm9cnaqGojIIJfqPQw6NQbvyGhPGw5PYKlbpm2
X-Google-Smtp-Source: AGHT+IH/asOyZmrSjJB1fGklN/UX7jTsW05xFyFBgFM0b+yCyMW2A2fV+RgZjiNoXrR2/gP6b9/Mfg==
X-Received: by 2002:a05:600c:b52:b0:475:d91d:28fb with SMTP id 5b1f17b1804b1-477b9ea35fbmr23972645e9.4.1763654313706;
        Thu, 20 Nov 2025 07:58:33 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm55552185e9.8.2025.11.20.07.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:58:33 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
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
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 4/6] dt-bindings: arm: qcom: Add arduino imola, UnoQ codename
Date: Thu, 20 Nov 2025 16:58:23 +0100
Message-ID: <20251120155825.121483-5-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Riccardo Mereu <r.mereu@arduino.cc>

Document Arduino imola, UnoQ codename.
Arduino UnoQ combines Qualcomm Dragonwing™ QRB2210 microprocessor
with STMicroelectronics STM32U585 microcontroller.

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.52.0


