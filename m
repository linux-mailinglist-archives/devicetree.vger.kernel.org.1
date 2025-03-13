Return-Path: <devicetree+bounces-157137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7A6A5EF12
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 10:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47357168648
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 09:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA20264623;
	Thu, 13 Mar 2025 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wgzPQA3h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802A2641FD
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 09:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741856914; cv=none; b=W22KBK+/QCTG23IQ64xM07CbViWXUnnXrVk2qq6wF7ocTb80QRueqIR6tEJQFtj2q0wC491XX/VPRcFSuFEqEd0MyYwGNVZA2EH3UJ5qS/+ZYpZSAVveOu/Z02FvbMsLhdKCSqu/ErthHAbgy9WTW8jVTD353qVhvL7xh2oTYm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741856914; c=relaxed/simple;
	bh=PbxNz4j52RrqJPz3GT+LV4bF8qpe/4u+tr9NI95kvIA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bZ0xXLgYdV871b7SMkQL1RPYGvugOvKyguYi1/v9mUWRGg0RlsJmbszcsnlmNGaX5dyoVp4IDaQXRUG3S0XRojp9SeceJYb75vcGfzvEj/lgchV7FAaixIcayY0ssh2Mju8M8b7bV4kB7iAyv3ej3IEdkJHx4mWg+d/CMjqAEM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wgzPQA3h; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-391295490c8so33567f8f.3
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 02:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741856909; x=1742461709; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zn1R+ATmllHTaRGwoGw1k9ifxjjFI13zCAnW3ZbN+Lc=;
        b=wgzPQA3hc7pjyxw1zYkpD0WCSoapMWYjrJBI+Y6WI/k9X5V1VJStS7kv7NaI9W8Ekv
         fURVQiK2LWNI/OKQOs9fi1B3iUDP8udB1oJvnWbfdta+5h3upi4nWt2t4Kz7WMDaOGJu
         S8LF3IGdS+84C7zU5QREFduh2DU5cjgDa9NEVYRNBypnUEspBndLe/jMm53DZdZDFZCu
         UvE4Q9GujOjFOTZjiZpjzPtOVEAzqzZ6dD5vPJVNnVN0a81JQRHGwagMOtCzLJbVar1/
         41qaa8aUB37TspDzOaQAUgb5R6v4fE4r/1rUoBwtL6yM3lGN6NCh8JYnDc4kLMmSic/X
         oFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741856909; x=1742461709;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zn1R+ATmllHTaRGwoGw1k9ifxjjFI13zCAnW3ZbN+Lc=;
        b=cbkjhbPO9i2kRCLEPwst3qt+sWP9M5xYQOBWw1STBPKAkilDC5V5p0K8K/dX4r+QV6
         znc88HovfMegpOx4/FhqHVipNP49eQkGT/plT523kuU31cSpCiH2roOkUMITZvCELVnK
         yjkt4X4iBBBY5Er/OpynIO4oNoyzE9DI0fUCh1hMwKnRDHGGtD/soqlwugyDBs+27E4k
         zrumT40rSJdjEU5wt6l4uKJWEkq0zZrx8RhvbsO+zc0QfuHGpH4prsmMvqXSX2BTsyP2
         f4ehW5pnOX8YfkZjuf9HC+L/8FRmDtpk/xI8pGcpjEW5tK+QYTsI/TQDIcoPmDCkjlc8
         2iuw==
X-Forwarded-Encrypted: i=1; AJvYcCXk2EbdSb+1/Vpw1YygUzdt2eyMAw0SvAEeKgEIV2GdeXJfHkn99MSJpiMk2DTdKEvR+N2xcsNru9HH@vger.kernel.org
X-Gm-Message-State: AOJu0YxvxB3cUWhJax1nrFMBHL2bVFTOaqXF/0izcmRL6VcajXyWsYIb
	G+1jpvpVMha1ymoFS0+apHZqT/BBwuythti2riA6uiwk3CPvcxWxnwYJSah5gts=
X-Gm-Gg: ASbGncvpfp+CvkzAIaHWuKxN4k5FQvwlOLaErsK3NtudGVUtkGLAs5jYknv8DmyWvRk
	RkHwFhA5QZbgFdbXUsCtfnIsJkyZY4khJLgHTa8vd+REfa34hFdnE4/sDNONv92oQLZLDtKs2Pk
	kAHpPdwDJsUjg0AZGHFdKX0nRsoPtmBNULwty5/KdmUamtqR4EuJ9EdZFIqMGqhJSXUwq5m4smJ
	HwmsD1SS5kN0uKpT2NiXP135uXY2MNxqky1EpAb2zNVEZuojuTjtsDKuzBVfPtCyyKvWvMiRAzp
	9E2Oe02nb5LI5kMRwrYCCmO9BdIRIxAYMgZGlXYTo0wYjCmRASmzFsNhWcraVn/aSZcoWg==
X-Google-Smtp-Source: AGHT+IFoNWWC1jaAyf8PqpUOd5VBK1Mdfej/CVTPRp+XRscWnB9HJyYphIssmDKBjrAxKD2HrwinzA==
X-Received: by 2002:a05:6000:1b92:b0:394:d0c3:da7a with SMTP id ffacd0b85a97d-394d0c3dbb3mr897240f8f.3.1741856909510;
        Thu, 13 Mar 2025 02:08:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb40cd78sm1414706f8f.78.2025.03.13.02.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 02:08:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] dt-bindings: cpufreq: cpufreq-qcom-hw: Few
 improvements
Date: Thu, 13 Mar 2025 10:08:19 +0100
Message-Id: <20250313-dt-bindings-cpufreq-qcom-epss-v1-0-62b0f96ba888@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIOg0mcC/x3MwQ5EMBAA0F+ROZuEsg1+Rfag7ZQ5qOpYkYh/1
 +zxXd4NQolJYChuSHSy8BYy6rIAu0xhJmSXDapSn6qpG3QHGg6Owyxo488n2nG324oURbCfjG5
 75zutNOQjJvJ8/f/x+zwvNdUxpW8AAAA=
X-Change-ID: 20250313-dt-bindings-cpufreq-qcom-epss-9ab649df8626
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=715;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PbxNz4j52RrqJPz3GT+LV4bF8qpe/4u+tr9NI95kvIA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0qCFReYcPk/t6a0zPxCQJuEofxDw8vS8HVb04
 QGJW9zcSYqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9KghQAKCRDBN2bmhouD
 17erD/wOx59i1A3edFPIxjPPHYLwR/Vtp9fBve6w0yseMAocRe42ct5wCLh1k4HtdrULcR3xdEi
 uqGSa02il4AVPSxVi/WxvCMdWZW2UIiRCuH6XYcuvnZZM1udPnjj91QAuha0bFauMmDOhGQJVm3
 Ral9PO/KYPjVZStmnPnI49VMe2kps5IT7OiPNly5kNSAepnqICdj9EWbXnsQi+kD3O4jBYUddhq
 dYKp22qs12FdwG9TuwCq3dg7UTkfbrCQ5W0/ihIJxt9uay2xMsuiwjXAsWMrmvIcduTL7qb5Qlq
 fTz02MaujkQ5hNSUQwQ4yUELRlal6G1NUAZZFZnRUJEPWCCpRd6JTfWb31TIzHzThGSsoZdf0Mu
 K5F4Jop2GxaNis2Zgq0bn6DNr8mUyCN0dQRlsoN9yxVfHcOtF5DfyZUfOifszYM6/XwDlOOn1Oz
 +4+JFZk3DfzqRzdssywzs1M7GvrkEQCW7dBwgOzhD9BZb/BEtvwKdqSDwOkiFhhcqwXz62xYVkj
 CCS8JgGJhZlT67Vx1wpE6z5xfIX+laI22v2ZJZDol49PhC0h4/QqfMTVpSxR2dD0AVniMUgbPLr
 BxKVrKHeGoXMxwO3dHktPn3OJkIFRe1jXVP5K0m5pLrCFKq76m5wS9cmDHKqDMW3CVbXs+oJrTF
 1M2nQ5tKlgFk3XA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Make the cpufreq-epss/hw schema a bit stricter for each variant.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: cpufreq: cpufreq-qcom-hw: Add missing constraint for interrupt-names
      dt-bindings: cpufreq: cpufreq-qcom-hw: Drop redundant minItems:1
      dt-bindings: cpufreq: cpufreq-qcom-hw: Narrow properties on SDX75, SA8775p and SM8650

 .../bindings/cpufreq/cpufreq-qcom-hw.yaml          | 33 +++++++++++++++++++---
 1 file changed, 29 insertions(+), 4 deletions(-)
---
base-commit: eea255893718268e1ab852fb52f70c613d109b99
change-id: 20250313-dt-bindings-cpufreq-qcom-epss-9ab649df8626

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


