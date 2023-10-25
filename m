Return-Path: <devicetree+bounces-11544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C1A7D6274
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 540ADB20A77
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBCD8171AB;
	Wed, 25 Oct 2023 07:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZfYy7WI/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6459CEAE1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:26:03 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369991B6
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:26:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4083f61312eso43277185e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218759; x=1698823559; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UpJg+hQCE/A7ZI9wI9318MKzsF/xQZI2I1QIsfHxaXA=;
        b=ZfYy7WI/na8cADvnKZoRxi9piDZu8aYYehyCdh9D6L7GZtdjDZ4aR2E79nSvybiRAd
         +560SFcp00CdSP5aJfbqsovo2XkLwiG/L9VHsG3f8eFTK3JGrk+WstFk56bkJ2GYMjVQ
         sy0OmaIntLPtl3DSkW6twK8bPaFwziemPPv6TLHKCUbaR5bow+4KeTdyTwXMoYjvYetA
         Lv5iNzFg90Rw9gshX+4/lL0qugWOCQLT5633WJELdHsoSE2llCJxcvulzXHoR6QqCCfx
         Dg3jpyWCUVBYVeTug3rJxkJK5zllawItrj6AV3FHoCXnefJ25q8j6tSK9VbUrpBgjnsK
         2f4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218759; x=1698823559;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UpJg+hQCE/A7ZI9wI9318MKzsF/xQZI2I1QIsfHxaXA=;
        b=LU+PtPY+1qdyaCOhZt8BgRGHMjc7BFvtWsCe6oIollAl+sBp/d7SDolvhPAgOKEvfy
         HMWrqKvq982qRSgf8xXK+cWmcVHKV9daj569RCKiElgGMQ/h5nFFBegzB27YO3CTnCY2
         7zxgxX/GUtaMcRlnybOefFko85MH21ZH9SW5RqXwwpmFF6nRApY8bPeCj0kyHKYE+Cnm
         QI4LYDS7Je82V3EQd/yBktKEhXjSb9gE06lDoFfUUnfir3Toy3QN4R1kC+VwJWJXGsJN
         2Ec6YiA2FSeCxFVsQoXd4VNjGGWRFlGG9NXDt68ujr9WptywzlDkp710k246Ppie+2Ul
         GTig==
X-Gm-Message-State: AOJu0YzvvENcbnjBk0NIWLX0rJuimQgOTph2ekFzFLC9jyyLDYgCe9JY
	jKez4bbwh1kE5W2QqvxsPJP38Q==
X-Google-Smtp-Source: AGHT+IG87Y6Dli8mPszFYD/QVAxAnU1cNlbTQR6OMn4oOXFzpU6RfgSzwCKM11cxxree46B45QH55Q==
X-Received: by 2002:a05:600c:9a5:b0:406:599f:f934 with SMTP id w37-20020a05600c09a500b00406599ff934mr12462934wmp.12.1698218759059;
        Wed, 25 Oct 2023 00:25:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m10-20020adffe4a000000b0032ddc3b88e9sm11513635wrs.0.2023.10.25.00.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:25:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:25:55 +0200
Subject: [PATCH] dt-bindings: dma: qcom,gpi: document the SM8560 GPI DMA
 Engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-gpi-v1-1-3e8824ae480c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAALDOGUC/x3NQQ6CMBBG4auQWTtJO4YGvYpxUWGo/4LSdMCYE
 O5u4/LbvHeQaYUa3buDqn5gWHODv3Q0vmNOypiaSZxcvfOBt7VgZFuG0Dvei21V48Iv5Ak5Gac
 ClluUPvgwqMzUQqXqjO9/8nie5w9niHjbdAAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1164;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=aBNGQVPKxDPbahttPcll6nFTDMrpCcTvmYZ/X1fpajs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMMFj4oH5jxVCYV9uYYhSOIymM9kv6mz5tmyCJdN
 00pA4BaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjDBQAKCRB33NvayMhJ0Y4oD/
 95pAkWaXIzFYBoe4GOlsvccBmL5VRiS/ntXqshARy0Eh97h66O4O1H7pulxzijVwbxfz5j89LCEhdp
 UJAzvyxXvnQXRVj7bowHd1s3YJDK6X9hggUFOoQsvds2sPLOiNpiEjOD1fM5325T4Z5Hyj98mdjOpL
 HWcn0ypXRuSDMLWfQh1DVwdYovglOvlBnmJ3Hkuh1AtnDfKDOJdxUXThxFzxuIZASEfd0wfGcjTCyk
 LqRxcuXxMfmpt8Xn07iS+tqjqjGnjTaCKWpMMsHZQaO/x+vfOXYaoaz3ZprOTLAN1MfJ9rzLuGr/Ve
 ja3z+qN0II0fVtwPipbpFDIGfvTugltEnMDmNDzxTZKv40MlGA8h0zcPDazRkrbW66bX6AMLNBL61X
 zLAhZ5Y4I02ZDw7eR5s+q2UjSR93V9JL1Vjc6zAs9aHqHH+1R4eg+pjunjEPv6KUnv7J2N5VblyVeq
 tDM46ImtHw+148EtlCEZY9Zgl1p12f/AgqGDIvz+PEEOmzdV73oofCeAqUNHMwpaSdTAqErHvRO9zK
 dJZb/Hgh0iGjlUZSCJiO664MVDAjxQe9fwEGcczuhVDhXEf18uESkoUucdCvruv41RfyQGg0AhnPTb
 LMsbNGP7zPCvtFy3ttYeR5FgT8XCHgo2g6jVuI/gcLzYtRjkOLzlSjj3Jjlg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the GPI DMA Engine on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index 88d0de3d1b46..0985b039e6d5 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -32,6 +32,7 @@ properties:
               - qcom,sm8350-gpi-dma
               - qcom,sm8450-gpi-dma
               - qcom,sm8550-gpi-dma
+              - qcom,sm8650-gpi-dma
           - const: qcom,sm6350-gpi-dma
       - items:
           - enum:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-gpi-29a256168e2f

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


