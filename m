Return-Path: <devicetree+bounces-95097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4E95813A
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:44:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31AA02820A0
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0A018A952;
	Tue, 20 Aug 2024 08:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cUiKtWKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3176218A926
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724143476; cv=none; b=b7fHXv/kpufnW7ET726dTH0/hNAw1kCzaVoUR6W9x7+20KTJj3dGP5e2aaVsPsPxOrZ9j7x6KF8Lms+FvqpguQneq2W6kDht+YA5p0l0M+vyY5OW6icNJz0xy3AKE8kV3CL2v5U6g29DqinRL0ZkRrQF2nug85a5Vweczufk94E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724143476; c=relaxed/simple;
	bh=ihPpTKWtmQDqETpS/ko4Upn5KM57AFh71idg3PZivGI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g2/PU9uFbPdPfAEPpmqDdUwllhxuAk9KC1SjazFrxgXvSOnm4mZsirmUlR1eNLr3Gqf4tqx0duMGZt0FNmScTYWpC2aiBE3bnGVUA1bzO+vY/DRHa4ibBdsfeEDAIqE2/JE9csfEf7eRYxPROtMCVoowF4sGAsYy6Sw22+fG0m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cUiKtWKf; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5333b2fbedaso2221335e87.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724143473; x=1724748273; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W46dkPCLl0CsM8F741fN7/xHRWhTr+kY2TsBuUOfPQg=;
        b=cUiKtWKfDf2wF04Mgp8Xn6bgLt+ixeeTf8vhEYUk5Zfew0KarJdpxXZ3kAfg07niUy
         0MdufCzsVQfaUWUhndD0HOI7eAoa050owX5R/mAuHkT4v5xiuNiav8CvY0uXht9a00ry
         GbEhO1WK1xY/7o2dKB2sHt0ECTDcIuodR+1C9KUANFTX1WbyD2nK4FETDFoEfZAv4v9r
         QGaxigs41wBOUEClH7+cAsK6dzgv8Eu7+88g/81fKMD7pouG2cKTKILb3tZWhh8ZcqzQ
         2sWB7V9UZzSgznVOznmP87TDQ0CdY2J8XgL+7sGSlIUra1oQAPMtPCrpoXpBBBLMS302
         +TSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724143473; x=1724748273;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W46dkPCLl0CsM8F741fN7/xHRWhTr+kY2TsBuUOfPQg=;
        b=b0VeJiLr5yZaHAGXO51G2DxUlaSpEhgmdcaCZVTZo1sqK5Ubp7xJ/s2pCneT25bRB8
         uQqLq09oTBxyeYvP39U0dYHnztYPHoPZfrbtgQHGn3WxHSBhtRoxhv0ZdP7tqbgPZtPq
         A+8liEMANgrg0iCRXW5Y/oDM4PIm7Zr5YFQU2qyokZ8U5EacrLAzA9RjqC3PvolRdLak
         W4MepFM9dfjotI83uFn3Z1Y31lnZjtZ1eWG9DmbB/7Ezgke6t+0ghS43Bo00zHWg6J8X
         VeZSG89oPXcxRl4/LRDTqCwzL6st/0+Ty4UVz0nNse0HYbZcFpSvDYDxP5pMDZSPlrFH
         Xh+A==
X-Forwarded-Encrypted: i=1; AJvYcCUUxqlFs5Erml6cZ3GyRUNrbmEuk7XWFGVeB9+z0UwE3cOFn2gYS0CZWoXiXOCdDwhoh6VhFg8gQ4gz@vger.kernel.org
X-Gm-Message-State: AOJu0YwKizDXb4oEyFJXNBJVQdPTVfEFDzeegQHhkTQ7HdNZjjq/FfAJ
	76NRzdfkPcK1FarvJQt4OpcTv5mLXW3c8XtJE5R3YHSt+P3GcTbNG+BpSJnmO3w=
X-Google-Smtp-Source: AGHT+IEPe41tNiCcGsuD99PSXMjDgsX9VqOdG2fp910RJBAJZ/OA+XpJsjsmNl4MmpOY0ptJcDG4aw==
X-Received: by 2002:a05:6512:e94:b0:530:aa82:a4fc with SMTP id 2adb3069b0e04-5331c6dc90amr8003501e87.37.1724143473005;
        Tue, 20 Aug 2024 01:44:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8383946973sm728037766b.160.2024.08.20.01.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 01:44:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] dt-bindings: i2c: nvidia,tegra20-i2c: minor cleanups
Date: Tue, 20 Aug 2024 10:44:23 +0200
Message-Id: <20240820-dt-bindings-i2c-nvidia-v1-0-2763e9a9a1b0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGdXxGYC/x3MQQqDQAxG4atI1g2Mg0LsVaSL0UT9N6nMFCmId
 3dw+S3eO6lYhhV6NydlO1Dw9Yr21dC8JV+NodUUQ+yCxMD64wmu8LUw4sx+QJFYhl5lSK2YLFT
 jPduC/zMeP9d1A9gBYFtoAAAA
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=651;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ihPpTKWtmQDqETpS/ko4Upn5KM57AFh71idg3PZivGI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmxFdprZi2BhyVmuU7Hma8eO6WoTQIyR2Ju0ctv
 uN1HMRN46CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsRXaQAKCRDBN2bmhouD
 14YmD/41vh5UZXo8unidp9ve8tllo/opQ6Ph64+v1180i8l2usCbE3lZdg2/y2+CAeMukZemxhr
 Nai01YQhMm6gFyF/iZUjbCvw8AJ5Iq1Cb2msCI8HtWVqWNYNTKz5H0kbBjdGzFw6UXTBDtIIRhZ
 mbQwci271BWIQvLeBZMhoZAZWrhAGE4PMEOnpI77dJ53mlCB8ntPvfa6vz8R2nLk/yqq6JD8dFe
 F5blXyBPHAH9RBGfcbk7lN2qFdSqiFnTImsBU1DMizszApwQ9YlXKQvnOce8yX7AcRMwJxur4bF
 pF0NJylqaxgOahii/DBUIYkWhkeBdx8snF3sF4wj9LIod5G5Tuvic+spf1GPl9BjjwsKdtsEbZE
 TfZl9Ka1APmRoHMQmGO5Sno0o6qXizvbL9fWzdo7ST8kiSielD9Mckq4f1G/lE1Gb7jKH9TKNpp
 JYNH2RFsYPIgiTzsR90xoyCmmHXSU438ToU2rgHJq2nXuAqdzxLRMod6ouULSQvcKGimdgLe6eO
 uWkyQMvqPAF1FMkmaxhnEItAWsTUM9jp6a4+KBWfX9NkcD7ZDhli02syihjsJJGdU7KFx5uQLnB
 /+ODNOmAEpJ02E+ChX0eDGl0XIz5f4pqiTg7APQQDntcK2Ng5Phi4rPx13Jt7RiBrWvxmI5g2Bh
 78k2/UzZtM9cz6A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Simple cleanups for nvidia I2C.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: i2c: nvidia,tegra20-i2c: combine same if:then: clauses
      dt-bindings: i2c: nvidia,tegra20-i2c: restrict also clocks in if:then:
      dt-bindings: i2c: nvidia,tegra20-i2c: define power-domains top-level

 .../bindings/i2c/nvidia,tegra20-i2c.yaml           | 27 ++++++++++++----------
 1 file changed, 15 insertions(+), 12 deletions(-)
---
base-commit: 367b5c3d53e57d51a5878816804652963da90950
change-id: 20240820-dt-bindings-i2c-nvidia-895d89a18e8f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


