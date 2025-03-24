Return-Path: <devicetree+bounces-160165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF4FA6DAA2
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BAAB3AB5BC
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F3E25F789;
	Mon, 24 Mar 2025 13:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o4//6K7p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF99A18FC80
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821268; cv=none; b=F67ioeMoRLl3SdKxjYlwsF6HBJqj0qY/1K8JA7DyBaQYesEAasDloDvqTiufrT4c+lOTBeuBYgZmPUGcVOntyiTXnLMDwyv8Bt6ob8WAwkKBw9JkKWIaNWbEXOBAxzt+EtptU0UEWMlx5T168Z/CjDCBUgcxdRR7fMpC0dUa3AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821268; c=relaxed/simple;
	bh=hfdMYkI1wSY3YPTVRxCMq5RnZCB7Q8NWRrwf11y3dFk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N2Rqa+RDG2Nh9lfhim8yaP0Zxj4H8j9ZbHIBEs7kETYcPLQ8GCIMetQc0XTz/BXq53OYO4s3hQnPOTedNzpwU3/gUUaUFpro42NcsYJExBWqhzYn8SqQM7JMRmYervtkC+Zlin1jf7EsqDM0Kjt/VEVbJO0hnVj9Xhnt54deJ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o4//6K7p; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so34832665e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742821264; x=1743426064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dx8vnuvBu7CvSAoy4lTQTdohK7w44dk4P3RzF1FDAZw=;
        b=o4//6K7pf7K6MI9VsRIUvoKHD2Zwh7PXdTDM7VgOJmrC8sApVEyh7ljoUpk6wyEeqh
         Su0sr1ZCDk8zMaOJjHejMPPLmAQDQT/YLOMq0t1DDtbuQH0OC+1sKJ20KEKgPEqS7i0b
         bE336d2CKA73r+au571v7e623LApknAA5BXwK7q54sdalH/7tjOfWmhbhQ8igd31bzuT
         h8Ox48KbNF8gm4n95wo88HW5FI/hjKShvVdDM3ECjaB5btXJ97WSbwOEmRWa9rqf0qu2
         ThyLa/M4mCcShfrF6674PfyLZxGUHkvzfArzPLxOWUd+w4XbP8/aQ0rZCsDs2UbKzbo2
         HehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742821264; x=1743426064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dx8vnuvBu7CvSAoy4lTQTdohK7w44dk4P3RzF1FDAZw=;
        b=pA5xEQ5GLCYcxOyHxvGZ74vub4DcN3Si3Dsee7V5mbdWVnZ29evsu6Ac0v5ILiNMMU
         5KC1gCvqikYXVpu4lW8ndm2PyVFL1OAEM9oO9EM7CRDONYBc4y8paFEI0ZpkbRjzXcvr
         21CK0QTtdX5h4E4O+wyexy3jUKyb/FwGw424RpCLymjV93QDeoN5Ujpu1ZmFYeUavcj5
         wjXezNe3CbegKZMmdGea2TK3sFOwTAI5bHcXypRNWWGCssTibSCECJ4wgCJ7Ita7ttBw
         Eg1U6IGE6EV4cAfld93teDg0e5QJTaCS0SLcKbfyd9NUPCGGlLeXu+/nIg1P2vgBtVr4
         swqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWX4b6rEGWkKlSzAQivdVimr3iWk9OA6UH1Qliwu8xYF+vTaUNTS+Quby8XHLJo2xVsbzYH1U9sHgU5@vger.kernel.org
X-Gm-Message-State: AOJu0YzHJhakjunItqb6TXc7bya1AVaf8nnd3r/OwB8UdwrNz4zTGcoH
	Ca9U7Ws4ZDDwqL0Bbx75Wm7SqA3pl9/IgoGmiVvt8i6BYffK3PoxOGNlSPlWpplJyySA7C79Q3S
	PcfM=
X-Gm-Gg: ASbGncslK+N1JtM56D6pPShjjVCcl6Wwpwzw84SoYV4IcLJuv6omag5KdvWlbraoWIO
	0N2adDAl3mudUANVbxurR9XQmrYQJcLyzdaqpw7JX8Uf9q67BVHdjLAOIHuxsFd4rqdg9Ysic03
	r3wy6HQAMa9lVjUdbQ6vAJJq2VN0sR1d+q4onXhhHWzRnlw63g32IK2QwQQNq0LIeYHa6M4L0PU
	yCiCh3B8k4BeGWDtLFghAtOx3cVqypxQUtlvYcBNSNW46QNc8uAU4uDxsTaLu9EHWPT4dM6VDUe
	ppdGeAiDWB4F1YvTUZy0YFflUtcgnj7IwJi+nb7wY7sD2Q3DXWZi22VUh661C0zNoxrC2A==
X-Google-Smtp-Source: AGHT+IGs1hed7eFfngKtDdIfLF7CUa5raY/UTLvoWGsHn1iu0AT2ObRpnyWdq4Tep0xWDphEI1SbUQ==
X-Received: by 2002:a05:600c:1548:b0:43c:fb5b:84d8 with SMTP id 5b1f17b1804b1-43d509f2ebemr127044545e9.16.1742821263769;
        Mon, 24 Mar 2025 06:01:03 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd1c7sm122275975e9.40.2025.03.24.06.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:01:03 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/6] dt-bindings: mux: add optional regulator binding to gpio mux
Date: Mon, 24 Mar 2025 13:00:52 +0000
Message-Id: <20250324130057.4855-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi Mux Switch is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable. One such platform is Lenovo
T14s.

This patch adds required bindings in gpio-mux to add such optional regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mux/gpio-mux.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index b597c1f2c577..ef7e33ec85d4 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -25,6 +25,10 @@ properties:
     description:
       List of gpios used to control the multiplexer, least significant bit first.
 
+  mux-supply:
+    description:
+      Regulator to power on the multiplexer.
+
   '#mux-control-cells':
     enum: [ 0, 1 ]
 
-- 
2.39.5


