Return-Path: <devicetree+bounces-11652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8E97D64C8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DDE51C20C24
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56D91CA86;
	Wed, 25 Oct 2023 08:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qXxda0K3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B4A1CA87
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:20:24 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E75185
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:20:23 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31c5cac3ae2so3872222f8f.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222021; x=1698826821; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NMqBSE89bG7+p2J3O4yzh6qx9zhFrZcOPoHe2cYMZhc=;
        b=qXxda0K3EqY22wqYGJpu6zDSqpf1XjzzQ9M13h51dOx9ZUJbsiXW0hpFtRAsQM6vpV
         /ut8hGtXBzfX3IG4xbNIKuoXcMWtqxPlr3V8c/OvDg4LOKEKvsmQYg14jZcMFXqmDWBI
         0PmaPcq/i3GCn5lstFFBvfeLV9v61AhJmBWgkXVNLKSs5raaXw37As3wovvZSfYwTT76
         e7yyDlCpNpUPewtAtFbcL3+ld9tF4dMDBu9uCR9aVjLDkAyr0PGiZMQ2jl1x8MmdaaMd
         qzW4ijB9ng8c9zyEgp0vg4VRxKZqrcJnyY+lxstSqratVdr+RYL0r/X4jjW95BdqUnVO
         MNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222021; x=1698826821;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMqBSE89bG7+p2J3O4yzh6qx9zhFrZcOPoHe2cYMZhc=;
        b=LhpSG1dOHoGWjEFAPgenJkgIB83YZUZ2lG6FeM20Jg3w+MqcwBdDs52nu6GLrTZL8i
         P0rMJejIhpCPV4zbFRPbVFL9nYdgr3Tg3JhrEvJdSpr5M/JCo3b22M9uKxLaZZFoHKW1
         sKP71bSKo0Xq7ojmHLOD5qXUz4x3hSasd2Ocm5Dw04hmB2Rzn2lLAPR7paq0e4kKmM4g
         Qpj0Vyqlu0CCQcVL8nOG12YYL0/VaotTH6XYa2WLAoCubilVV9/xVcLU97JnEX4RWAjg
         oFsjOORg0EwbktZUw51i9urFUYU+qU+1nCH1pn3GUc6eoGvhMOuS6Wj32G8UDd+OfmAz
         PPOg==
X-Gm-Message-State: AOJu0YwX44lA+wOdXACzhUo6IBFio76BCW2JyvGkqsEWT8C4IcRo24JR
	T2h6y2wfLezvHRsssQOaijpK0Q==
X-Google-Smtp-Source: AGHT+IH/5NSpgBbdHJEqyZWParnMDYlqB8D76j6xi5DHlI/S7MAQ3sm+65z/7jX3R1j8V0rJTWviIA==
X-Received: by 2002:a5d:5592:0:b0:32d:b06c:80b2 with SMTP id i18-20020a5d5592000000b0032db06c80b2mr9493121wrv.0.1698222021010;
        Wed, 25 Oct 2023 01:20:21 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d6987000000b003232380ffd7sm11556557wru.102.2023.10.25.01.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:20:20 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 10:20:18 +0200
Subject: [PATCH v2] dt-bindings: ufs: qcom-ufs: document the SM8650 UFS
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-ufs-v2-1-040ad1c44b46@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMHPOGUC/42NTQ6CMBBGr2K6dkx/MmhceQ/DotICk0hLZoBoC
 He3Eg/g4lu8b/HeqiQyRVHXw6o4LiSUUwF7PKim96mLQKGwsto6o00FUx6pARkuFWqYR5k4+gE
 elAKlTmBuBYJ2TYs24DmgKqKRY0uvPXKvC/ckU+b33lzM9/3pLf6jXwwY8A4xllXozO1JyXM+Z
 e5UvW3bB3PNuG7VAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1424;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=bfiy79+1AeTC3eD2gpu/e3v7nDKR1WuR2ncD0BX0P+o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOM/DCZpXl4w2Il7wAsAz/R6xDcyRAo+cdAitixPB
 6vcmSYCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjPwwAKCRB33NvayMhJ0RXgD/
 9cFQZrZRPh/FK7pb6g5pCNy8HUtPKGbJ3dZ3ZgJQXtaqbQm1yIcoTB6c9bfr3odNC1hqu3HNmggNDX
 3h6quEF3md13Vsd6WfBMzPhuViWrm5DkaHNEZvcFWb4HKvss/hokr5s1ojj4aw2V6tSA3BbfIn4dDk
 Kc0RJEIX+jxLG3Wf6alSanBlwHHGCSNYWOFpMfKtQ3xh5WJYgZZgGH2J3Gza1/VVi2JZvONbWqsPgu
 vYW7WDEFL+30Maq7oy3iJriY/vKqP7iz44vHJNFEIP+23IrRlmpInjiP6CvEcQ/2qYKdnNl5eyp3IB
 3XRwT3JvNUpI4vy7TYqRzS4eBt1tj13exnMVgOA10ORxz7kEFmyz5ewxVKHzrYDOBjh6LzTJpwBXux
 nFioL0cJl2/S1E7Ta4JDg2gcYMS18TWDLym4bE9MOguRNr0+1lPdzJ1/cdPZe679cBLsdPMM751HX2
 0IG14UyDO5Hgh+au7sOA/Xh9JnxB9kmeAEffWa6oTG4z8bQveiYXsUvfyCyb4993ORQ37anPhevxfJ
 LluSS1tJ99/cLyY2QujFAVPhL49c7ldYZhKXe1UcZ4EXdUKcgo5gNkCEt1wrnCurtu/BSwS7ZUwrL4
 0NOKv6ah7UEvwDCd2N1qZXT6mf4rRDm9zz8rkF6g9XBkdXsz74nzipp82H3g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the UFS Controller on the SM8650 Platform.

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed subject
- Collected review tags
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-ufs-v1-1-a355e3556531@linaro.org
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 462ead5a1cec..0d136c047b8b 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -36,6 +36,7 @@ properties:
           - qcom,sm8350-ufshc
           - qcom,sm8450-ufshc
           - qcom,sm8550-ufshc
+          - qcom,sm8650-ufshc
       - const: qcom,ufshc
       - const: jedec,ufs-2.0
 

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-ufs-d03cf52d57d5

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


