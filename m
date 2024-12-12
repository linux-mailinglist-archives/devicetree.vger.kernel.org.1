Return-Path: <devicetree+bounces-130379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D571E9EF434
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:06:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCF841884D95
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FBE822CBFF;
	Thu, 12 Dec 2024 16:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RisfHKDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032252210E1
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734022255; cv=none; b=WjKE8o6QeiDVtivawWsNBEIJBydswZOcU5+udQiDheC0e1tvdWnA1jWNd204/o6llYJz8jMNqNgbBCwDVObAi3t2yx5pVTIqc8BsalQ9FzNym1C78ctwtkyjO8iX7Byvcedhe6j5Jr60oUoHeRt+IaZWcOggmP9wgAOdHcRdB6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734022255; c=relaxed/simple;
	bh=BBhhYc6WiR9lrxb02YxPKhDO0cLFxCtxBdQvIJoPBZM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eF29hgGu8vrYAshpze+RGl53Sj82kEgxH9p2VbicB77PfL8ynGipYeGiq4rzqjKfwFhoznut3ishrpTk8qmoQzi69HZF29um1v+98VCiZEOTtDiKM62By23vJ/grzsjMWdrSRyJYN+0rF8wlqoB8dm0S/5tSJ3Un5BPhW4CzyF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RisfHKDb; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3862a921123so591420f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734022250; x=1734627050; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qPR/U5M933Efza0Sv+7ys+dvo2ugrwOUgeWtNHtA3sY=;
        b=RisfHKDbgWpAHwnFsKRGpKvft4Y/R4Tsc/mdkBsBGMhPZ5fy/XVK1XrJQ4TSpiMa1m
         X29sC0L51VM59G9saZU8bUalIOYJFT22pVXsGb7HbUYCuTmfqeRfsvInkhoFiuHwnGVu
         2YgyCgUWsD4Gm8IFajR+qi0c36koKtcJfQv/439Gxw1SqshNv1ZLzuSLI0DHnetxSO9H
         XjQQG+HYthfq/u2GP+ZsbfcvSg3NPaqG/otMnPhNcWKYndc2q38sQTNJq4VeZUarbCeo
         cnj/swtHkaajSz1RuWy/fF2Vk4Z18+FJrQm2YDeLhd5Em4E0qMngDFBxXzL2xuqOmjKW
         Yx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734022250; x=1734627050;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qPR/U5M933Efza0Sv+7ys+dvo2ugrwOUgeWtNHtA3sY=;
        b=qR5sTAvDtdoVDjRwzZPhLwkCo824GTEeh42PqJAYDzL5aleIrjb76aOrLm2sxXdv+d
         lBRf/yL+IlzH7sqiQkfYJd1Ndu2SvmeMtbRXBhU5QuDdqt0IM6zYvFWm6utvsNU7gTWe
         0m6UnYxHFiQgkQAUJcgsgnwQpIcU5kUzGFuwXDCPwQYuQ1Pd3KN4Ggs3BmZXZcctIUDN
         Ya6I2WZKV9kdyccR/cNrUNCA/HMEDiy1oee4bghmW9KL7uT8HgoEPjx5INCjGYHsB7m8
         CGNEGrCt6fF/htzjd48zTW9qXj14h89vFDpK16BOGOobqokEunTYIhpeGt6njAMKPoBv
         lDgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb0/9UVd0EjLtGCUtrQO1Xqjvgkopwc3zU0Plrl8fKZ7lnPvlJeQjLPXhShLcVcojv9pqBPFc1jxdm@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx0Adqnc7DrjiOULJ/Q+CYo0xzQASB02VbYyUzs3q12ICUNGzp
	ujs543rFi86uE6eCsS8eDVAyt5Xf27GQSDZrjp3jxKV5fW+bbe3ZT65sHa2Rt6c=
X-Gm-Gg: ASbGncvLtfWAScZEA9WodGf4ZnX1vxWiFqFTIFyBPFfall/V5A5MyJK/wvgUfvVLMgG
	WvWCxw3yymAWOqrWKpkVCNl8eQwyE/p9dD8EJ9yUsY7xKkN0Kzpl6Lakl4tTTMHIb4yUssjbSLg
	olVoM5RQZNEpBCh41nNeptFEW4EXEGiviocNT60l+RWFDm6jaDM21BodfliepsHNN+h0s5rH9cl
	iYRRNFk5szqYGxvhXMvMKRg6atIDVSjxS3H+LRok+lTOIdBwJlWOfWf
X-Google-Smtp-Source: AGHT+IHqsOvfkm0NoySLQIwm20PgIu1++eFjQglP2vu3YdstNmTRycFfmHYYlymuN6Ezcto2U0UR6A==
X-Received: by 2002:a05:6000:1543:b0:385:e1e8:40db with SMTP id ffacd0b85a97d-387876914c8mr3724631f8f.24.1734022250298;
        Thu, 12 Dec 2024 08:50:50 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4a25sm4518264f8f.27.2024.12.12.08.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:50:49 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v4 0/2] arm64: dts: qcom: x1e80100: Describe SDCs and
 enable support on QCP
Date: Thu, 12 Dec 2024 18:50:38 +0200
Message-Id: <20241212-x1e80100-qcp-sdhc-v4-0-a74c48ee68a3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF4UW2cC/23NwQqDMAyA4VcZPa+jiVXrTnuPsUPXRi0Mde0oD
 vHdV4WBY97yB/JlYoG8o8DOh4l5ii64vkshjwdmWt01xJ1NzVCgBCFKPgIpkSb+NAMPtjUcclN
 CYbWtZMHS3eCpduNqXm+pWxdevX+vLyIs26+mdrQIXHBbUy1NhZoyuDxcp31/6n3DFi7ihgC5R
 2AiVKGoFFphTuKPyDYE4h6RJUIWRgqgDM29/iHmef4ADdtXqTkBAAA=
X-Change-ID: 20241007-x1e80100-qcp-sdhc-15c716dad946
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1577; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=BBhhYc6WiR9lrxb02YxPKhDO0cLFxCtxBdQvIJoPBZM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnWxRiNIn+O0vKaFBYIqig8fVqQg6iFcWFAi7Qb
 MsKtTzGbraJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ1sUYgAKCRAbX0TJAJUV
 VrA4D/9FjCuVtCYWL1NzbPmJ4SG5pwpxiXXPAYzUkBijxiM4nzDEN19c0Gz75XJkIaZnGbv5ezF
 b7bKJRjOU3PxvvE4eMJVLmDq8LYjxaQF6Z16+V6qlb1EHSl9wnD3xie0w303b2ZvAN1FkROdjMw
 UFaj4KRw28IFfh2P+US6So9kLg7S2rlbu19JOaOlKtg/d4Dq6fQ1gfdcFCSyGY0kX9TXxyoYmbn
 ma8RAVr9CWOMoYCsOgoYMPEG97V2Su8XIe9QWnMB6gKNFFkJB4zQclSgjWH4Y5QtN+/vgS4ysaN
 N6Ac2GDcpOZwydpC7xOjzEvkecSN3TjWtTG1+r738XmfTwyGOpC4slYzRlwA4zepOOz6feyd7BH
 JpFZB6rgDWGViAHn1I5gwFvzlXh50vKUYJfx4RWExebvjulYZau7IHrYMnCCkniw786X2QZWIEz
 IuZr+vHU1Ar1o6HOp961K2memMkuQ8yE4vj9Yj5xmNm9ygMW5dAJj+3lEorat+tbxTjV83vbRpb
 yJ85AfCzYd4ysX/Z7PLq/c/pjB3muI2L0KWPwUl6+v517JXvBtiAB88awxOVv83TN614M6RCO7+
 qUzhU6AiIafM0DYUEsRA7V2OT+mc479u638ZIiEnMGIWr3gdZnrAHyZBYShsqtNAB1vnfALWYBh
 GTAlHF/eJOvCQ3w==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X1E80100 has two SDHC controllers (called SDC2 and SDC4).
Describe both of them and enable the SDC2 on QCP. This brings
SD card support for the microSD port on QCP.

The SDC4 is described but there is no device outthere yet that makes
use of it, AFAIK.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v4:
- Squashed the pinconf for SDC2 into the patch that describes the
  controllers.
- Reworded the commit messages a bit.
- Link to v3: https://lore.kernel.org/r/20241022-x1e80100-qcp-sdhc-v3-0-46c401e32cbf@linaro.org

Changes in v3:
- Reordered the default and sleep pinconfs. Also the bias and
  drive-strength properties. As per Konrad's suggestion.
- Link to v2: https://lore.kernel.org/r/20241014-x1e80100-qcp-sdhc-v2-0-868e70a825e0@linaro.org

Changes in v2:
- rebased on next-20241011
- dropped the bindings schema update patch
- dropped the sdhci-caps-mask properties from both
  controllers as SDR104/SDR50 are actually supported
- Link to v1: https://lore.kernel.org/r/20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org

---
Abel Vesa (2):
      arm64: dts: qcom: x1e80100: Describe the SDHC controllers
      arm64: dts: qcom: x1e80100-qcp: Enable SD card support

 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts |  20 +++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 142 ++++++++++++++++++++++++++++++
 2 files changed, 162 insertions(+)
---
base-commit: 91e71d606356e50f238d7a87aacdee4abc427f07
change-id: 20241007-x1e80100-qcp-sdhc-15c716dad946

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


