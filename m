Return-Path: <devicetree+bounces-227945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B340EBE62FB
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 05:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8C0FB4E72E9
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 03:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D942251795;
	Fri, 17 Oct 2025 03:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rQcy/9Pw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD8C23EAA6
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 03:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760670704; cv=none; b=icsoM1qSg92OVCprd7lLvoDOTdOrJ8dBtpMwm3H2riTorEoblJlFxaCy1hSTCA/AQWWufgZh/2g/mJF91Jmz01j7qQX/BuHko9IlbvarR5xsK+hrcm6Fugm2+6pxaNc/qjfYe2ugWZoqzlMm3MU1qhhZ7TXM7BkV3ICB1g/WiWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760670704; c=relaxed/simple;
	bh=iJvYiZFKK5T8uwBByaOZh3q2YDjRtxWjtiKNIF3W/M0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NzTM9dvqkpT/AhONIkHoNo1qKCFsLJ2kJqWBJ+EovtyRV9UA+734VXL0yhNAhVg+jx8zESoiYHl4j8HMEd3Sw77mT7V7NJ0hxyv0pWFhBGV9FfBiP8IWA/R1udFXMVI42J+2LKwKuWD73CXROzjnhc4VI2JcZ/5xJqmk6eXSQ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rQcy/9Pw; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3776999686dso1650501fa.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760670699; x=1761275499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+mWZYzXyICkiYT1XK04sdj+QZHxlSut+csdXVyOuvCE=;
        b=rQcy/9PwI2Ssm3U2pukL0eJWXfSMsswgQfQ2UIJi2eEXRBODpqImJCCwVnqs6dQuJy
         dEtEd+B9VoLJNsANtZ4+h8W12scDBt13XNuvhrJwStKmX/8kUoy2CkW99TMm7qMio495
         GDTxjABnb4vu4+JgVKjqYTO6qDDEexbQ0tJPE69PReSkJvrYatYBoKZljD1jAxJgfVRe
         1KSI4qH8BJQcmpVyhn0i7KC52RYRALmLk71q27zv+queRDGhbD+Ur9PZhdimkXLwYeWC
         VIlUzlDt7bcNrXv9MEMJBmTCEr+2t/1kotCwJykWc4wvLdcFconLNMIH9uw6WmleVyof
         yL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760670699; x=1761275499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+mWZYzXyICkiYT1XK04sdj+QZHxlSut+csdXVyOuvCE=;
        b=bEgnCoMwv2uxlnJ/2ulg6v/GlxVjrR2i7xjsoGcxU28kMHXIOrZf0ueeJJBdHYUDLu
         VG7l1MUHfP7cQpxD3jQOrC2U4KYgtd8EyhmWoMyYW/A4FURJk1ZKbDkyQSZY/VZqaLqE
         7UeCptNAgxFYaKRiDqJ//eQO+nprdnpcoE/bYIkhj9vGQWtU1dCBZb8ICqdKxfUvSHSU
         7od+L0RPj0Hnn0FKxfbc3jh1+3CpfigYdawCrSmTaTtXrbXqicZq/ZobXxmNOjbH3oai
         LOUAfx66mj5xsanP1dSoLiHP3fMiYCOgApyYJRuUI5mT6kAEb9jmwkTX/ftb8Co6je9X
         yY/g==
X-Forwarded-Encrypted: i=1; AJvYcCUeu+ET9jgw6WbcOPNXgSVCyvAGLWA69H+rGDofQMt4g7FTbXTQneg1zc4Eb4WBzFOv+dLz52rcgyMv@vger.kernel.org
X-Gm-Message-State: AOJu0YxiLf4Kn31/z7hTrJhlVjVv9P/wBoZ1tjMFEL8khMaEezKPIsa5
	XhQ9KtvT/wYFcf3dAjaF9rGjoP1lMRAnlJNw/yqFakssRzMYciDLRbXENjI+9VxXLN0=
X-Gm-Gg: ASbGnctgGRzZlxcoZw8+D9oqsMcM2kgpRWgNrjckNdDcfQgx82WFRAB7AXWWxU2tdXf
	5c9URIxRgyG10gNPDPEvqY5SUfdnufUmVPrkRr9T1udVJxRs5gEJqZxoJ0Ipcmt6mjXaPg8E1vm
	nXb3Nqdz17/OAsL1moPI4Gz/OkVOITYv24omIlsoK3Ki/s9EA4HLJUrD5k9pDnL/EoYuvG2g0XP
	qjGtzYOcaPR+AM7WrzxVHd1Q7eQu+xj57ePX3nkPD7LYNfAd27kIm3oRWAaWJIZYu+b/EilL1+C
	A9jrdfJQIi+30SvbRhEIrREDkCjdX0VnmVsSTmwW3XphUWbT5rvjHgkvk0NOJDegzR2tgs8BHjU
	+vw33r0kvD6caajVAoyWQ7XSVsbfovM5t29uOk2jn84lJrLntwQWvfZFv1ra2AgLI3fJXeHeh4X
	6lEI+mR9bJU9uelHC4gVZF3iAoQYdCnMDjfX6phlqcTFGcoWpZaJ+tWg==
X-Google-Smtp-Source: AGHT+IErl84law/cfE3cEBh0OkLkpcjOx/mG09Ha+leeBL2jxuMfst4bgeFRf4ciUXJNRyfzNuO75g==
X-Received: by 2002:a05:6512:e8e:b0:590:6150:ddf8 with SMTP id 2adb3069b0e04-591d8582c3bmr440998e87.9.1760670698707;
        Thu, 16 Oct 2025 20:11:38 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm7496077e87.69.2025.10.16.20.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 20:11:37 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bod@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/4] media: qcom: camss: Add Qualcomm SM8650 CAMSS support
Date: Fri, 17 Oct 2025 06:11:27 +0300
Message-ID: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Qualcomm SM8650 SoC contains a camera subsystem IP, which is
got supported in the platform device tree by this change series.

Qualcomm SM8650 CAMSS contains:
* 6 x CSIPHY,
* 3 x CSID, 2 x CSID Lite,
* 3 x IFE, 2 x IFE Lite.

Previously there was a version of SM8650 CAMSS dt bindings only sent for
review, but it did not get any reviews from MSM or DT maintainers, this
series is a fresh respin, and it includes the driver specific changes.

The CAMSS changes were tested on SM8650-HDK and SM8650-QRD boards
and SM5JN1 image sensor.

Link to v2 version of the SM8650 CAMSS dt bindings changeset:
- https://lore.kernel.org/linux-media/20250423221954.1926453-1-vladimir.zapolskiy@linaro.org/

Changes from v2 to v3:
* dropped excessive clock resourses,
* dropped MCLK dts changes from the series, it will be added along
  with board specific changes,
* the suggested comment to squash supply properties is not considered, since
  CSIPHYs on SM8650 boards have different supplies to different CSIPHYs,
* added a CAMSS driver change and CSIPHY configuration specific to SM8650,
* rebased on top of v6.18-rc1

Link to v1 version of the changeset:
- https://lore.kernel.org/linux-media/20250312001132.1832655-1-vladimir.zapolskiy@linaro.org

Changes from v1 to v2:
* to support a regex in port property names replaced 'properties' with
  'patternProperties', a sanity check shall pass now, thanks to Dmitry,
* added a few new line separators between property groups in sm8650.dtsi
  and qcom,sm8650-camss.yaml dt bindings documentation, thanks to Bryan,
* added the fourth interrupt cell value needed for v6.15, thanks to Neil,
* added a given Reviewed-by tag to one of the patches, thanks to Bryan,
* rebased for v6.16.


Vladimir Zapolskiy (4):
  dt-bindings: media: Describe Qualcomm SM8650 CAMSS IP
  media: qcom: camss: Add Qualcomm SM8650 CAMSS support
  media: qcom: camss: Add CSIPHY 2.2.0 lane configuration for SM8650
  arm64: dts: qcom: sm8650: Add CAMSS device tree node

 .../bindings/media/qcom,sm8650-camss.yaml     | 375 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi          | 180 +++++++++
 .../qcom/camss/camss-csiphy-3ph-1-0.c         | 102 +++++
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 326 +++++++++++++++
 drivers/media/platform/qcom/camss/camss.h     |   1 +
 6 files changed, 986 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml

-- 
2.49.0


