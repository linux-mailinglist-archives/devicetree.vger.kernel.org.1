Return-Path: <devicetree+bounces-74664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE1A903EA5
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 16:26:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BAB71C22CAF
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 14:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35AEB17DE0C;
	Tue, 11 Jun 2024 14:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I6MykOi4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5918D17D8A3
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 14:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718115962; cv=none; b=aFCsJ5qbNSyt8J8isUr5HKvb1pIRi4s+yTugBANdq3m1OH1xGs+T9yv535nQau1Zbx6BmDsNTZERQ95/WdAk9wjyhN+7GfsyR8SYiL7/NueKMCE7EaG/eY2ou/uHii6MVH3YHLOX7ozeJztxh35s/Z+mIrJXim8g/rnoF8GKM0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718115962; c=relaxed/simple;
	bh=d546c3opKrRNj71ZDNGKC8sFuxRUiIOvbLvsU0IMqgo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dn/woACw9CrvQHCAm08/Ltok/JF6XAI8SJETlJErZy++emtt3Ifq9SfnxG2MdmTo16/lJq96lAm7T2nzaCmJcbCfxFFxMM/7GHnKvi6nK8T1d36WZWK/kokPVENbRGNgRbbaOSJNJZVmAxfvMBAFtzASDGli2wShx++6h6e0XqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I6MykOi4; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57c7681ccf3so3392958a12.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 07:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718115959; x=1718720759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lGYTsubStoiFq5pGx2o4ZQKhOTe8oq0dKZ0Pe/wUyLM=;
        b=I6MykOi4k8CNTcRU4vEOo+FL1KSrCPYUFz4tamo2wvwtofeWpLIgEmiwLdd7BDr69T
         uBugM5NWtXFbeJJ6azgtqNlEkVy1oAeIo1ueX/Ok0GCFsQUtB0XCaLIthceAVWxt4yw8
         dMyXQ7lpCMw/e9YPoovi9Z6fN3lrtxhkHnrM0w2MaQDwd9elLhb8+kIj4D1oUvRWKbp7
         B7qHMTCWzc0GDI1Gpht4ZxlCdDmdbaKQKrLukolmBymdpa7DkzzPWZDzZVphmm+low8I
         sxA8gTMTe4QFR1YxxbMWFlXQNllhEAQm8FYzPCFMyfMatYNp89R80fd4QJmT6hHzzoJO
         LJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718115959; x=1718720759;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lGYTsubStoiFq5pGx2o4ZQKhOTe8oq0dKZ0Pe/wUyLM=;
        b=sECBR7Gd0DwuDxyBUNEDAdRC/JclMlfYt510j24GeuX/uchSUO9Jho7KgOkSgwWoP6
         Q9y3Xp5r2KU8zRuf3h6L7fBa36VWrZ064bmSCfuxWeiDS7w+qfrBGY/nZ51eUlEPlipk
         VMMi67s8taD7wNHbJLEaUlaBjUoW2HaxLBmr+N5frAI/m8XjNcI9tUfAV4/nuahe6TJY
         iwWfci+yhd4PWCzldggN3UVsoJRxk9DEQ8UgcL/ZOZQRRv1NDriVFpnsb+JRsparOH6s
         VlAV09yFJdP+xZOH/17ThO2BGdoXWgIMhL3hbguAOlDuTrwXg7h1Qcc8QHL22CWoNEZC
         GXEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNdS/lXD7NNSeQ41dxTZ9XG7keiUxlP2fxpQfvGDbO4Ol+UHZGxkQEZO6o2ufxTM4VY3NJ1GzFtA1JqTuh76BQvYvbQM7A5vIgfA==
X-Gm-Message-State: AOJu0Yy0NUaP5CC5xqZvhMHxvbE9OnH5IbKhXnQ+XQtiKG0p3Qd6ppxB
	DJNQzIKDFmLRnWYVu9LPR2Nmcs95PJb8kUJUO4ec/awOnV9hv5mPTP2651CZiC0=
X-Google-Smtp-Source: AGHT+IFdCz+fE/0FZVc84bckExGWQ1DVAinZgGpdwgau42Oo14DKl74W1P1qxoZhEJUqZWHnDFPzKA==
X-Received: by 2002:a17:906:e0cc:b0:a6f:1872:4e1f with SMTP id a640c23a62f3a-a6f18724f43mr346135966b.77.1718115958517;
        Tue, 11 Jun 2024 07:25:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6ef83ac0c4sm518070666b.74.2024.06.11.07.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 07:25:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: fix WCD audio codec TX port mapping
Date: Tue, 11 Jun 2024 16:25:54 +0200
Message-ID: <20240611142555.994675-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Starting with the LPASS v11 (SM8550 also X1E80100), there is an
additional output port on SWR2 Soundwire instance, thus WCD9385 audio
codec TX port mapping should be shifted by one.  This is a necessary fix
for proper audio recording via analogue microphones connected to WCD9385
codec (e.g. headset AMIC2).

Fixes: 229c9ce0fd11 ("arm64: dts: qcom: x1e80100-crd: add WCD9385 Audio Codec")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index f19d89d3d6e1..12a4c4637baf 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -775,7 +775,7 @@ &swr2 {
 	wcd_tx: codec@0,3 {
 		compatible = "sdw20217010d00";
 		reg = <0 3>;
-		qcom,tx-port-mapping = <1 1 2 3>;
+		qcom,tx-port-mapping = <2 2 3 4>;
 	};
 };
 
-- 
2.43.0


