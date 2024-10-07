Return-Path: <devicetree+bounces-108680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 345169935F9
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 20:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC5C51F23F63
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C18451DDC2A;
	Mon,  7 Oct 2024 18:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IcRkum99"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C541DDA31
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 18:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728325384; cv=none; b=uahkxbqBsLTdU0Rm0y6YL0HM52W3mSflipflxJIGQxkQqGh4ZXDla9aSfoUrinqmNKZGkhgIdvOAPSdfRwXMg2c8cHZdRKqkUHU1/fp/A8cyuh9MbItJYOdO3+tNaTN07u4KwDsuGKJPI5BTQ/tOpoTbQhurQ1cXAV/vIVnuing=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728325384; c=relaxed/simple;
	bh=jD98uaOVQPh5YnYxVipjs5I1jUj2Lcty9HE63JRpATI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nHcpE5o4jQgS0253txkXm6RykFcc3IQ1puOH3D7s41mUS9sFV06NZFmx/2VFSurisJb8zNj7Xyk5HgZKo+Zaes/PJRltPhyVecxqtgBccAR8KgWpUAkxKr6fjFxHrQToeHmxsDbVutH+a7jEgZ8ANRBEtC/7KdqM6sjpmBc5P4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IcRkum99; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5c88d7c8dbaso2982245a12.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 11:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728325381; x=1728930181; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=It1tAyMa3+6DqFnmaw7FuZdO601D4t1L+GiQKvslZaM=;
        b=IcRkum99ZHb6ibVpx5AcyPQgE1drWiw+NGY2YfQsfVxFVI41Mjgy12P6zfGke0nxie
         fLKonWFRTt/5d9Q0ZzLuIzlGg+LfJ4xbgH2/OAVBmeShlnvM5J1oqyRAvCytNOfWPpk6
         b2+zERxvZ3GBBh4M5kPUGXUAnWsAQZhjors569ofsUCcKm32BtEStdej2kHtFbJ9yvbW
         85rKe1GEFmeqJlEnDrjSgOgW+yCE4p9k4MO8CdKDdhGn4lCwxjSt4xp3hlCX2TkwdezM
         Xec/7Yn/ac+7Uw7nZwxrGPRMo6Ikd7HiZrD6SIprhgT8IRSpQ4FfpKjrkl1qVoGJPIoM
         vXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728325381; x=1728930181;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=It1tAyMa3+6DqFnmaw7FuZdO601D4t1L+GiQKvslZaM=;
        b=tUCLZ4PbjlySsL2dZmKvcdjONPT3rWJM5W6VNzxDFhL0DqyZ6iWNE0T3eqvEe68nIE
         Ne3cfgzFtG9s6QEITc6/gVFe9lhob8bTiKjPQxeBfMdjctJtIcmAA4SOR7JNudjl7SEy
         zpjYtTRLWmdA7LJ8QewsZNyjhtRstsgzd2htqtmXtud/4zgIvhswkCV+FbvPPz0dUr0F
         xJBRE4d9LX4bI4B4vVvDD2aPI1pBhyDink5wVeRp7djMyizhes4jgvThESVvpSPgi0q/
         5/nbULLcV+/yGkVENNCsCKt0IypgQoKrlbyJ850EofyZbha67g2ClzlK6L/xo0BLrdnB
         apFg==
X-Forwarded-Encrypted: i=1; AJvYcCXsuAfuPLhHf2iwaTOxPO9Fs26+79Q8w6Eg82exxQ8ZC5EwpwnyD1CmEZCkbT2pYsog42XmgF8dgKoq@vger.kernel.org
X-Gm-Message-State: AOJu0YwuMynNA7z/71x6S+ood8GaTgA8anckOp/kS3H+7CUiNwpCHuC1
	/AX4SSpuxaatP+Tzt7am8JEEikmF2E/SmE7OlByKp3Ua/ZmnJmWtcLaomK8ruX4=
X-Google-Smtp-Source: AGHT+IHxW0LZn3oH8CLuuI6D2GfiUaA0AGWg171+2Cpznanu6FP4rPLbEUSXqMhUlfUyROR7Id5s8g==
X-Received: by 2002:a05:6402:3513:b0:5c8:bb09:af83 with SMTP id 4fb4d7f45d1cf-5c8d2eb773amr18031965a12.31.1728325381309;
        Mon, 07 Oct 2024 11:23:01 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:4109:b8c2:873b:4a28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8e05eb34csm3452963a12.59.2024.10.07.11.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 11:23:01 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
Date: Mon, 07 Oct 2024 20:22:24 +0200
Message-Id: <20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOEmBGcC/x2Myw5AMBAAf0X2bJNt61F+RRyoxV6oNkEi/l3jN
 nOYeSByEI7QZg8EPiXKviVReQZuHbaFUabkoEkXiqjGW7GlROivEPnAw3nU42wb6yoypYFU+sC
 z3P+169/3A+GGP/JlAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.13.0

Enable WCN7850 WiFi/BT on X1E80100 QCP using the new power sequencing DT
bindings.

The first two patches add missing power domains and the definition for the
UART14 instance on X1E80100 (typically used for Bluetooth). The third patch
adds the regulators, PMU, WiFi and BT nodes to the QCP device tree.

The same setup also works for CRD and likely most of the other X1E80100
laptops. However, unlike the QCP they use soldered or removable M.2 cards.
Describing this properly requires new bindings, I'm planning to propose a
solution for this in a future series.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (3):
      arm64: dts: qcom: x1e80100: Add QUP power domains and OPPs
      arm64: dts: qcom: x1e80100: Add uart14
      arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq

 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 144 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 231 ++++++++++++++++++++++++++++++
 2 files changed, 375 insertions(+)
---
base-commit: 7b780f717d1f162620dda6f6a3b5039d67e1e3e3
change-id: 20241007-x1e80100-pwrseq-qcp-2bf898c60353

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


