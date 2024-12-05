Return-Path: <devicetree+bounces-127667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3869E5E3E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B58D16BFC4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995B9226EE5;
	Thu,  5 Dec 2024 18:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="AUey5L7y"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EC618C034
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733423430; cv=none; b=i+PfQZZOCx9MEgNwXJHgux5hYWmebccbZ7E1ClIRiYCV7VKuhDFZF+tbY3WfiSSUwPtw5MzzwQFPedzBM2++17n/GnYiPqPYZGe7UJGGXj/s3wZTaIIwT8OyTF0aHjB62RemJatQP6gsl8lGI53mZynWonKyiJ99wVtGwdrSOcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733423430; c=relaxed/simple;
	bh=95quPXrAdfbDuqBjcmZ22F56YQwBFE7UqCbzf8JmLlQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h2SSzMfmCZ+kpFJiJAzrrYrwnj0Vx9HA7jzv8PwU9OBxt24RAjdqFioq+o78fGsOA3ipeP39VLZmELvLnmInAbsCYvk1RD2uXRO0HGmRC13qeQFg9ooo5IGk2sAWyCwnuAmnyl18uR5GiNMJPsC1DbliBMoKikb7sa9wTfqphmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=AUey5L7y; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733423425;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TkFcQWL7xs7GRrweqW2QeL14ugcBYgGFOAcV+eRKS1o=;
	b=AUey5L7yyC5O5EmErxvxqKQAIN6CbvGyk2w5kVwJeC7t2tWMHbAr3lE4XgHzWBRLqBaNDK
	RvbF0I6c69aNMkXECJ+gTu93x9duEeog1AdxrgbKabazA+XmG5R+snMPrmY6ZtwW9G3b5j
	3n/AVqLM3RCex7PP7zNFaKjJeXFobhDCE+NaUuCev5v5S0NM6ngv9qax+r7vs0LZgQm46Q
	p4q4OgzVFhBCDzSuzc5s7M+zRIXbunAoFUJ2POBa5wbEcx0Z5vk/8oBJprKTlPkRk25DcV
	g54vr7nvD3jdCkG78ZXQQjLogMil3goZZBAS5V8cPsrh/rAV4f/xqq4P61uLoA==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: rk3188-common: add PCLK_CIF0/PCLK_CIF1
Date: Thu,  5 Dec 2024 15:29:35 -0300
Message-ID: <20241205182954.5346-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add missing clock IDs for the CIF (Camera InterFace) blocks
on the RK3188/RK3066.

Signed-off-by: Val Packett <val@packett.cool>
---

v2: split dt-bindings into separate patch
    (oops, thought that only applies to actual yaml and not headers)

 include/dt-bindings/clock/rk3188-cru-common.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/rk3188-cru-common.h b/include/dt-bindings/clock/rk3188-cru-common.h
index 01e14ab252a7..dd988cc9d582 100644
--- a/include/dt-bindings/clock/rk3188-cru-common.h
+++ b/include/dt-bindings/clock/rk3188-cru-common.h
@@ -103,6 +103,8 @@
 #define PCLK_PERI		351
 #define PCLK_DDRUPCTL		352
 #define PCLK_PUBL		353
+#define PCLK_CIF0		354
+#define PCLK_CIF1		355
 
 /* hclk gates */
 #define HCLK_SDMMC		448
-- 
2.47.1


