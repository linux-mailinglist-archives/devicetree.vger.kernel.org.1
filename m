Return-Path: <devicetree+bounces-25612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EED70813E79
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 01:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A954E283BE8
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 00:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A84711CBC;
	Fri, 15 Dec 2023 00:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OzzTrlU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E071C19474
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 00:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2cc47f1e829so965121fa.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 16:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702598473; x=1703203273; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eBSKuYKxzigP8b5WXvqXz0s0p/VS3DncP3fDxmRu3Ww=;
        b=OzzTrlU6Xo/rfjVbFbRzo5gjJ8PpRpxVQC1Q0UFlxI+ZFl64CjAtWPqJV2kkwQchl8
         HGyIESLqbX1244mBiPB+iW3PKtnP+JW+SBPZcqbnyZBHe2gndiLk71dIg7M+fCoj5wtl
         AO5Dk69ROfxvaJ9n5gdl2kr0ZVyWNFg3gP5Lx6Hofh2zOT/uMTEl8TNeifMvKbvBkiCQ
         0+jT/QvHE7MXyRDtdvJ105n36NTCE8uKEY/QvAQersqgXdv9wgDKqcHkWZOjkFA2vU8W
         i5HIAnOBA0SstMGG73cKXTWDG5ygcE+UhELq3D5NV2aQR0muMWBzoc3noArRQfve/Aoz
         0JMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702598473; x=1703203273;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBSKuYKxzigP8b5WXvqXz0s0p/VS3DncP3fDxmRu3Ww=;
        b=T77N5QtdNGtM6r3/r8FkyngrPmz2bKYaiXV/R91qDRik09ldisJbhXOvLCihKNOjJc
         G+Kewt02jTGezKbRMbZIQlFvMyFJWwnR+K84KK0+dBR/Z9xoE3lykyy0woyMpt3DvzhV
         LTyabeBZ6ZGFp1RmuLyjHdf+0QRc4Y2RKxxq3atbLKGTEDiXwK7kf/eW8B80O3tqZpai
         OG53DU8T3eC/9cUYI01bi4nJ/tHt2S8isp+QexmU5w95aJNoKEOSCtO/jhPaBGW2icdF
         BScfc/SKV/JNRoVC9IfksQWOudXIFNQfGmQGBca58VqSXCaiVBa8A4Wq+sHn1XjmuKVQ
         +B4g==
X-Gm-Message-State: AOJu0Yz0CScBrfIMBgquS+kErkwmShAmLyHw5Rw25zFgEq2xfI+Re9dx
	orUbnr5+HmxVBZ2vpT6H84yquwvlpr/dpks/iHUxMg==
X-Google-Smtp-Source: AGHT+IGC4AkqHA4O7vY5jj4a3VkRdVMCQIKyJctbrqXdk3Ym+s/R62mwcLbSPKMvibSgZZwuTJDyzQ==
X-Received: by 2002:a05:651c:2228:b0:2cc:1fb4:6ae2 with SMTP id y40-20020a05651c222800b002cc1fb46ae2mr4701586ljq.28.1702598473582;
        Thu, 14 Dec 2023 16:01:13 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v6-20020a2e2f06000000b002c9f939598csm2184518ljv.70.2023.12.14.16.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 16:01:13 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/3] MPM hooking upping
Date: Fri, 15 Dec 2023 01:01:07 +0100
Message-Id: <20231215-topic-mpm_dt-v1-0-c6636fc75ce3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEOXe2UC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDI0NT3ZL8gsxk3dyC3PiUEl1jC0NDcyOD5DQLCxMloJaCotS0zAqwcdG
 xtbUA8u6CPV4AAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

This series hooks up MPM (which can finally be done after winning the
lengthy bindings fight) on 6375, 8996 and 2290 as a good start.

The hardware in question is present on all RPM SMD SoCs (so, roughly
msm8974 and up), which means many more platforms are there to come.

MPM is one of the key pieces for allowing full system power collapse
(and perhaps as importantly, resume) and serves roughly the same role
as PDC on RPMh SoCs for this purpose.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (3):
      arm64: dts: qcom: sm6375: Hook up MPM
      arm64: dts: qcom: msm8996: Hook up MPM
      arm64: dts: qcom: qcm2290: Hook up MPM

 arch/arm64/boot/dts/qcom/msm8996.dtsi | 39 +++++++++++++++++++++++++++-----
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 42 +++++++++++++++++++++++++++++------
 arch/arm64/boot/dts/qcom/sm6375.dtsi  | 41 ++++++++++++++++++++++++++++------
 3 files changed, 102 insertions(+), 20 deletions(-)
---
base-commit: 11651f8cb2e88372d4ed523d909514dc9a613ea3
change-id: 20231215-topic-mpm_dt-3811720cf884

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


