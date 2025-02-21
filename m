Return-Path: <devicetree+bounces-149533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D282A3FBC7
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B70ED8673BC
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB63B20B7EC;
	Fri, 21 Feb 2025 16:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FpKrEL5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB2F1F3FE8
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155600; cv=none; b=XwC34npWca74iiBDCG2jMGuZbqsM/MyFC/4ZQZP79i4k/qWqkGXJEn3n40geUZ8o668EgCKY8gMMpRWU+hYeIR1AWtLA9vdBiBkoPU/rVKXZZjPDBuWl3ICg+3ciPjQA5jAPhtvaNtIy2Ic4PbJqcW8ykPqcMb8p7vt9oC6gsgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155600; c=relaxed/simple;
	bh=58el747QaUYblc8PrcT2XRT/P6dYHKEqnzf+Xf3ZDsY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bN6xRWKtdYgB8qVKVVfSvaNwspiTg38Es77Uvr7tX5XJhtISnfGqDaLR8UkzeAbXoqAtOYOPszs9EOQu/AU8uBBS+OJoEGVfgcnDNCg+eNG99dS9J5qyCooQ7X49HbASCY/u2XtjcDH38EUvB8Jz8n199qN3KsWdr5O1stB+DHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FpKrEL5g; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ab7098af6fdso35780966b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155596; x=1740760396; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pr6V4CE4n+/ohix4U8o9yXYKziEg4CQrF9x7lwxCJ/s=;
        b=FpKrEL5gLZ93FuJvTZ1o6FN+UlwJ5w/6x6oaGkz9t4IlJMmAvqFGIe1IDxb6ciBeO2
         2GWUpMBaUAhN5RXTFmUgsSWrWq5OYs1ll79Pi/Gh3YVIvMrWPSHj1MHQ4OMmKOQIhup5
         0EmGZ2v8HWj1OYCdl32kG/m6RjbZIK/YhwFu9P+qPDRfYhsPelNFk8PbXheEmVMWXvId
         /aKY15tfgF2hyPgqBcLVpFZvrnSTrdiGs0VHildz67YpGiwe+rJcRLpzhY//1itR54BN
         60GP94zd2Fd1MTBs7uVbd8ERWTqT201hpOLOheOUtrdHcoXinusgAGcLhLgc3m+ljkBU
         su8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155596; x=1740760396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pr6V4CE4n+/ohix4U8o9yXYKziEg4CQrF9x7lwxCJ/s=;
        b=b8vW0ygsGuWGOV+nYUR4Z0e89166vT7wTnJApROaIF+rFur6CNMdmnCpvKs6xLW2Yz
         53r1k+hBJRMtyFB1gF6msv63W7LUfYlg5qHRW90yiHKN+6bQaE+gJUrnjH8F32vbdWs9
         N/av2WUOPmV/6NweiK/6kWSOG3npPjj5ND484zfNciyKtS5OA+NuI6LWqPQcdHqR5y9y
         nDfymcdoz+9p4VELZ+jFANf5hKx9ljxltFyR+q845i8ebME6zNjH3Y5KjJ8ROgB8sCFw
         aLHFvjQ0xwRlSrzgw4YJD4QcqYom7DqGuc6d50y72O6hB79OlS1E921bbfNxXAoniXYy
         GuHw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ26cpabYc81MfryxfKxMXdnXAhtyDtWTcZ+KupCIqYtnZI9Z14Q8lvSqnRyT9wrzBoxrEB5R5xXMn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr77LhDQ4x/MYxVimZ5sR2pflr8oPvlUPd8EYIolm3g1TKP4ji
	K+bWoSxtxgFSFPte0JS9IbqNk9R+2XzdXsfptyt8AOxaaON3wK7kUEA0K5AXrtA=
X-Gm-Gg: ASbGncui8taezvXKppdUK2ZWyTWlbbofpMzJ3MvZaUJKijox2FgvJ7Pp5zmyBd4k+sU
	R6UYTaTj4cIpQrRBCxTIdXCapw81pd5C6S+LK9rrHBNy4bfQOZNKaUVQJeZNQ5bXjZPyRD+FC5R
	xRubTWrMezweKzX2LRzstjk4TdVi3rsVkuEfii6uy864++2a7GRwIBxPcu5YV1nK++zwL4dZelm
	/zO2Ozx3xsBkm/1CuKxTOg4Qv+rSnDYrmPMdGNXxazunR6mTj9axBePgqDhUAg1c1BuOgOj7P7/
	KEkH8gkh5fMYWrLu6mIZPcY+snRBW3ePGUlKAxuN5Fz6kQGMSUiyX/wqFGySejoDh/ZFXT1W8Vc
	n
X-Google-Smtp-Source: AGHT+IFEHDWaO5nyIxPiWWcbwkOBVSwasZgtjTgcGcSW2UKpgSK8+2mgZdfDWWay6nQZOldOVXVwpA==
X-Received: by 2002:a17:907:7e90:b0:abb:ebfe:d5e9 with SMTP id a640c23a62f3a-abc09becfd6mr137980166b.9.1740155596394;
        Fri, 21 Feb 2025 08:33:16 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba4fc0c29sm906814066b.157.2025.02.21.08.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:33:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 17:33:06 +0100
Subject: [PATCH RFC v3 2/3] arm64: dts: qcom: sm8750-mtp: Enable modem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-modem-v3-2-462dae7303c7@linaro.org>
References: <20250221-b4-sm8750-modem-v3-0-462dae7303c7@linaro.org>
In-Reply-To: <20250221-b4-sm8750-modem-v3-0-462dae7303c7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=879;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=58el747QaUYblc8PrcT2XRT/P6dYHKEqnzf+Xf3ZDsY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuKrGMc69vwxtmqYIn594pRbxcKz5y0PDRR7xG
 gfyLYQ9BeaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iqxgAKCRDBN2bmhouD
 1yEBD/9LimOUG6VHa6OBQzMNZnvayMoedtA4hcmr9gQaqWwaH3Ec6W2kbGL09BwUysR+JXQnvPm
 3Aa+7OuUltSfutHk28u6XjiHPxbwPZWrGgxXP0nim36evinyEyISPofl/qkepkWsXVf0o97XzlR
 luhyvG+L7HiYZLBNl2TeMTcHP7PKwaVFefwcl3h9tjgiVIoZSsBsYJ5hu/A8LB8yPgFKDFE2I7k
 Do58nsM5V0rUJ1/PKJB46L6VKDTd1PfQEH1rZl/0Oe5A53kCSyu9baT9py6c0vG2mLu2auKHuhw
 vMWoCyb93OOyqpEyes7fbgAWG85AoFfMLxjLV0nQIniaNHmlKpF5ley8gcyRouWUHMnSEN2xIR6
 alifhJbYbukvIntM4WXUpWo4aP/MEzWhUueUCzY9Al3Ox7NRKwLZ65MQRaE+ukmvIAAKysPhEx/
 8gPunb0jIX8J3JxSW1XVk1QcZGACsLMvIqsubV5omB4chk0INskQ562X2qeIj3mZZJu4WYVJplT
 pFiHb5N3AZk7QuMv3Jexo/h76gkKEltGg/9EzmUPzeSAoy7sO3z4fUvP49aCo87vVPN2jprL6gw
 3atH4u1QhCcNshhIz4p7qC0Ud7ljtsJyrSs4ltiPXs1kCHMHx4FdTf0s6qUqUTJmf5RtizWUYOV
 dy+CRaUE091G6vw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable the modem (MPSS) on MPT8750 board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 5d0decd2aa2d0e0849414534cdd504714402458e..72f081a890dfe49bfbee5e91b9e51da53b9d8baf 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -798,6 +798,14 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&remoteproc_mpss {
+	firmware-name = "qcom/sm8750/modem.mbn",
+			"qcom/sm8750/modem_dtb.mbn";
+
+	/* Modem crashes after some time with "DOG detects stalled initialization" */
+	status = "fail";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0


