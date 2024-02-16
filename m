Return-Path: <devicetree+bounces-42540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AED857B47
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 12:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02B131C22066
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63C459B55;
	Fri, 16 Feb 2024 11:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WHOEMjz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C73E58236
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708082104; cv=none; b=NtAunprMJ1bfCWlpaVoDdqSpTVQFpzHApLKa0gKqEDwZxZfZLuL7orunvtcjlzEmdjbSX7F0t/mIK209YCV9HXWknn0AtPLedLtMC04Mr9tcbR/0iEU7JIXmI2MBpA01mVQ4NxpUYk2WNyDP+x4NIHc3eeKC95QeCwPL07Huhq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708082104; c=relaxed/simple;
	bh=dyagY9TT1s2Ti/RT+/lrYSOVTnIrUecRzU/sMMuqxi4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nS5AWHRJWtDDDnIwE85rCV7fO6bYs2SAfXQ9sMfk6P8lp0m2Z12rKnvwy/Vrj0pZHmnYgGzw3ZQeGgVVW6T1aOPszBO5iVwxYha0RW5vO8jZ/Vhg4JH1h8pDmBSFaVhnyyvuSd17yy4FQRX85nz0Sh2IpJPlcMtikFHwvD3+mYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WHOEMjz1; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5114fa38434so2218909e87.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 03:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708082101; x=1708686901; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sktCA9+0GCCbCeS3d2LojLW5/mPx/Ja7/BKr8Lzpzq8=;
        b=WHOEMjz1iDFK+NSTFWvC1EnQ2ssWjHoY/lO3HCpDXLXqeXHutPFsgEiHquvAf3lcyR
         As58Zdb5ya/E6O0zVGAzYLKxQDAKNQimbproq4tjxcWTogU4Kl06B36ComKMxS24GDu5
         4/Ys6DNLl8CQArTNLITiHcwYWJocq8Ac3eSRpGOvVj4sMU7tQiv0cjzDrcPFEwuVG0P9
         h0kKTv8LJNR04vzFuyFzNfHbfozyTFIMKACmITYmZ9GbzGtAB5VhX90rB3SDYTcUP6Sx
         5WtxcuhL5uNXKeDmLn0tKFyKYkoYPnYppFtUvqTQV0LP5h4rWUWmKSLWnRf1zxukXQe3
         gSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708082101; x=1708686901;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sktCA9+0GCCbCeS3d2LojLW5/mPx/Ja7/BKr8Lzpzq8=;
        b=fgPjS3dy9o6eQcPFz/DvOXO6axG7H6o1L/g25jiAxqh0JADpQ33VfxPFbqSrunXnVs
         qDdhbm+h5Raz4a2jJakjxjmNgjKD+r/BGGsfXrnuqNMwRiE3SmUFacuaveyvRzFCV6Ja
         N9WUX0BQhsj6en99uYNt3WjbtsTKmrWe5otgM8qJXfHto2Cgq8KmUUG9VcQJU4i+Xlfb
         3OSYzVtMWJVMBw/Wq26lQ/5Hr2h2jkoDRQKBNuZA16rEmKgPswHj7D/ddQH3DiOX1OxF
         ndUsNASZ0Tngq80w0Sf9yqTCe+WpMAt1tunbjGhgw6XM0rmQ8CcpzObzBUjKs/hRAm7B
         G4/w==
X-Forwarded-Encrypted: i=1; AJvYcCV8q/DbyueKAPBYDEogz5b0iIvnDJAonTlHON0nZBuY/aSl2D4UPkg09MV7JyceLp2Bb0Cb09CuUIlqg9iVuOTesRxII4J4NrNVAg==
X-Gm-Message-State: AOJu0Yy5mUGlrXEf+MySlXwkd58kNTNjfe8Vm1cLM44+zCH51ZSN5qvD
	F3zLeoSdjjjkQ7hs2JTCUEl8QnE1YEaLh0aLBcikF1wBAVPgCUjwrdsp9tcIY0E=
X-Google-Smtp-Source: AGHT+IEEhoVrh2khLU3oOyoXaqHvzHU7S+M7fzZINOA/AV66W1auil2OlcA4pgLVAJgBd+1QfNvFlQ==
X-Received: by 2002:a05:6512:690:b0:512:8a57:c87a with SMTP id t16-20020a056512069000b005128a57c87amr4115585lfe.7.1708082101115;
        Fri, 16 Feb 2024 03:15:01 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p2-20020a056512312200b005118eeb18b4sm573405lfd.45.2024.02.16.03.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 03:15:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] clk: qcom: drop the SC7180 Modem subsystem clock
 driver
Date: Fri, 16 Feb 2024 13:14:57 +0200
Message-Id: <20240216-drop-sc7180-mss-v1-0-0a8dc8d71c0c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALFDz2UC/x3MQQqAIBBA0avErBtQE7OuEi0ix5pFGg5EEN09a
 fkW/z8gVJgExuaBQhcL51Sh2wbWfUkbIYdqMMpYZbTDUPKJsvbaKzxE0PbOu+i8HmwHtToLRb7
 /4zS/7we2L2AvYQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1024;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=dyagY9TT1s2Ti/RT+/lrYSOVTnIrUecRzU/sMMuqxi4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlz0OzvgxaUwVsyg5fRoAXIunnBA0XrJLGgHtY/
 mx79S5gmN+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZc9DswAKCRCLPIo+Aiko
 1fV4B/wOu/bgloY9iBp8YiGAVaKOquKHyfMUpHjcNGAkNGfJGXiKnm2O3NM8XKFfYLGKAAjMHGV
 CuZBiHJYTthocOxzl58mSKObD42T+YV4/32jDBMmuksv421Z/1A/wZA/PFhMeh8rATNrUHiqcmq
 21o2dJ9bRoH91JncHRJJ5QdSQKS1JvQRZKBDJHDTN/Yx8iopyABDzl6EiVIOKDFAegiwy05bXJT
 fb/c50Gk/CsUq+5ngdRLniz7A5OB9WCNxXAxKJ9qoZNOB9qvnqu3bu/VFGPAYqw+r25hbqlcvgD
 CIS7qgzlbSb3KaW/27FqbTITi9G3/fs7+0RVlKIFev+avkbn
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

This driver has never been used in the DT files merged to the kernel.
According to Sibi, it only worked on the pre-production devices. For the
production devices this functionality has been moved to the firmware.

Drop the driver and the corresponding bindings to remove possible
confusion.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (2):
      clk: qcom: drop the SC7180 Modem subsystem clock driver
      dt-bindings: clk: qcom: drop the SC7180 Modem subsystem clock controller

 .../devicetree/bindings/clock/qcom,sc7180-mss.yaml |  61 ---------
 drivers/clk/qcom/Kconfig                           |  10 --
 drivers/clk/qcom/Makefile                          |   1 -
 drivers/clk/qcom/mss-sc7180.c                      | 140 ---------------------
 4 files changed, 212 deletions(-)
---
base-commit: d37e1e4c52bc60578969f391fb81f947c3e83118
change-id: 20240216-drop-sc7180-mss-47686f681943

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


