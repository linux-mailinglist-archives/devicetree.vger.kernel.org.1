Return-Path: <devicetree+bounces-7213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA1A7BFB4F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:25:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07DCF281C49
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B4A1A734;
	Tue, 10 Oct 2023 12:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xriTuVC5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005F3524F
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:25:46 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4656AF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:25:43 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40572aeb6d0so52719005e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696940742; x=1697545542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QJoGOmHf3rDEIH9ZhsJ2Ddsd34yzBngjw1VZp8Xb8gs=;
        b=xriTuVC5oWZyFAVHIhNUhdwhOOh24Lauv5qih3neAZNNkHiMbZV47s20oXSS5JT2ir
         Wb0YW5kmkM4kmvHonVqaLJ2JqXV0nQfWpifCzx+64TOL6NHBYHwVWsspscjg9sPSG7om
         Exc5Qe9K/2Nst+AnLK1tilxOAXtIH9npxpvHORQPrzXjElAyZLj4YWQKkPrw6Nvwt2Q6
         GeR4UUcvkgJ2CNp5/bAP8OXrBJOsYRR6ParuFDj1fQ20oN+Q8L3qwJYqNF92qpgrEVfD
         zVrJ2GoPy07rVHHzUEtf50h/Vmq/hSnUWt9y+dnfCWyPltB+wdDzDpWLGXpLHzoo7ije
         aKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696940742; x=1697545542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QJoGOmHf3rDEIH9ZhsJ2Ddsd34yzBngjw1VZp8Xb8gs=;
        b=PKzUy2zasV2KVqCT3sOF8986MAbxatF2DJ7bqyG3yZmJdAz3QX7pjaOEQCpTe/cMnM
         JUHO668RhwXMUArGOX62yi+yufTDkuB7bG5Y6Mjrted3mQhv9TediFlb6IawTfwTAwvU
         uQtziTj+6uL/ZJ46bkkw4Kn/IW6aBuLejwcq4EjeJCSFIPtxot1xylhQtNGNTNwnfPEw
         R/BQhzPPff6iuI0uvARMTlEAEmdVx5otyRNeaxQ+OvKtkZCg76qEmZo0AX+FdgQ5Gp+N
         JabePOYdMpkfY8TEGIxwhPpEfIDSuOaRxEI+mn6Yf4nZvayLnLYLfXv8RiAg56hGbh8P
         is7Q==
X-Gm-Message-State: AOJu0Ywc0qHeySNSebODox+syKu9kcVgD2Mo/c9Z93gFCXimwiq5cExo
	IfB03gfD7DA/rc+3MQXoR4wlMg==
X-Google-Smtp-Source: AGHT+IEMFE7+jZ2E6qIyXz13dvkGAue4LRino7VKu9st5WEkc5wvqXhVsCTMXxrxQej5JckFDuAY3A==
X-Received: by 2002:a1c:f710:0:b0:400:ce4f:f184 with SMTP id v16-20020a1cf710000000b00400ce4ff184mr16792201wmh.41.1696940742160;
        Tue, 10 Oct 2023 05:25:42 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id bv28-20020a0560001f1c00b0032d402f816csm1404316wrb.98.2023.10.10.05.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 05:25:41 -0700 (PDT)
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
Subject: [PATCH v2 0/3] Add sc8280xp CCI and CAMSS core dtsi
Date: Tue, 10 Oct 2023 13:25:36 +0100
Message-Id: <20231010122539.1768825-1-bryan.odonoghue@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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

Bryan O'Donoghue (3):
  arm64: dts: qcom: sc8280xp: camss: Add CCI definitions
  media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding
  arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition

 .../bindings/media/qcom,sc8280xp-camss.yaml   | 582 +++++++++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 609 ++++++++++++++++++
 2 files changed, 1191 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml

-- 
2.40.1


