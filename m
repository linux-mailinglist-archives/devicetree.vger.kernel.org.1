Return-Path: <devicetree+bounces-255170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D164D206CF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E7CA13015BD3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE1592EC571;
	Wed, 14 Jan 2026 17:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2MhFrzc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4842E92BC
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410561; cv=none; b=gS9qKAkTM5mbi2P9l7gRYEisVW7lmm97A2GjARCZpYWfNhigHvz1j8+Jq3yZdGX4j6D6lmhX4lXtvpQpVK6OjQ4CMQtdbwmFlM7FmShR/fNHfpxSCk4+2N/WDJuNInxyyOZRgfUHW/Q76IXEQvtyLNIZdkaGAlHqwsUcKOm87Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410561; c=relaxed/simple;
	bh=osL3XON6lRfI69E18cOlW4Vk5fOS+vLWguNhE5gZqKM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AwTs3rvggM9KuMPGjwKd4ecudONHV3ZSFza4f4TE7BbO9rw/yz67yliYgAD4UJGYLZfnknN6z5h6PaBej0NPdSiSFPNGCw0Tr4n0AwOxp0M6pVjvi5pgA9yHNwveyr0T0+ppWR4e9J/9qzq+aQDYFcW5QAxauPAZrJk2LuCm/Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2MhFrzc+; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so379725e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410558; x=1769015358; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=reYbQywtfs6l3YId6TEn7g/nU2+zvlCK5bs8kkfE33Q=;
        b=2MhFrzc+/enyJU0oEKJkaqEKOrHoz8AuQQspLshO/dNVkJgh6TLn1t7Ksksv/8yFK+
         Rowc8fA/YSyu3vzDCuDdDeJXZkRavRGpbSuBMo7VZdzsMysLtam8hcuMPn3vdwhrJ7CP
         TgFiO68YTwqHVVVIJVTG1qC4VW87234JSrDSJYZkkaB/otWVAE454kZrLh8wfqlGEJyM
         qj0DOJKKoSamsrQxolMStQY7D+TxB1d4siavJrJzLpkdeXCxEHskUu9FOixVlX7QrSbt
         3BQMiebBE+EILuDOTNx0IWn01QpGV4ZYGBfxauS+YqY/n91f/fIrJmk0WoK/mf3ACcRo
         Wavw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410558; x=1769015358;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reYbQywtfs6l3YId6TEn7g/nU2+zvlCK5bs8kkfE33Q=;
        b=YP/X8erZVT/N/+Ts0VU3ycoEBNgSejSnfFWnKGej77PRAIBbUe9d3WegXOc/Ns/mLO
         mZzw9EBFugr6zIsFCKdL7MfenubnvtOKaLYnNFnWd6orIj2/JjY/9QtIfUoH0yZ3pMmC
         PiOLEwRMWHR3mm5tW+TRN4KuoNxTjEWe7GA5ZM+JXuAeaWdSUZddhZDg+EHdl93o3e/g
         wKCSbYviTRJxr9TjZ8yUrIa4Oz6hwdBczVyCJieA5zWGjjZn8LZTOUKFZ6uJ6mpL8Exx
         mOPjjzBAbnIITcur1PxbDrQGgOvw+7+sGDb8cn3fCK5Ji9QQfR7IXnBDSd4zmDRWb4Zd
         XqbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxJ3PaX4nB6TOMocTHnumAeO4TAXAxkqp24CjchwdJyEk7K0jsSG2W1eSUzk6myHArcL20RP6Dq776@vger.kernel.org
X-Gm-Message-State: AOJu0YzLSSFlvJ2aUVu2qOjldQh0yxMIkfqO9OMwpo1y2sLxdVMtNOWI
	9wonz1H69KBhgD5HSy9tjax42MhaRsZZfZYCDgEw5Aq1KDk5geFA7pPDGL/eBoFKF2c=
X-Gm-Gg: AY/fxX4h71tzgRiN8roepklDpYvNn122/fkpevfWLbLpt1DpYkrlgGKYQuq6+0NnzUZ
	TWlmDqdQxJfRT5bUUVTiRQMuQKVWfk8TUDwkWmStrtb8oZwRUmYCjqzzrenFrwBoa8Jj7DRaRji
	voZfJRPKWPWZxiYSCQuqpwL7L7gtt4se1qqFWELkHVKI4hfk8XCTEFa+NzXYwLLmdyD9qD0IK/f
	spGzrHACQ+JLc4BHd3aeqN1waXDGTlmUrp6zkdIkE+PbCInpUwMRAobBwb4ajZrvP9XISY8bq/p
	q3cjm5lwuIM5S3WYlvwIEPNDrM+z/wms838QYW7LcPFBKLKnqc7AxArNperTdCBGgAWAKob2iZy
	Ce/ebojeavI/Hx6q0Z9+rxSsiAzdK/HLcBTyoiddM9ZeGtGihix/rcvg8WpSQuSmQipqKBh6SZY
	4CYTcNkPtpmg==
X-Received: by 2002:a05:6000:1847:b0:430:ff81:2947 with SMTP id ffacd0b85a97d-4342c535b91mr4556126f8f.40.1768410557880;
        Wed, 14 Jan 2026 09:09:17 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-434af653632sm428077f8f.11.2026.01.14.09.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:17 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH 0/6] arm64: dts: amlogic: assign the MMC signal clocks
Date: Wed, 14 Jan 2026 18:08:47 +0100
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ/NZ2kC/x3MSwrCMBAA0KuUWTuQTz/qVYqLME7bwaRTEtRC6
 d0NLt/mHVA4Cxe4Nwdk/kgRXSvspQFawjozyrManHG9sbbFkKLOQpgSIUWlV8FJY9Tve8NgBu+
 Jupu7eqjDlnmS/b+Pj/P8AWHOBLZtAAAA
X-Change-ID: 20260114-amlogic-mmc-clocks-followup-a0733cc59283
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Yixun Lan <yixun.lan@amlogic.com>, Nan Li <nan.li@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1373; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=osL3XON6lRfI69E18cOlW4Vk5fOS+vLWguNhE5gZqKM=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ82qSDQH6O9jmtXAKWRTCoF+LxEBOk9KYznRS
 Zd6puz8K6OJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNqgAKCRDm/A8cN/La
 heaED/9btb9Oa74WI86rTRohOlO3HHZXXSA93nDaSoSWSFXdvpZcHmSQG9jFM67Cs7/lCekRJnT
 1QKo9KcmQmLDJWuvi31AjnTRy2LcmfauU1tweirotmb3i5MmlUR90jma1qBBo6w3dqEmLBzLCDx
 FavwLmK8mFn1Oq4gC7q8WbIWn1N0J1Oqrw9Q0EcekLoEQEFgpRvvYuxnNr6CIE4m2vkRkVSgLxl
 XlZ93u0gadznFmppwbYckjrP4sNg42qQ4zPDvUySI/3o72DO/3mI4b4AAxVgAe76+t+jJ+kB+n+
 FK6uXbkPsNwcM/y3zo6fESeg1YQNaLp9BXotqQeE3ZfLOFU2sNCaAmBaIPoKOOsizhy9l8wxvgh
 9nHqASssLqwUiDLG94JwjlNSgL2AArURMcgmyWjUYplZdcBu6zpLXkn5H48v0XwyGYrjDV93w1H
 pC1qoV+wj9mOjtWWy2H5j+gz5wHZXwz6x28H+h1o9y+afu1PHXwcpzjp/8oEVH7OHtJQJn9CnmZ
 4bbHWgaBbDZJiENt6SdYd52Iu4f21OCzIi4W51ZWsnwMyMjbCWaLYQv9krAwx7JI5786PdqdC1a
 l9ud+ACyxYzvRHWQd4+CijXikNgk1xgzIHQz9u0GK5HF2W8S0bHnwcNSBb2dY41NteiJzSNePgy
 PCHKqKf+gbUoQpw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

Assign the clocks to make sure they are properly configured

This fix has been split into multiple changes to get the Fixes tag
right and help stable pick up the change.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
Jerome Brunet (6):
      arm64: dts: amlogic: c3: assign the MMC signal clocks
      arm64: dts: amlogic: a1: align the mmc clock setup
      arm64: dts: amlogic: axg: assign the MMC signal clocks
      arm64: dts: amlogic: gx: assign the MMC signal clocks
      arm64: dts: amlogic: g12: assign the MMC B and C signal clocks
      arm64: dts: amlogic: g12: assign the MMC A signal clock

 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi       | 7 +++++++
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi         | 5 +++--
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 6 ++++++
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 9 +++++++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi       | 9 +++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 9 +++++++++
 6 files changed, 43 insertions(+), 2 deletions(-)
---
base-commit: cd3b654a413c14648d0074ca160da62e4e29ac88
change-id: 20260114-amlogic-mmc-clocks-followup-a0733cc59283

Best regards,
-- 
Jerome


