Return-Path: <devicetree+bounces-71365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE77D8D6788
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 19:00:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 855F52836B0
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 17:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E428A16E867;
	Fri, 31 May 2024 17:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ip/boUXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F34770F3
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 17:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717174843; cv=none; b=IOtOyxajzDDFyBV1sH7zL0wIEoOWKit+BXz2T1hDpa7DjJTHukbDzPFX2g7Jvlo5V1dhRkqXwXJ5R4UNy598iU/8Z+tNn5YMW+7XySKrTzWwof+9K4BSAbhfYSULyGIGhsCgmKVzE+ZxlgT4oWiQdyJ04ydhhgwVzmVD1Ms+Q88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717174843; c=relaxed/simple;
	bh=fIeqrahHamzqAOuwtO2KCKUJFMB0YRDzT6MQCXBL9Gk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iWQFD1QBiQRzAbR9r7PWSHMA/SRME35cq2CUiTpg0G1IWQ1SRZUNu7Vi45zdeEJQ/y9fnWE0Q9f3X61DIAd/lau3ZPAnzd7+Wt0uUQ5cLowEB/zikm1PW4v7URmgO4liOBdr6vmak7hzAuXlZJO/d5edMAIOjWFZsTYW/gwkvkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ip/boUXM; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52b4fcbf078so2874931e87.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717174840; x=1717779640; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BR3RnQ2dpazbPHt7W2rPdeCNZdanLVGVJZddcGpPEKs=;
        b=Ip/boUXMXhWVg0yg16kumf9d4rlGE4WYDR3tyteMhRlY1VsOJqUTZlvAmqiWjELvVm
         n9xu9WR/Dcx+UkyeahzaVA8J3dCOU246fvZT1FovOp/qiFOw+waEn3zgmsPqs5GM44h6
         KWbrsBhdseHbwmFWbDWI+ZoLo+s6+g0xEn9gGduHniXr4KCOdK7jdQgkuY/4GO4VHtgO
         72bUy1pvoijDCUVyHI5KqLGnZXKI7RRPr8fY3225gdnJQfy+YJvcc1w63UKnPeYYhfG8
         PNfpJ8MGz7CcXss23AmkvbKL2WKs02Y/SYTH2F3oxYm39VnSLWSP3KmkxMhIE8EOnV3p
         ueEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717174840; x=1717779640;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BR3RnQ2dpazbPHt7W2rPdeCNZdanLVGVJZddcGpPEKs=;
        b=M28urqX0kjrq31wMLmvKalKkfjn9OwuLwh2axb8CV+SANQZWmssKfZuoOw4a4BB+Yg
         si2kVtWesrcS6vUSw4+MZlkzmR0mksHN9LtLzmtH+tdUCA4cz/CEvyFR9JMZEvgUZEhP
         gvYCh/c1SaXDoyvJqv5/OKJBwevyR6CFluuRVsPhy1ZMa1ZO3pN8dJl2XJvDkyr75WRA
         pwhT0uWhEcuprsrN/pCvd1oV6fuQsQghm/fYtkIBMih18i8UWK7CLMFB3+4sUWxtZf88
         x8ca30H0woPkixnvw6fGpzbvORcVyus8Y0hixJdOWJf2mDi63WlGgV0IHx0pNIZa26C6
         epVg==
X-Forwarded-Encrypted: i=1; AJvYcCUGNg53yFqncTUnhHK4vCjgXY5joQBIpTITjIKW9uLCgz7euaURzNK9YHv3khI2O++SrPd4hv1lxF87mE2ucEFaukmf/oTGqYI3/w==
X-Gm-Message-State: AOJu0Yz+hMl5uOkpBXL1VfuNPbMYCzUHPMEbQCuofkJbzIZGP55Q78/c
	HBYZwPf0yL1y7PC7s0L6aq+t44OO9/navXhT8EhiwwYjDsngmVZ//YCTUzlDj30=
X-Google-Smtp-Source: AGHT+IGnObsT6iACs9tefCWQY07ak7M2CYjMVWSx3xfV5m2mTosHDQ7wN3Vy2jWa50mohwPAmeDQIw==
X-Received: by 2002:a19:c514:0:b0:52b:798e:74e8 with SMTP id 2adb3069b0e04-52b895b573emr1535855e87.39.1717174839848;
        Fri, 31 May 2024 10:00:39 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73f9a22sm105533166b.60.2024.05.31.10.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 10:00:39 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: x1e80100: Fix the PCIe 6a node
Date: Fri, 31 May 2024 20:00:30 +0300
Message-Id: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC4CWmYC/x3LQQqDQAxG4atI1g0k1qmDVyldTMffmo2ViRRBv
 HsHlx+Pd5CjGJyG5qCCn7l9lwq9NZTntHzANlZTK20n4a68K6KoCI+b82Q7nNdseCSWPIV3H1L
 UCKr/WnD1uj9f5/kHow5GLGsAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=842; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=fIeqrahHamzqAOuwtO2KCKUJFMB0YRDzT6MQCXBL9Gk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWgIwIRv27F/7z+/AsjgCw2VXeojKfrLKbWyBm
 LoEeL6IpvKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZloCMAAKCRAbX0TJAJUV
 VvruEACprPeRq77jEQQl8bewPxvPeaCniOC92FJiti+4Hlgg/fkRRg/H0pP3OD7ni4Gg4iqTB8x
 MIzbQFnOBpQJAWKPZF/C37ypit0oJ2PjjFIbPtxqmZlX1NSZ05On2fB/9FRZCQieQBCOJXP2gCB
 vYszPhesgLRJX87+dWh+wM9N2Ems8NC/OIUU1V6XO4uwf5BuqkhM6j/ZNw6kBZBDDxLFRvYe3EU
 CcEnc5FpyVd4wB/lntGgofVlRm1aujW+hD5FLR8VKtq9iI1bFHjN2LWUIXuLQG/I7hQzfJwzcyQ
 HF+IPf3HGfc0diiLZOSgGlwV7XbDSb+ZSj8KKlAqErPjp+uTHko8Kyy42p8+XBCGiQIwXxBHFOD
 g23Td3zRdYD9y2QOFZ8Yi5MmJj9t/3xF3AfMyRidxJClIWXrjPQX32R2fJ+dAG9g7hteSUJt7cs
 9QSOTlzMYfo97Eo0UyK9FrJVD7Ai3Am8YIvmw2v7Drq1Iu6WebJc5n4/mmkP0zRuNbWZYXo4ZLs
 sn7XQ8gUcLYypwwopv/vuT2WF7KINT9QEYG9YG6fsXT3sgI/g2S49wuH5X9qIWZm7Oz5zEHzIdE
 h/W9GmxFCs6pKdVPqaT4CM63Dne2ns2TsCTUiUCuXdsWGNN7MOmCVWanRnZdL3gzcMVFBeEsF0W
 8nUhafiMBFb94CQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Currently, the PCIe 6a is being used on both upstream boards for NVMe
in a 4-lane mode configuration, HW-wise. Fix the node accordingly to
reflect the HW schematics and improve the performance.

The phy counter part is here:
https://lore.kernel.org/all/20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      arm64: dts: qcom: x1e80100: Fix PCIe 6a reg offsets and add MHI
      arm64: dts: qcom: x1e80100: Make the PCIe 6a PHY support 4 lanes mode

 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)
---
base-commit: 0e1980c40b6edfa68b6acf926bab22448a6e40c9
change-id: 20240531-x1e80100-dts-fixes-pcie6a-0cf5b75a818e

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


