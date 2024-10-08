Return-Path: <devicetree+bounces-109059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAC4995167
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 16:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 005E7B284A6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523F41DF971;
	Tue,  8 Oct 2024 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NX1bIrDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51471DF72E
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 14:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728396384; cv=none; b=ligaTtfUDvkydpL78L7WcH8ZCoEYMf03I0wqJjLGPDJyPQm7Tld8/ZNGUmM3fPqrKcrm5bgZanAvpZ+Z21Vm74pFmeLsG7Rm+9rZCrebgGOAEoBik2ITR8VM8AzhmA4BBKuKU10qd8+cbOGATzf0td8cYNkLUjzCA43Ow7h1lac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728396384; c=relaxed/simple;
	bh=dzHbg8mQzajlPzqNpsMYJhkbjdTL5GhbgGOkl/GTjNQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IKYHtnQwBFY97UTqXRkyFrQtIOjJQBJEwPdM6LSsizPusVs5DAQy5YHeaMYeM5GxSgX/TzUy+WTE6sjbtALGP/Jlr+EIHu61Y6KLFpktDt+syYw1fx63qDkRkvXeqt5jRAPMGYQUTU5E8UDrGOjQE5y/nm03/DKC5oRnA2/1ts8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NX1bIrDF; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a99415adecaso500827666b.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 07:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728396381; x=1729001181; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HV2x/n3wTPRpS1liNMjGaZ2HjQYk+BlLQLz2BBKy5tU=;
        b=NX1bIrDFjAi3qWVJws0//dwql9R7yfh/r5VhLV6U+qeAQGHHaAA50zMyh2zsrFCBbI
         nECrtz5trRocaOFb+ivMOaSfrPzaRGWLD+HQnAn1PZEjPsTuK+dyPS6tWNcCr/9MPjKI
         lnFtF7pRCbZOzqzFX5Fq2spFGFBvl/pBLABAbo/yhRH0qrKxj2IjbzWBg+xknsPvSpRc
         vJCZbSkZKsKca2a3BQlbUhte3i7hpN1CmFUpfQHBfZRKDwfox7L6Z/0WJds2lSSJgya3
         XvkDhngSJiXGTh1+nMsB3PkotIcqOJ+4yU6me3UAsB+Irrk2slt0Th6xNRpvJJHbm4BZ
         S6XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728396381; x=1729001181;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HV2x/n3wTPRpS1liNMjGaZ2HjQYk+BlLQLz2BBKy5tU=;
        b=v2YPJghhOuIkELwX+pRpAYGO0FAGjZqJ8WqV0wV0wnPf+SZnZMSdnYPwPf3BnbUzKU
         vn1Hyv8KxR/6EenCyXQXoVYl8ONFyYsb/JudlHdOjbIrsAyIWGETWgKOgQZFkkfuG4Pz
         rprOSsNZZbXjZKDqDvRiOwxFY52IfkPmV4NrsaZ9QwhqFAZzbj+K9NZt43hQRoLYb8mO
         vtCrT4Hd9pVJ+9VwEX7vVsX7jY1YKC9W0wrMNm9I6fY0KjjP8oZYulRHtOMI+TDOSusj
         q4fUDzILM9tUtYs/CdbXhZI6HOljF9ta23ILQRbyZHEpUwo9dpWa7KvAWdeOiiljAuCt
         15lQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/N8X2n7pv/8vQxspvIM1okPFmvGxyUqO890fIKVhPyfhZpXv7Ehau8QmHgz1KwmmrifmZ05fidBqD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4BPnAuY2dPRWgFj0+HYloX9RCTtc9MHc701f4AZ1kWA71CrFW
	AnE6Hvm+afUosGzyQ1ypR9tNgTUvTvPWXjgpCg6mulRN6tSoFuEPvzGU/dsj2ik=
X-Google-Smtp-Source: AGHT+IELq6WtsaklrDf6XvrNeb7DsO6WLI086Qs9v5jzBmcQymK1gLJT2PXlfmnYaBCDvw1PEJ1RSA==
X-Received: by 2002:a17:907:7da9:b0:a8d:3fb6:33df with SMTP id a640c23a62f3a-a9984690abbmr27747866b.8.1728396380872;
        Tue, 08 Oct 2024 07:06:20 -0700 (PDT)
Received: from [127.0.1.1] ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a994f50fcd4sm320714266b.171.2024.10.08.07.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 07:06:20 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: x1e80100: Describe SDCs and enable
 support on QCP
Date: Tue, 08 Oct 2024 17:05:54 +0300
Message-Id: <20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEI8BWcC/x2MQQqAIBAAvxJ7bsGVyuor0UF0y72YKUQQ/T3pN
 nOYeaBwFi4wNw9kvqTIEatQ24ALNu6M4quDVrojpQzexKOqhKdLWHxwSL0zNHjrp26A2qXMm9z
 /c1nf9wORSLHlYwAAAA==
X-Change-ID: 20241007-x1e80100-qcp-sdhc-15c716dad946
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1203; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=dzHbg8mQzajlPzqNpsMYJhkbjdTL5GhbgGOkl/GTjNQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnBTxNVUWmO5if8I07UMBjpaiOw33nYHslR9o96
 nAL6sPYWnSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZwU8TQAKCRAbX0TJAJUV
 Vt2sD/wNYt3qcSvZ03x8dCHoYmCncbvQpQM0xcpn7FxYRIUFIbBDI/NWz87F8JIt8PivnQVs8oK
 4MIVBZoZXPwjp56RSqcBgGLD0zsiYZOvniryWWUdcoyWqgY055+4DCiMaoQ6MrRMVD0EC3wB7MX
 sDysuTiz9c9EbZ1SQPfritsGBJMCbJMuoXLngSD8CXbrl9h2thIdBS2AtrmroMkMIhdPpcSSNGU
 djtjtgCislPrY0dFiz8r+O1GTkgREA9PB3reVTrQiDByl8ExUeHcbwM34AePdL7iFGqXUs8uXqp
 xvQSW3pRSmyMyMgUaRJ6DPTmIJz4gNX7Fz+4MTmCYP40keDZMJmt03RDbzyRoAX2e5Hctt20CxT
 p+XadkzH0NmlKgDDNqSbFiJvsG7gZ1OCLI0sNOvkbgCf3WsW3zZocLLyUOu4Xqk6Gw/1KCO8h4W
 LR5m0WH8dTUknmzwcyVekdvTBl9l4xGSrEuo1UCvPCY/IGCSxjifa/Sb7deeQZiCud91PtbePWC
 t5VJctRCwGTglDu+P/cV5G+eHI2Y5C/Mma22MybNTQox1lFcHD5/8r/aQlmOTwPINhWIZeT5/PL
 r9l4EK676oJ9Y6E7/dBu1/QKXBAIwl1OTUe7xnBP1KnnDAm/kRAIqnH7VAFXkSpY+lKIC7hjcZi
 bdseGDF92kaK6XQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X1E80100 has two SDHC controllers (called SDC2 and SDC4).
Describe both of them and enable the SDC2 on QCP. This brings
SD card support for the microSD port on QCP.

The SDC4 is described but there is no device outthere yet that makes
use of it, AFAIK.

Didn't include the SDC4 pins yet because there are some bindings
errors that need to be addressed, and since there is no HW that
actually uses it, we can describe them at a later stage.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (4):
      dt-bindings: mmc: sdhci-msm: Document the X1E80100 SDHCI Controller
      arm64: dts: qcom: x1e80100: Describe the SDHC controllers
      arm64: dts: qcom: x1e80100: Describe TLMM pins for SDC2
      arm64: dts: qcom: x1e80100-qcp: Enable SD card support

 .../devicetree/bindings/mmc/sdhci-msm.yaml         |   1 +
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts          |  20 +++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 148 +++++++++++++++++++++
 3 files changed, 169 insertions(+)
---
base-commit: 58ca61c1a866bfdaa5e19fb19a2416764f847d75
change-id: 20241007-x1e80100-qcp-sdhc-15c716dad946

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


