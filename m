Return-Path: <devicetree+bounces-14000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 933107E1C2B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:29:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DA182811D5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886B414F6F;
	Mon,  6 Nov 2023 08:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lVc29sze"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27389156C5
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:29:02 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77B1EE1
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:28:59 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32fadd4ad09so2678990f8f.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259338; x=1699864138; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xVg64v95yLO2xex1BL7gRMAJXMhEd7O/tj6FlUFZN0M=;
        b=lVc29szezIrH76YjM49RJCPV1pOMEiTyQhQG5m+DPG6AnkzrZta/qlcaHFyqXQ1uj7
         CgYQ/Zh0xQcPItwcxPtyLEm53P7ObXt7rkN8ESMvKesglxgXNK3IKLiGtFK2qrjusUJn
         wOiT7TBOfz0JcIIqoIGAEOsjpD274juG3ByUsWtF0MUfOT+evDLUsUQqdVaZWoe40UYB
         0+2UyFkzhLzS1i/Aa1XaxtvhK5S4Mf6CxMq7EfmuqjY3fy1NX2kxSOE5H6dn3ZZ8IKsj
         7Y+68LehX52mBcUU8+p2D/4xCAG63PGA8xr+RpSwZFDyXBTMBVDD+5YR87g8UMT9t3vI
         w+YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259338; x=1699864138;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xVg64v95yLO2xex1BL7gRMAJXMhEd7O/tj6FlUFZN0M=;
        b=kSf/Mpqj9ZcqK7J06Vatg00q5i20LY6iWfYI62zv7zmTamp+hat/tRVGEx5QPCsOaC
         KUXr71wGTCk/EE7Dalbu+t1wZDkt9uLkn0utPZKFXtKK8a7zdFlO6MqyHukWx72/etAU
         wtpatDNkxwn/c+7kpaoxzYSTZLscB2zeahsivmiqVTCVHxHRecdPZqvhJis4LA9CXPqg
         n9beo4RtIEQHofbZin5XgoHsUjQVS5LwkemJj6hqOYWWnayBgRObfa67w3T7q/i9Eemw
         7bGewsGtjLu/BdtQGZ9S1FQLdZoVbsXlX1cfVjx2zWhGbHTawci0RctJRriusMr4nF7L
         omMQ==
X-Gm-Message-State: AOJu0YxHYOCh6zlQVJTQ8g2QkGLGyfka2nX9eqnu4geclGuNGiuI3r4J
	ub9q+SDN/pWw3kCU4KrqtOMXag==
X-Google-Smtp-Source: AGHT+IGY2cnezhqD5a4Qn8SdP/PaZgVRABtO639WGkDzPC167MVcjgtV+XmebbSkphTrwU19Hwpatg==
X-Received: by 2002:adf:f212:0:b0:32d:6891:f819 with SMTP id p18-20020adff212000000b0032d6891f819mr20273331wro.41.1699259337837;
        Mon, 06 Nov 2023 00:28:57 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id p12-20020adfce0c000000b0032dc1fc84f2sm8796126wrn.46.2023.11.06.00.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:28:57 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/3] remoteproc: qcom: Introduce DSP support for SM8650
Date: Mon, 06 Nov 2023 09:28:51 +0100
Message-Id: <20231106-topic-sm8650-upstream-remoteproc-v3-0-dbd4cabaeb47@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMOjSGUC/43NsQ6CMBSF4Vcxna1pixR08j2MQy0HaCK0uUWiI
 by7hTjopON/hu9MLIIcIjtuJkYYXXS+T5FtN8y2pm/AXZWaKaEyKaTmgw/O8tiVOhf8HuJAMB0
 ndH5AIG+51qYsgKuuAZaYQKjdY704X1K3Lg6enuvjKJf1jav8Nz5KLrgpKyWwt5ClPd1cb8jvP
 DVs0Uf1IWbiD1ElUYsDkBcKwqgvcZ7nFzPUOYAjAQAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2137;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=B9X5JABasgtm+WcKFvPVEvO8N6PQClAuoGJpo8AsdPc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKPHD0YsdSh7bY7ujlTyUQ0TyrgYOE/BHb3ZL5Ed
 hbLqxB+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUijxwAKCRB33NvayMhJ0bNrEA
 C3HPFS9RGc/8QaBBAHA1RQLRecbUsa+gJpLyMm0G/d+BsyP5wBN1Hf5j//tJczS+t13PRXOkUdrXM0
 7rBmkfo+0aORAr5MAeQUKlqKp6j7uz0vLn6XH74f0zaRtXH5niDYiIGjIEs7y0AgtaY8s3qvvksCFn
 D9xXgpF6/pRs8QafX9PTezYGksatZtm5vDRnJBsmS1iDtJxTw3vWVjSKqfZd/ErnsD8K3bwgzjUKIE
 l6r0RRGyg52HLUFi1/MovpThuRVK2CRVK0bAPQtcIZ4xBd20RexxAAB+LLbaZMDctGtzt7DQCnMIBq
 ChFf2m4Ac5V3mpfan0WUCYZ72Sa6tbBG7G9JDtAOBezEWaE570ZIc9+h1EcyGY4HfqrepQre1XGQBI
 /bsYwk7B8BIyQ9wZGVmv+wbZ/n6uHQWeTHboaZtaPPNxXEAjWs+if8Be4rkiG7ns4T+6N+FDWBuNVw
 qWP6lobtoxe3GfiuJYgUzHw+JkiyhwKOHw6KBTJa8uDrqQ5jbbQoUcoT5Slr5xfK53ShwiJ91ChFmD
 4PfGsZpIzr4BP8dU5miYdeEtvS3t3y/lbGKWpBI8iumOQuY5IoF/eQoo0ef0jmoHvxrjMpB+zq7ts+
 W8IUY3kSbwTorCbGVkZPmQd2o40cR5nNIIhkGPHHvsaikcPLyAc998cJb57A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the bindings and driver changes for DSP support on the
SM8650 platform in order to enable the aDSP, cDSP and MPSS
subsystems to boot.

Compared to SM8550, where SM8650 uses the same dual firmware files,
(dtb file and main firmware) the memory zones requirement has changed:
- cDSP: now requires 2 memory zones to be configured as shared
  between the cDSP and the HLOS subsystem
- MPSS: In addition to the memory zone required for the SM8550
  MPSS, another one is required to be configured for MPSS
  usage only.

In order to handle this and avoid code duplication, the region_assign_*
code patch has been made more generic and is able handle multiple
DSP-only memory zones (for MPSS) or DSP-HLOS shared memory zones (cDSP)
in the same region_assign functions.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Collected bindings review tags
- Small fixes suggested by Mukesh Ojha
- Link to v2: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-remoteproc-v2-0-609ee572e0a2@linaro.org

Changes in v2:
- Fixed sm8650 entries in allOf:if:then to match Krzysztof's comments
- Collected reviewed-by on patch 3
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org

---
Neil Armstrong (3):
      dt-bindings: remoteproc: qcom,sm8550-pas: document the SM8650 PAS
      remoteproc: qcom: pas: make region assign more generic
      remoteproc: qcom: pas: Add SM8650 remoteproc support

 .../bindings/remoteproc/qcom,sm8550-pas.yaml       |  44 +++++-
 drivers/remoteproc/qcom_q6v5_pas.c                 | 151 ++++++++++++++++-----
 2 files changed, 159 insertions(+), 36 deletions(-)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-remoteproc-66a87eeb6fee

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


