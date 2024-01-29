Return-Path: <devicetree+bounces-36106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0837783FF4E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 08:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A6D81C23638
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 07:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089F951C5D;
	Mon, 29 Jan 2024 07:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U7uXVklI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7306D4EB53
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706514750; cv=none; b=NBl+zMLkUkHdw3aRaSS2SzGscPuV4L6JTj5Lif2r0bCn5pOdlBirvY54lW97AJYD9MZ4rAD0zOiC2L2r3n8a/8iZoa2d7kyKf9EmFuNauRp7GLtcrB7i2GInYO5f82xzAcLR2N2bN123Kz+77fzXmSS4aI1WreF3rr4x1nfXzk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706514750; c=relaxed/simple;
	bh=tTQT9Ku7RM1FLsAH3vWmzrAWVFN9wIhJQ1xDZJNKp4M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fIALoANM7n4AZ1QEU72MJbjZaVArbmV8/JXRdCphUFihYSDbS4apigN4q0p+F+qTvXfxcUaKcp57XAxEr0Hw1pwNtVwWpfFWMywMqBM/TuFxqqgGDUGiVFVP2MI+dIlC9xjWyYyG2o9GOG+UPBM5s/fPb1x5p8LehI3qCqHSWyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U7uXVklI; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6ddc0c02665so780496b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 23:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706514749; x=1707119549; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hKwoviPF9lK3MXodrfrYqIC6rePNJHWY3NWvE/KNFG4=;
        b=U7uXVklI6V+bqjGhgkCveo05yEQd8svuDNluOwLk9kJWyR87Vq9dza+UeLyCi3Y736
         x7mCw6gnmQWuujnQK+ESYbgeg/jDauLzM6sPGoJf884sfSois95itnIJRXW4DeXPL04Z
         plBzn3DZyLDKlU2MnTMGGWcOjX0zRquAPVCgSzJhrxWAhmEr608id+DS/0kqi+dCKDBB
         tiPTHqE0uIRLRCVI/s5nk97ijqEec4igZmYsi93Yt4M92BjWXTBBDC4yiiDvB7DtLuBA
         lRivEjK61IvUSUlYDW0WP9+AHpxMWsWWyiJ81r8sPWTyPssp+4iUADkRateto+HzIHku
         R3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706514749; x=1707119549;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hKwoviPF9lK3MXodrfrYqIC6rePNJHWY3NWvE/KNFG4=;
        b=nkADQK6YaJXERzSGhuBY4Y7jFPpTm1pJw3ZXthu7ICE82iEpJvT3K7wz5QKRSfJym7
         40EKY3KEd1VlKjvYCPcGXD9860Xor2Yn0knxae/+IZ6QPCxLFOZjJVpQ/nRPlAqDc+mi
         ULzFqF2GZkTFlRzzYjMe/FsXsN/GtHPKJOe0ngyjEWA8HCVLaMa8kGi1BNm+CVOQH+za
         qCGUHWjLjIX59QDNumYK7/ylVXId3WHf9BUTHxpaopT81g2lR50HUKLrX5fbk5bFfEEp
         r5ojEqKm/uohikLDt8FvkRSrQgHMhXm0kq4RaQWhOEuA166ZoIO+V8R5NLQ/e286JQtK
         SvUQ==
X-Gm-Message-State: AOJu0Yz5ZFrJ+1vRvjPmnSrnzLnPE6YQw5LUyW7vkzWrlPinUwy7sq8U
	Z3oaqhxbZQ7gjow20Yu8NYxQRbq3MvzcdbjN39HeBRlgzufjUiK8os3biEC2hw==
X-Google-Smtp-Source: AGHT+IGeqfu9dp2sjT94pd6qtcHQFzY9slmsKzbOpFB8yRIcm2BqugXLuSHM1wzJ+Y/sUQaIjfRiow==
X-Received: by 2002:a62:d159:0:b0:6db:d4f8:bb1d with SMTP id t25-20020a62d159000000b006dbd4f8bb1dmr1559157pfl.2.1706514748782;
        Sun, 28 Jan 2024 23:52:28 -0800 (PST)
Received: from [127.0.1.1] ([117.193.214.109])
        by smtp.gmail.com with ESMTPSA id t19-20020a62d153000000b006dddd685bbesm5467329pfl.122.2024.01.28.23.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 23:52:28 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Mon, 29 Jan 2024 13:22:04 +0530
Subject: [PATCH 1/3] dt-bindings: ufs: qcom: Make reset properties as
 required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-ufs-core-reset-fix-v1-1-7ac628aa735f@linaro.org>
References: <20240129-ufs-core-reset-fix-v1-0-7ac628aa735f@linaro.org>
In-Reply-To: <20240129-ufs-core-reset-fix-v1-0-7ac628aa735f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Andy Gross <andy.gross@linaro.org>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=902;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=tTQT9Ku7RM1FLsAH3vWmzrAWVFN9wIhJQ1xDZJNKp4M=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlt1ku3SWI50z6DJN+7R7fmRweEhh0xY3/ioY31
 p0C1ZBGJuWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbdZLgAKCRBVnxHm/pHO
 9SXMB/4ye39b1v8wXzuxS/o1v4RtjLlLVKqi/NF7kJjRDBql/AeZp2Hf9+s5yn417kUWlbcsLVO
 Hv3+1bV8Qbw+vY5P9VNH9VLyX1ZbqEbk45/TCxNp9Hf++u25PNjappM18E0ZRSOZ6EIFrmMHdXl
 eMcLxBY1kDQjvrbiawIdtPEG7SVhafiLkxL/cnOfCj1bWhvr2n/LljnEtLqsu9eyjHnrXmEjSTI
 FoGhc2e0gJCJADNnkl5dQLibYNJYd+8yNws4LHbb1L3+A0AfU/lTkaSXNsBnqZ86OO+Nsuj2kWn
 OpJjH2fcgHiXyuNP7M6bKXa44uyTFSawclFl3gxssnvZ1wIO
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

Apart from the legacy UFS controllers that were not supported in upstream,
rest of the controllers do require reset property to reset the UFS host
controller. So mark them as required.

Even though this is an ABI break, the bindings should reflect the
capabilities of the hardware.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 10c146424baa..03dce5e402d1 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -108,6 +108,8 @@ properties:
 required:
   - compatible
   - reg
+  - resets
+  - reset-names
 
 allOf:
   - $ref: ufs-common.yaml

-- 
2.25.1


