Return-Path: <devicetree+bounces-4698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9447B37B1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E087DB20C56
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E770521D7;
	Fri, 29 Sep 2023 16:16:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D851065881
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:16:54 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FEEBCC1
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:53 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4054496bde3so125427605e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696004212; x=1696609012; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MikOgdHnw9Cj1F3F15+YBxnX7Q0cPaNa5HmAcMHbwVs=;
        b=O9njQJNlxaO+5vYtzzBv+L1G164wb9pKOM/ECUQiF2NVNNPLwpII/tcG9bCwh0jPPd
         eFUAwxwV67GZsJ+q5E90eW4ZQNLZBludeTa350gSZoiQ4cxenY8iCnyKN8vIv0aPpBOg
         nY2XMIaaaNIMNUJzfyqFAcKoTKASOVFFVzKxfQuaUn0tbGwnYQg+MtDEup4OgolXitl1
         Yd/BxWSAFZOWca7KORGpYu/XDnBHTTzGPUJsp58aY229Ij492Ip2U3MJzEFwCF8V2LPm
         p/nXUS4elFVlq2iDSIEsL+FHk6ZG3eh4ooebmpeJpJbc7TPTPh9Q7aPnGg2AcyQGArd1
         c+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696004212; x=1696609012;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MikOgdHnw9Cj1F3F15+YBxnX7Q0cPaNa5HmAcMHbwVs=;
        b=i9+WNXumhRbylEa4zb1gY1ONpbjTT1mkED6CxIPHKvMCYGkHCHjXwmidDyVjR7EcW6
         DcRH8dJGpHYRavAt64yfnJXROcNFMlqHFVP/jTG66M9Y8mXMDwD3GtR+ae4gINPmyvpe
         1hDhgLh35MM6fyuVQo+QCWmwhgFUK0N22sBFBAsLr37laUt11NUWomGqvj4U4TI7xcwL
         pbGmH+WR0Vy1hl/32R6/x2+T4HojR5FMpde8gi9O7b7HPETT/0HU/942ec0FC0msr0EM
         X5kiDbbq7UwKut8BLDlPjqkb3ObAQLzzPZCrp0uHtHfWdTsc+ls5BTkMH0VYrckqXUfR
         10Qg==
X-Gm-Message-State: AOJu0YxeBj9XukD3Z3+nYayB4EYJ9UkXbm+Nd52KFSrd8ChEQ7O8pgHr
	ceon5yafZ7w9TGy5NpmyBTD7MQ==
X-Google-Smtp-Source: AGHT+IGh9+hHCV8PgonNR9t6AFEVc/cDbuI0Aqd6VW8dFYYBRvr/czuKcfiIKkHf283fsaQY+Cme5Q==
X-Received: by 2002:adf:f5c3:0:b0:314:350a:6912 with SMTP id k3-20020adff5c3000000b00314350a6912mr4034356wrp.36.1696004211549;
        Fri, 29 Sep 2023 09:16:51 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id x15-20020adfcc0f000000b0032330e43590sm10226848wrh.22.2023.09.29.09.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 09:16:51 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Fri, 29 Sep 2023 17:16:20 +0100
Subject: [PATCH 4/4] MAINTAINERS: Add entry for Qualcomm Cooling Driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230905-caleb-qmi_cooling-v1-4-5aa39d4164a7@linaro.org>
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
In-Reply-To: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
To: Andy Gross <agross@kernel.org>, 
 Bhupesh Sharma <bhupesh.linux@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=874;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=lGmSgXW2XFQ/63QULMjMdPqhafuryymoFyIIA0vaTv4=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSxH3k3+Bf291/I99V6oPb+kdyaZ+r2Kh0Zr0ryDjwKT
 X47/eahjlIWBkEOBlkxRRbxE8ssm9ZettfYvuACzBxWJpAhDFycAjCR6aIMf0WmOf4TP2lWzrrO
 Z86kBbf+Pnwx+brP5aM537axFL9jkGRm+B+dkP7m9KzXj94U3tmz1+oo1631m720+J2ksk6djA+
 b4HAfAA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add myself as the maintainer for the Qualcomm Cooling
driver.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 01dde0acebd3..d92cfa1dd57f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17800,6 +17800,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
 F:	drivers/mtd/nand/raw/qcom_nandc.c
 
+QUALCOMM QMI (THERMAL MITIGATION DEVICE) COOLING DRIVER
+M:	Caleb Connolly <caleb.connolly@linaro.org>
+L:	linux-pm@vger.kernel.org
+L:	linux-arm-msm@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
+F:	drivers/thermal/qcom/qmi-cooling.*
+
 QUALCOMM QSEECOM DRIVER
 M:	Maximilian Luz <luzmaximilian@gmail.com>
 L:	linux-arm-msm@vger.kernel.org

-- 
2.42.0


