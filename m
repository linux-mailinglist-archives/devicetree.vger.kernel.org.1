Return-Path: <devicetree+bounces-91139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6100947FFA
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 19:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5714D1F20EFC
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 17:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28B415F30D;
	Mon,  5 Aug 2024 17:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="B27O5reQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B23115ECC9
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 17:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722877700; cv=none; b=MEM34Z3eT11k/JdzMhtKzV1BzjuPVtojd10TcXrK5wXkn8l2Eb2kW05bOtQLELdST9yZlwA6WY05Gx+D1ZOhoWr/l4nZBnjXUyJaOp4RjWHSHQLVhY/tgUbPvFewHBTSUoJaQ7+QAw8r1deRUlXr0gKi+H+wcZ5Mgvj2Sh9gi+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722877700; c=relaxed/simple;
	bh=MS2pg1hkUFBkA3HoD5bx+WBJu4p2mdrw8oSNHZTARog=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J2G9HIE7HDPCixFTjBvgi38uCJQextsRYbDN5jMHXbHlj7PjH9Fg266cqhVeK263PFvsYwLbqNUErBuPQgSQRk2C6QDG0E5MXfIFMvu8DzwY/YlhMbJTr/qVDYT5SOwpczgdDn01dFiN3F/OK4EVfjmNuDxGZly4WzoiejDz5yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=B27O5reQ; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3685a564bafso5559218f8f.3
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1722877697; x=1723482497; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pf/ayE1GI1WAlEGzaVo6/9gInOblIFTdfpLa3Fxp3ZE=;
        b=B27O5reQz47GEcmSPgKpWgWbMpafuGcbLg1kDZwerDGUddqh6D/FmcFjuKiSqukSzl
         MHbCgJvg6BZ03x8IHce2DelKCwzl0TZt62SZG6KOwbup3vkp3YB4SWECqMROXZhMstAB
         Y0DBCHNp53lgj1W6Mr7+e3zzoDOpU6Qf21centQrR7WBaFQtBpvVGFQYL0vjA88JUuW6
         7OCDF5ZeeVQfDLQ1qNDfs8j+GAE5pz22kc0JaN5DFVRZfHHmXKk2bqJ0cU4T575/AAVg
         FCfBzITizONfzIXKvWhtA6PrHEKCfJev9h6Gm2nmeolRZ2UgvS0TTYKBfS4zpj2BZ6hU
         jv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722877697; x=1723482497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pf/ayE1GI1WAlEGzaVo6/9gInOblIFTdfpLa3Fxp3ZE=;
        b=lAaY3UXKT36H42GXrGHCVxuYGKQZuyrY8JdLQk1LcSWerxOeurE/SGzrRT6JnUEckR
         P6INLnbj9gHtLmn4rq3apjWT2uwUK0zF+lVK8kipjbbJzBfwhFZyTriPeCsmXXwCLyHi
         2x95YHudoRBWaQBrZh7V0p75UUA22a5KzEviHoLzh9yPIYMVrYIoIXIVSbyRWpcUgrB1
         5bmwbcE3XVWG3xm28C3n6WVVY5DGXNHealdDTpqHP7FljaeJa6p0mI+GPYGI7MNTUQAc
         cbjPlIf9nnwNWBh5ZspiCSM0fXQZfrAr6xtbO+DCYbB/8k6aczafZr6oMP2xuOT0ZzsL
         tTlw==
X-Forwarded-Encrypted: i=1; AJvYcCWynA98hJlwayILCaEyn9IrXoc46KywHfvFi6n8L29YAqsAlbXfoty6G80JzEPoOQf/BvSKXipqSJ98V4a9paNxmkim6DUD9q8AkA==
X-Gm-Message-State: AOJu0YzmjQacLy0i/9skXAW0eQAMsyHT7Eh93IQg3KlIm4tE98TqXKNo
	gQ0uhyEiG7AtJy/x4laWe/mtw+2i5+zIAPNCzJrx8+cd2tpOJVzxwaS/MYBSJDQ=
X-Google-Smtp-Source: AGHT+IG/VsX2YjO90PsbOVyyp86j0OkVdlv20HcJ5UEbUuIJDQujSBOyOBKHUwibMHyf3uCMfqjpvA==
X-Received: by 2002:adf:ec92:0:b0:367:4e05:bb7b with SMTP id ffacd0b85a97d-36bbc17dd68mr7198288f8f.53.1722877696419;
        Mon, 05 Aug 2024 10:08:16 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:1068:b792:523c:3f73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbcf1e97esm10356486f8f.37.2024.08.05.10.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 10:08:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 05 Aug 2024 19:08:03 +0200
Subject: [PATCH v4 2/6] dt-bindings: mailbox: qcom-ipcc: Add GPDSP0 and
 GPDSP1 clients
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240805-topic-sa8775p-iot-remoteproc-v4-2-86affdc72c04@linaro.org>
References: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
In-Reply-To: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, Ling Xu <quic_lxu5@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=769;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=3xzA+6EtS2RZb51APTtA6l7MBhz4r0SiIFow/JPj6bg=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmsQb78RUhtBLOHSNtfOqhMB8K5PTHFwg5KQVqu
 FDQvBOBZgyJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZrEG+wAKCRARpy6gFHHX
 coutEACCP27ZPwka8RHk//l8LuvMTup9e3R2nfQSO/ysAqpfeNnh+T4W8USF35ZAgtTys3hRQZK
 MfEP7N0XCBxuXvHVm7wJ4mQLs1ssdn5/YWOv216/4AGJZwzvT+WvCxV4BIKYkxKqonjYzwjDzuO
 CfvSJpURdYu1Ir159CHSwI4pkWWvdg+QcXfYiQA7tuGtAI6Hz68bjEv8rlC2RWETLdV6AdbYWnA
 Spxz7wg092RVTt1SiJnxm0+3z33YVICsyUOBwyuzuh/9n0IIWO41rNk6G6Sc2LJ7GKGEnWeJXno
 312X5GnZ8i4yvQOQlbis30TEh3dbmzbgzymlFQ9ryS9l8WUlIDReSGWfIK2vbLSe/L9A7r6CaJX
 +7s2mjenHCP1+BdA/+mqlS9dKyZt1aV0AP3aj7jBB1GPOIxGXGci0UWz822O6AYhrkBCjnOo155
 ZtTRDTK4Igt2V1HhcErxIejoLaKBq8+AQuhuIkKyscjXnh4RL9eqBJdc6EO0fhvyHOWO4UHy1Mc
 ygiorG2/1wIT0kWTLkdAxH299MyiXbdoeQOnSf1GWh4UEmvcD1uTINBVWH/nmCaYPzs3RFLC1Pp
 C7qauf6MGmfxYW8P1PDuAj65DWKBgzNvf1wK4jCEyJCbE9Cfgo5cc5fGB3jJosUlpUg8lo0FMrA
 GBRDR2EEreqG4XA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Tengfei Fan <quic_tengfan@quicinc.com>

Add GPDSP0 and GPDSP1 clients for SA8775p platform.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 include/dt-bindings/mailbox/qcom-ipcc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/mailbox/qcom-ipcc.h b/include/dt-bindings/mailbox/qcom-ipcc.h
index fbfa3febc66d..fd85a79381b3 100644
--- a/include/dt-bindings/mailbox/qcom-ipcc.h
+++ b/include/dt-bindings/mailbox/qcom-ipcc.h
@@ -33,5 +33,7 @@
 #define IPCC_CLIENT_NSP1		18
 #define IPCC_CLIENT_TME			23
 #define IPCC_CLIENT_WPSS		24
+#define IPCC_CLIENT_GPDSP0		31
+#define IPCC_CLIENT_GPDSP1		32
 
 #endif

-- 
2.43.0


