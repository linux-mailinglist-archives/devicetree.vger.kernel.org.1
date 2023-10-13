Return-Path: <devicetree+bounces-8593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA67C8E88
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 22:52:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7081F1C209B9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307F1200D1;
	Fri, 13 Oct 2023 20:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5D8101F9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 20:52:40 +0000 (UTC)
Received: from smtprelay02.ispgateway.de (smtprelay02.ispgateway.de [80.67.31.40])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A0CBA9;
	Fri, 13 Oct 2023 13:52:37 -0700 (PDT)
Received: from [92.206.139.21] (helo=note-book.lan)
	by smtprelay02.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <git@apitzsch.eu>)
	id 1qrP98-0002ny-0b;
	Fri, 13 Oct 2023 22:52:34 +0200
From: =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Subject: [PATCH 0/2] arm64: dts: qcom: longcheer l8910 and l9100: Enable
 RGB LED
Date: Fri, 13 Oct 2023 22:51:35 +0200
Message-Id: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANetKWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDA0Nj3aTC+JzUlGJdgxSLRMskQ9PUZLNEJaDqgqLUtMwKsEnRsbW1AG4
 aLYtZAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Stephan Gerhold <stephan@gerhold.net>
X-Mailer: b4 0.12.3
X-Df-Sender: YW5kcmVAYXBpdHpzY2guZXU=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

With the driver for ktd2026 recently applied to linux-leds[1], the LED
can be enabled on longcheer l8910 and l9100.

[1] https://lore.kernel.org/all/20231002-ktd202x-v6-0-26be8eefeb88@apitzsch.eu/

Signed-off-by: André Apitzsch <git@apitzsch.eu>
---
André Apitzsch (2):
      arm64: dts: qcom: msm8916-longcheer-l8910: Enable RGB LED
      arm64: dts: qcom: msm8939-longcheer-l9100: Enable RGB LED

 .../boot/dts/qcom/msm8916-longcheer-l8910.dts      | 51 ++++++++++++++++++++++
 .../boot/dts/qcom/msm8939-longcheer-l9100.dts      | 51 ++++++++++++++++++++++
 2 files changed, 102 insertions(+)
---
base-commit: beb63bee4857fd3661305eec8888d025a7c26c56
change-id: 20231013-bq_leds-0d8a9b15ec6a

Best regards,
-- 
André Apitzsch <git@apitzsch.eu>


