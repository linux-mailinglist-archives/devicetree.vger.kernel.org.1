Return-Path: <devicetree+bounces-56456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E258995C4
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA2C6B21CB9
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 06:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686F928DC9;
	Fri,  5 Apr 2024 06:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VEkTV+7k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08EA24205
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 06:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712299595; cv=none; b=QW8f6qRiVH7FhaYMIaf0h3H5ZajioII0lSkVpJzZ9OVEb0BHaD8vRcSSzcVaggIi+b38TAcbRhrfDcNf2nm2FLyZeJFZhCV6J+hJZNq2g444Yipzko3vm5pDVApA0S59hQCcQ57z6EYncLU2qDf4jH5uPJ+OP/+Mne+NaIxh2aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712299595; c=relaxed/simple;
	bh=SSY0pLlHJeYRvDgI1lTviLdWsNgO7Ph4lkeCHDnCZQ0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UUBujBvJFeln5dJ1HayUEilkXoeDjtSrPy1z9UZP364bEFj1UwBTmro7xagjbzebuC8mnTvWROUcEkYVxR8c94itOkcSQRB4JrJr2Q26dMR+7u97AV59YDiRFSU/ltjaqJn8h4qplV/Sj+8tFJi4IODE7+LewlDo1I9Ib6rrTq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VEkTV+7k; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56e1a1c0ec9so1633640a12.3
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 23:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712299592; x=1712904392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bqaOKeWznzlvC1XCcKBAQS54bawEm7Vn0+X5Xfjzv+I=;
        b=VEkTV+7k8seLovDCqd96ly627vY2mBtKFVRWCt8K/udHo8DwXvIakaKAxT3UI5+AW4
         51q+jdfHrFuJtmfevV5tIav8pxLY2E8BhBDKya0FQ7+kK1tzHpW52Q53Qk4lvVNcruP/
         wsP2Mmwl3oA6h79C50U44R1AD6Raat8DKGD2pBRltqPTjVUWjQ3XldE+u079p1OqFNdD
         Qe+a9UNdQaG4AKLwHDeJ6WtpIsGWl6P/3C+QELB1IQR1blN26AOLHoq4ab0Pm4Sb/i//
         6HG/1QP6vW0VaGYPmQ3x+3KZF602/g7WBg6gKccUFwQOZcBZZWUsbwnk1V+clJLn+Yl6
         JGJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299592; x=1712904392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bqaOKeWznzlvC1XCcKBAQS54bawEm7Vn0+X5Xfjzv+I=;
        b=u55STyzEcfVjYUxgSUsnj4HOH7ZkVE0dSVxG2mdM+ZET8r4Q0uJTBTa43gIXcvXl8x
         iiBAkce8N8PFzD+DSyFDk5JHNeHZv9IrEi7e2wxUkh2SwDupjtEboqoXyx9I9QsJQsZI
         AW6UDKjApSXIz4YxJZc+xOSYXsjwft8ZGjCFJOqcmgB88t2GKNWkIKaMhTSiQKe4GG4F
         25wUURRv7XoLD36R/KK9ufwSsqJHFFgTl6EedlwyqgQgqHZse97sR/awhzfTyfrMt+b/
         0Al0fRhPSuJbAhAexY4TsPfJgv2NHErlc1K5yiqg7svY5jzcdNLvG6+qcr2bLySloLDi
         Zm+g==
X-Forwarded-Encrypted: i=1; AJvYcCUfTUN3dfkm9v4oYoZPX9gedlO/R/eVG/AHiyJngoizXOqPfQy9GtATtkvz75iT+ICSwxeJzT8I4iCgXLAMiAdj4wQRLkvrBQVX3A==
X-Gm-Message-State: AOJu0YyywA6E4BgSXK5/9joWdcx21rrHfkqV1uW5nlo7ZdFGgkK+ouxP
	a4khKJf30WHeWumu2OMcpQVcIuaWGPQ8wMRboNli16YHCXztfEf8PIWrXrpYJ9A=
X-Google-Smtp-Source: AGHT+IHaq8ZI5s360lQz4Csf07pRYkxlWqzQ5JJ18jBlHILxctxfqmu+H82/vJ4d6O4xMd9eJrn7UQ==
X-Received: by 2002:a50:d784:0:b0:568:7c01:a4a2 with SMTP id w4-20020a50d784000000b005687c01a4a2mr352531edi.13.1712299592051;
        Thu, 04 Apr 2024 23:46:32 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id en16-20020a056402529000b0056e310e6655sm278888edb.68.2024.04.04.23.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 23:46:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/5] ARM: dts: aspeed: yosemitev2: correct Mellanox multi-host property
Date: Fri,  5 Apr 2024 08:46:22 +0200
Message-Id: <20240405064624.18997-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405064624.18997-1-krzysztof.kozlowski@linaro.org>
References: <20240405064624.18997-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"mlx,multi-host" is using incorrect vendor prefix and is not documented.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
index 6bf2ff85a40e..5143f85fbd70 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
@@ -95,7 +95,7 @@ &mac0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii1_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &adc {
-- 
2.34.1


