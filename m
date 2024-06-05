Return-Path: <devicetree+bounces-72642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2988FC716
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F1CA283CFD
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5084818FC6D;
	Wed,  5 Jun 2024 08:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nEsET9M1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132E814B951
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717577768; cv=none; b=chr2eQvKdQAxUqKiIvj5OSuYw1N72UELLM97hPBY8tvJvyPYNUWGxRPfNV6IqVbuhq7lTjy1NS6TYr1NiL0th1zmaqDEajK6RNsUc/ouh+rQLHtiECSZdaYl3GMwsXyOYqC8p81oa2lA2Ro/kmYpvdjMBl3yBWffxd9mB15T6Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717577768; c=relaxed/simple;
	bh=xOYeUtw/UrZkiwEhcQuZluKYKEI9dexCcW4rGGwOeHc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kaOFUdKO9c8omwznzHWnZyU2KoAoxY50YYQlurllzvqwZ16AoM1U8mmLSdeycDGarR557VqjkdVL4iEoxgOOklDlkI4+In8YYgCSONK9mZ9wztCOBkYj/AuUeH+FbTKtJRwQtCoCtnyM4bfzvcfM+Nf5XRYWqanmMJ85n0AfG3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nEsET9M1; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52b912198a6so4242939e87.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717577763; x=1718182563; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lHLl/hCHdDCG5NBFj737FnwNcxJ7NpWDQhOF9GIyiOU=;
        b=nEsET9M1JQtWU9yjdArPwN4rxULHKjCfJsFAlk1T2gbXpo6g8SPqAmK6gOD8XNhhOH
         vmGBJjda6ilMX5jfb8bvhzijQ7Hr9p6TQgG+a72MrhmUPtnAUY8zlNrOBC9wTJaaOWU3
         tzvKi2FECxwchGuS9AfXvdhSy3uP6UzFUV1o1lIgOvG7B4ekgBO7BlR1z53eiAX7aq3o
         CmqF/uqQmXrlwZOiGAIC0IAowkCA8uX9mpiCuY73lIvQahCywv3txpQN8btKsn6JXon6
         3oRDsEAUirkqAe8okDhHwSKgr1Fw6WZRo7QCCO+iCUxFstWyqfvMbegvrniPTrMAyFyF
         tqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717577763; x=1718182563;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lHLl/hCHdDCG5NBFj737FnwNcxJ7NpWDQhOF9GIyiOU=;
        b=G7zaAY82Qvbyb7ZuJvVIKi1Xz/3OZZaIyxi8chrqmRKSGgKUmjPEon/kwhaed/Tby4
         wqBgWK9p+UyR1BO73N6KB7IlOuj6LFPCmq33lHoH9tipTK1m16xHmBl18RbuGNV3un9T
         wpkVs3Uhs90uOi3r0YZOxvJbSrV+IggahD9Xlb/3G+WhEisUKmtAcDPJttiB3h0w2tOu
         XrU7+9xRqRt1uSYqUHfBlvp698K9HzH/IrlA9gfUW9aDKbOGGWua3q1Pd6n7FmLK4CX3
         LMW0up756+1N30JC8dfcJrmCVQJXI3nPTTJ2SMGNw9q+KfxWZuhhku57KnqdviJ5vqaM
         sQ2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVFEADSv7wybhRYy4TuziOiL95QYDqZa0R7nKcFlbw/sghbt/cpyiovyMbY0Tl1pEe0skMosAOGXxyr+qVVRO1HlFLrANqyuaL+lA==
X-Gm-Message-State: AOJu0YzJk1RfTZyntDIG1p2rsioPAB7IHuOWBbgIk8dRb7Wcw/9MJ0pF
	eYHdXgQ9zlamAv1zjxmcQGVmOQ4qssc23ohx1uQ2p8vSfJQ/In57VumFyxVUXa8=
X-Google-Smtp-Source: AGHT+IE1f5FanRJ1v9H2+kc+wOL32amVvO+x7fFrCJfbkzPiFrWWTdUh3tLFQ9ZbmhFVgr9EQfgPOQ==
X-Received: by 2002:ac2:5227:0:b0:521:e967:4e77 with SMTP id 2adb3069b0e04-52bab4e8b99mr1318178e87.28.1717577763183;
        Wed, 05 Jun 2024 01:56:03 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3f55dsm1715321e87.72.2024.06.05.01.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:56:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] arm64: dts: qcom: switch RB1 and RB2 platforms to
 i2c2-gpio
Date: Wed, 05 Jun 2024 11:55:55 +0300
Message-Id: <20240605-rb12-i2c2g-pio-v2-0-946f5d6b6948@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABsoYGYC/3XMQQ6CMBCF4auQWTtmOiAIK+9hWCC0ZRJDydQ0G
 sLdrexd/i953wbRqtgIXbGB2iRRwpKDTwWM87B4izLlBiauqKYK9WEYhUf2uEpAV1N5ccPVEjP
 k06rWyfsA733uWeIr6Ofwk/mtf6lkkNCVXLbUmKad2ttTlkHDOaiHft/3Lyn4F/utAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1151;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=xOYeUtw/UrZkiwEhcQuZluKYKEI9dexCcW4rGGwOeHc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmYCgiB/VtaFHXC/qtLOr4Qw/YA9dgjSlyStAZl
 fsirDvhCFWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmAoIgAKCRCLPIo+Aiko
 1SUbCAClRploP4ik86pltL/NkWfnLhFLBydG4je7rHAnCrj7FalYpiGDzOCGVUZ5NblS8jPCnDT
 QMW3qy9LwM3m38bf/ZiNKL7rvH6JqoBymyl1vl8We4zFJOhfto4S8zbLocIhlI8+Dm6bbfakAES
 7oF0CY7DV0WQD+0Oz/Cxg6qkfxEeSjn8+B4taXF7TY88QNU66WbH96+w4juBheovolOeHC/yR8v
 IW+JDB+1j/Rptvd1BhbHgF5XShrXpvL8JqSWrDGKyG6ryRuubRRobl0NQmh+xJHXnDpgXJ516r1
 mLFejs5CeviJaMvgrBU+E5IB2WATMpCxrbWipw86WLrkspVv
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On the Qualcomm RB1 and RB2 platforms the I2C bus connected to the
LT9611UXC bridge under some circumstances can go into a state when all
transfers timeout. This causes both issues with fetching of EDID and
with updating of the bridge's firmware.

While we are debugging the issue, switch corresponding I2C bus to use
i2c-gpio driver. While using i2c-gpio no communication issues are
observed.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed i2c node names to fix DT validation issues (Rob)
- Link to v1: https://lore.kernel.org/r/20240604-rb12-i2c2g-pio-v1-0-f323907179d9@linaro.org

---
Dmitry Baryshkov (2):
      arm64: dts: qcom: qrb2210-rb1: switch I2C2 to i2c-gpio
      arm64: dts: qcom: qrb4210-rb2: switch I2C2 to i2c-gpio

 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 13 ++++++++++++-
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 13 ++++++++++++-
 2 files changed, 24 insertions(+), 2 deletions(-)
---
base-commit: 0e1980c40b6edfa68b6acf926bab22448a6e40c9
change-id: 20240604-rb12-i2c2g-pio-f6035fa8e022

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


