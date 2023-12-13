Return-Path: <devicetree+bounces-25043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE1A812046
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 21:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D83A2827F3
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E859C7E571;
	Wed, 13 Dec 2023 20:54:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 1227 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 13 Dec 2023 12:54:54 PST
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de [80.67.29.8])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A31A9C;
	Wed, 13 Dec 2023 12:54:54 -0800 (PST)
Received: from [92.206.191.209] (helo=note-book.lan)
	by smtprelay04.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <git@apitzsch.eu>)
	id 1rDVw1-0004Kq-1T;
	Wed, 13 Dec 2023 21:34:25 +0100
From: =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Subject: [PATCH 0/2] ARM: dts: qcom: msm8926-motorola-peregrine: Add
 initial device tree
Date: Wed, 13 Dec 2023 21:33:56 +0100
Message-Id: <20231213-peregrine-v1-0-5229e21bca3f@apitzsch.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADQVemUC/x3MQQqAIBBA0avIrBN0IqiuEi3URpuNyQgRhHdPW
 j74/BcqCVOFVb0gdHPlK3fYQUE4XU6k+egGNDhaNLMuJJSEM+nFoPMYPYY4Qe+LUOTnf217ax8
 3FE6jWwAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
X-Mailer: b4 0.12.4
X-Df-Sender: YW5kcmVAYXBpdHpzY2guZXU=
X-Spam-Level: *

This dts adds support for Motorola Moto G 4G released in 2013.

Add a device tree with initial support for:

- GPIO keys
- Hall sensor
- SDHCI
- Vibrator

Signed-off-by: André Apitzsch <git@apitzsch.eu>
---
André Apitzsch (2):
      dt-bindings: arm: qcom: Add Motorola Moto G 4G
      ARM: dts: qcom: msm8926-motorola-peregrine: Add initial device tree

 Documentation/devicetree/bindings/arm/qcom.yaml    |   1 +
 arch/arm/boot/dts/qcom/Makefile                    |   1 +
 .../dts/qcom/qcom-msm8926-motorola-peregrine.dts   | 297 +++++++++++++++++++++
 3 files changed, 299 insertions(+)
---
base-commit: 48e8992e33abf054bcc0bb2e77b2d43bb899212e
change-id: 20231208-peregrine-902ab2fb2cf5

Best regards,
-- 
André Apitzsch <git@apitzsch.eu>


