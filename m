Return-Path: <devicetree+bounces-54966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD1A8935ED
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 23:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 151F8B2172E
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 21:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE8214882F;
	Sun, 31 Mar 2024 21:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JB3QMRin"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD53A1487D0
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 21:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711919447; cv=none; b=MVOlpsNsB67m4lPu1GXeHZD/oX1wBlihJFsyCaX4iupk4+Z4LnNOiP4AUyncKL0hecAu2A1CDkbYWyy/kJ9skVFDn9lDDOnWai4bOHkg6jbb67sc17eCVlJ+hdw39GBQpUDPRzy4icu8QH32VpJ38fzuiVSCylZU8sEudCH9VAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711919447; c=relaxed/simple;
	bh=o8kBoQFm7PJzjXGqhBUMrXuaVG7jgswhUcwQnLTI4j4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iW4jNQGwpRY4Ot7Sskk8zKuzlm21m+vJPSJs2pNz7ui3Ym2tsNjGVuj489Te2X07ihbq1dsGI0NeUZ8pAlJtlqpLvKJDI038V5O5e17tfRyh9BdqTpcBma9Cx2AMyTwSuNvzBHFOB7GpTbAnsRDL/NGUmD0z9nBDZEoahil0vcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JB3QMRin; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-515ac73c516so3568768e87.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 14:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711919444; x=1712524244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PDv8zJ/AhefbpJoCZDcqkTXe888nW/523sAJ1ru8rg4=;
        b=JB3QMRinYvRs4npfw/aOOonrd/y8fLUNV0VQaenOLIdGgpE95ZW5M+dlhwz0CehRB/
         TtlLrtyrtgatEAC8RzRfR+iCks7Q/eYCtlCwRFFnBmvivvoekJ/7c2DB0l1039P5adHI
         Epl7KDLr0gJmHJa/oBKHoiwJjol9CUF/j98LnnRBSjiOJJwOoBWFR2hHShLSoD29XQTS
         IKO52xwKJWMc/r30uIpIXhfJRe1fGudsieUGdWXfPnllHkJN6ExvxKbeZoqNT7BBqXgG
         i0M4ukP5tLkEoFUnbbgXNbJLy8cTmOgH6NgPktRwlMcpW6GGKOYBYHkj17tEkYAuJowT
         rjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711919444; x=1712524244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PDv8zJ/AhefbpJoCZDcqkTXe888nW/523sAJ1ru8rg4=;
        b=cWZuINQJL2p+t6MJ8O/yXH4O8XHIS+SzA/GWXtPiydHvleXk76v8pqJZTnd2c0Z5gP
         azwQunb925hcf3GpTcnbPW34Eiybj007I+2i5OzJybhAGhMBx+jqJBWbsF5bLiiCkFdh
         jNEcF8vHgw8UvqlFgsQDZiIrz9my8/pcIqRJbuFzQs73BC6DqbyloU7dfYHCttmBTtPP
         a838vTa4x+uVKTQRAOjJO0VtpnqYvsE+La962qMwaZvlEEhCNxHyS00fEjA4sv0rT+oL
         LW4fDLdDhwNxQJBHZJsZaRDIGjOshvblDFy/c3+SXGHQAU6SA/Z1nnSXPQerWLb/TpG8
         E9FA==
X-Forwarded-Encrypted: i=1; AJvYcCVUqkE7EXh6KrDGlg9ShY31lOoM4mqajWNiS5RT4zEw86ewfNvpzlXT5JtV9XNs2LvoLqQLByRCRv93LDmzdMwMWUqeivlgNN4Pkg==
X-Gm-Message-State: AOJu0YzMNWCdoefkWgGfsvwp9DT391DBuV3QVAlSN0I0AAHkciZnw89K
	4oR7s9KPLURWWSMmMJxvEP5rDaHz7TockXY0SZxgtvwO62YCk4NTujxVvI1zNVLS1TOgqsCdEpD
	t
X-Google-Smtp-Source: AGHT+IE8zT3MQMl/IwbngIjgwWHP8wtQwF/fWkHqwfEpgBgp/YH5SLr6ZrCust7uwCAJ0sFmsL1G8Q==
X-Received: by 2002:ac2:532d:0:b0:515:89cc:26ab with SMTP id f13-20020ac2532d000000b0051589cc26abmr2589711lfh.9.1711919443963;
        Sun, 31 Mar 2024 14:10:43 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i1-20020a0565123e0100b00515cd1d5c99sm1033553lfv.85.2024.03.31.14.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 14:10:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 01 Apr 2024 00:10:42 +0300
Subject: [PATCH 1/3] dt-bindings: remoteproc: qcom,msm8996-mss-pil: allow
 glink-edge on msm8996
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240401-msm8996-remoteproc-v1-1-f02ab47fc728@linaro.org>
References: <20240401-msm8996-remoteproc-v1-0-f02ab47fc728@linaro.org>
In-Reply-To: <20240401-msm8996-remoteproc-v1-0-f02ab47fc728@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=843;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=o8kBoQFm7PJzjXGqhBUMrXuaVG7jgswhUcwQnLTI4j4=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQxrnxaBJc/91LulmKih/vmJ5+cud2XaXbSIX9X2Z1tj9I
 a1+HbtoJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmYpbFwdDPK3j/uCXz7yN/
 1xj8rnVwqwo42Sxjl5U+fZ3UZRPtzQ5t534w5fwIP9R3ykGoMG115N1Zyunv1wbIdH4NzLbcz+C
 c95Pj8cGfJ/n+CWS2cV7mcc1V87Zs8r2p3DHne8Stu2uVouosle63nC1Q4PjFuU87/pvBbfvnLT
 fO2AWdeb9xmdTsXVfiPIqyX6mp8CcUsDyaEON6vYApr5vX2kUhvHG6l2bw9vsblnhf27r7rIzbj
 g+F1fYCpaHZAj56Fy+d3z0/ddk158VuO8ukoxvCpZ/lLo6ZbieWc7N0y/Kdunc/z+pwSm2ycUh9
 fYBX+5ZIqma6QPyq7FVd+2LLL71/t6fJq3aywU8Xl7pdAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

MSM8996 has limited glink support, allow glink-edge node on MSM8996
platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
index 971734085d51..4d2055f283ac 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
@@ -231,7 +231,6 @@ allOf:
             - const: snoc_axi
             - const: mnoc_axi
             - const: qdss
-        glink-edge: false
       required:
         - pll-supply
         - smd-edge

-- 
2.39.2


