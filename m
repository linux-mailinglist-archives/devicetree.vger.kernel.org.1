Return-Path: <devicetree+bounces-78994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC08913DBB
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 21:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1237B20E79
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 19:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A47184137;
	Sun, 23 Jun 2024 19:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="quI0jAie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0731822CE
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 19:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719171269; cv=none; b=oTNwl1CXSjhkeEtvC0vHeD2eCyu+1cwzXHq7dj9xAPlKCxTvpIBFcxnc1cCyNoMmlsNKKEbwm2r2M9eMh190Y8d0zFcuW3abuk310TB2WjB7KAiEOzlZmZXNwO2A5dkKxYQ6cOAzl25GSYAOozj9cGcrh6rmr7DY7EAfIsKY0ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719171269; c=relaxed/simple;
	bh=ct1ik3BGCjjOeqErtdK1uMsUpovr6hfYlxq2FElf6b4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r4Fz8f7tlFzQ8VxeccIxY9bQEfWjbA0GXqKRDC14EJwrx64ud6rBXWkwfUZkrtPEFqUJsaoWL+Q+rREyx5uy2XDObMKkXN7M0R4rfoUg/5GNakF/XEIzAFIl0DNGS2CWnasbryssRfV7hc2tIdx8Ok1xzxQ1A6E/tVi5Kd4wk2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=quI0jAie; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-364b2f92388so2472248f8f.2
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719171265; x=1719776065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jlJ9HKaPN5zKWsVg50zksinAvfEscvtSvPK9OhtidXw=;
        b=quI0jAieMNhmLJFKKDO5lthe0vRf+Zjysi/Arzf/GTEvEDOa1as/Jy+6dg2g2GqC8A
         1/zzOc96S4H3BJUpDZJeLo72LcbIVsyzcCgLjvNZqtFLOiEUfC4l+lUEex+MtjMOxWOH
         TXH3XVBfxi32Owj3SJXpOJPyyymCZcUIU9Qbl2kSL2GYL5PNSbVDcIvtHw0bBdLDSV+7
         ijFDPY3hEu1jqo0gNCS0Q8DkiCxvoYJeEINQCxoFK8N0hy6TjGVtl6+vR+1MHc59C6//
         dkq7BQpXIVG4X+AZ6Eo2J00YCNMLmOHBJHYF9XzVAZe6zUxggM+A+JbDUta+5+Im8G8q
         HHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719171265; x=1719776065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jlJ9HKaPN5zKWsVg50zksinAvfEscvtSvPK9OhtidXw=;
        b=ZBgsG+GoIcDsnuF/Y7mn2YLzuQjwpsxQOggbsFQ/qXIzeth+nkGh3iZPtyZKZnOK+O
         xSbyNuNvBYFvlri50AuWqcR68Dy0vxuTerMrCEyQC8vCSueKxshxzHgOlG1n6+fNsNE5
         ihQJOT9mT96Mid+qXCfYvHxz71V+eukBmb+FTBherZO1Tngc3Q4IDF24yYZws0lJO9A9
         bZe1hNudSJ5j/ID/fEN1wBzPoXUEYt/1wQKnt020VDXlQKXL7DoM6o2rZ2ke54W0Q8+/
         5nObhLwKqiXs3o/4MVpg0uoHWQ+nfdATxZ5RxvAxq7dafZYOgbYYnt7IRTwgv/P4YCew
         OeoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXismzVgOWhhkJO9vTH2hB7ZzPjJuinpSWHUQ56qtyHPZnZzOdS8vm+WEh3YOLDkXSCK6SX1pZdH4aELq/hfCWZn8pdmeLZRi8cJQ==
X-Gm-Message-State: AOJu0Ywmw9q/FOurlPumTsYaANyv4LNfKkxgeP9JnWt+w2W5YHpWXc2V
	B8gDKxreFhvgHsybwBjD/+blZX92cPn7G4nzqJ6OR23VifxsTIppb0GPR2c6D7k=
X-Google-Smtp-Source: AGHT+IHxnvgnCBnVOx5YrWZI7IIYL0JKxRUHUwFMlSq0RLjcqe7o5RxhbPGXRRATXFAddTNZRIxxnA==
X-Received: by 2002:adf:f003:0:b0:365:b695:ef76 with SMTP id ffacd0b85a97d-366e94d148amr1518807f8f.36.1719171265098;
        Sun, 23 Jun 2024 12:34:25 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d1fdsm114756015e9.7.2024.06.23.12.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 12:34:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] drm/msm/adreno: allow headless setup on SM8150 MTP
Date: Sun, 23 Jun 2024 21:34:19 +0200
Message-ID: <20240623193420.333735-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit f30ac26def18 ("arm64: dts: qcom: add sm8150 GPU nodes") re-used
amd,imageon compatible for the SM8150 just to enable headless mode due
to missing display controller nodes.  This work-around was later
narrowed to the SM8150 MTP board in commit 1642ab96efa4 ("arm64: dts:
qcom: sm8150: Don't start Adreno in headless mode").

This was not a correct solution, because the Qualcomm SM8150 SoC does
not have an AMD GPU and the SM8150 MTP board does not have magically
different GPU than SM8150 SoC.

Rely on board compatible to achieve the same in a Devicetree-correct
way.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_device.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index c3703a51287b..a8afe0b6429b 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -838,7 +838,8 @@ static int adreno_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	if (of_device_is_compatible(pdev->dev.of_node, "amd,imageon"))
+	if (of_device_is_compatible(pdev->dev.of_node, "amd,imageon") ||
+	    of_machine_is_compatible("qcom,sm8150-mtp"))
 		adreno_device_register_headless();
 
 	return 0;
-- 
2.43.0


