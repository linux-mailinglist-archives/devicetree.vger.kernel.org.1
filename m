Return-Path: <devicetree+bounces-264190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCuXBM6UimmaMAAAu9opvQ
	(envelope-from <devicetree+bounces-264190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:15:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A4E116357
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:15:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FBFC3030E94
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0414B264A65;
	Tue, 10 Feb 2026 02:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xyoyadl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99DA2877CF
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689735; cv=none; b=lsLEAWVRJU/zJFdrgMBHOxL6Zju+c0QTpTs8szbBseFWi1XYZXcTZNJfEFfPJY2nuz9pUm8PupCfWuOs2Y0W+XWe9iflsczwmES5jYUEh5FrQvofNsXSqiWFs++k2FCnZ1ZpP1UkhSHn8ve0eItPTxYgg9sI8APwnd01hKkYuUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689735; c=relaxed/simple;
	bh=LwQY7grzwcUW+QTgnyuDV4TejQal/ClXWJkqqkYMyec=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RzNd7nSwhfIhhNOQixi6u8Yk9qFv6kKgwz6Q6al1eI2oyGsVMJwIvzOVjaq6jGH+d+dgbryc2Wb8YCvrbcm114NeXkLTZ502TRaPszdcSWums4bczg1pJrQ9p85mAq7Vfe8Hh2JwVMQI4QdEo+gI0fL2pPK60jqWVnFtPggpt/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xyoyadl7; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-89545bd3324so43866726d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689734; x=1771294534; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JeaWfhc68XqImzZSWsU7VqEfXuo+BsiVEq9ohqBUBcA=;
        b=Xyoyadl7PXLGCw2ttXbnvqFADqiWti3lTW9qUTs3otyhcO0szXIQyKL6Kt1R8jDP8W
         OjRazxZzgWKRbj4A2oa6YxGl3/XaQGJS6UjmSvZRVmESQbVZcZkDrbnqTBS7/21c96Xd
         UP9mWYqdo2egRPjofdk1INdVtrJXGAGLjpCVVn4jIwszqiVas0PRVsxlICzdKdvVIaM5
         lPQ/+wEsevP6DDx9jtJ5rQIGK4sek798eJJfPa5Cp53/QajxBK61CmopMpuHQldgWUEc
         BiwZPDfVqq8F9ufhO+yVr0km4Ce3JIEmtNzsYf2GQu35+xw/58mNZNsAJO69+8T5k539
         BKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689734; x=1771294534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JeaWfhc68XqImzZSWsU7VqEfXuo+BsiVEq9ohqBUBcA=;
        b=Ew190LzNHaZBNKRU3l4l2pSngBELiO59jAb9mBSIoFyD11zWEi0COo6f/iBIE62m+v
         HM0pMDbBHkCeltFWnmSfp3m0PyyjHqnom2V/21P1QRfREdUWo61JTEqQn9Am+a7teIN/
         JMrf4DDd/tYVrdLQ5igK465U581rvCIxlZRAqvgRNeb9LK3EQDk5VlQ7TyGUqhT4TbDa
         3k9JuS2c/hUz177gpTnUXM2BCmxfrZ6FMI702RWWRJwmq9KWliqXWMZTrc2bGyoP9cp3
         fxYyFyeJsEp4VruyoeucYNfteg2cjyRUst/yKtAFmoZ0ZJtxPJlS2H71C+UnY6MFfIKA
         ZmcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTTkSQjnXnTHxJFMOiJXx9sps8VNq1NRarZa/iAP1nmZdOz1Se8ufyMLQF7oXP5kIBcAxLJFcpclQ9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzaw6vRYyQdS+mVHxEW7cgnz1+tIIdHJ0ampWbouIuPxrIXf98E
	UWBmkqjGNpkyPSY/h6Jwgeu3gjgpZ0nrizQyKd6Dvr3xRwlQccNZkNZR
X-Gm-Gg: AZuq6aKp+V4YODRXivvlZvD2/Lv6mnXmMcthdyKYwWiL/lgWknkOfHj2BYUkj476mYW
	yKg1YUO+9dOs0ZdEM969VibjPJmY+8FEUZ0QqFK032XpdUqBPG4U5GVhtLAWDuiSFK2ngW16pdp
	xEEH/NNWgHgLwrN83UP4/webPP4jaeSTujl73Qiw1JhgneAiMAHaf8Om5xGCerX25S/AI9pmzxI
	OHxZsQDI4H5vqFdyQmRoZPd7EuU97Mb9bcUVRr8JPnyA29zCLrNmUedqzdltk66jXj0f1ryYh6H
	LcRx+cOON5lul+RWWBkQ4aszIdgBpLCfJl6ZyKwICvhz4RMsHzth5GiGwCmOg6R62/kWFAKY37H
	vZJdXMcJVkDSQ3b4TAapJgRowW8idQZEAKAVZHkiIObmPQ39EvHlHLvC3/nVx4AJhbZq6LBXGc9
	WtTZA38HdpsGMGDK1xyPB8QhWzswrRoO1ShjO9p6RfrSgNsKf+g4/qJiiqPbb8YRng3z+mtMDH4
	LZL1uXq23GyGkOVMMgE95os8A==
X-Received: by 2002:ad4:5dc4:0:b0:894:7cd8:59b2 with SMTP id 6a1803df08f44-8953cb82eecmr210385876d6.58.1770689733852;
        Mon, 09 Feb 2026 18:15:33 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8953c03fc95sm89607166d6.26.2026.02.09.18.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:15:32 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 1/2] dt-bindings: thermal: tsens: add SDM670 compatible
Date: Mon,  9 Feb 2026 21:16:06 -0500
Message-ID: <20260210021607.12576-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210021607.12576-1-mailingradian@gmail.com>
References: <20260210021607.12576-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264190-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A5A4E116357
X-Rspamd-Action: no action

Add the compatible for the thermal sensors on the SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 3c5256b0cd9f..6c84f22ae322 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -71,6 +71,7 @@ properties:
               - qcom,sc8180x-tsens
               - qcom,sc8280xp-tsens
               - qcom,sdm630-tsens
+              - qcom,sdm670-tsens
               - qcom,sdm845-tsens
               - qcom,sm6115-tsens
               - qcom,sm6350-tsens
-- 
2.53.0


