Return-Path: <devicetree+bounces-6457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E417BB726
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A96C71C209AE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCA5C1CAB2;
	Fri,  6 Oct 2023 12:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KMlXqqIz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768A1BDCC
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:02:07 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A3FE9
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:02:04 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-406619b53caso18052955e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696593723; x=1697198523; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+tRRmk02RPImBRLbLRoEQCQTLQJvcEiVX7dpADSsWwY=;
        b=KMlXqqIzMD3qffk4zdBFWxAfoXDXaJ6mL2JkEMGvfkKqRF6AU5fDkTJLTAHXqNkg4N
         y2kGGJ9kf+rcYGDJ6ARz103QELqlBCyXqt7trbppT3fLtqD5bAjBMRZ2g4GayVZiasjs
         Zu0Jdr3UOagj3bXm8PHWnuQi3n/lL8a+wPIgaIt7e4IqcJyRhLrk8RJh62OsjIIIsi4w
         T87OWmIrpLk718pAP/ijirTFjdqZJcB60zqROxUQ00afvDpQRE498E25mZZ9a5jJVV2m
         1irsi+zJSHZMh2mM0KWlS8u/iVr0/G7Ed8ankSeetQCFXWq0DgoWEM2nCzpm/YrsvTTP
         a4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696593723; x=1697198523;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+tRRmk02RPImBRLbLRoEQCQTLQJvcEiVX7dpADSsWwY=;
        b=syDxXHQlKWL1Qmw+2zztfb4Nmii5Wc2cMb5EqMPqEuITTup96wwCBbsuet9zpTZ7cM
         tS/f1ctrTLLa+AAdW0ukmgQm4lgHtQDzsMo2sfh8rgD3GAj4qC1dBsF31pmSB0TaJObU
         XtsxfA7lk+X2MwZ4i3/wzlwQhZhrvjJOqtL+kQeWiEQDCD8pqZmWW4pcNEJsODnEtlqt
         wXNZMrR26UjKObVPUVfq4hBHw1O0tpNQ/pGsCyem5zBZ/lutyTNEbkU/EDn8Pr1gglow
         xAq7/BXmTZdtHLxwq0J0ZxQkHYhA5mBCLLsPhsZW3MG48B5J22/OINIHXr8t9x+DiH1U
         7mhw==
X-Gm-Message-State: AOJu0YzokNIq2ZRDyPNypS7uVfHc3LSk0OawT/g9vOVIVS3spk7pa4IP
	+CbXRHtlUuFgE0KjFm89woMo4g==
X-Google-Smtp-Source: AGHT+IF5RYEvEKl+xS0P6/d0XseRZ9B+HxnqsobCALycXlaL8VL62NI/pH6Es1GVdJS7/sv7tNcNbA==
X-Received: by 2002:a05:600c:3b20:b0:406:847a:2934 with SMTP id m32-20020a05600c3b2000b00406847a2934mr6432197wms.28.1696593722608;
        Fri, 06 Oct 2023 05:02:02 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m8-20020a056000180800b00321773bb933sm1491061wrh.77.2023.10.06.05.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:02:02 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	loic.poulain@linaro.org,
	rfoss@kernel.org,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	todor.too@gmail.com,
	mchehab@kernel.org,
	bryan.odonoghue@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Add sc8280xp CCI and CAMSS core dtsi
Date: Fri,  6 Oct 2023 13:01:54 +0100
Message-Id: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
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

Bryan O'Donoghue (5):
  dt-bindings: i2c: qcom-cci: Document sc8280xp compatible
  i2c: qcom-cci: Add sc8280xp compatible
  arm64: dts: qcom: sc8280xp: camss: Add CCI definitions
  media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding
  arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml |   2 +
 .../bindings/media/qcom,sc8280xp-camss.yaml   | 598 +++++++++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 608 ++++++++++++++++++
 drivers/i2c/busses/i2c-qcom-cci.c             |   1 +
 4 files changed, 1209 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml

-- 
2.40.1


