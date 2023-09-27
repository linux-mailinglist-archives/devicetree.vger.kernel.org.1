Return-Path: <devicetree+bounces-3946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEFD7B0AB1
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:54:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EB3B11C208DF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6982648E8D;
	Wed, 27 Sep 2023 16:54:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5584B1BDE0;
	Wed, 27 Sep 2023 16:54:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9649EC433C7;
	Wed, 27 Sep 2023 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695833664;
	bh=PbWliIL+YkhZx/7SImI4k4hkB5SastFowOtRO9Imz4k=;
	h=From:To:Cc:Subject:Date:From;
	b=T563OrhTCvY+vjXfbCikSv8n5+yLYxvGgPRibY122ZnVcMDfS0NfEwpkXZIuN2nJl
	 i1xO/bzNLvdXZAFzvRLj8VJCxNYxg596/v8jBCmPK49XwEPTqT8axX9q4sOoI7+5E5
	 kmjov4C/ihxcWw1ZUrTYjGUy2zbhnXBTwAroo00pXxzoen/Rn6QNHA5an/aCNCEyS0
	 DBvSAxEIuXjqwzF54vFm+nrhwod7Z9sp/1n5lLgFRRHnV0fJ76dhMuv2O4UJpk+eUp
	 eWR7+NsfInLgS3L8Z5zgLZ/MIzkZejSaXv7poJ8so6lad4vL5eFHjgkl5RCjkqytxl
	 mySyjpQeih4wQ==
From: Jisheng Zhang <jszhang@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] usb: dwc3: add driver for T-HEAD TH1520 SoC
Date: Thu, 28 Sep 2023 00:42:20 +0800
Message-Id: <20230927164222.3505-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the usb driver support for T-HEAD TH1520 SoC.

Since the clk part isn't mainlined, so SoC dts(i) changes are not
included in this series. However, it can be tested by using fixed-clock.

Jisheng Zhang (2):
  dt-bindings: usb: Add T-HEAD TH1520 USB controller
  usb: dwc3: add T-HEAD TH1520 usb driver

 .../bindings/usb/thead,th1520-usb.yaml        |  73 +++++++++++
 MAINTAINERS                                   |   1 +
 drivers/usb/dwc3/Kconfig                      |   9 ++
 drivers/usb/dwc3/Makefile                     |   1 +
 drivers/usb/dwc3/dwc3-thead.c                 | 119 ++++++++++++++++++
 5 files changed, 203 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/thead,th1520-usb.yaml
 create mode 100644 drivers/usb/dwc3/dwc3-thead.c

-- 
2.40.1


