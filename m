Return-Path: <devicetree+bounces-73277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF008FE70B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3C842855BD
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3FCE195B3B;
	Thu,  6 Jun 2024 13:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mg3dRO4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF00195993
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717679052; cv=none; b=WjrBRCesw/87umdG0Xz//oCcP41Xg5uOwYenD4TJ7gQNhxo/XZhqyrxXDNTmj9Twer/OwPreLmp+j5i/n4sFHkD3acoBt39zkYm0vkSqM6M2MxPP+Oc7yLy5+bjHcRFC9MNqB7KMbRWqvqOxzYue/6rH2tsz3n0WepPSGN513Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717679052; c=relaxed/simple;
	bh=vzrrnrsPs++w+wuxgBiG4lQEuVgC7hadEd1CorTRM5g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cDJjeCGGojQC9MsNc6iISzZFzd8gJY7RK5l0NPtJMYMg6DPaIY12plmXlYym7d8T8UIhjEbn9U8iyfbg56pj/vYCio+dSNU4w4aRAQBk/hJnSmE7XoRrY12vudpf68zlEyEjyg1eAQJXTh049ukjhvCqriF96qLaMdqqD70mRPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mg3dRO4F; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52b9dda4906so1309249e87.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 06:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717679049; x=1718283849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AKOctS8wR+JRhxMzTY3nM1CjlScan5iuXQc5lzoQeM0=;
        b=Mg3dRO4FPQluNULhn0l8oeSoEw5r2xCbD254BzRv5u4Zhym5HtUkYfT0pCEa/DyazP
         enTpm1lMBUtKiOeQo40sb/+1eBwRl+JxrBjjdcJPznOwmce1tvTGtOUg74A+NTSdXSD7
         r6ficCVtQZNaaXd9WWGHeOKVpi1BQ2igSerCaMYGZGfgKDKcyWpryXUNIl9TKC2dK0Mr
         vr7FS6GkLfz3I/5qJclX4UouD3kP0LtEZa907lx7xe2gB3RCrtGWW03WjQFdHidRjlWz
         MOkQJ17AgZfzeN8vqnWkaaL83mXQQ8jAG3mR+fnH1pweeTez30UKSROj+d5feHwmamcF
         aPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717679049; x=1718283849;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKOctS8wR+JRhxMzTY3nM1CjlScan5iuXQc5lzoQeM0=;
        b=beKRP9zQgDKFbhtc5pMPDoBF/yew68Ll8UEipvOU7uYTHf0x40vXMYVMVFnRL+xkNy
         cHTTJQ8cVSPFhgDtK3RXkqFV1+i9lBiqxEGxsQzc92Rrj2WuvXCiNKJ+aWzHFVmBCxpl
         PE4Oq/KXaBBnSGa7g3kovobbIppD3nAXnOQG1v8a+mZCfMt9TbsDmOaiW/GKpmFI0hkj
         HoD0nV3PloLpzEwN2UzeRjg//epDjSZz61eavknROgv9kkFDTxx4yqC2wFg3SadOPtC7
         kcMyEztmqEFl9IKfB+Kfiv/mD09JqLdScRWit7zm1r29RLhVUOUlsn/R87pafHSAEq29
         0OVQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8Z+W3WzTyk8uOMOG7vX7aRVE7RokSix5+6q0WRIOPlPU6V+hugCRTMVX0upzg+I4KMt9WDEof28QNaYuH7mybJov1guWroGPAdQ==
X-Gm-Message-State: AOJu0YzVlJCqxpCENOB5tFV5bukgDRIgI47rbKhF6nc64z+qKT2JCUwH
	q6Cez4ynUgJM2S6o4ax2L46DO3ePtwCm1EBuX95xDQyCYxYL0DfNnKBrNiNNsos=
X-Google-Smtp-Source: AGHT+IHAkM82zSzTg7E23bIybOGdXK2SBfH/dbKc5oL32jns+PWFQHQwA/GQ3GcMHsqZEYS5Y1oAow==
X-Received: by 2002:a05:6512:3b8b:b0:529:46e:b2a5 with SMTP id 2adb3069b0e04-52bab4ce9d6mr5269249e87.2.1717679049193;
        Thu, 06 Jun 2024 06:04:09 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d49dfcsm1505286f8f.39.2024.06.06.06.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 06:04:08 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: andersson@kernel.org,
	linus.walleij@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	inux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
Date: Thu,  6 Jun 2024 14:03:21 +0100
Message-Id: <20240606130323.138970-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Add support for sm4250 lpi pinctrl.

Alexey tested this on RB2 with HDMI Audio.

Srinivas Kandagatla (2):
  dt-bindings: pinctrl: qcom: Add SM4250 pinctrl
  pinctrl: qcom: Introduce SM4250 LPI pinctrl driver

 .../qcom,sm4250-lpass-lpi-pinctrl.yaml        | 119 +++++++++++
 drivers/pinctrl/qcom/Kconfig                  |   9 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c   | 191 ++++++++++++++++++
 4 files changed, 320 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c

-- 
2.25.1


