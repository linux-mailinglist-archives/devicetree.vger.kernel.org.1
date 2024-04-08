Return-Path: <devicetree+bounces-57008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D8789B5F2
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 04:34:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9CDE1F21716
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 02:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5922364;
	Mon,  8 Apr 2024 02:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XKg4m9/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8E24C8A
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 02:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712543648; cv=none; b=QVkmvMcKifg0FjSksP7teVACVPTQmJG7rlwabxYhJ0p+5ZSFI9kWOtvytHZaap4Ga7E82FLIJXK/0LHoPIBdDSJOdR4HkYh1ndJKArI1W/CMQPVxaFYZWSeZxzzyXYKbYzwkSTlDK595EPdvdiWui4rihuvTLa3wNqAZJbtvWwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712543648; c=relaxed/simple;
	bh=8EsNeEk62CSpcmgK4bvkVppKTO4BBx9jgl17Ja5V0i8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uQLbpgSTZe42fhFyXPdwQyHulTyFFyvii5v1p2C/Pv19rEmca97GsFvHGyo5dxYaCwizf2xAN9DfmkND+WCuZBSpECJGHXJcKFeWAdtNDALamUdF3e5Ipkn0TSwUte9wQGctdJIJridRJq9iKE5Axb/+2ChXeMGQmPr8cM1e9Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XKg4m9/b; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-516a01c8490so4234512e87.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 19:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712543645; x=1713148445; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ok44gEzycQxh0yhKV5quQwXwYzTEudgwlcs7LIN/iN8=;
        b=XKg4m9/b+iSWYxce8OrJf+G9VfJw4YpwWz1W14cz+Hv4uF8fJP+hRF5soiSfvHpK7g
         M7cgOo81Oki/We8MUwMhWcUKVTj6sayUnJMgjTXqAtdvR8zAV7GqIlS8NxWujcLmA3vn
         ILUBkyzz8GVkTEpU+rMd1XXXVqJBGqj2aY4wUGzDBtmbjlb7jdXvNDXqGclGbBk7Dr1Q
         98qHNHClkl4ILu7wiAi2/g+MGZIsizQ8Ey2dW/Yr+Qu0UyvkngHE07eokKwEPVr9pe7K
         CHqrgxZbsnYoSdgq/oPj1vKg+BsMs73Llw5QQKB6OPjzocCeyIi+YjQ9LcHyuc5R22/O
         pOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712543645; x=1713148445;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ok44gEzycQxh0yhKV5quQwXwYzTEudgwlcs7LIN/iN8=;
        b=RfRz8tggrA9EPoGCd5NNIjrRFyIZcyJHUiy2QSqVV3qAiGAqIJPhmgUOhrJJ9Lv0XF
         Z9YDNq7nMQXkn1dkmEFwPKY5FFNvFL5eDMjtl3TIj2b68syRLCZ5HL1mpSz1qmzp30UK
         l7n0Mfv6Pes369HmMh7gBUrdcowFYqXPysn3Gix4m3DGG6R1q1gqYa0/7SNwNJLsD7zQ
         gOk9ZHir5jKFAkQd2vDzp9rIoW2iogY/uK7NQ7XdO8NHL6Gdqhjrg1ns55OLb4IVG8JO
         xOHefXXEP2hCnkaAxbxYeC/s0yvuT6AQY/fPB5c9+hi2wD9WI2Nr7/WSgbzBbI6fyWeK
         4WkA==
X-Forwarded-Encrypted: i=1; AJvYcCXR2qMzjLjsGKYwrLEd0UH0Ieh89gXOw3sEx31btJ9GFzWEIl83sOYQ4ACg5zinY9IaZp6Cl1++Z5C5ALrUSsWptKntSI8wwwTGaA==
X-Gm-Message-State: AOJu0YzU4e6r8+JhYnDhqmsq6FNpsXCd8RuzBcM281Z+wjfh5PhrNG0L
	UWUNh8HK/T1+Z32YcrZ5bZJX/hOh6wF9KZlF5bOzBlC8B313TqOolxBmOpZ+mQA=
X-Google-Smtp-Source: AGHT+IFMNNSGVca/okQD9EApK1fiHLCTAisk+0SGzTI4DGbUvtnHJB1OaKGyjCW1XdvzkZbn/FsdNA==
X-Received: by 2002:a05:6512:2393:b0:516:d713:382e with SMTP id c19-20020a056512239300b00516d713382emr2757359lfv.12.1712543644554;
        Sun, 07 Apr 2024 19:34:04 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h5-20020a0565123c8500b00516d58590e1sm943673lfv.250.2024.04.07.19.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 19:34:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: add USB-C orientation GPIOs
Date: Mon, 08 Apr 2024 05:33:58 +0300
Message-Id: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJdXE2YC/x2MQQqAIBAAvxJ7bkFFMPpKdKhcdQk0NCKI/t7Sc
 WBmHmhUmRqM3QOVLm5csoDuO9jSkiMhe2Ewylhl1YDJ71gkyedyiovx4NJQW71uLnhjnQdpj0q
 B7/87ze/7AQvDqExnAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1057;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8EsNeEk62CSpcmgK4bvkVppKTO4BBx9jgl17Ja5V0i8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmE1ea6GAklbDaEutdUi8pdQFlyQvtp18Ao8fVc
 xixsjS9ePiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZhNXmgAKCRCLPIo+Aiko
 1cDsB/9J+wZ2Du8JS4PhKoMWrrknKk8bMlVvLhZDhpWRTBTcr+3Rkt1kYvF1tzjnJS39jYAUxrB
 k124Rf+eb3hZ1qGrs/H4L+P/jdO3Q9a9B0BIAhdo1HQ6ZQuPdVWOpY1+SJUPUeyySyguE0s2u2o
 q/6Tba5gCf47nNU029B3FeM5tMAi1XA6KVzdOlRcrScyzpbeefo3uUsoBJcqwhrLKbLlHeM0S3U
 lDaGtFXXEoxLKb1sDE0mQcP7W+587UpSgTbPHXbVhfCmNtYkOai9i8W6WTQ7iQWiUuKq1UQqLrQ
 gOogxHf7T706lzV+yONgcYWJa92v/C1Kdx+Owrii1wTZ6lhM
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Populate orientation GPIOs for some of the PMIC-GLINK-based devices.
This leaves only FairPhone5, RB3Gen2, SC8180X Primus and SC8280XP CRD
without the orientation GPIOs declared.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (4):
      arm64: dts: qcom: sm8350-hdk: add USB-C orientation GPIO
      arm64: dts: qcom: sm8450-hdk: add USB-C orientation GPIO
      arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s: add USB-C orientation GPIOs
      arm64: dts: qcom: sc8180x-lenovo-flex-5g: add USB-C orientation GPIOs

 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts        | 2 ++
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 2 ++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts                    | 1 +
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts                    | 1 +
 4 files changed, 6 insertions(+)
---
base-commit: 8568bb2ccc278f344e6ac44af6ed010a90aa88dc
change-id: 20240408-hdk-orientation-gpios-141bc7fd247d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


