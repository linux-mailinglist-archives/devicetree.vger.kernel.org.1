Return-Path: <devicetree+bounces-145127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC11A30659
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3435E1882AA6
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5943F1F12E8;
	Tue, 11 Feb 2025 08:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X3Dbp6hF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FC61F0E29
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 08:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739263977; cv=none; b=bOm/PDW6UBO7T4nn3Ij5rTP5iDujayZy9wQBGz4pVh5K0YgCTMN1YP/ETwJXuR8CG0RpM7CafjKx8Vk1zzaVVIZk1zr4+VxEzsPB8XsRTbvjG7zBZZ/izfGwgZo9uaTsI2CwePh7k0zkIZcPK0lMYcRuFRSbyGS9ZeuwKP4lCyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739263977; c=relaxed/simple;
	bh=mxio+qKZ0oCarMDdKVLWSkQ5r9o/ZU/FWiQSXWeFPIk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vw+1axBWBjW7WYkzUDXwZPV+doFL9ELyyEcr+qtJwP05qYb4cH0YU3no8D2Y9aORiG5RZ+Lo1sLudkiL8NldK5zZF6PP008kAh02eSRaW2f7tYiO0TZxX8HAcVMrfDGs6vP6t0QAHnsMCaFWOtSRuH7DtF6MNgieRxroYgXOAjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X3Dbp6hF; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38dcc6bfbccso2159074f8f.0
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 00:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739263974; x=1739868774; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zHOUQzUPyOdT3w4jRKuGIg3i9ApsudVpLcIIKx7XFPI=;
        b=X3Dbp6hFvJd2hPDeCfChZyiahHr1ETDnkSqr01VulT+XZsifxKXqH8jbzqb97bktbI
         CodMaGZplQTwEgPcoJUq1YafLx7uPp3M/GZe9C0XqrvZyxqtFRC8li/FKNYl6rQ95shG
         j+fWji85sQ3IyCPEvJbMWf9WMjqAx4bUDB//sRXd8neIx2mTicPiioOoXCTpitilJhLN
         GbtHteYp2k6F0L4M810WYuLiwFaDvrDGYsNGtWJUKSq0j+vN7DJ/I2aHZ8kOUSqSmr1O
         heh6/VEffPy+UqhHfIV/CtN26X3rcoeQMSLV8CvXMibnKETWqBur5+V8cE8aGeanJcR/
         eYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739263974; x=1739868774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zHOUQzUPyOdT3w4jRKuGIg3i9ApsudVpLcIIKx7XFPI=;
        b=B7v2awGq1oPADcUNpj4sgQGvYMjk5WTWLqFizUPI93uT9B8/RY8rPJk3yJL4bmvDWJ
         m4Bfwjw/oq3qEujS+qX1CyTsTQcfSFDpnA7dCN95eMKbgoo1Jk3SJyisfRkWz/6hNsb2
         P+IuHMMMIuM5B2X4dhn9WhIgWqRRUHefaqXemoioJ3LAedXAvdvLUGv1QqctVBlh2eBf
         KmKJ2Z+29RcUFPNGorJu5WNX6z7yVXtuvhMTMYuNFyyDTtEJLdKuH7u+TerVWo2UfKvv
         LMWGqF681/WGxQS+PfJkjEYER7PAOLWS8JfunDheHBNyBpUkyo4h66IcRhU7+O3Z8083
         BYZA==
X-Forwarded-Encrypted: i=1; AJvYcCVGWf5RzDWrsbgqUfEoOa03n3N4hJts4AdtePZAyOzjosrxeDgZ1daSoey1vOLw9fx98DlLdyL/7cle@vger.kernel.org
X-Gm-Message-State: AOJu0YxcdCddA4UtguNkkxPB1EzobVDkYTPReJbCFsjxtpKeUxR1xcSv
	teBml35BB3flM8IKYMLJia2bCJNh4n392a8W0hyTHZYsBwJXhigXboiilHXqQo4=
X-Gm-Gg: ASbGncu5lIMwZcZpHxVpkyTnEg8SSArbl4so5zAArFUmFtTuDO0SK8tvSaeef/N2UXu
	h2wWQnHezFDmeO9rfWll474a6kaocI1h5pRqebBI5arnD8PQSdR186SCI8goVmM3k7h5SgChRTz
	mKn6S7x/dooXzgnvZEPJJj1jbX4Sc1dfclE3Qk/SAuAXttWTkmpSaOeZB9eJLdGi6mwya3gf2cs
	Tmly5PH0+GVJdYe073byA0FfFTfaxoUkfsT4trfVcy4LvWDyU2/fPTiU9v4atZoXYNBPa5MSyLe
	I3Mv/K2g6VSKGGubgooDw8KwApNaW350u+IibjSLGp5JtLQPfStqpwLYd16xdhA2pWatKSQ=
X-Google-Smtp-Source: AGHT+IHrkFdDd7iCklHzfZCCf6qXnYWRV7DGmwy6HyhX0bhwjVCEoM+UF6b0MZDOv2RBBD41AthhEg==
X-Received: by 2002:a5d:588d:0:b0:38d:e2ab:1967 with SMTP id ffacd0b85a97d-38de2ab1ab7mr3564345f8f.52.1739263973713;
        Tue, 11 Feb 2025 00:52:53 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d94d7d4sm207698225e9.10.2025.02.11.00.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 00:52:53 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 11 Feb 2025 08:52:51 +0000
Subject: [PATCH v8 3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM
 mailbox protocol
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250211-gs101-acpm-v8-3-01d01f522da6@linaro.org>
References: <20250211-gs101-acpm-v8-0-01d01f522da6@linaro.org>
In-Reply-To: <20250211-gs101-acpm-v8-0-01d01f522da6@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739263970; l=1230;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=mxio+qKZ0oCarMDdKVLWSkQ5r9o/ZU/FWiQSXWeFPIk=;
 b=2O1NkUnh2TsrjToYDOxMeBlIfmePDYbb3kMBJmkogPAiIVhuu+RBXSeyCeYc4C6ct+kFEsfXh
 uAbNqfEv/4BBCwU+T03HDvfydAx+8udUwH3S2KEWt1XMlK5Agk6pJdU
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 896a307fa065..79ac2f3abff0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3070,6 +3070,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/firmware/samsung/
 F:	drivers/mailbox/exynos-mailbox.c
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
@@ -20899,6 +20900,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS ACPM MAILBOX PROTOCOL
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+F:	drivers/firmware/samsung/exynos-acpm*
+F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
+
 SAMSUNG EXYNOS MAILBOX DRIVER
 M:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.48.1.502.g6dc24dfdaf-goog


