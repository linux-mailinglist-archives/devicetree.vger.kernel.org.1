Return-Path: <devicetree+bounces-203347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D426DB20C9A
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3ED562110E
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA0C2DEA6A;
	Mon, 11 Aug 2025 14:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZEyTMBY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E672DE6E7
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754923514; cv=none; b=dBixSgvf9FDsv6JawjDNui5/Rv5P9PeBpxT18H3T/2SKb2bWjbDStdK6y5eal9VJKnFiU/XpShdoPTb37iqJ7k3R7hm0S+QQhGg7CJ3cYs6OZkw+0KmxTgdWeY9rZWfvvQ3nFXFs3z3Mi1xmBHQcQqlSImwAcL19PDWbYDwz7PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754923514; c=relaxed/simple;
	bh=oJXpSUxbmCeHsDnOy8JZhNvTTwmX1fqgMDN4BLD8bgo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YMsQA0KzzMStKc7rSgLIn66/aTzunTO9IW7sKBzXkLFZiokrA75W83c9rgtSxGP6Aa1sHAMxY+XnVNjm/AaaTZ7I9esuJlz9bEZ5LhfagS9bAnxrxQSzklbGZy7psprNvTsHHu/FoCMZMgo60UMeGMZdxdgnY4NHAUtDpipQJLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZEyTMBY0; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-af94e75445dso797834866b.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754923511; x=1755528311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LvvYWX4uUCJA11NdZsypviiNiCsCxuB8xCdKgutIRlc=;
        b=ZEyTMBY0uqZ9Xo5f2DWE9K8pApVDCIbAu9OKkTetniyKCUfgEclw58tBZwtfGOjCLa
         EmsvF+X81ZDdanpwLkfCUFhCwxeCf4Apu8alz4CFrWL+na1YcyzvVDd1FOa/t5X0CCXa
         KD2DpBSCRi1o9wlU2NwkM/3ptGX4xroDrzHIYt6uBWg+wRhCf3U/K1v0ySXvuP9OAKIQ
         oypichEYryrPV02MqNiyufJa8vxPWwK0Acm0PbjC952gqR3oi3ncVAhbsipp8yPsMOhB
         ABamJf1M0NrO5mvf2lXeE/WcofxlW71Q3KaB/Ansz9c6BRkKqnMLiISQjHgBo+pmCOJ6
         v5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754923511; x=1755528311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LvvYWX4uUCJA11NdZsypviiNiCsCxuB8xCdKgutIRlc=;
        b=RIBJ4tDNzvjDUa7ZQ96OyDtg3MuXjdZcUnTac4mx5d8MHyRp9lmKD88SxK5iPMYXdP
         vjBWFSuA2URF4P6awCNChvs3Ju9kWmMU6sTHAEDRgQ63tkyCcblxk/0/9m4+GcpmsJtX
         tk1U5ksVc4k5Ju1jNHO9vF+NonnDZLZMpSKelGM0PVklD6VHzK3YLgdipQMjqVLng22T
         mTMjO0flkuiM3nFq2SV22otZA8rvxiXxZIqdNRxt7aCgBcCMPftXB89rmiz1/MXkYaI8
         gy2/SWwtf1Xp3xuzpF8DWINvtJk1UPiipqORejf2X8WqJMHj9r7qeM3ZCPliZ+18/atg
         g3Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXndmAJgVF1cLGi3fImLwMAMcNSyrf2EVeOw7NEozs3brVMCw4+ylI9VyVzkmLs7icS6gpIRPqnWez9@vger.kernel.org
X-Gm-Message-State: AOJu0YzmcAJkK1j7VH5xYn1NVfd6cQUxZY17uIsrO4CwDqo7DXrEWpMZ
	NFiaeeM2VlxOAHPAii8Cc1oKuZX2QDUltFRVVhrbPtzSCwsaNTH7aSFE2y+WvQrA1rg=
X-Gm-Gg: ASbGncvkYnK+7aAs3Hb4VH4mTeayiNASzrl5ThG1qa6o97k/QiFXk/oEJvnZQTgSE72
	LUr1YiumoybY3yWqolznWCrlJ5ZKUsLKEFMlEOek97EjxWeCjntWokemdTLme05w0OONtPWsjME
	DhJNfEtbN3qqy46FM3ofQjWUdIZAXdUGH1fifUZ/Zpnap+0rGsEsgW3XYSBvKCXSZFlizNlqPEz
	7G/nvSWEq8hd+emFHuWqDjerCEkK7nkl2vccin+/bK8ZJ09vX8h0HNIm2Rxw3Vujo8VIrHo0V0E
	hee3QOl0+bG8PW9idX/KlHOEY+6+Rq8p1PQP3KedMgJbseWMwILpMIeV+/9A+rGqqmxu7WbciWz
	ia3byWHL+9mhFgPae0vIR2gLYRQxnu9dfTrPQn7kLmbhqK2Pgwx2x8mktb/DEl5XCbQ==
X-Google-Smtp-Source: AGHT+IGIMsN/o17k+oKSTruxBNbnndkPTU0uiI+77stT/J27GNCFWaBwTt34E55lvek8PqTlJtXltg==
X-Received: by 2002:a17:907:26ca:b0:af9:5b3f:2dfc with SMTP id a640c23a62f3a-af9c6542d9amr1187895366b.47.1754923510770;
        Mon, 11 Aug 2025 07:45:10 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af9965a8d17sm1042961066b.63.2025.08.11.07.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:45:10 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v3 3/3] arm64: defconfig: Enable BCM2712 on-chip pin controller driver
Date: Mon, 11 Aug 2025 16:46:53 +0200
Message-ID: <04c67a8fc50f2688fd3a6616bc03b3ac4d4977fb.1754922935.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1754922935.git.andrea.porta@suse.com>
References: <cover.1754922935.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Select the on-chip pin controller driver for BCM2712 SoC.

On RapsberryPi 5 devices it is primarily needed to operate the
bluetooth and WiFi devices, to configure the uSD interface
and the power button.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 58f87d09366c..fafcd7851eb2 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -592,6 +592,7 @@ CONFIG_SPI_TEGRA114=m
 CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_SPMI_MTK_PMIF=m
+CONFIG_PINCTRL_BRCMSTB=y
 CONFIG_PINCTRL_DA9062=m
 CONFIG_PINCTRL_MAX77620=y
 CONFIG_PINCTRL_RK805=m
-- 
2.35.3


