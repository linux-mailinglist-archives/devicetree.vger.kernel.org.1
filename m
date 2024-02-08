Return-Path: <devicetree+bounces-39641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A649A84DD4E
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A0F01F26B69
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 09:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BCCF6D1AE;
	Thu,  8 Feb 2024 09:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="dZiajh4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C3B6BB5B
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 09:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707385996; cv=none; b=dRY3yhz0CVMAG/S5/Z7UQjJsvEIYahmK/cXfVei175BZX92h1Dd9tzLsx5gzYI7P8dDbZg7HB5Vf70Yy84eTGtDzD3E5TFim9/Aw4roBINUXePgRB1bTylsaYud4KJcAg//UVmLwcbPUmeJRptuKw5hSpkqZgYtgeq0GhKmWUZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707385996; c=relaxed/simple;
	bh=18SG6NUCNLXQLNqsHtsTIjssjOlE4YxcB1dl/F3+n7I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=D2Pu6V+zXinkwcGwHdnqituzpezleYi2HKB24/xfTbzCBHPyqj0F62ZHRc+QlzURi7wmqxHHtYtlsJNnFjQeRA8JYKl8ri6pYYmD+1/+6xXpS6YQCfTOIdaiOTUcYbIpDZ8jeQwReX6TliAeXWOcK48aUW+mgu5y6lV3CQBqrl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=dZiajh4e; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d0ce22b5f3so12308071fa.1
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 01:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1707385992; x=1707990792; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MMggITsyUYXMSRsj+SW8m9RDh5vOxy0FBhM5/mNSO2c=;
        b=dZiajh4eiJ0thdU632hgS3e1Q+TVpkryOPbvlK1Mzx/RQItTRNWuHzXtH37fgMaBdq
         zxhtu6AsHsxz1ZQLWLx9kRSAGKbw2WBpdE55Vy+ICnNxYtnrEWw5ChnZC4lrLZwb1IGN
         X/n7sNQKJtoHsgbydiOqAOFpdXlz+M8DXBeikg8JSGPjL3BqEZJPdoLGHE+k1DMnxFHJ
         XCkFz3JM0LmMHGQJtBDq2xvFpUwMzdhsmlkcAvr6K7zxe+nJXwuszbCzFD4OlVnyoTW5
         raDxG6oNWjdN49yNnbUUzd8xGk1SYD4xvkDDiOB/9Sh/ysHPo4bpeekf/cUARY7rbbMW
         xHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707385992; x=1707990792;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MMggITsyUYXMSRsj+SW8m9RDh5vOxy0FBhM5/mNSO2c=;
        b=VXbhH2eFDPbMKmw+aGwHDCxY0a+xrI356n0m6QhXLjA5jFt9aQC+YNUYTUX2jx0wQC
         NYrKmKp6GpcaHN1InXPJr1K7EZ3un5L98bv4gET/GWGOBWQCL1t+jd1LAcEOVvs/wfW5
         7K1LQCQmJs36u7SpQIsq9MYoDpc6S95X3MG3xALoeqpz6iHMHjo98tGiHW6Th/LmNkum
         2g4+YYVw+nGsyUAeTOQ7SeFvyLVK3mqqx+ee6SRixOk1aCppK/5QRCf8X7y/nruP8VV4
         o+VQTps0Ucj49Qgzy+sUl72GxGcgB3ioQ/jVrAfPackzXTQq35WRikqEUy8DizrM/70+
         9fMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh2bvjTdJ06BCQNo0RjYQegBS7KSH3xKEDfe2H5/wlJ+W0h7FciTx2HCDCdJjlYV9Xk7k37yACBDmRECLdJQRcsx6nWYNjzSWQ1g==
X-Gm-Message-State: AOJu0YwrQKJ5A59N7Eiq9lf9/i7GbjMPPYTGpRnT7/m2q0hGyyapMBvH
	/M4dgzHIDkavjZVYvuIcQZ0g/e9EQIo4vUsYI6XPlQKcB58dtEf9ITeMaTTtzcQ=
X-Google-Smtp-Source: AGHT+IHTG9d+/k61DJi/OYmrjvhF8N+qrNdTM1lT+zbdR8F2YzeqnMoHHX0Vopf1tTkA2OP4lzO/nQ==
X-Received: by 2002:a2e:be0f:0:b0:2d0:ca58:c434 with SMTP id z15-20020a2ebe0f000000b002d0ca58c434mr3365433ljq.21.1707385991846;
        Thu, 08 Feb 2024 01:53:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVq4867nsyS3k44XuZpjhQuprdpRzUlIs5dAgaRGDus76kjjj+vmZhE1+mUV8ttj4EivYRE9/IHF5TW/u0vU8blw58Iv4bwiQ9DNkkZ7BG+al1DgK7cZ6esd66HSuXwDNg5MtTJigxvgBqP8BwRbo/f/p7FpSskyVueyck7uBZrD4Ivhaiquty0L9CRwoqqUhBF81oEG8EPpSSyYqKGEaf7TsEa2mS38UuL4TX1HM+HOPWUwG2CHXbFcIAzT0d5XkqIU/82QEH/8BMTjo8pYKF59r01FlUGL66vC18MnR/PAFv6SOOAA8M27EN85L5i1lH7nVTwSo/74mZ1uG01DWJ9iiLCGzf4P2t8Fdgl/Yj+L21TIJuIt93zBmnF8E4UZe9R5NW3+fz4sa2kDP71I1uXFuQjhk28frJgqDGC22K4otGaeGqtoU8lp9ebCG2V4UXcMehqvM6KGCq5YU0+NB9Z1ibwO9m76PfGAO6uTJlgQj9dIUPgT2804uSFjrPMInB14nZ0fPeEDhuLZ7g4CTnf9nMFDwR6DcPYR7BMr7PlwYfNm6MHYeT5dT1h8kAGgE3rfccbquMVi/18FSj//v/SWcjTNsq/Sw+0D892+gX/LmOmuW2pRGuD5oQxsLcw5u2FyxwxgzN3+L5zP3EJOAQ=
Received: from otso.luca.vpn.lucaweiss.eu (ip-185-104-137-32.ptr.icomera.net. [185.104.137.32])
        by smtp.gmail.com with ESMTPSA id d20-20020a170903209400b001d8f111804asm2956685plc.113.2024.02.08.01.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 01:53:11 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/2] Fairphone 5 PMIC-GLINK support (USB-C, charger,
 fuel gauge)
Date: Thu, 08 Feb 2024 10:52:31 +0100
Message-Id: <20240208-fp5-pmic-glink-v2-0-4837d4abd5a4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGCkxGUC/3XMQQrCMBCF4auUWTuSSbWKK+8hXcR00g7aJCRSl
 JK7G7t3+T943wqZk3CGS7NC4kWyBF9D7xqwk/Ejowy1QSvdktYKXTxinMXi+BT/wLui4eAM2RM
 bqKeY2Ml7A2997UnyK6TP5i/0W/9SC6FCbcidubVdR/bqjKQ4Bc97G2boSylf5oBZKrAAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4

This series adds all the necessary bits to enable USB-C role switching,
charger and fuel gauge (all via pmic-glink) on Fairphone 5.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Rebase on -next, drop applied patch
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20231220-fp5-pmic-glink-v1-0-2a1f8e3c661c@fairphone.com

---
Luca Weiss (2):
      dt-bindings: soc: qcom: qcom,pmic-glink: document QCM6490 compatible
      usb: typec: ucsi: Add qcm6490-pmic-glink as needing PDOS quirk

 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 1 +
 drivers/usb/typec/ucsi/ucsi_glink.c                             | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: d36e89e4c25c15302eb1820d45680f765847dad9
change-id: 20231220-fp5-pmic-glink-b01d4fa1c7ea

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


