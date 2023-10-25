Return-Path: <devicetree+bounces-11546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 920887D6282
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C397F1C20D82
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47280171AF;
	Wed, 25 Oct 2023 07:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sp6CNMQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08AA2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:26:56 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FAEDD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:26:55 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso3706159f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218813; x=1698823613; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gYlV3gflRK1IaZxI10f4j/0Ht+9sPsBAEv/yGsh0MVQ=;
        b=sp6CNMQ2ozADgLu9BipE5EOsgJLz8mXrVXIPmkoN/A5fNIDLLoPICNkk+xDVQtIN4i
         VIAhNKV5F9+AfFPQfx1i2R0jvqieDflRTKSAj5e+VYJkTCpvw+wJk8Gb6ZIVVENPG/Jt
         4KKsAhBCH970JE8dUjifCkC+4exn8nJou3IO0FBNXDnNNPqHr2oW1rXDfeJPH9d4a7il
         pEHh1wVzSez3KFfvJSJK+BKp3xv5TQ1L5jTix6B9EEd+YskYcEW8hhWypxbkX9/HLPj8
         ZiK25sVkZo/IJxE/ut2fBFRM4yXkSzyNecPyFOz1SGkZaA/hfg1YRAelO1LZIBWJKOIP
         w/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218813; x=1698823613;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gYlV3gflRK1IaZxI10f4j/0Ht+9sPsBAEv/yGsh0MVQ=;
        b=CeApouo1yiHjj6ja8GQXCUEgsNW+J0XJDVv982s3NP4nRekFuD7EUvHqAOHEb02+aS
         i6tlQpI2w6IygslAUdm1sKE+N8x6C9YVDICzaS1nJoBXNpk1gh7EAtli/wVUl1GzTIoD
         fy0SNi9Qz+Xp5VelZdbCz+JI/DsMwOUYBqk5OiTTMz2gU9eSDjWC89iOb2Bm+tftaAS0
         qm3zXfwEDJ1h4EXeexe3L/Pq5Y/7l/CiRpR7TXznxXPaVviJ9MEDBkiKtOuVzOcUq1zl
         +NozJEMUxYz8nLA1H2J5LfR9oq4LfA9h1ab7oc5mGxlDzRUy4mhDxCBBYIkT50vY0dyG
         K6kA==
X-Gm-Message-State: AOJu0Ywn0qD89p0o9Gibp0JfuxXOp2xAFuPCw3rpUKhYW+cnHR29podC
	0A1EbL1tIg36d69NpWA7ec+WWA==
X-Google-Smtp-Source: AGHT+IEG0ijh8/TVPaa+deiRSUw4BbsSn4OrzlNz3qp3sHMQgEA4BXvX8+c56WSotPMylASM9h6CDQ==
X-Received: by 2002:a5d:6892:0:b0:32d:8b21:40fc with SMTP id h18-20020a5d6892000000b0032d8b2140fcmr11362582wru.9.1698218813481;
        Wed, 25 Oct 2023 00:26:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a3-20020adfe5c3000000b0032da40fd7bdsm11664844wrn.24.2023.10.25.00.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:26:52 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:26:51 +0200
Subject: [PATCH] dt-bindings: mailbox: qcom-ipcc: document the SM8560
 Inter-Processor Communication Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-ipcc-v1-1-acca4318d06e@linaro.org>
X-B4-Tracking: v=1; b=H4sIADrDOGUC/x3NwQ6CMBBF0V8hs3aStiJBf8W4gPLEt6A0HTQmh
 H+3cXk29+5iKITJrdml4EPjmir8qZH4GtIM5VQtwYWzd77Tbc2MakvfXZy+s20Fw6Ij08Q0mzL
 HqG5s4a+hBUIvtZQLnvz+L/fHcfwAKsGdhXUAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=E/tCmRhrtGk6SHSiuVG3uC1gUTwaNi7IHPFcz0ZYtMo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMM8xoPbsKAt65jY/fIikfK3eOahvmL6hEOcRB2v
 CcMKBtCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjDPAAKCRB33NvayMhJ0dt3EA
 Cs/4NMtd4U1nYw3+z8XdIuO6rbLQ10T5xqon1G7ODtsf8jZ3GThsoxAtxVTwP3HdXcog5Fm3/IyRns
 /+5HqhYIca+Fu3lPVmwHAG3dvOeHQVvNN70NQVnZ2w+oKQzWsPQAfp0Hmyz+em2ckX4oPjG+G9fwzz
 zqhxcJxCwPkTwaMdgLGwgm77VcgQiTtM9+mLE4fdaWiIp1ASZ9NzYtA6qxSGB07cKh4sDyReZTAAQs
 ESoqPpVIATkC6Q/L18QM5MxnJq9BvE636BknkOkDakIshwSSASB0I4hLIl3BQfQszWIkrcDYdG53Vp
 1JJA8YFEakpEYKlpm+RPj891gC4rOpvsiAw0mDtuSsUX4xxl64WtTr6CIyLlj9f/boADh3AhFzhwNp
 0mHnUPQvu6hGed2RtEb3URTuHeJ9VzSR09i80JTSClkRksZ9RihlTtmIsGab65JyWTMEazD1EiZZNP
 +/djY1txRwVMG0z+qCQjD0lho+HZ4TbfNSgxq9fkZVgwfevnSCxFzs4KXJAM0IKZoaJHdnHcxnBQ/6
 eVesP3D8EVbPB9us+/B2X7n+Y3VTRUC6E7Yj/sIeSAIElwNRzrZCc1K8Yzko89ntq2OfsEdiyH5yZX
 BnvNWW1V/+4iin+aJl2EB0XV8hRCnaDhO30MRyFVhrULDHHd8sz8StwfP+/w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Inter-Processor Communication Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index cc6f66eccc84..a35f9483dc71 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,sm8350-ipcc
           - qcom,sm8450-ipcc
           - qcom,sm8550-ipcc
+          - qcom,sm8650-ipcc
       - const: qcom,ipcc
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-ipcc-0b4e1924ee28

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


