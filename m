Return-Path: <devicetree+bounces-36296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2EB840713
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:35:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11EA41C246EB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591E0651BF;
	Mon, 29 Jan 2024 13:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fwuUF+1p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BFD65196
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706535296; cv=none; b=TgVKGQuxmUNDFQue8uMukQLfY+m1tN94o9XyQd7ah28BfkDtL6BZxCBaTbRAD80MOXEEV8Pz3DL0hm97rXIYvlNFwhpHXL0lqu01JfSYY9XrKpgEG3mH+CzVMyiPOocm5ZnrSfcrgDBJOgSHQahJ3RDnaGYqXRDJ8ILp7sKwe9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706535296; c=relaxed/simple;
	bh=flicCfqngKIW3zeJAOSjBz4FeMqtB9eKYKJzdn+m+m0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E87mocDmOI6N4apz4CQqdcocnZO7xQ8vTJOA37UOYodOxEAps8pu8RyIBgUL+q9HfqrIiokHY1YgLVMYydnap1joybVG8It/BDDCGsT9/Ye2hXlbTwvpV6MYkB0ngANv9EWHV1+TBWYeyIioH5Az0pZn6IyfjCwIFyOO3keOJIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fwuUF+1p; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a26fa294e56so329138866b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 05:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706535292; x=1707140092; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FJ4qQ0eECaBxK5wIYNRpchzy4eFlwHhLiJlk9IpbxIw=;
        b=fwuUF+1pyMIG9H4Z3J/lcHY1Xq1DEpZ0yDsP8yhUTBtPk9fM0YofeZXquwpOn9PsTz
         pbA8y1jK2r2dsmnRHKhdWXgT0RDlhzxyIQBRUZrs+fNBS/jx0KunKkMEr1CLuhH1NPJP
         O4+vq9o75mNsuDTIlsFMMPVOmYdYb555q6BBZ/f0+8wWuyTevZ+LsJxzRdogmGqg+YlV
         4UoOBAHFbWMLIiy2/5LH/8cJg9Nv6NzTHLKoDmnPOVRYWfqCxiyHHvyQDaAnsAtf9Hae
         iQEBpdCcFIFeDw/YF/rBAWMWHkD9Hf+HlTwzn6ND2rVGgDFpncdtnrH5Yhl05bzQpEfe
         f87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706535292; x=1707140092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FJ4qQ0eECaBxK5wIYNRpchzy4eFlwHhLiJlk9IpbxIw=;
        b=v9T3dKB/xXiNHt//P19+f0ZQ4q+LyPtjhhYLZeYbrDgMZVKRAPYEw6zQw9xAQ+sLET
         gsVGacBw+o5wEVSnIIU+SLrRIJlOiCQJwZKJdwBiBya/ZX9FkpjeT+GDNJOhALo0iES7
         tJU1OpE50R+61YFkENEX85e7kvSBXB8IhYjGWyP7/IRo0QNZFJpc/QR5gCfd82PyOvKh
         xGD+I2gZaaTmYuIERzp0mihG9xoXX0kUefp+TEraPvvppkcH2FvD6qB8L/2BRfAnuc7u
         +PhoDI1pYgcMdMGe8y/k8XiECJIGXOKvHZKIjgiQBUIN2Mmp+w+K5itZ+wukA5r5Tjd2
         xfLg==
X-Gm-Message-State: AOJu0YxbR3TDmBAWAMwIxvBug+mt+Vusj7poPzNmyDQF947Rq6TXAIf8
	ISK8v4Ftt7vMhTWGyGhLTZXRcxp8y7gBF/fVT+hyMs1L9/EI/IrYNiacl5NkxJ4=
X-Google-Smtp-Source: AGHT+IHCog9ng7nG8mwlAJ0EvaLusfKdmX0v5Fypp66prrrEgSafknWTbNyzVpYHrU0T8fbS43hhDA==
X-Received: by 2002:a17:906:fa97:b0:a35:9e3c:80dd with SMTP id lt23-20020a170906fa9700b00a359e3c80ddmr2719499ejb.5.1706535292479;
        Mon, 29 Jan 2024 05:34:52 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id vi1-20020a170907d40100b00a2f48a43c3esm3911483ejc.7.2024.01.29.05.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 05:34:52 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 15:34:37 +0200
Subject: [PATCH 1/3] dt-bindings: remoteproc: qcom,sm8550-pas: document the
 X1E80100 aDSP & cDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-remoteproc-v1-1-15d21ef58a4b@linaro.org>
References: <20240129-x1e80100-remoteproc-v1-0-15d21ef58a4b@linaro.org>
In-Reply-To: <20240129-x1e80100-remoteproc-v1-0-15d21ef58a4b@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1480; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=flicCfqngKIW3zeJAOSjBz4FeMqtB9eKYKJzdn+m+m0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt6l2phfhnajXDLtV+vW3u5qyfRgKguQo9eLiV
 ojQee/9tEGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbepdgAKCRAbX0TJAJUV
 Vjw/D/wNbhRk1lwXE1/jRT3HWG+Ko4TDujVe3Xak63OUDc+Y7k43YBNyJ8CSYQOFz4ONfpWG/Z3
 Cjn02Yu8FsycMQKIglZxHwRgIbV6Di1iKBNjVclzUGM2+bgDXh/jtyOZBRQehJ39BaA6/e58EJW
 Ij/CG15mpzZ3VVt11ACMETQrWqSypaZoeAbMCHIXHWBkUVY95qMIbsKbwXy4SD9Y/icqVCuI20T
 iiVf+cpSxMLpbV2IhfYcrAasP5mofTzLCeOQndI9cfjiTTjvVeD7aV26/eeP+7Ev5uUMiBcb+m2
 qKUf0/y5OIKll5GmIMhIx9rw+0fnVdvAuHppBOpk1EkNgQNjslKtWbncKzaa3nlOyXyJnmrGY1N
 AccbblLclG3HTFJ72KoOi5d2I8XPTZ8CHn03FigoULtZT6ZRC09Yxs0wNoqj2jPvUTUEQiu9Q4o
 75Fbj2I/i1OwZn4D17LigtUwGUM94J9e4jjuWb9pro9wBgT1MgIN/NfLf0lP6hpavoOdGsYbN4O
 Z+VshdNdJkc3aP09XizSJ+xMSf54YGL+diF8xv6XU+bDzTSzIfR0TTkbxV2LJp3kw7moCjVcdDr
 Oc7Nv1eOC5VBAaJL8Z2jioWiube86JXhOe0HSvQzOJlFtyRiMH4qeGnRDURL7RVILrccgFHb0Lt
 K7kboPFr/m4zbGw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the aDSP and cDSP Peripheral Authentication Service on the
X1E80100 Platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 58120829fb06..95ae32ea8a0a 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -19,6 +19,8 @@ properties:
       - qcom,sm8550-adsp-pas
       - qcom,sm8550-cdsp-pas
       - qcom,sm8550-mpss-pas
+      - qcom,x1e80100-adsp-pas
+      - qcom,x1e80100-cdsp-pas
 
   reg:
     maxItems: 1
@@ -63,6 +65,8 @@ allOf:
           enum:
             - qcom,sm8550-adsp-pas
             - qcom,sm8550-cdsp-pas
+            - qcom,x1e80100-adsp-pas
+            - qcom,x1e80100-cdsp-pas
     then:
       properties:
         interrupts:
@@ -85,6 +89,7 @@ allOf:
         compatible:
           enum:
             - qcom,sm8550-adsp-pas
+            - qcom,x1e80100-adsp-pas
     then:
       properties:
         power-domains:
@@ -116,6 +121,7 @@ allOf:
         compatible:
           enum:
             - qcom,sm8550-cdsp-pas
+            - qcom,x1e80100-cdsp-pas
     then:
       properties:
         power-domains:

-- 
2.34.1


