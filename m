Return-Path: <devicetree+bounces-142267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EABAA24B13
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 18:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBDED162FE7
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 17:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8515C1CCEE9;
	Sat,  1 Feb 2025 17:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KfHwvFmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE101CAA9B
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 17:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738430959; cv=none; b=LThAK8OuiQGtHvQOMheC5jGjmBNDIiH4e84c6p2tKRtUEFeptI+t3JPiP4BkGLQyZl4siUbouR3g27EElgYI3c7ndIN1jOcZFDLyzYpjXME8z/8mvZVDD26JC77Ko99b6F8ZxhscOa16BGEFPKRlEi9AeiUCL9jPUYr3o56aQAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738430959; c=relaxed/simple;
	bh=XL7ng8U88IdS02LpqkHkwAED27Q7ZWUI6j1I8zn2UOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p3ke4usg75HCAqoZHwe7GPXunjyIkQHUqFebQ8J8Vssuu9yh1925f3mk/FaoViEy3RCdaFbGeIynuXq6V/m8mylxviD4odPtXPbKl58GhArZBqm7vJh2gqklN38+A+xlXUMGfl5lhDt1MbAXy5VPfxjQtEwtxas0lfiws/NkKJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KfHwvFmB; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30615661f98so32636551fa.2
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 09:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738430955; x=1739035755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0uDfHhxafnqOPaFWheOWVq1hqVSH+SO7a7CETbeXIaY=;
        b=KfHwvFmBZyLa2PSSusFUe30jY6VCcqpEH06RwFDkfRoCLpv0VUvd2s2/DuUq9KEYjh
         8YzE4kmn5e3I5uAzjdoOSt2pttJp3K6TeHq77vQYwjbqR28ujLGBgtIzEDD4JmWszZYc
         bq3iAREoPL1aitzvK1ZMOciiY8DZKTHWKBK1Zxcu2gaLimhG2VXltOdK14yggJtqZxA9
         fx8Ivtoy/L7Ct7CY9VopzPehhRGRGzdb2orqvtYAxOOo6S6fii4gUqZ2KroeeeuoX80I
         EJ4f3P6ZhtxJe9efoZEzcxhuV1x4Vmi+qwQavvqTm162yvWTuiPYlYEiPGbxlQBAYoV8
         36yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738430955; x=1739035755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0uDfHhxafnqOPaFWheOWVq1hqVSH+SO7a7CETbeXIaY=;
        b=L/GXyZ9JtrS6P8RONVaGo9gRId0uGxkbnPb3J1l5YHZw4obdRdj5ea6y645DWhAM9E
         O5GjojeFuvs8NP7EbG4PX3OJts5d/l/H5G7vS19S1Oks9KQIa6+FSk5s81srN5xpXK0i
         5jz4UpjHzVOfE2SV6A5MAdEFQkX3III0uG0jGSHUNr8BhWs6dmHpBCjGqGV1NxNYHhTi
         jflGtxKiROXUT8xqwPLKQd/3U6ngxJqrC9Xk0GmUb1TdujE/mcsAkXxb6xf3LAtVyq0K
         fmpgeRFhMD3Rv1x7MCgIke3yTV/7XoET6IQ0Y1hfyjnJ87zbI5o06cnYbnORviQ7I4Lb
         1S5Q==
X-Forwarded-Encrypted: i=1; AJvYcCX9USnxUaqCLVxyAHKM0HkkDxPjsrJHhmJ8NwWSsSIQcdvVi0NX0nFlz2P9YX2GDcO34nQKLj5mGshN@vger.kernel.org
X-Gm-Message-State: AOJu0YxzXiE4agkpk+Avk8HDsOjpv6Yte5pOwU3vG8jK1tpW0p8ObTFk
	aevLQWqkXX3Wo+ptDt01m85OInKujzikRA4Pm0uI07fZg34HzjpeX74iw7Hb5BU=
X-Gm-Gg: ASbGncsJRWCTXyI/leXzoXsa3Zlti/N72UGAVgYF4Kb26GiXFGv9rVMQC0lJhxm8X3d
	iV7J+Cvbwu9kNE5hUEY+N2jePIrU15Cr6Vx/G6qCsc0kHloLHW+dxuuJFj5EKUK8IKj5KlA4ys+
	E97gizoaAut4o1C8uC9EdrQTIjwzTqHmeQiqKGt/Aoa3m0SgrknVTw6QwcutDgAkq89dVjkUhFC
	SaqUtmRaVjEMNWozORg6ermIYGBkzU5s/Oi59eiG3Gi0OH6qZStHJS8+oj/kmCXfsg280DZeXrg
	lku30DpFbkqMf2L0HSOoEIw=
X-Google-Smtp-Source: AGHT+IE8Hr0IX1pCMwiAV7uh2gFAGtFlcOaMwnAab/6lNNmleqqSsFzR5DBmNYTKJ5CEK4pnv3A0/w==
X-Received: by 2002:a2e:a883:0:b0:307:95de:e3ed with SMTP id 38308e7fff4ca-3079695147bmr48071951fa.29.1738430955520;
        Sat, 01 Feb 2025 09:29:15 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a3099ec4sm8852161fa.48.2025.02.01.09.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 09:29:14 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 01 Feb 2025 19:29:08 +0200
Subject: [PATCH v2 2/6] Bluetooth: qca: simplify WCN399x NVM loading
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250201-rb1-bt-v2-2-fd44011749bb@linaro.org>
References: <20250201-rb1-bt-v2-0-fd44011749bb@linaro.org>
In-Reply-To: <20250201-rb1-bt-v2-0-fd44011749bb@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1590;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XL7ng8U88IdS02LpqkHkwAED27Q7ZWUI6j1I8zn2UOs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnnlnlKDKbhsJaGXbR4PVQjNYuqdjhhv6ocj8q7
 i/6BfARIcOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ55Z5QAKCRCLPIo+Aiko
 1fYtB/41pLaxBJKwD+/915Gb2NS7XQyQthMPAb770YCfU+7esQ1bltInu1iz1OdsV1kglAk5BCj
 W6KEuaGZWEm2z0Gv/zn5v0tsRF00jBbs/Ve6Mw8tXVpq26884M8wuDbwOirVy6ZGprjRIKlkAQv
 wWAOtdyA81ML/lJqiv9Uub3AVIK6AyquLi3LZiq+eCd1wHObd6BNBaR77gBdpm7aAKgt03bliZp
 1AvX/WghLA+7XA8cl7LVmUeRZXOI57r1fUZ6Hm4aVAM6GPjVUy6+R7kKSqqo9TdmezMOYbXkLvG
 ahiheDRCGEiY/6KPled/jtQXFsx4W7U2n7bZvLMTP8FLjZKC
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The WCN399x code has two separate cases for loading the NVM data. In
preparation to adding support for WCN3950, which also requires similar
quirk, split the "variant" to be specified explicitly and merge two
snprintfs into a single one.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/bluetooth/btqca.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
index cdf09d9a9ad27c080f27c5fe8d61d76085e1fd2c..7d6b02fe2040ff16d9d62de683571e1e1900fe85 100644
--- a/drivers/bluetooth/btqca.c
+++ b/drivers/bluetooth/btqca.c
@@ -785,6 +785,7 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 		   const char *firmware_name, const char *rampatch_name)
 {
 	struct qca_fw_config config = {};
+	const char *variant = "";
 	int err;
 	u8 rom_ver = 0;
 	u32 soc_ver;
@@ -883,13 +884,11 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 		case QCA_WCN3990:
 		case QCA_WCN3991:
 		case QCA_WCN3998:
-			if (le32_to_cpu(ver.soc_id) == QCA_WCN3991_SOC_ID) {
-				snprintf(config.fwname, sizeof(config.fwname),
-					 "qca/crnv%02xu.bin", rom_ver);
-			} else {
-				snprintf(config.fwname, sizeof(config.fwname),
-					 "qca/crnv%02x.bin", rom_ver);
-			}
+			if (le32_to_cpu(ver.soc_id) == QCA_WCN3991_SOC_ID)
+				variant = "u";
+
+			snprintf(config.fwname, sizeof(config.fwname),
+				 "qca/crnv%02x%s.bin", rom_ver, variant);
 			break;
 		case QCA_WCN3988:
 			snprintf(config.fwname, sizeof(config.fwname),

-- 
2.39.5


