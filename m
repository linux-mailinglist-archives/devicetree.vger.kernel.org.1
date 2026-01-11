Return-Path: <devicetree+bounces-253528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D92D4D0E6A7
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 09:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3B283015A86
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 08:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371FC23AB95;
	Sun, 11 Jan 2026 08:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="fQe6j+jp"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFDB318B89
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 08:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768121953; cv=none; b=Q15rM6Vz/cPmyUgRCf4RcU2NDHJfcCZvAVU42x5W8/T83wOwGV5uDrKsvDXad9VHZuTEYxImJDCSiTVR1Bmzy7/+xQAED0aWbRrzJQtODPtYuPn7IxI/c4x7WR+EA7VeSGhaW5Lgfy1qEb7e9ZyjyVz+JZGkT3rxqUaPb7BQukg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768121953; c=relaxed/simple;
	bh=OMnxSCOo+XhGkr9+hOhYsa5CIL79m9J5nln9wpamLdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OUOn1yENE5csEjKbZ4FqkCFx6Ch3V03Ki7nB/ZqaiU/kp+EO1QACPEg1BonjgniqLYsgg+EROl4Nnx9gF609T+JtSHrM8syUxKNRSR8SSMZ1H3VurtYook2zU1rnE/EpW+mJju51HOmU1f2SsKA2WSLnJ9U8S7kFkalQLK3laSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=fQe6j+jp; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768121941;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KlM8GW6dNWlsV+KPsCx9fvHYgo0b9tuMTX8d9qhaIoo=;
	b=fQe6j+jpoJdLqYMfLR29f6RRAgMBHmZdzshJf8jcolTJPiORe9dnB54ERSP5IzQ9IA7gUo
	klD9wPOAVzGwxK6+No81TAg/3kAythqgpPCftdapmpL1uH1Hl+M4GbC0ZEA6bp24acCtK9
	l9ALdEt9WzJKmYBMX/FQiKjZiP/A8BNxke3YFCRoMysIIKKSF6fB5MBMApsxB8K3IvqgB1
	+KrhUBUnEufOqjaydwePld/HqUG/0mYx2w0boKnnpEQ4P5NCq91Fn9kKJH4sEaX4wK/1xM
	V4ErpFqI1NRGJniRf2TO1r8QOW771XnCOCYi23FHzrPgTD+byJkcckzC4s25WA==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: arm: qcom: Add ECS LIVA QC710
Date: Sun, 11 Jan 2026 05:35:09 -0300
Message-ID: <20260111085726.634091-3-val@packett.cool>
In-Reply-To: <20260111085726.634091-2-val@packett.cool>
References: <20260111085726.634091-2-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Document the SC7180 (Snapdragon 7c) based ECS LIVA QC710 mini PC/devkit.

Signed-off-by: Val Packett <val@packett.cool>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..54750b11895f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -385,6 +385,7 @@ properties:
       - items:
           - enum:
               - acer,aspire1
+              - ecs,liva-qc710
               - qcom,sc7180-idp
           - const: qcom,sc7180
 
-- 
2.51.2


