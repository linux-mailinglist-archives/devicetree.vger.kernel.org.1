Return-Path: <devicetree+bounces-191697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA80AF01D4
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 19:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D5211895C44
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 17:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F60280033;
	Tue,  1 Jul 2025 17:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EwrbRxPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47F727F75A
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 17:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751390939; cv=none; b=BM86GhXOJkAVZ4BONgQdLJfonVa+8wHDMTaOAEmX5a876L5tzOpzwqSrUeR5a3chGIJ6w3H/fUelHJ5sLDJhcc95DEsIp+/AinYlg+83rnSjbhAZwxtp1G92wPgGDGQmTHyFS/0hsKMbI5B6AfdQLonhVuUUpep9tpdC685ycu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751390939; c=relaxed/simple;
	bh=OLa6CKz4Xs+1wTu88fe33/7qjTbNdeZhjKjIdN9j7Zc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FIJOviYWHQ8gGemT4SdbnFVJMbJoKP8+q1p68oL3votutXg6qGYCkWb4JTeWFzxFtSOoK4wBLyi1dCpWzS43KpVt43HdEkskVMCq1QcV4Qkk5hCO36pCRDTRQ7Qf54FIb9llVODWB5vW24oc74jrdM3R4T1DJ4VwaVbsMA/bY68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EwrbRxPH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4535fbe0299so21477705e9.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751390936; x=1751995736; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pItM3Ix+BDw9/JSngNN7OicgJl0mdYEBGF4MKXl4ApA=;
        b=EwrbRxPHbPIO58M83sno3xDAPMn7Rtjy8LNsVa5UbbnC7osKqvW92dyUR9lhwuKZ1t
         h47JN88wNaBGh9TXp1xp6bLr9YkcqYQsq0ET+AdHmgzfiKpoBBrMJ1k+uF/jXgVMvRwH
         ZiRcHuXa8TMSL38WPrxXEkHKFRQWWvX4kXak4Jm3w4HbASA83TwEmhcs6tEXFWLFOfXE
         NMofBiA+cvRh0OHJSAf4x4fQSY0163BJX5T3tl7tr7hfRTanxXfQS1Vomzh7NhS0YCes
         fWl2TIs3FYkBsFsl/6xP5NiGD8H8S8bgkk9YjieHkxIGDzXXjbTcmztek5ViSesNR1QB
         Q7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751390936; x=1751995736;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pItM3Ix+BDw9/JSngNN7OicgJl0mdYEBGF4MKXl4ApA=;
        b=LxfA0oUNviNRPNBAS0eJtR3yb8dKCMbMqYwxNWVg5D7u03Db3jBDFDl1djwBt3UB2X
         eBQJMiSUGhi9yfDPY875qQtH8MoQHa+V8+anLIoR5up0UP9L64ynq88VbPFhqdnXdKtf
         x+gs/HN9qntBTMwFBl86lIp4Gi/hkUTkAC8w9FIwK83B8N7I30RcDfGgnV9/SiyNaAsO
         TsDODXSSc1XnnpoQfcQC0+H7dm0ror+7DRg2dL9ZtXUbIoFM7SDJ/yNFtCUnAr+T4c0o
         ntpWn3ko4zZ9GHVkfHXCxYeLnVxpq8SPjaAVU2dxaw162SIiDSYdtDyVX47p368Z1u1G
         3L7w==
X-Forwarded-Encrypted: i=1; AJvYcCWPdihzoC25IzPvaJt6gM80XsdK+REQE3kyMjK2t0RjtuM8qmvtACa5IU5u8B5Ki6f52W06u8FnPDq5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuhuy/EtuUlMlVx97sAHE6//96IL6UtZOiBL8MUcqPoHLVRW95
	zf/YjfFDP/RqGvPKZBA6rkJdg7H7M/wLX+x4ZomVRLW8obSRKzKQTbueA4yloFMSaqM=
X-Gm-Gg: ASbGncsRneawdWqSzgFRE6DvfGo1hk8lcgY4lMoNomayfdTeCgUOb10Crp/Vhz1miVv
	s7loIvW/+oq32VfQe1eVMhLvwixKqzoYjceV1xOPnkQ476l5bXWPQo2opu5ule8HK5tGTxMxEpJ
	Ix90ajczEfQQhiu8k45ehcxgwjgROXmA/14ADwAQO9+ZVBu0hq66a/jxDnk3NP5fvsDHaGKMTdl
	yXvJhYC8V1IXfEhjdXmu8Ukdp2/BE1e1NnRqFulBVUocT0MXpKKfKkBhzrZpYwTyZdbCvwFI8iv
	/4USmbGQdHTBDkbDF8RLu6Rkz62okNgLL1NI2p3+2UZFsGMqHO6g35stLlELQkFcaNSaIERl4uk
	rUw==
X-Google-Smtp-Source: AGHT+IFFB5ah+p+k2xTVqwWPdQPiTDaMINmyptlygkjwPQ2y+PhvqXL8U5LQdhDamfglLxAayP5PsQ==
X-Received: by 2002:a05:600c:5307:b0:43d:4e9:27ff with SMTP id 5b1f17b1804b1-4538fadee1fmr165981895e9.7.1751390935993;
        Tue, 01 Jul 2025 10:28:55 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:1425:eda1:87ab:f850])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538234b1b9sm198716175e9.11.2025.07.01.10.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 10:28:55 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 01 Jul 2025 19:28:34 +0200
Subject: [PATCH 2/6] clk: qcom: videocc-sm8550: Allow building without
 SM8550/SM8560 GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-x1e-videocc-v1-2-785d393be502@linaro.org>
References: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
In-Reply-To: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

From the build perspective, the videocc-sm8550 driver doesn't depend on
having one of the GCC drivers enabled. It builds just fine without the GCC
driver. In practice, it doesn't make much sense to have it enabled without
the GCC driver, but currently this extra dependency is inconsistent with
most of the other VIDEOCC entries in Kconfig. This can easily cause
confusion when you see the VIDEOCC options for some of the SoCs but not for
all of them.

Let's just drop the depends line to allow building the videocc driver
independent of the GCC selection. Compile testing with randconfig will also
benefit from keeping the dependencies minimal.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 drivers/clk/qcom/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 36d6e6e1e7f0162d53f02f39125f4593517e0dba..26752bd79f508612347ce79fd3693359d4dd656d 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -1391,7 +1391,6 @@ config SM_VIDEOCC_8350
 config SM_VIDEOCC_8550
 	tristate "SM8550 Video Clock Controller"
 	depends on ARM64 || COMPILE_TEST
-	depends on SM_GCC_8550 || SM_GCC_8650
 	select QCOM_GDSC
 	help
 	  Support for the video clock controller on Qualcomm Technologies, Inc.

-- 
2.49.0


