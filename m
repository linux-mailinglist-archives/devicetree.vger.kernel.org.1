Return-Path: <devicetree+bounces-87600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE52939FDF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 404CDB225A9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD5B1534FB;
	Tue, 23 Jul 2024 11:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fgsSRuC5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B001527BF
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721734116; cv=none; b=invK5iuKGsa1NvRGo3JuexpaHkgeybN8N7nT+1vK7K6TaVWj5oqLxdGHNJ83wZSW5+MrPjkHdRM1NUDAATSyzAMWpmsula38nzpaGvgPqdE7fC9qUDMXOAOzW0S1r5KzO1jmP3TnKQKueTiDBeotiPJvtC5slpYQJrSjRb9g1u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721734116; c=relaxed/simple;
	bh=TNeB4h9ycrUiNieuk6ijYWqqH0HvXk8DnxEjo8Y8yNk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f8oHDwstEZEs9fTC4fksMfV7U/qUZREVCvDZ18G25IXY4/LQIEENS1wBBWRhUOC8jLW5TRoVwiAkgUn7nOjcVNxKTg3h7VoaJA4LFtxkhdVwH6qBSnk4DEiZ2pOd0UqG68S+iTa4NKYu/yLvL803QrFGmOzCZMNqWQKosu6ECRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fgsSRuC5; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52efd530a4eso4214764e87.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721734113; x=1722338913; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nAlHzLrPx54OlQ0HBTC8gKCozRqM910DErW7ymog2BQ=;
        b=fgsSRuC5ebeWrAFLooOnMCK3CniPYR9SfoodYO7e4wRNJNzC267KLRJ/Jdr7ayCnRt
         wf8f1Me+tPqYKUEaL4+aNOAT8lgdXu2FAnBqVIl377B38NmQDNCj2eRn/JTP44U81XQ3
         pnnBHtQz5S6Cy0T3YFHi2yJxcfnHwc9ak5OHxnOTGYSvwaQjEBQyHpcbqQFeaAzb8uu8
         U7I2bqlLfFDypxlCFoFpDw+ZtJtwm3GK2s0MwbmpYvU1eCC2LdZs6BGXOyBLE0i8lbFl
         HWU5y8Yv1gNnZ2WdP4hjlFza+TNlyNsLMqE0Otnu6R7yo/stNKSi5JNs3oZVB9NAH58A
         ACFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721734113; x=1722338913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nAlHzLrPx54OlQ0HBTC8gKCozRqM910DErW7ymog2BQ=;
        b=SUCdXNu3OPXZZnTJmbfAs3unR/VmjrfJPQDklgO3Pp/rBJ9YJ2T/mu65MjMWB28LOk
         GAlvjGHbTz+ygpu84bOeNG2BsTLFPw1jEZA6ZdU7Y1qWq+Jp+YPgt1X/MLBF32riX+Nu
         Lga6izj+zixdDo9n487Fz7VL9SjUyT7WnHQWr0vfQZoGgnN2v4I37buo/bBewK47edIF
         c0t09DQVmC+8eGGiOnAYVqgBU2AVA6dkMvA6jL2tYrDiOP+lcQ6/igndISrz+hJyR6ni
         R1L09kvFObzyl1gOWrxatGrS00gzu48w6el7dHZnv4Bbc/DWehOFgjIjGYfX9ol7Pal2
         nsQA==
X-Forwarded-Encrypted: i=1; AJvYcCVqlkB0D9LWalrIhIn/67cOxtYacywp++xdRy+E+NWm9DnNnM+TgkVxehP2HsXzOJxnnJlTrgtKQjO+CjaN2Dq1y+KGr6qA+BdMEg==
X-Gm-Message-State: AOJu0Yyik/oJKdjcTIzzRwkfx1p4SOaB20EnzUiGR/y8Hyt0tVAq1CLt
	TCiwcstAXcGKYdc+tbSkg9CDYuSWxZBkUKMtwYu6w2cn4lolL1weO2p/lxt8ddk=
X-Google-Smtp-Source: AGHT+IHna/bk58GBzfxHL6ZNS/OCvnW+Y9Hnj4qheHKHUSEUYFDFtMtAHKf1vn4uCYTyQwoZJERcbw==
X-Received: by 2002:a05:6512:3d90:b0:52c:896f:930d with SMTP id 2adb3069b0e04-52fc4075ba2mr1910381e87.57.1721734112792;
        Tue, 23 Jul 2024 04:28:32 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52f01552b43sm950871e87.286.2024.07.23.04.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 04:28:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 14:28:29 +0300
Subject: [PATCH v2 2/5] arm64: dts: qcom: msm8998-lenovo-miix-630: enable
 aDSP and SLPI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240723-miix630-support-v2-2-7d98f6047a17@linaro.org>
References: <20240723-miix630-support-v2-0-7d98f6047a17@linaro.org>
In-Reply-To: <20240723-miix630-support-v2-0-7d98f6047a17@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=TNeB4h9ycrUiNieuk6ijYWqqH0HvXk8DnxEjo8Y8yNk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmn5PdcKsCltG7dPS9m0tKoFXiB2u4NhwvdCVuX
 3aY1pZGs0aJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZp+T3QAKCRCLPIo+Aiko
 1Uf3B/0SRKqihsb87Ln2bk8vVi3fiyeYYJPHrIGO/VfZ0qcJWLY25iZIJOywITUK9u6iNU01bI+
 zQwX3FX7gm3NqAmRHXXGOJB11UIPE8S+E7gUfBbTR+PBnmhuUavgeByWn97Ta9eqeawuf6Qkf3T
 vH51VzrjocRrSen9v06FmHdb6yV+DJ73Cm5Z65YVJr5XEDAAzbPlbg5l0+B3Nt2IsvVVCcZ+aH3
 DQEKx4T6tUIpkYk7+ueEVDEoWrFX5XRX+MqBeTm256yT3xlyxhZMwUy9pb/QDPo3rCzjBVyUCbD
 u/5TDHSzVdto0DoqXZOIbvn+eRYgvuWEqjHTw3pZGmBLKFf3
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable two other DSP instances on this platofm, aDSP and SLPI.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index 133999a7ed2a..2430f17b2356 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -43,11 +43,23 @@ keyboard@3a {
 	};
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/msm8998/LENOVO/81F1/qcadsp8998.mbn";
+
+	status = "okay";
+};
+
 &remoteproc_mss {
 	firmware-name = "qcom/msm8998/LENOVO/81F1/qcdsp1v28998.mbn",
 			"qcom/msm8998/LENOVO/81F1/qcdsp28998.mbn";
 };
 
+&remoteproc_slpi {
+	firmware-name = "qcom/msm8998/LENOVO/81F1/qcslpi8998.mbn";
+
+	status = "okay";
+};
+
 &sdhc2 {
 	cd-gpios = <&tlmm 95 GPIO_ACTIVE_HIGH>;
 };

-- 
2.39.2


