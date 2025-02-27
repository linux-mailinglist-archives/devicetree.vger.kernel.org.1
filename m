Return-Path: <devicetree+bounces-151936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF3CA4789D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3273E171F9E
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509AC227E96;
	Thu, 27 Feb 2025 09:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QD7VLcot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB88227BA4
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 09:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740647086; cv=none; b=iQEhLoQ+vr1RKVOLcmeCOpTXLlrhNrpvfrzwsveMp7cH1aYeaKob7vrTv45HrntjZJtgcZDV8q6c3OZCFTLkKW73COzgNC5LWnn2zErca4OSresoLkxDEyFPh9qU2hGKMgSq5746/oBDjH04b3KiGQ7PjTxXR9jFXfvMbgEvU2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740647086; c=relaxed/simple;
	bh=W311rDcRmH6PDIJt9aRLijFB9RcPoPN/7wm55jPU7jc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IWfyPnUq3VgMkyPMbyfbT43IiUCwyvkfIv1jeDuj9pVaM2HoTH/0gHeAvgPJilphw4saEZNfJIsm2N4Se27Lkd+VHxI1TpdRnr4ouSuj3ZMe0Fb/bnF6O9gRafHzyWVJS/ShVLWnQJtdxfHQeTwRX4ts8cnXcV5mk5a5rYDylNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QD7VLcot; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f488f3161so345451f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 01:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740647083; x=1741251883; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oPnXeVyDD3/a5I++Wm32lgrrYtjljJd8QYiSNWIyzIA=;
        b=QD7VLcot3lnNg3oh8MtcKvvbBSTxl7tHnN4xUkeRPtiRQjKWLAf9pvzjcw1Oj9iAxX
         HxAh8ivpVR7rEFQ0ipGXnsMPXt5L9JQbMe3e2EpgJXiOzHLOCPO/2q0VLjECgz2hI2JU
         lhEJRTkW4nVqUfRr+LGlJYGMDlFCC+eMXevT0EH3toL26RCE0LVZN/LlkuQOGhytkXFC
         txqZPPT5H0jpope+WfyOdPgQep/gMlVEeBzCZYppp+ENWXTTz2pJFgHoIAf0k6fUl+9o
         PruXaFc/76gYlBkFCiKMnv6Q2RYTbTGf7MzWjvCVHoFCbHGodWdV5PbjXOXPVPotAuy+
         cWCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740647083; x=1741251883;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oPnXeVyDD3/a5I++Wm32lgrrYtjljJd8QYiSNWIyzIA=;
        b=LtOORJBtzcnGex8lJovSe94/hj3TYy54Yp0UalyDzzHjCboHB3+NEjlpcR34OOMVvY
         FDVAF6TEnZZ/FLzfiNF1oUxaMbuhgHkRd75jiigMP73GWinnVgSMOmQAxVZf32kLWHpQ
         Q/9uxBEImyAvx1zhV2m2gzY0oKpAyVs3Cx9cK0Oh3g+DJMU2vvroapxVCz/+IYrRu6fi
         tU0NDOzeMxjTX2RgcLvxCCVg3srfKZ57Sl4jVk7/2VajvabcjT/M+nOQOPcO9NLlbnJu
         H0eQNGKTA+90j29rMXO31+xScn/kH8/+6yfvMO1YN06NskC3s9ilx8+MB7DyfPMeodBL
         R2Tw==
X-Forwarded-Encrypted: i=1; AJvYcCUfBHhKmaWRLZky+3z8SJQJwBIgmkCzv9ggIHt2j5ILNtD1gX87JgiGlsnl5/ka6aRwr6PhIJqTHYxQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyyLRAEDRJD1/IK1152VNZFLNUwGdtaEd7cRyZZXjuT/CbFaAtv
	WD37BfBEL9PgzGJaQz+NQA/Gng/9YBuF1zmSQsWs90AllTfbz5pnKhzbfQ27sAc=
X-Gm-Gg: ASbGncvqpElVEk97gXGrSyUPn5QSUMbwCZ/M8fRvglGTtdzxDHdb7MP+LyM7EdzZPuh
	h/oKCgVgfvWF0izweg4buC0u7sppDmMIONQsdP3VbdlD+azCsrJRsY8t+K3QhVppLH64s/PLDR/
	0hdHQuGkhbYdWqeITJaU0PGPHA/biI3oL2e3OV7zU40A7BOiFJwFhWCC3VFRMnr7vtUDlS0pBSg
	bORIbt9TbHjF2lmxOkjjEmNjf90LbMN0kA1qGkpl71rX5mcfEMbxviJnPYgr+cAm/QsoULJF6lI
	y0vi93//uj9tlr7F1X847yfZGn0XNMjh13QlhCy5W7A6x7E=
X-Google-Smtp-Source: AGHT+IEjVZEMO7C1vxZUmqPDIxnQY1ROt8FRk1nzun9gPfCYsAr2tDVzm73X6hIS3+0qy3FLVMoGmA==
X-Received: by 2002:a5d:6dae:0:b0:38d:d946:db15 with SMTP id ffacd0b85a97d-38f70773086mr18953870f8f.5.1740647082797;
        Thu, 27 Feb 2025 01:04:42 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47a7b88sm1362380f8f.40.2025.02.27.01.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 01:04:42 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] arm64: dts: qcom: sm8650: switch to 4 interrupt
 cells to add PPI partitions for PMUs
Date: Thu, 27 Feb 2025 10:04:38 +0100
Message-Id: <20250227-topic-sm8650-pmu-ppi-partition-v2-0-b93006a65037@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKYqwGcC/42NQQ6CMBBFr0K6dkxbgkVX3sOwKHSASYQ200o0p
 He3cgKX7yf/vV1EZMIobtUuGDeK5NcC+lSJYbbrhECusNBSN1JLA8kHGiAu7aWREJYXhEAQLCd
 K5QoKr25s+9YYZ0WRBMaR3kfg0RWeKSbPn6O3qd/6t3pTIMG5urfK9DWivT9ptezPnifR5Zy/l
 0UdU80AAAA=
X-Change-ID: 20250207-topic-sm8650-pmu-ppi-partition-1e9df8b877da
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=880;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=W311rDcRmH6PDIJt9aRLijFB9RcPoPN/7wm55jPU7jc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwCqoH1Z9ovNS+vK/O7kHkSt9kBvGgEkdNjMou8IT
 3z9r3KCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8AqqAAKCRB33NvayMhJ0Vd3EA
 CyDf0/pHGqrLmfNe/eagJmtcUw0KK5SeQ2PHaeionUmO0Qezz/txx0yeSydUI+UOT0pefSHIxlGauv
 Ao3O9cIwd+zq4G0ffYl9PYEBUeXHaaYcKxP3hUT+yKOPSmv6GZzxkKu1HGlbaLfsPgkAaVv3Gaq2kI
 ca2LaJMhFwxGhpZihDefxOG7vwuD1ewBTmlMgDjnguGWgA5F2xYp/delBk96EJ5ZTPuA9xo17AtIY+
 0r5y2l4U4Wu6CDBV/nZkLD6P+uwhRwj1Hvuvtc7ZTPMxwiNGKcswT5vr0OINRPneY68IuF3ZEvKrd9
 RB9Kx5z/I4aBtj8g6jf2vzvDOdrViKCpB0mDGqveeSpEBO5b90aV9Kw+CAeUXpm2HbwErKolRGn65L
 7hmK4KDaAW7urtM8wQHu+zTiMipSMohJTnFqXpMS5FiJROli7k7cGfyBY8pZWdrCu2K2mTcrZWxqFw
 7wXNmFTGupXz53lunoC1NLRczCVKP1VhNzcJ0BVtdZi6H3U5ZCXeGsYs0X8gh6R042Tmjv6XLZqZub
 W9Ha7idGmGhOnqyfiHICJcUqli5q7jpcGRTw7uKtEM/HFer0/b563AKT848BD/xNYwYC3rPvwGdSBC
 aI9DglCtJ3L3oFeBq2PYNi2bSbnKidWsTqqk70H7fLs9lkp6tA632A7VE5AA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Swich to 4 interrupt cells on the GIC node to allow us passing
the proper PPI interrupt partitions for the ARM PMUs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Added Konrad's reviews
- Rebased on linux-next
- Link to v1: https://lore.kernel.org/r/20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org

---
Neil Armstrong (2):
      arm64: dts: qcom: sm8650: switch to interrupt-cells 4 to add PPI partitions
      arm64: dts: qcom: sm8650: add PPI interrupt partitions for the ARM PMUs

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 556 ++++++++++++++++++-----------------
 1 file changed, 285 insertions(+), 271 deletions(-)
---
base-commit: 0e2a500eff87c710f3947926e274fd83d0cabb02
change-id: 20250207-topic-sm8650-pmu-ppi-partition-1e9df8b877da

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


