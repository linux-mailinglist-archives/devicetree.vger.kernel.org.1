Return-Path: <devicetree+bounces-48670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A71873069
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AC621F21CD8
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9195D470;
	Wed,  6 Mar 2024 08:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tNWmsWGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484CA5CDD5
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709713012; cv=none; b=TyQTGPvw+zxYoTBKBKNMBvsLu4Ij3xXPCX20jupbtfs37m0z/P49fLGjHzcrkG/Z8ob82iCrr4so+fFwgU4LDlvP9Ra3bhwT3s/kpNcZ6i4q8Onft2VY7NiaayVj4uwdC6Ji8nTm6XJu59KJ+oEhQMScWu1kseIHolJq7hj1ZtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709713012; c=relaxed/simple;
	bh=/EMjKJh7RTTCREzzTjnONmH5VAO67zSYckgm8+w1p+A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BoiPqGpUOHDCTxLTq61cQgqRVPgLBGWuyGJN+AUEAJWA+LusbOS0ZdmRCJMA/uFiHpdY3UGQuXd+t59BAM5jxglnd94w6iOus1BdDMSBM47YEWQdMxyq6W8vW/hoeLcYIKwgZz40bS355zdiJza7yjOLi6G7WFNkmdDAN8LFmls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tNWmsWGn; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-512f54fc2dbso5735114e87.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709713008; x=1710317808; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IOVorbNDjmEYCRkOIJ6RfUvTGmzX7zzuHuefGqOjfNU=;
        b=tNWmsWGnh1NK6ZECYnf8J/WvUd/OO8WK1bsOO313Q3pufAQnWZa/tV/CByAvyE0OND
         6WTL/rhBKa3osrFcrTL3gYWhTp34dxu4x/0S5bFlIotfMLMlQmvtkLhUaHIqALUsrNk2
         4OTGHtErnjtKXKEeqF6cBRoS1YZH4RJ28DBl2Fd7pzL8ZDDZG6oahUZ4K6oz2QtrEg8o
         P7a1IoLURUKt1xyWN2cBWU4QPhUa5QTa2KRW1oJTXAeapjPAfxuBkAQKxqLi7TWP5Rxd
         MGA/gG5SpNtWm+f8PFMVN31Mezd5EaBGN5EzwD7QgNvoH+/G8LnCXKEI9VZuRxVHJEwn
         ysiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709713008; x=1710317808;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IOVorbNDjmEYCRkOIJ6RfUvTGmzX7zzuHuefGqOjfNU=;
        b=iptx8IkPbReDKa24HPrg6hgf4AJYxxyNu8agW3qrlLgdEEf4geCOg/FNYfDhRrqVut
         eTUwZKBweqw1gQuEATeN010LN8kCxh8/XesS3Y8pQxfprRAZY5hNGQH4GBbp6gd36Mt9
         8IIQ8KNt9UcysMewCpT15CiKGB8D/Dx91yTjK40bt0j+/dae/i/c+V7PnvRzX0B4ZWCw
         LJr18+N5lc3HkF0PJl6fJAHcXqbN3QZpMW7wDxq0tOVShkOjnAjRqD5YJyyrRi1u7EaY
         n5vbEoaNs6indRYiNI3oP5rGdSIjPz1O2B09AAE4eaoq58VT6El2UT0P3zXmMv+08bwg
         wfHw==
X-Forwarded-Encrypted: i=1; AJvYcCV7D83LQU4P8+abBn4AptuQshpNrL/0MpBtyyk3cI0BWle6DmVyRXnAi7cHR821XBTFYJmWTeDkTwgFCl2iOzVXZD9Se86b+OhUaQ==
X-Gm-Message-State: AOJu0YzhhLzl0kQ5Ybx33zNST9CKfLFBItLv9ViL69hYOJzTw1Yx8n19
	+5qi4dm4TqmWkVnJ2r+7tHhvZ/ctItQyIXzHGdvSUnijdtYZpe6SW0TCpSMmFao=
X-Google-Smtp-Source: AGHT+IFoKXNcKYuZLINzFqMTqbCvqGxphCUhFBrxErlA5QFN8wPG8IihwSx3yNHj5wiOZJOAUzxEVg==
X-Received: by 2002:a05:6512:2e8:b0:513:26e7:1b13 with SMTP id m8-20020a05651202e800b0051326e71b13mr2848069lfq.14.1709713008329;
        Wed, 06 Mar 2024 00:16:48 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id s9-20020ac24649000000b00512dc23bedcsm2162366lfo.99.2024.03.06.00.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 00:16:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH RFC v2 0/4] wifi: ath10k: support board-specific firmware
 overrides
Date: Wed, 06 Mar 2024 10:16:44 +0200
Message-Id: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGwm6GUC/4WNTQ6CMBCFr0Jm7ZhpQbCuTEw8gFvDomKBSbQlU
 wIawt1tuIDL9/e9BaITdhFO2QLiJo4cfBJ6l0HTW9855GfSoEkXpHLCufG5MYQty3u24nCwY4+
 VpYOlpj0qqiBtB3EtfzbuHW7XC9TJ7DmOQb7b16S26A92Ukh41OXD5KlpyuL8Ym8l7IN0UK/r+
 gNoSeg0wAAAAA==
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2186;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/EMjKJh7RTTCREzzTjnONmH5VAO67zSYckgm8+w1p+A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl6CZuucldOlm1luyQUFD+7gU157AjQNbYIEZc4
 k2wPW2lBZeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZegmbgAKCRCLPIo+Aiko
 1TU9B/9j5w0jL9XNxvqu1AflOwDGcSRKyvic9ybSvcGkVtS6OUAccbDdevCYzJaPhhIiWqCpcLe
 QksNPMXw8xGef7skT3/O1H9DZvwklOXTQI43aqvqolNtv+CjZJlJCylbzry5NXZiUzdJAtRb59j
 ZYVtoFxlk0a9NvHwiJdJHoOnpMGI88ierKkEuG8duA4AjYPoQoFQoBB7nU2jyyjhWP3Y3kJATFL
 KOab5ZOrO2y7JvOw8uO3X+DkCoXLqTMrK+gmnU+12kqYDkLbw7JByEfnGAZKyYLubrCBR3iWwij
 RY109AOxtH/aMLBKqvWboM6Ypt+J2+2MQmxZZfDeEo3a/dQq
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On WCN3990 platforms actual firmware, wlanmdsp.mbn, is sideloaded to the
modem DSP via the TQFTPserv. These MBN files are signed by the device
vendor, can only be used with the particular SoC or device.

Unfortunately different firmware versions come with different features.
For example firmware for SDM845 doesn't use single-chan-info-per-channel
feature, while firmware for QRB2210 / QRB4210 requires that feature.

Allow board DT files to override the subdir of the fw dir used to lookup
the firmware-N.bin file decribing corresponding WiFi firmware.
For example, adding firmware-name = "qrb4210" property will make the
driver look for the firmware-N.bin first in ath10k/WCN3990/hw1.0/qrb4210
directory and then fallback to the default ath10k/WCN3990/hw1.0 dir.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed the comment about the default board name being NULL (Kalle)
- Expanded commit message to provide examples for firmware paths (Kalle)
- Added a note regarding board-2.bin to the commit message (Kalle)
- Link to v1: https://lore.kernel.org/r/20240130-wcn3990-firmware-path-v1-0-826b93202964@linaro.org

---
Dmitry Baryshkov (4):
      dt-bindings: net: wireless: ath10k: describe firmware-name property
      wifi: ath10k: support board-specific firmware overrides
      arm64: dts: qcom: qrb2210-rb1: add firmware-name qualifier to WiFi node
      arm64: dts: qcom: qrb4210-rb1: add firmware-name qualifier to WiFi node

 .../devicetree/bindings/net/wireless/qcom,ath10k.yaml         |  6 ++++++
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts                      |  1 +
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts                      |  1 +
 drivers/net/wireless/ath/ath10k/core.c                        | 11 ++++++++++-
 drivers/net/wireless/ath/ath10k/core.h                        |  2 ++
 drivers/net/wireless/ath/ath10k/snoc.c                        |  3 +++
 6 files changed, 23 insertions(+), 1 deletion(-)
---
base-commit: 596764183be8ebb13352b281a442a1f1151c9b06
change-id: 20240130-wcn3990-firmware-path-7a05a0cf8107

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


