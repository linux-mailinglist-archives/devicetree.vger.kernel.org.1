Return-Path: <devicetree+bounces-11562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F4D7D62CF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:31:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1408E1C20CB2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D9517991;
	Wed, 25 Oct 2023 07:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hxM/tdZl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD87E1775E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:31:44 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA7C6171C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:31:41 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32daeed7771so3505850f8f.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219100; x=1698823900; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dgxH7EzT6kf6PVK2pOvs2BDr7TubSKxjchz4brt+Fdg=;
        b=hxM/tdZlOMuCSJkLOqLtpGPj9oN93sf+Z7ihim6Hnnp8ltyN3GhKUnEoor2xVF4His
         AI+XEn4xwyUn80JqQDz3Z/q7pRweL0GNLvNbzXQrtUofXed5JismDihjt8Oonn3V5/yy
         OMHldxDpxGoId0grT0QJdGdSQpXT02uCHGctlxqG+PbpbSXBJX2OZipGTayZwyAmaVis
         kwGzCdH1DgOI2RKzhr2GxxZs/mcCHmxVQXqqyZbxa8FqoZQXGVB3tvA9klyxFgxYvzOI
         efgxS+b3wex74q6qOnA5LPcCI2RUf3svp6hPOowUNDm2UT7FoSuAsxKk353eUI7w/lPb
         w5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219100; x=1698823900;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dgxH7EzT6kf6PVK2pOvs2BDr7TubSKxjchz4brt+Fdg=;
        b=D4xHGBuJut4VaUJChQW9ajhqIyFVWChh3NhkWY/+Y/9yh9gUJSoww3fXpJjz0BD9JM
         Yi9sDvfZxXJiX+6Y3YpRESmMBnKGzdu5VWy7GLgsYIFBpEzz5oRjpvjZzPJvFbYCTXKo
         e6ieGY3klsKdlPZPXBd4qDzW5XddnbQCC0JbzpeCgAdEAqBK0ftE62sH/q6FxCnRKOUA
         TLUM8FLWqHLyLGE5ZE+FnYhAfWGCpuoeI+TgnjCo0gwBZMFupvWaaS6Yic6Iq49ssQEr
         z7jL5FLPidZPiiVz63T/cEk2y6/jwzmthLv/E0wEBuzD9umCIobseD1hyrPFTiTBezVf
         FZsg==
X-Gm-Message-State: AOJu0Yx/hylrr5rAnUxPpUpel7ErExaFF3TzW5Rr8ISMcz4yGPWbuS+a
	SAU7LDNi3FozKAOFCa1ERq+1KIaZDbBeq3l6zlkLVBsS
X-Google-Smtp-Source: AGHT+IEdncMXeho29/ICPmJF5kWqlk8270tfKPl5RISjmMrfJO1iE5D3hBrJ1iFFEpX3luc92mnosQ==
X-Received: by 2002:a05:6000:1f91:b0:32d:88f6:ec2f with SMTP id bw17-20020a0560001f9100b0032d88f6ec2fmr14193953wrb.60.1698219100201;
        Wed, 25 Oct 2023 00:31:40 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id d17-20020a5d6451000000b0032da022855fsm11412184wrw.111.2023.10.25.00.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:31:39 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] soc: qcom: llcc: Introduce support for SM8650
Date: Wed, 25 Oct 2023 09:31:35 +0200
Message-Id: <20231025-topic-sm8650-upstream-llcc-v1-0-ba4566225424@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFfEOGUC/x3MSwqEMAwA0KtI1hNoK62fqwwuJEYN+CmNiiDef
 cos3+Y9oJyEFdrigcSXqOxbhv0UQHO/TYwyZIMzrrTGBjz2KIS61sEbPKMeifsVl4UIm8HVgSr
 vg/WQg5h4lPuff7v3/QEw0QegbAAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=880;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=g0gBI6C4RuzFGVsKGSYa06MulJtrehe6pfKOHXmOi2c=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMRZExJbmIPQmEpQZ3IcmGw5lJcOLQJe/BQr0t1r
 6BI1R52JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEWQAKCRB33NvayMhJ0ez8EA
 CW4EGZHVc2dhJrKgrq+pn95Lx3m1uwbsjiZWEh4p6ECtQcDH3PM4L8bqzNiMBNTVI2+7qOa/3eDkmD
 zTTyBUFb8IVTvpwjdQfJCKACLn++s61HGPaPTPwBqJ5MvZ9nC3NcOG0Khg+GlwbkalYN8xeboJVI98
 AH36xasiUhHcmONlN0Pty8Fxez/mFGLQCX3VXv5WNghmmTTtI4YCzbPyLxTA7DrO6fkIwle+5Bi5fZ
 gFKerUwSdgLdUq0daePwc/YDCAsZPnS5Uvr4Ni0f7WONEdidKXLqknap5/Gv5jOBKtOUNv70L1lZ66
 xZYods2DeVj+UsSli03sTXv4vbE4Y8um2aDeqPACjDQVcSPiwJUemi8djB+tDoqEpUbIP86jgcKzI9
 isHje4Ym8jcZzumnkn3fWxVDy8X9Qyf3WrIj+K6Ov8zVPuE6XN12BLlE1FrL6QxtKMuCz1ZHr4pzOT
 5zGxgu8zkFRgBlEKUW1h5J/aEgGTIDz8ylOyhfp8aG6n5o0Iy32YaL+aVw7PV8c7wZ/jXSLJCzq1R9
 7Fztdk3c5ds7Vcz9wsFTYRAqtFH900vWErGGlVV4O/JXG3QIGE9vde6QB8JDIY1jgLrOF3ll+ZSLpa
 OkPAC23DPvAxXMBPP/v7AWmOpp1TiWIyfg/MfsKM1xhWwZ9uyQ7cLhEY/uzw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add LLCC tables and Bindings for SM8650 platform.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: cache: qcom,llcc: Document the SM8650 Last Level Cache Controller
      soc: qcom: llcc: Add configuration data for SM8650

 .../devicetree/bindings/cache/qcom,llcc.yaml       |  1 +
 drivers/soc/qcom/llcc-qcom.c                       | 42 ++++++++++++++++++++++
 2 files changed, 43 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-llcc-9d286c755615

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


