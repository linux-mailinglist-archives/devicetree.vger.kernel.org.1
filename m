Return-Path: <devicetree+bounces-8132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 839A97C6C51
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BAD81C20A68
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D6424209;
	Thu, 12 Oct 2023 11:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pPD4LXAp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C72241FB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:31:10 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6A42C4
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:31:05 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4056ce55e7eso8504345e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697110264; x=1697715064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CnuoW+FQCD/OpcgflvSx0Oe2LZM8hD2I1654SS3PYOc=;
        b=pPD4LXApcviScq+lACrJ/cbam//ID6+iVyoZoX4FtxOhp3C7nJT4HCP3UnKwCotz0I
         dzdYR+4pyFKwBJzv/NsyetIGGGrxP3dAaB84Ufkp8bxYsbaoulAb7tQDLj5ws4q+d3WH
         yKw6sK/R7IkKy19lKVmWqHdHqFuOyP52SP+bTZ+hb5uSNyB6aNqkTsookAvvSU51dT4y
         RdU0g6ls9hO2aucYbyfgthNx4TMfXQkv73SrML8wjqtaLlSHanSbWcBe/FmHKaIAzgu4
         7uCPoeVG3/3BN7nOvmTCQAXu2VNU72aTfwtGCFhMy9nDZpEgUWKp5+F8rkV7Ytwbgx7Y
         zlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697110264; x=1697715064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CnuoW+FQCD/OpcgflvSx0Oe2LZM8hD2I1654SS3PYOc=;
        b=YTRVmx8eamoVx8ro0cRt78g2fMwRRzLZ//Y+dcNa2K0ivM3XicHupfY0ru/8NqWKtO
         K4V/85zmauw24fyKVpFDqLTIgHZpSTDm8rd749yS2BcNMz0L2xt7Z6HEIBo0w7l97+kB
         AZUGaX1aKkUfk40TOxzyW0s10+PIzkd980eXi3rDOtKWF29Jmav5DZbPEisAxe3kM7z/
         AWe8pnKWxEkvUN7ck+d/BKk0WIIUeYC3iuQhzBamJH+7JCLeAUsuFBWFBnH7Ad70ey5t
         4Xf4u+OEaVfnE2PbXIv73RejjJ2efM+NW0gmAZS7mfnOgad7E1NvRdu+dTwMrCFHkG/q
         8GPw==
X-Gm-Message-State: AOJu0YxdyzfPI9h2iQEzdxpOUuAkBPSM2dO9hRigzstaAgQfKQ7YkvhK
	okElZd7RVAMT9dggjtWmI6FUgw==
X-Google-Smtp-Source: AGHT+IGBdXRT0UtMVp+RpimAXsw2HQh3MU7GuKMfnrtGP6iY7VsQcYh19478v3IKMkocVBje2WrYow==
X-Received: by 2002:a05:6000:250:b0:32d:825b:e7da with SMTP id m16-20020a056000025000b0032d825be7damr3858653wrz.41.1697110264167;
        Thu, 12 Oct 2023 04:31:04 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id l14-20020a5d480e000000b0031c5e9c2ed7sm18244891wrq.92.2023.10.12.04.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 04:31:03 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v4 0/4] Add sc8280xp CCI and CAMSS core dtsi
Date: Thu, 12 Oct 2023 12:30:56 +0100
Message-Id: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

V4:
- Adds RB - Krzysztof
- Drops indicated newline - Krzysztof
- Moves "This patch depends-on" below the "---" - Krsysztof

Link next:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-10-10-sc8280xp-camss-v4

V3:
- Expands description of ports to clarify mapping of port to CSIPHY
  Rob

- Adds the dependency link into the commit log of patch #3 - bod

Link next:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-10-10-sc8280xp-camss-v3

V2:
- Drops specific sc8280xp-cci compat - Konrad
- Drops minItems where maxItems are equal - Krzysztof
- Uses suggested description for CAMSS - Krzysztof
- Leaves indentation of ports/properties - Rob
- NoISP. Supports bayer encoded upstream currently only - Krzysztof
- Endpoint. Adds an example endpoint - Krzysztof

Link next:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-10-10-sc8280xp-camss-v2

V1:
The sc8280xp provides a standard Camera Control Interface and Camera
SubSystem hardware interface similar to antecedent parts sdm845 and
sm8250.

Per the target segments for this part, sc8280xp has more of everything.
More CCI, VFE, CSIPHY and therefore more interrupt lines and clocks to
declare.

CCI x 4
CSIPHY x 4
VFE x 4
VFE Lite x 4
CSID x 4

Bootable 6.5.y x13s:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/lenovo-x13s-linux-6.5.y

Linux next:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-10-06-sc8280xp-camss

This patch depends-on:
https://lore.kernel.org/lkml/20231004161853.86382-2-bryan.odonoghue@linaro.org/T/

Bryan O'Donoghue (4):
  arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
  arm64: dts: qcom: sc8280xp: camss: Add CCI definitions
  media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding
  arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition

 .../bindings/media/qcom,sc8280xp-camss.yaml   | 581 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 624 ++++++++++++++++++
 2 files changed, 1205 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml

-- 
2.40.1


