Return-Path: <devicetree+bounces-173168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A86C6AA7B04
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 197624A573A
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B044201264;
	Fri,  2 May 2025 20:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i4EJkGsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A491F1511
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 20:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746218517; cv=none; b=D1hk6jDeve0UPFvof4cSSvf5A1BaocycCusEwKej17aZaZw0QvqJoLLefr+z2+tz4GUzfzJ1RX40rWS2VmBjDJJq+C5sRyp2DicyQE2CufNWbsgMSxSv0ZRCGm8IYqRJMElPqReCKRRuYeVGxLCy3bTZxG27b7p6OJN4SEILghc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746218517; c=relaxed/simple;
	bh=qBDUTYfzbVj4jXoJDjArfLtf7f0N+upaqktsRCcQKIY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KPMDk4dDpRpi3ztyA+dXwiNBNVu8s9sT1zzS1+vRQG4dw1ohQd9qsmyCd/o27fAUVqrqZ0odVAmBpwjiFU+2/T5TT1ATfjbOMcgGUC0FxjEjpDYeNjMsmziXey4zwlUe6drxbZCZW0dBdo1mWYQICw27d5SfgRo4scfRXyOYc4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i4EJkGsV; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54d72d40343so653982e87.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746218514; x=1746823314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khZWzuPw8MC9kU83MrZsLmGuXdBa+7WXl5EAK6pqTCQ=;
        b=i4EJkGsVk7Jzw0oHMsycFm3uB80owx0f2IXu/9ByBbivZFAp9BQ0mBD4t6bcMisWpQ
         5ilk3RRE8hZlCTLWQTI05x2Kf75gb3SKeh1SrqZte8kupz+Kp+g6NH4aGNT0pbsN2ZUb
         3U8NUY5BBeBlovbHFHjMi+PhTFcc1ePA8gEUxkjp/+uMpwQx9uG+njo+uVES+SApDIk1
         Uhvr27Z6hD960vxtIqJZJRPxowUNKFU7MpTY5VAWkq/Jwfj7om20++9AXRw2AduqkEOq
         7yUTxsXBzaFc8vsyu46KNZDQr+QkAdGFTLv+9yRKFNDBRFFc7eMyZJOiCnDyhlXJtTVd
         aFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746218514; x=1746823314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=khZWzuPw8MC9kU83MrZsLmGuXdBa+7WXl5EAK6pqTCQ=;
        b=rXr2RVcjX/3Tu6X1kjZgW1xJYpvExVk99yOmGuYkjVkdRqnzVxWB/XxKqFt4IxFjIS
         xMTBfqidr0kg3IN71CeKdFAOwwcyWaj6WTONcOyQlh0++7JJ7qQORxuhi8Txz/ZJL/bz
         skoiTcojQX2D7nV1m039GWRlJMQhBiBuDWbHpoolG+hQNYvTiSc6y450hPNJGac0Bljn
         6lTNrwP1qTMRlO7AQudVOWGBSXkyHFMDpEaym71Ent+UeUBdtxe+ieW4McYGDoP798eq
         doXscJmir9hn7xRO55M8t1b+ecFpO9RyzxXykh66rZNeM/L8hbs7oYXmYySUS+BDBlgd
         dQwg==
X-Forwarded-Encrypted: i=1; AJvYcCWpSofA21ENe2xyiChSQ4pF2lsM/7nZFlMtL3aTIeJhWQx0PAA60mqwCtrMbo30k1Jd43/nvWHjW0/a@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp0AVXHCPn7oFEFSuwPF0aKouySQ6hUTvX2sLVh5w+uoZUn4hh
	GPQGZGkESUflr0ow2xE+98gavI3k9U6BhgxTk0POQxC59ZtGV5oRBcecCpUS/C24zQk+CEHw0b/
	j
X-Gm-Gg: ASbGncuoanG7YM1aQmo02Y09doPeXCZIjWebyzrMNNfl3G4BjKL1v0jfmqkrVYhhTtD
	P+iv2lOFqNeJvOpmvcKht+RJV5TnWroImLexhlQ1vPZhha/r7ClRQS/g52N5gzze+bl+sI0iz9y
	MXVZ4vVBK3eZX31bPYZFf4SVP/iuwdQ1GmGLfdSx85BqIzOCeyk0AmX8MXD9GHgK5bTN9ShKyzX
	CZC+fkg0TtX43P5HTkpOxBAjlLtTmODdYOaijWxRidk/M0KNaTamYon8m8HGbX4ZVaRjEcWOIFc
	dmdo+wd6G7BwXg8R9pgpShZir1/QpUoyFVvl1Y3CFyyqzvyipdfyTRD0O1PMR0ZGNMblIFmDn50
	4tyeBmeazeAvf7i7FQ6L7+ir7QAiRQA==
X-Google-Smtp-Source: AGHT+IF9w9Sh+K5UeYPgY598Q8/d8QkQIttClodfsnlBm65lYDB74O37sG6+IfqFPPHvC17r53zC5g==
X-Received: by 2002:a2e:a5c2:0:b0:30b:cacd:fd82 with SMTP id 38308e7fff4ca-320c4000f3bmr3832171fa.5.1746218513678;
        Fri, 02 May 2025 13:41:53 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32029017825sm4675301fa.40.2025.05.02.13.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 13:41:53 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: media: qcom,x1e80100-camss: Add optional bus-type property
Date: Fri,  2 May 2025 23:41:41 +0300
Message-ID: <20250502204142.2064496-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since CSIPHY IP on modern Qualcomm SoCs supports D-PHY and C-PHY
interfaces, it might be necessary to specify it explicitly for some
particular devices.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 680f3f514132..2e7455bd75ec 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -153,6 +153,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
-- 
2.45.2


