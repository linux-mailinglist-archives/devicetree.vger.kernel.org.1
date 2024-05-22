Return-Path: <devicetree+bounces-68367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1AA8CC0EC
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 14:09:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C4828493E
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 12:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6275313DDB0;
	Wed, 22 May 2024 12:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nPRlt5O7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B325D13D63D
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 12:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716379736; cv=none; b=pUM9roD9XMRCxb3uDCLT93kSgbvJ+/2n877yFV/8mqYqhicR1ql1CrAYNwP1zkN+shhF70BSC4a9Zw/LaiQzbUeGkK2Vy3rAkG5Y7XhuvFJwYS5vUxzKFNf/Iqu8lYtWpwdiHPklJONFiZS9r5JP27lqkEpScGN5fFqy9kDFN+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716379736; c=relaxed/simple;
	bh=qmxlDW75iqZmTp0UMqzQqRVhiq1oe+EdrwNswX4N++A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mZypMMPPBwedhR8G6feo3TwWmpa7tchUPtRX2g4SIVcJRwXmpIrd4iYsVemcQQyEa3BdKSK72q58frKQPDQqjIOxe2mJglUSiXyDbwhZXfDgIWjhhcdA1XXKQhe3R5/vq/rDbUX4gi/HyRpYAr29j084nbzXDxVc/6lawusK6e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nPRlt5O7; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34d9c9f2cf0so773199f8f.3
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 05:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716379733; x=1716984533; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qzsbJaJwD6+Asu0JgkeNfnwZ9VWlN17sbLCL/neCg8=;
        b=nPRlt5O7rDpQg2CW5YhDqztcsXwmPR/6DFX5GzKgRicgsydMca6nfMEm9uFV0dpuhw
         HjqTDNkTR0FHXj92+ixtwdVr/GiDJ717/TEqECfY0t342h9Vlev9lBjbfXYDwa8O+PBn
         NFVoH9iP2UgvygZY5JRvhEx8eW7tsZ1UoPMRU2dSFQuwLJOkGinLsKjKnNoE2LJl/J52
         8srFfpMRdDfJA4GnUE/e8YEX3U2nj98KrZBvVE/yAINEpa+2guJIwVKikPKB+Q4huXTf
         5nX6NZOYmAGb8De1NFKd2NyTIgj2VJ01r/mJPX8PFghvLZma5rdxU3OwgpPh8yIr025z
         UJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716379733; x=1716984533;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5qzsbJaJwD6+Asu0JgkeNfnwZ9VWlN17sbLCL/neCg8=;
        b=p/Y3CBqKGKroeBSGTZeGs9wyBwAGHRIWpYOq2ZMN1zyB91KOixu2sSDKzXHwZn0Get
         POAEJhe2M2bMdERfgOSaEmz+oZLAF+Uk5vS8uqmjhwVH1pZAVOOwRAtzhHqCizJMy1M8
         Jjh9Pb77bLolbsbm2r2SXLDoA/QH22IhO7aoL/0odW5xvGST9F1QYS7cnK6Z0MOAJZ6F
         GbEzvxb5xPTbtyt0vJC+/KxQEab5Gq5QB5iaZWRJetpJGzVTzOiQAA2MYGFe6Xm4N/P9
         MERfe3wWq7ezOfIZERJJtH01XgeGiuOBYeCFnVf+L4bX1akVMVASnyhVZ+JKyz6aFThc
         SuaA==
X-Forwarded-Encrypted: i=1; AJvYcCX6BIVrpTpaW1LDYfweht5WsIpgstcXEEnPiQjo2flBD85zT/a3ugr4C5DiaenhOu/AwitiwxXuP2vEqQRcFcmuJYHkjz1gjXmLBg==
X-Gm-Message-State: AOJu0YxcFXJXsO1qmLS9lOTvJM+lTyOrFBPBfAfvw8s+tPB6bsRGe3uM
	CcTRi2M8S19EaT/lcKCIM9xkThlZkjdYr/C5l6aAUqvRQeHRHxxEs7+6PEs0J3Q=
X-Google-Smtp-Source: AGHT+IGfhqEWiodIu259JHorQKUnNCBo+5cU/BUKlb69hMHlDo9kPyCh6ueDdSjttm2FczsRiaPdJg==
X-Received: by 2002:adf:fc8d:0:b0:34c:54c8:3f2d with SMTP id ffacd0b85a97d-354d8db7658mr1614335f8f.69.1716379733160;
        Wed, 22 May 2024 05:08:53 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:82c7:3445:3b33:6c0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-354e720d9afsm999226f8f.113.2024.05.22.05.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 05:08:51 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 22 May 2024 14:08:16 +0200
Subject: [PATCH 2/5] dt-bindings: mailbox: qcom-ipcc: Add GPDSP0 and GPDSP1
 clients
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240522-topic-lemans-iot-remoteproc-v1-2-af9fab7b27f0@linaro.org>
References: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
In-Reply-To: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Alex Elder <elder@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=705;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=TiE2CC8l+q0/Yw7pxaVR0PyPK1kIiJyUqrmczPT3l8s=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmTeBQDOYbH1AvLB4MoP4hphLLE8U1PFYviLs3x
 J1ws4vDkiCJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZk3gUAAKCRARpy6gFHHX
 cr+UD/9HYIxNVID4BLa2xWTEd2G6SLH2Z9c33fpcQ7R6Z3ICgu/I4kXtR1wn+yYlhUzFqItumNe
 YIGJ8Ktg5CViyuYsZ2qQimUd5gWkPHKIWUZ+EpWZHIT5cg9gAPJ0wKyB5gMrfjJM2CPWlklsxIm
 YgPganqUpfrttQZlIoPoZ1ZAAOnitzrYqomQqMH9CLboWSQl/DGrLkJeED9QSdgvr/83G4wAA1f
 +EUkhTq7hV//u6ExLvsZS8QTqQpHgEFsvK7xK58hdD7qnZXwr4r8kI+bGT0k4P15OjcyEyLwNuK
 t3c6wTetxxlLqV4O6b/+LrvfwDomHfWI5XgzbHaXpJpj4g9b4370DziWvCfyJoLzf1xfw+nUILP
 +Nb4JLgs7G5UewPRQjX3p6QEGO+858ZeEhifFwn91qSn7S8M7fhf5PpS8F/XJVg8XRLZ/hwVZVu
 1zm4Hq+yOCcvHaY0g9Jtyg1mbZYCuxIZNOj1TPVbaN22o4ehnRALZSTeMeBKhXkWYzaRVm2auny
 ud7gpHZbdXd5pcXcIQ8o9S8Qsh5xc1awfoq507XiFiO2QhU6mWKKbAPt5lmpqKNsPjngb4o3b8L
 Dvp1kdWSuebA2aC1uPvg2C5n/bRXUAFCKehi7hTlSZbTltHXwihgacx9kBqo/16G0ABn/LaDVm3
 a2B2cBWblIJrnnQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Tengfei Fan <quic_tengfan@quicinc.com>

Add GPDSP0 and GPDSP1 clients for SA8775p platform.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 include/dt-bindings/mailbox/qcom-ipcc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/mailbox/qcom-ipcc.h b/include/dt-bindings/mailbox/qcom-ipcc.h
index fbfa3febc66d..fd85a79381b3 100644
--- a/include/dt-bindings/mailbox/qcom-ipcc.h
+++ b/include/dt-bindings/mailbox/qcom-ipcc.h
@@ -33,5 +33,7 @@
 #define IPCC_CLIENT_NSP1		18
 #define IPCC_CLIENT_TME			23
 #define IPCC_CLIENT_WPSS		24
+#define IPCC_CLIENT_GPDSP0		31
+#define IPCC_CLIENT_GPDSP1		32
 
 #endif

-- 
2.43.0


