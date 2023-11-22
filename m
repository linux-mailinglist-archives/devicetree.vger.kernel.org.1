Return-Path: <devicetree+bounces-17841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 548E57F4463
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADA5EB21090
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C730208BE;
	Wed, 22 Nov 2023 10:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xHdi1awW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF418112
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:56:01 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-543456dbd7bso1363148a12.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650560; x=1701255360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AR9DGP+JQhiURa6YNx5zsQUGn7vxejxt9rphdfb6FU8=;
        b=xHdi1awWctPd9J0XAGQ6KuMMedv6C0UWq6qoecgYz7fB9cKKpw4XW6Ey2+RqTMkJ0k
         2dhfP+xO8i8As3co81XhE67qAL5URoRdnESn1Y7qU4dvbw/mHppERdxfoL4Ekic+q00y
         FUiWHLOjqmbvq+wJoQnAiC60m/3+YvUnPbkTtXaFUTAFGIPyTamIQOp2KfvpaVwubXCc
         CyyESKSynT0sMByBl8OPZkK+lzNBef34EYIO2zoQLG4f8b89P1SyhsB4QMLemXe/ohiz
         fA4q0rKiegJiw3CL0jIBkJXHHwSHbIMZWvMymlHz1AjF1N4gYGWiyHi9vsrTN+8ZbmjW
         2Evw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650560; x=1701255360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AR9DGP+JQhiURa6YNx5zsQUGn7vxejxt9rphdfb6FU8=;
        b=uze+flFyAbOSO/GMVdw36rYFdXyHBXM9C5wc/Rbc2szLAxO6lx5UlMH1KmLrXM5HGS
         6UgS4ocyWc3mIRZHcR5OGjrgYQF1hnwfudAjCxbXjI2RzJKMgUtrMUuo5NpUU7++J4du
         0nm+fO4Yn4y6LsATVTuqM9a/dwEO/QXSPitbfHBOJnVdQwQ4A1hTSaXcoNRhw+O8SNeA
         ED6X2TZXJq4j+KFyyatq/Z0IXrI0tyDJ/QTLBqJhC9DCKyn8yspKzwqX8qe6yGkQXY2p
         N0FWF6H/KRjkA4YyKsc4u1DD5ECdHNsW/WAaC0XRg0Z87iAi1fCaRJuJVK+1K5cdf610
         NqfA==
X-Gm-Message-State: AOJu0YzGRuxQmIPG1gFzUoH6apb/IFPr5EfjFBnFo6uCLYve4wj+F1hm
	YKxpfZdvSpLkrPa2ReMQyxPgiQ==
X-Google-Smtp-Source: AGHT+IGpQSUEpRgFT+zeuN4EN0klhOh19aiZ62ImloREVKOoIKKapIpDoBnxp/k4d9cWnYmHR0/Fcg==
X-Received: by 2002:a17:906:da01:b0:9a9:f042:deb9 with SMTP id fi1-20020a170906da0100b009a9f042deb9mr1620474ejb.19.1700650560453;
        Wed, 22 Nov 2023 02:56:00 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id mf3-20020a170906cb8300b009f28db2b702sm6423557ejb.209.2023.11.22.02.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:56:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:55:48 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v1-1-a9938990edb3@linaro.org>
References: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=766; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=47x4DceRm3tCQ84A+H24YQKTKXLsUy4vs1DvIZFUxYo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXd47jtfoUWWWq1bSqU5Il/tnuIoOdQpW46XIB
 ejEpLcuctSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3eOwAKCRAbX0TJAJUV
 VjfFEACOweqBEkv+85EBXxiL/6SI2rTG89ykNUyuIxr/hAg7E8yEfgJQNU+DFBDZrbP4NsbgRQr
 GDwgrFa3N2TkZSq/XJxsZ535oofKqv30jeGqLGEDd4lEctQKR58ey0OUBreHNxm4imBIgOo1O4P
 PIAzNgkhwTvbIKTcWzxKaolAwctveJRGAW9ivxIP2I6aOv7AqPnKDzqa+7X+69t2A9dLn5xHKGs
 LEKTHQJi593z5YY/aPOirGjuoUH+Cb+/ScS/iDfdIPz7756NWP+4RvZFK5D7veybgrf3x9WurMx
 jbKQLGPL4Jm2Iu8/lGQfc/8eapOXzt5t0FEJdFhr6r9Ct4wuGxv5SC07F6hXgXlSb0Q984DgEA4
 sbQzAPWVycUoG/bpnSmwE1m/aJ5WpiAhLjoNvvE9zO+Hzcr5dXCe+WpuXiS0cZaaebwBN7xYKAq
 Er7BFU+IsuEe1BVm32KNZ2IEgf0SwcB8Qy7CqP7UwNZ86bDZTr5LKkaR1OJyDuR2ntNhX4sezlu
 7iQy3zr6NKkvhH+BGZlDsOD2PJnAM4yeDSSJobyeBY+/T9C34/oyNrHz5O26fL61bfKQ7DA5aSm
 Hvnyc74+Yl+E2eCrL5Ai6uXx5GZrdTGcavIRaznNSNXZgbrYvknQxoz6sw+5LbXV6KgZMuCdcss
 Yfc2gvdMo9RqZ9g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Qualcomm X1E80100 platform has both eDP and DP PHYs, add compatibles
for these.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 6566353f1a02..190f61c1d0f9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -21,6 +21,8 @@ properties:
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
       - qcom,sc8280xp-edp-phy
+      - qcom,x1e80100-dp-phy
+      - qcom,x1e80100-edp-phy
 
   reg:
     items:

-- 
2.34.1


