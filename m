Return-Path: <devicetree+bounces-126578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F39D9E1C52
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03C5C284702
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCD61E8828;
	Tue,  3 Dec 2024 12:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vwGas5DL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F951E7671
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229629; cv=none; b=LjVbonBhjyAYraKTduUezVqLSJDFA5xzaE6mV3pOWf1XH/dmAa2xQp9APyRyGvN86m+4L3CfmO6eg1TwIfM2Z/Q2V8ADgrb+2uaOqDC6SgC2qFHFy3a0byUgqXPxA7wYMaq7hWMVzjDWgCSkVgq26wZ7aDZ+AsC+3saK0IUBzp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229629; c=relaxed/simple;
	bh=M9v4cnhexcFGnFb67v5mL0hn+ZbZK0KVsMGyMVUjDr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AuCG4CXO6VmbU2Kvkc1ej/BAb9JauQNSzvphUpKvKg0pg7SqADBNmWTLkgUXpYliYc8GtL2yhB21evjzebmWuqRo/fPpwMaGpyPFAykATKcCHrLNQ3PEPqj5Vrv3Zx4xW/vZJ8L+od9nVrzZZyOguwcr47keFtuzZw0mXF4/U9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vwGas5DL; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa530a94c0eso883213866b.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733229626; x=1733834426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JKz/6LOX+Qb687N6TewJgIJoPVXxUJjOmnFbpocgz8Q=;
        b=vwGas5DLhzlG2FqYYuZ00vYVx0teMEr647Z75tVdId2R1YJA1SjMhaIwew5Ir38xZA
         zHn2eaHFeMvt/34gaBPn2TjzJnkIhXEvGgBIsIxa8QLJ841xP81apTy5Dyxkj4Iy6MmU
         befqAg+nMXAlJARkvfqLydSsxFWtn2h4EpNeRPg8oBe+AfTiddI8+sHr7Ef1pS03jdi6
         YNMWyNf48rak9pngrdAIgppLpZgfFOl4VuzmIiou+8eVcXc1XUdr4dm9pbP8C7ZHK05X
         aqKs3DG+mzHpy6aqCwK2jJMPhr0w7IfE+oTnsESfe8FSko10WZgSh3COk1rixbRJ7agv
         pTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229626; x=1733834426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKz/6LOX+Qb687N6TewJgIJoPVXxUJjOmnFbpocgz8Q=;
        b=NfdppVhXt6oxoSKgwTnRa4fciX6liu8RDx6gYZ+HQ3pdpvMZ4zzCui6I807368eUu7
         fFtsIjAiFYy6cPm8sjbHzDV07C2bPkjWcD6c3agNcOSu2Ym4A72D1d6pgmmxL6omOfNR
         6LBN6W16dVlgAqtzD3SYvw4aui+Tjd/PGuFYnjQblShOnaQXTf43wjKYVm0dwAo07y2Q
         luPEmoxLGPBIzlfp5bDJD/9odbpvEjvpgviaStVrEG7VTIZ8imRwkggZQ669p5+rHloZ
         aM9UHpjUeARsj2P4o8tHdq3SETGG63eaeiB/hfRhWkHWiGO/gx+q7mPSaPWrZqkVO63F
         3Hng==
X-Forwarded-Encrypted: i=1; AJvYcCW4FSqvlGbatfnfJVVlW3YHVH8QLTTur989shlr3aRR/sy00K9tFf8weCQk+UJ7N3PfZyIWrrmYTfUt@vger.kernel.org
X-Gm-Message-State: AOJu0YyV/slTZZ/Pt5DGybOgdE7ZnodhqoRi6V4gLBJ6yBYu91d8Y9Q4
	dI2mEfpZE78UarF4bcxZt/XMG0I65dK98DTIDqwcatI5BaH5sFnvY5w8MNq/jwc=
X-Gm-Gg: ASbGnctEhIYMlVO5anleXEUDAieKKfrY92bR44ppdcuA6k3gCdVB2VWsh7iUHisLNtR
	5Ll+n8CZMdkoWf4AZGZ6Cf81NcWboV8oLk231A2bz/a81MDYVdQrxqASDSP74H5X2h7qkoSk9Lg
	jJI71UjCuZN2LKu3eVTPaGHa1jaLzVgS0/y2ic6LANuNc0ly8MTKehH9NzaTUQd5kDr9axBkCsH
	8F2VYh9rOfEj42MzBeKZ7WfVmhF2sI68uksicVN/9hXyhA6QHce4Y5FpPUdt4L1dmodbMwAv4gz
	hJRdQstNti8PkAiGEkh2Rc86XhhR7WUY0w==
X-Google-Smtp-Source: AGHT+IHQO6w8q/8y2vmYj3AwKDx8/AcSW1egkdyxl/hQEjDRsUnB02G5MYsyfeveHXAuRhqJX5unqQ==
X-Received: by 2002:a17:906:6a18:b0:a9e:c267:78c5 with SMTP id a640c23a62f3a-aa5f7f19e62mr225441066b.55.1733229626045;
        Tue, 03 Dec 2024 04:40:26 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm616809466b.106.2024.12.03.04.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:40:25 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:40:24 +0000
Subject: [PATCH v2 1/5] arm64: defconfig: enable Maxim TCPCI driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-dts-v2-1-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Enable the Maxim max33359 as this is used by the gs101-oriole (Google
Pixel 6) board.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* collect tags
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d13218d0c30f..5080fe2ce776 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1121,6 +1121,7 @@ CONFIG_USB_MASS_STORAGE=m
 CONFIG_TYPEC=m
 CONFIG_TYPEC_TCPM=m
 CONFIG_TYPEC_TCPCI=m
+CONFIG_TYPEC_TCPCI_MAXIM=m
 CONFIG_TYPEC_FUSB302=m
 CONFIG_TYPEC_QCOM_PMIC=m
 CONFIG_TYPEC_UCSI=m

-- 
2.47.0.338.g60cca15819-goog


