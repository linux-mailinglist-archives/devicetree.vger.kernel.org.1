Return-Path: <devicetree+bounces-222173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D02BA680B
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 06:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D0AE18996B5
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 04:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFD0222564;
	Sun, 28 Sep 2025 04:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EX3bEQH1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECC2218827
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 04:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759035528; cv=none; b=s1non6d6QQ0j3Ss2E/NTl/os7GJBr5fCi5LZXpNlFpn+Ns+gQh2HvgCSQWlNFklteGHQzeMqr+3saN2KXdE6If7FrDCAwUEb7K3hZvdvQXrNhlg/wNA+raucirc3YCQ+D65SYdRw8t4BCqWSsM7lVEgUx3X4FkHF/z+pvjEReKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759035528; c=relaxed/simple;
	bh=gBdIOP8VAofWeg0VuDnNTI1eOLpqvNJeatbnz/SutbE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=CDicwN+Ek/MwzHF92rmGmAxuQhJwPWOVPOWdvk3mcXtKkDtwHc3XlLI0K3PsVYC/cph6c+LS2HRLLezLaFo+rqc6qchA8lNbwJezSqG6znD8fqAT2tDdYUftNvsqL2N5y8Tl9SObRXLojiD8A/J5QZ02GlU67I53rtg4K1cEtHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EX3bEQH1; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-330a4d4359bso3325044a91.2
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 21:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759035526; x=1759640326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WxpcNLUlja4tVEmgOEAKXd31nleDdtBAzU43V4PpQ1k=;
        b=EX3bEQH1RldiCz6Q6x9VieCZGV1PZUGMArvm3sRj1ayX0+TKVJD6PdZFV/LkHOpWwc
         AafowvR+AN339b0To54H+IYTmtYx7lHkhdUIBrWGtD7x65GnLq48zS9VeE//n8rbp5/W
         pX/XFNIOfgGGYUlyh+A+a8TqkANRKYVzIxW0fUuVEo3q/IUvCGg7KsSxZZ8cgCmc7A1Y
         0ekTXeY44Udkc4naOIjrn6D9fniySPkxwVe1UEi9dxwwWLbCWSLr7nXpthRqALkXP93G
         iNt6kfCmV+nJkkFz120EciWl9Wq8cq1LOE+Goz3oV0OpbnEiRstm64xXLfZZqdUsbZf5
         Dp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759035526; x=1759640326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WxpcNLUlja4tVEmgOEAKXd31nleDdtBAzU43V4PpQ1k=;
        b=OIrlAnttJX0+0ZH0zk0dshiOMSy2FnEpMg3vDwkmcxb8K/TD1r6N5mqGTUKrITEFSF
         /B937JB36V+NwP7NIeLu6hf5vdCzFh+nP2B3yf4YuZrmAK2+rJEfWv+UqSERQd9nXD14
         wHL+RYmXBC9Hly5TwbPww/ifOsNqDAUM3+oc3Qi/8rDqvC8v/6ZRtcEQ08bIB8sUE9Ln
         CrbwIXCoddTW0ZBEV2N1o85eA/t+R7/ZkSCQMBoNQn+kYnbHKmHi6bepXQZahkMouJ3A
         zisoIHk/CbsJeQkE9OpokIA9YdssPPZc4v4P2C0kSlRI74Se2Y5EYs6Q0CxDNd2PNtXk
         Xdow==
X-Gm-Message-State: AOJu0YyOTjxW7t9TaOXTzD+XR+OgCspu50iS2vvou0w4QlNrT5B0xaKH
	+5L6UPW6hNIxpF3gHsMj0V4goGdkBMFGzG3kEZlpcxP10z4U/luhp7GY
X-Gm-Gg: ASbGncsc5o6SjeowATDCBlkHRVjHh4hzXJ8fG2xMzvQE7R7P7WDepW6XUsPZ87k9KHE
	HDAp4mSljoraMlJquVhTqG65GEGsNluEo9Angb4ch8Cqsrl0bJlX0QHbAbfrLSRHAHzgujr5lLe
	i42OuVzOhRBm2dFkeZB2s4f/gGf/soIYhwGV/bLHHxV8tfepiEOUWy7W+lNGLvRFEKV2lXsfqvk
	WZ4ycqBictLL8wPoM6M8JvlERDYqbepkwd0iY3YwmGLR5A+A4Q3lnfW1O1W5PQhD9nrz0siOcKA
	WbaJzR9cT5OFrsZlVzZfYttq6xYLVKBvGXb192MRwVinYFsVdlGAgdxTuVxjw7JFHwHtzIbtWcF
	WSdHK/gvqtkmB8ErJi8ToHA==
X-Google-Smtp-Source: AGHT+IE0uum1cQjjCYy4XHrx9Lz7DJLQZgSgm0Y7FIM4nk9ZjG6E7r6a4gPVs87kQ4KMF3PhUwjdGA==
X-Received: by 2002:a17:90b:1a8b:b0:32e:59ef:f403 with SMTP id 98e67ed59e1d1-3342a299099mr13890106a91.17.1759035526242;
        Sat, 27 Sep 2025 21:58:46 -0700 (PDT)
Received: from archlinux ([179.113.184.101])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341bcd9afbsm13383430a91.0.2025.09.27.21.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 21:58:45 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: qcom: sm8250-samsung-common: correct reserved pins
Date: Sun, 28 Sep 2025 04:58:17 +0000
Message-ID: <20250928045817.37384-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The S20 series has additional reserved pins for the fingerprint sensor,
GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.

Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")
Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
Changes in v3:
- Actually fixed <40 4> indentation
Sorry, I still had my editor on 4 spaces a tab

Changes in v2:
- "Fixed" the formatting of the <40 4> line
- Added Fixes tag
---
 arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
index 96662bf9e527..7696b147e7da 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
@@ -159,7 +159,8 @@ &pon_resin {
 };
 
 &tlmm {
-	gpio-reserved-ranges = <40 4>; /* I2C (Unused) */
+	gpio-reserved-ranges = <20 4>, /* SPI (fingerprint scanner) */
+			       <40 4>, /* Unused */
 };
 
 &usb_1 {
-- 
2.51.0


