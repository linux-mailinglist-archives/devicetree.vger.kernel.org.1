Return-Path: <devicetree+bounces-12754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D76A7DB653
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:45:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C716281277
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B6D9DDAE;
	Mon, 30 Oct 2023 09:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zr5se/dk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E124CD511
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:45:22 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70667C2
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:45:19 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4084de32db5so35424335e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659118; x=1699263918; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gyJ2ZfoiIf2gRHUoNqUiIgzX2BQ6a7wrCVaYe3M0lbk=;
        b=zr5se/dkqHJ50N01XgQRgbhJHTrM0d68DVqa6npRkV8QAI+uXSx8jghtvBThqOBeMx
         ZgN8VT0cXinkO75G1QOgnvQXJmK8YhB4Jj2z9NHqC48I+TvEX5eFkCTb9lJreBxzThi8
         u3edSmzyeqJZV9KQz98dxuxJPSkgOpjSs4+B0WXk0ZY7D5h/ACHlhEKG3cN70z2SPD//
         dBoKknN8BW8ANVXwpPeWPk++SX7gyjLTExPlFA8JSpoRyIo+V1291/1i5zQPNAoRcuR+
         ivIwuXhEokm/5fkaJDJY4OpM1lkwkLfKmH6BZH5J+VdVV1MST/JsPl6NGvN3EQdcF2KB
         VsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659118; x=1699263918;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gyJ2ZfoiIf2gRHUoNqUiIgzX2BQ6a7wrCVaYe3M0lbk=;
        b=rVosD5M67uRQfJevrSiRxiph/nz7iB30f64Pqulr3Sqf2Yza4Cn0l02myD/URXm2Dz
         cVOpkAeG6bD+mBgaRTwRJIacOpiDYQoHTFOqSkaYxlj/+QjEmaJFClmOQoDR41nb0Ih0
         dGyh4DB6aFkh2zdsdQOWzULp/JxHRIJ0a5LxNl5fCYlXt9Q3q0jyVvkc+PcqKnc8RKzi
         IYvSl4sGm+YcyfUw7m4te1gEDGynzAslfdV35m4bhotZTMhAOupuDpkp8rhWZqYLNPqk
         p4XQs7/spq2cUMYEM5dUEQ2Yb4y4C5C5Xk+IES0ANWSnwVi7Ku4O6ibWm5RpynXd2AEB
         30dQ==
X-Gm-Message-State: AOJu0YweM35O1iI6fNKxfT1fR+3baVnZPzvhLnS/lbv9FsWDIxqr8K2W
	TmxtkTztaqrHgeOC3HWi8uo2ww==
X-Google-Smtp-Source: AGHT+IGK/ro2NJZsePhHY/ctJ5495WaH0j6Yl4ZTn9nkxVBImG5nHYWWFXH/Zq+B93iF2rMi+m847w==
X-Received: by 2002:a05:600c:45c3:b0:409:400f:25bb with SMTP id s3-20020a05600c45c300b00409400f25bbmr2804430wmo.31.1698659117744;
        Mon, 30 Oct 2023 02:45:17 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a10-20020adfe5ca000000b0032f7cfac0fesm5069446wrn.51.2023.10.30.02.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:45:17 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] soc: qcom: llcc: Introduce support for SM8650
Date: Mon, 30 Oct 2023 10:45:13 +0100
Message-Id: <20231030-topic-sm8650-upstream-llcc-v2-0-f281cec608e2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACl7P2UC/33NQQ6CMBCF4auYWTumHWlFV97DsKilwiRAyRSJh
 nB3K3Ht8n+L7y2QgnBIcNktIGHmxHHIQfsd+NYNTUCucwMpOmqlLU5xZI+pL61R+BzTJMH12HX
 e47mm0vqTMVYbyMAo4cGvDb9VuVtOU5T39jXr7/pjyfxjZ40K764w1hKZgoprx4OTeIjSQLWu6
 wduTmjwxQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1064;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=In1y6EYqhqqG7srFnzaQ7nv0zveGUp4wFkeC/74fokY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3srtC54isacuvty+dUeCoKME9aOPRjR6xfwYlFK
 gVyDkkSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT97KwAKCRB33NvayMhJ0bJvD/
 9w0amRv2M6R0VIt49IbgRVX+/585TcbKPdzbiEyW1FCSHpeD4LgavxDbn3bIhtiSoiLW6yCSM6CokS
 JJrq5rSN37QCqVEYQb6u6cy2naugQMI9CSfYlG64U1YXbrwXgSo7wCh3oGLlkguco9x4MUCn4R2gK0
 pZG4/mwLXvU3u+2KqhiHrTzl2LZa22tzET98fx488YezBsbPFS5KHhTHYFKdLBmWWLQT/+/WLG0Qtw
 KR93Eh0kwp6KmU2DTXY0/KxbZ3VZ/D8eY+HvXE0fsy3C6zUeBwVTnPF36C+P+QsxTaPBX0eTUjca5k
 fshdPsOL3wtpkXYIyjSxYhk9xD6YE/ZVBSfB5a3piPRDd+rrue782DRaWbz9FMY8fUzwhDo0LsJ7zk
 16mZxgiVq5M6DOSFJgT2lzNWDZg+B/UTg4IpADnpLNKX/G0SnUUxLLkVhDT6l9cOnia8/ootkIMS0h
 W1wsb/HY82m3zMID4nNwRbG2IZxD5cuN6It7s996y9GL5LlsldE4ZdGURPSvx7bwj1eIVerNsV8ijI
 kDFmgE93phTXDoe6Yl3guQRrrxFJfTqVcLn9B879fpViFCAt6GSIZtk7cDH2+3TRpW9pLlNqR0ZdhL
 6mK8UnXFtP7UGVt4K3ODo2Oz170ZcVz7AuVjC85h3uzZ1xloP00bkPJ8Vdaw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add LLCC tables and Bindings for SM8650 platform.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Updated LLCC table values with latest vendor changes
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-llcc-v1-0-ba4566225424@linaro.org

---
Neil Armstrong (2):
      dt-bindings: cache: qcom,llcc: Document the SM8650 Last Level Cache Controller
      soc: qcom: llcc: Add configuration data for SM8650

 .../devicetree/bindings/cache/qcom,llcc.yaml       |  1 +
 drivers/soc/qcom/llcc-qcom.c                       | 43 ++++++++++++++++++++++
 2 files changed, 44 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-llcc-9d286c755615

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


