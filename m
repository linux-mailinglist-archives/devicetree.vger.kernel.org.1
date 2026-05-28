Return-Path: <devicetree+bounces-303906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAFTD9dhGGpEjggAu9opvQ
	(envelope-from <devicetree+bounces-303906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 17:40:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CAC5F48AB
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 17:40:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73C363277121
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37673FAE10;
	Thu, 28 May 2026 15:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jD8yYUPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E82B3F8709
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 15:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779981619; cv=none; b=ECfiOPoeB0Ruu7TS00j+aijZj206XOcZP4ELASuXvJeHQ4V1dgsAuJz549+KYRdVaHF2I2zYPGowZ5zfVmq/zZd+Nvq+aRyPnFrm8tzXZht2pzEl+GwtwAfKfAN7GvrXsXbCOx1CFO20RSlclb6xnuyccfyegeVnYg8lwAvzuHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779981619; c=relaxed/simple;
	bh=FXboCykBhLUIndsG+vtr5MSXMPsvpSXgEuMQWktwGzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kiLdeIlLPWomzeM0ZFobfenzBNcoYEvJcZ3PHQMHA/WyLqsfnSbrLq8PoQQq8vCOpAn0L5yVS8R5zc5qbcr+jeAL+K0v7m2Z8jeCi+TsezNy2X3ZGDCmD7GwzLyqBIlXseNOjWIeEzi/PkjU2554SHTfsdPfgP2PZmB0HC61jqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jD8yYUPW; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-be4344dde59so235474866b.3
        for <devicetree@vger.kernel.org>; Thu, 28 May 2026 08:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779981618; x=1780586418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PNCsYy3NStJov2wLEidrFREbUcyjTnV5T0teBfOEPaE=;
        b=jD8yYUPWp+NC4xagkWy5COQqNoiLXc2qfrncPxz4+MUYuiBCQXSwFDXwHg3jOxiRHt
         vE6t8zFhLXiNiXy6YmNQBnzV6YFQ+8re/3j/qq5Ee3TIpVeBQV8xLy0UQMR4CITpxTFZ
         J2CTLlogrQEs4ZoDPA33iTp2yeCuv9kuaW1ZoJp/SKpMpdk8odQD9GjKRG4zg1PU2cph
         C1/G6Y0q2C8+sDkPuE8DJ5VJqVSwTKbZnqZ1Oh1LMEMfNhQFyZ1epWNsNrLUBsRXelVI
         5/ZwMN25TOU4Vam4FIh/5CoIU8w4kMXlAdZ9p3+lAyrzAJU4fyu5JLDUbBXoTCuddnk6
         FAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779981618; x=1780586418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PNCsYy3NStJov2wLEidrFREbUcyjTnV5T0teBfOEPaE=;
        b=N9SNkADdBd17TSQ2OnB1zDW1HY26AEqwcBxqaKjRBNHVznxfAw8LVFCofNZLrLy3yT
         US2Br2XyZpem7f1GaqxJAZW2qf/k1+MZ5tpxsBVEdPSefuTHNQrwgEspox7EFZIsMOSj
         hPOv/EdZaDtnQ5Ag+wjGwWliTA9wbFgWqxCe3UoE/baHLzHH0a3NbBEwbh7q75h/E0Z6
         TN76ida6ZFZi2hw+hqFxZyr6xv1gNEoNcy3QzZriOGFHJFtfWLN0JU5Gyt1UYhvHIhcR
         n+vAzwkNmeCoNDItUh5WJSH5zcQMQZYdjb4ziZG+uWMKFdDcyWR07ox250NXptE1uZth
         QiGA==
X-Gm-Message-State: AOJu0YxRFlYiA2sDV8U8iSKQVetUm1WNnCrHn24fR4XKifTBCkBCFAKr
	KId7PZBnLIrtgIZUWy3BVJ9VgxA/ANdYkYlkkk0JHr1JSkrlKTpB6tPy/wbeXTYC
X-Gm-Gg: Acq92OGJNe60ob5gtCZc7UeDoBbMpwG3nNlx15wco5hveb7839NFCv+u0QrXaF33wh5
	mHNahuuqiZQAbLrhm4K9mAynVgW0VDLVRVOmZQ1WKLW3CStLxX4XsCx44C0R/wzz1Rukk3ybAe0
	4F5o8DaNHsImOOrkOdHuE6BDhGF6Dl3IQmvMkt3WUAup8yHTKUqWBTFk1YX1SWxYRpeSVsPEjnk
	QKy5l/aAkgnGwLaRF6GrrjEnMGNyXziYbpzbsU6Y8/2gCJX5l86aucvPLORg8isJP8tT1UdCZ54
	sLj/1rY3q0jm0odG1LVrD6vpbz26dfNyz/b9nUdzcHZw79AL6ebioGhbbHAgq2dw6luga+FVZvz
	O8E5YHxpG8ZvYnsG8NfDZTsMBKqRZWkB1aPun8ltW03H07cYxFIb23r7CH76b6zsc7G6/GmC85Y
	GYi45miZTJZsG9l06Jox2jWYyknYtuqxx3Pg8au8ZxM56x/zaDOYDdvnrHwxFHVcPvMCYu4sA=
X-Received: by 2002:a17:907:60cb:b0:bda:e47:70c6 with SMTP id a640c23a62f3a-bdd22944feamr1778119366b.1.1779981617293;
        Thu, 28 May 2026 08:20:17 -0700 (PDT)
Received: from workstation.home (71-212-98-95.ftth.glasoperator.nl. [95.98.212.71])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68a6fb31611sm1984404a12.22.2026.05.28.08.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 08:20:16 -0700 (PDT)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v7 1/2] dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
Date: Thu, 28 May 2026 17:20:10 +0200
Message-ID: <20260528152011.376711-2-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260528152011.376711-1-zstaseg@gmail.com>
References: <20260528152011.376711-1-zstaseg@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,oss.qualcomm.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303906-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A9CAC5F48AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Xiaomi 12 Lite 5G (xiaomi,taoyao) is a smartphone based on the SM7325
SoC.

Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index b4943123d2e4..575ca67c940a 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1041,6 +1041,7 @@ properties:
       - items:
           - enum:
               - nothing,spacewar
+              - xiaomi,taoyao
           - const: qcom,sm7325
 
       - items:
-- 
2.51.0


