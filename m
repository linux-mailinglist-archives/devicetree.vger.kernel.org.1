Return-Path: <devicetree+bounces-196675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 589BAB06A8A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 02:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A5AE3AD453
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 00:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47532155A25;
	Wed, 16 Jul 2025 00:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="i7JAVWVg"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CED610D
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 00:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752625929; cv=none; b=rzA2+DXIhCJEcbdaEdy7u2I6+Lt/75+qjKVaakx0YTdvJI1NlFN/V357zpCnL+IMgSZyK1ge7z3tiMqviAYCmf5ApjjCuSWM4vzcJ2PZfm0Runzivgf2YdeGuJ4c6RfrfYMKYikC5b1Iy8wvVwP7E67BGrqkLu2HLx9Wvko+9Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752625929; c=relaxed/simple;
	bh=oU6gwST/EhKagyz8ArrgsRAUtj9yIlkL6iDtmomZAaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DrFlIBi4pbXQxyOTgamdzyuLINSof82UQi/hbh7/xoeXZVfGUfZi6W5x1HsSQFEKUKHqYPHSk4pnGIrZHkb7iHG5TdoM40CdRF8VFGGYf3VWbIUzw05lFhXGPMGNdpYZ7WDfqCER0Y9U/u62YUdWBgtRtHO0KZO3n7orFCu+RNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=i7JAVWVg; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1752625923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i4XgiashTe7ZBIHRFl/KgS2Kni+UbeaC5atqJnYhW78=;
	b=i7JAVWVgA7CoNCYSJl70wmhgTYY/rRNHj+cQK6jzOtx46+ne9cSguGKMOPagW8H5opsWaa
	ZqvMXk6AyOMgiJpve15rWMXp3ftQW78SCwW8M1sCj9g78eJcNt5XjSJispuf6fMAOLUD/b
	IdcuQFj7MELuYIS+tP1AO2u5uGHnz3DrFaiEcobv+y4DuD3Jy7Q5s3/WyakxeH8fp3HAbR
	Qj1WwjaV9mYG+sQt4ojLfM1zY6zz+vV2he1unGq/CwAsLI2mN4Q1N82+8m+3TLdL+liAXi
	JhjfW+Z/A0hi00TLRfhsBQAywuNNKO3rW6EDJmARr+OkANMhhixChCOKrPETUw==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Val Packett <val@packett.cool>,
	Laurentiu Tudor <laurentiu.tudor1@dell.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: arm: qcom: Add Dell Inspiron 14 Plus 7441
Date: Tue, 15 Jul 2025 21:26:57 -0300
Message-ID: <20250716003139.18543-2-val@packett.cool>
In-Reply-To: <20250716003139.18543-1-val@packett.cool>
References: <20250716003139.18543-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Document the X1E80100-based Dell Inspiron 14 Plus 7441 laptop, codename:
Thena.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Val Packett <val@packett.cool>
Reviewed-by: Laurentiu Tudor <laurentiu.tudor1@dell.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ae43b3556580..8e3b804864fa 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1146,6 +1146,7 @@ properties:
           - enum:
               - asus,vivobook-s15
               - asus,zenbook-a14-ux3407ra
+              - dell,inspiron-14-plus-7441
               - dell,xps13-9345
               - hp,elitebook-ultra-g1q
               - hp,omnibook-x14
-- 
2.49.0


