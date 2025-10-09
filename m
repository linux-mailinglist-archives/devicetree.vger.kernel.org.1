Return-Path: <devicetree+bounces-224930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26283BC8FDC
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:24:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B6A81890CF6
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D8022E266A;
	Thu,  9 Oct 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1WLpsiIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6F32D876A
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760012633; cv=none; b=qmg80D13hH+EShbO5EYGZLGnTpEA25MNBWsH3yZgvOxFIg3/JSSTy90XQi9I5idT+gdrE3u9e4kRN72YxuVDGFp48jU6vZgI2T3ohUzJev539mRnVwtRZ/YjSgfRScSMvlL5mtINOjvwoH/pZkyPAvGnrFDo+s7R/X1K3ZdvwNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760012633; c=relaxed/simple;
	bh=92BmjzTkktMcwmDuuR0/4Hya7qrc/cicAQZ7fp0iZ4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wn8rqMkX7JNGsyWBjNoPbWa1K6YXcT5gJlSdla2rGZkL4KmLcjAsEJy9RX4mOsYUQHhlgEEF93vf9LJgrJZo//E6aHqSzUtGlcAwFZ3vxYRL6t2+fLqDPhqdlrneBg7+J/3WL2gTTlXp5m6TqUsSXwgykwJOwlFmFM9HFq2OSPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1WLpsiIi; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-63a10267219so114481a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760012630; x=1760617430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f4ESIGC5JXj+5rNkHKRGo3WIWZoFPUgTFIJuXOSXg74=;
        b=1WLpsiIiwaTkeV/x2Xvw1i/VL+SwLjoFfMYGqRGBbHmjkaPDerszS1VTgJsTNvzRIZ
         cwdJAr6WC7r2i5sJLWHBzLXlCnP8Za8qu/jX5g/xzT4NavEUqryiqorpHiOuVECcU2e2
         mLmbCE+E3YlgeKm5K97DcbnoIczFxWLBw19Y8+hrhAGfVScDuxvO0ExCNnOOPwOQ/m1L
         TKKU+2Jtv5IbKJGRMlcnGo0IJUkz+t7tfvb9HUU8nBpJPlUwmd6QkA/hU7IveoIC0bZi
         348RnUtnQZ3GnAR1cVAWBGnvmNegs11ymczUAlfqP6PqUIbkLh0CR4lCxNwTt2pX+FbP
         7bQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760012630; x=1760617430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4ESIGC5JXj+5rNkHKRGo3WIWZoFPUgTFIJuXOSXg74=;
        b=OKSPx83j9JIJ4jZowux8ya8MbrFSzhExMvxoIThMxBK0q14h+THb84VvnrB919DS6f
         OxUZdBFhwBBZWsKerBV/p8d+kwYGJO0AH1oRAbXqBqM/ZPR7Q68ui+jBunuUR3hMrUd3
         Pn5JSkqWY7rpeI0HMpbbmMeDyjKJ3bVCtBjCafU1UC1/GqOb+QTZIO22FxCHnpXrW4Fp
         anuawKRodljCEUvVWAdbRBCLiqolLlCPZEDk4/ZeDJdbEKV6FylKgdOfnloX6kM/HHuB
         rIvlD+eY2ZsJ6FZIK3pcTJQ50pXIMJHA2tnewg+RejxonPEFrqOvgVV0kIi39Q69CwaT
         JY2A==
X-Forwarded-Encrypted: i=1; AJvYcCVpPebQ+VI+B0ro7toAdMCCHaVddzBiLYjz3iwEBOmfDmMSaZ7O/Dqe2fjvKeo64s31liI2u8e10JP8@vger.kernel.org
X-Gm-Message-State: AOJu0YwCd8jYb2exru5bGOFdrewROC1NitnYBb4eXKAXapTfll5xe7Ip
	DbhCz93z27dscitZVFz/pukoGgPAwHvSo9WGg0s7tMUFrUl0ObyZ1W21EAIrUR9aDLs=
X-Gm-Gg: ASbGncu1gpUSb3LtYDzTUI1H2DUh5iHv6ox8oKrvGwCvh3gPwsVEPoxEfcojFyyJeAc
	XXd55+pRgthdkX8a4DiVs/bmeHQdXai8KAGSDRSwDpaU5lyVaE+UzeedhymeQmhTcta7xq3ooAu
	sS7nBRNJdOLOP9hYlxtC4paxGe0Ci9BR/J91KUvimCUASM79CGkOLs0hP5nWv89Wok671wkPvyS
	IH3PeHUcO9JtDDw9kEf5sFd8uEMS/6nZMckUdj8vsPjP3cgsXsgzNTRAzUd2Np9aMdZ1Y4EhhKa
	J0IoXCuc+QzxLKQqLQxJKygEH78ty8CyCEyfPJkgkXDLZhwrDenItGWMe4KFS2VV+9kX+eVb0JU
	F8INqb/zVTZHzhMJMiJSwErUZUKVW/WSbf7xcYRZWCw86/VYmKHprZrMcrav7vuLvLJ7sRZrply
	qKdzPJk7HtvzS19mULFRem9OkqhGeP
X-Google-Smtp-Source: AGHT+IENniTshcqe3jJJStJvdAgI0KTDHDHdfB7CmkzhSPQH5g1ZIrk13h0XfNpFk5i36R7taLsTHQ==
X-Received: by 2002:a05:6402:696:b0:639:dcef:9127 with SMTP id 4fb4d7f45d1cf-639dcef91c3mr4667803a12.18.1760012629669;
        Thu, 09 Oct 2025 05:23:49 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f3d09b92sm2231273a12.30.2025.10.09.05.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:23:49 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 09 Oct 2025 14:23:38 +0200
Subject: [PATCH RFC 1/3] dt-bindings: media: i2c: ak7375: Document AK7377
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-ak7377-driver-v1-1-29e4f6e16ed3@fairphone.com>
References: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
In-Reply-To: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760012628; l=794;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=92BmjzTkktMcwmDuuR0/4Hya7qrc/cicAQZ7fp0iZ4g=;
 b=wiGazj0RSHWQal7YYs6Fd+dwKjXU8rDWGrrC87eLCCcRfpVpJoY6/C2rXaEGb/AUC/KB3LqlY
 zpnPZQvXJn1CqWZz3DOpW+MIToM2/MChrklbu31SHSJE7yaRxkjoBm1
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Document the Asahi Kasei AK7377.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml b/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
index fe312cc6a87310fc77216d945e7b301dd98acc0c..c040757eb80c925d796919316c64ae31fb4df49c 100644
--- a/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - asahi-kasei,ak7345
       - asahi-kasei,ak7375
+      - asahi-kasei,ak7377
 
   reg:
     maxItems: 1

-- 
2.43.0


