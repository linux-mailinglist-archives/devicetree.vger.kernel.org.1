Return-Path: <devicetree+bounces-67866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD888C9FB1
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 17:30:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CE0A1C20FBD
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490E2137759;
	Mon, 20 May 2024 15:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="PA7k3srR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F931369BF
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 15:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716219014; cv=none; b=GJGg5NFpZWup6QhE5GoI2HzgMlX/Sl9k9hHiqNL0QuFKNLySCPMezYwS6Yxdb40z0iErRTLIaazZogENBjqwSq5gJiSk8gRvOVphJ1iHwAtRXmMayjCTYDLyWSo+u9tW6k32wqQyEpxhVg8fj8nEJyX03Fjn8SJzjfv7Lgucj3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716219014; c=relaxed/simple;
	bh=Vu0vznjdWxs66nSkbS9cacJp9FhincaEtP6y7P6cQd8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jZ1Sew6Y6wPBZ4bPriCD6264Dp66AwIkgfGoZUN66j4w8zslTt9xOipXOg/lc22Gvd1vtMqmSrwA7/Dc4hRIP/XeBGFWeuohKNWGpj5v+fdZMwGW+jTjRb3mfaxKdbvkuCcA8p1ZZ/LhoV5yyp+u88VlNyXXg4euhSPCZFNvm4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=PA7k3srR; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Envelope-To: robh@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1716219009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=flQbjfqnjMGGLkGPgtwubHoIaR8WTP9vdHbSmZ1m2Bs=;
	b=PA7k3srRdv7Ot87pJeffHhgamxS+LVsiGZORzvmiaqIOHXU58Mrh0X7+S8ExpFajXO7xoQ
	S0TSAf62d7sympTeOzrXm1wJDxG4v0RSs2T0zwqpqwxtaGogGKGxrENG2JSFwnWIoymxHs
	NIeskTOeAOIc1Ky5UScKzsw18aaKCBafT149EZETfQZRyoLWfS3eD6vDEql0bRJzndJWvy
	CvgkgLg/XH907zkV7t4mcWYxbxdWD7H5RqNhztJBU/RFCZI++MYYfyVjohElabpAr2yP0V
	gMSWHwYud8WuIcyqlDGOoQdklnR8FdM6vybK6AF61bgP/6KM0ZQgLdacOiD3KQ==
X-Envelope-To: amartinz@shiftphones.com
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: ~postmarketos/upstreaming@lists.sr.ht
X-Envelope-To: konrad.dybcio@linaro.org
X-Envelope-To: linux-arm-msm@vger.kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: luca.weiss@fairphone.com
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: andersson@kernel.org
X-Envelope-To: krzysztof.kozlowski@linaro.org
X-Envelope-To: caleb@postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Caleb Connolly <caleb@postmarketos.org>
Subject: [PATCH v2 0/2] qcom: initial support for the SHIFTphone 8
Date: Mon, 20 May 2024 17:29:40 +0200
Message-Id: <20240520-otter-bringup-v2-0-d717d1dab6b8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGRsS2YC/13MQQ7CIBCF4as0sxZDwQp25T1MF0gpncRAM1Sia
 bi72MSNy/8l79sgOUKXoG82IJcxYQw1xKEBO5vgHcOxNgguTrzjisV1dcTuhME/Fya1tpM0Rln
 TQf0s5CZ87d5tqD1jWiO9dz633/Un6T8pt4wzq7ka5XiR7XS+PjAYisdIHoZSygfTReqeqwAAA
 A==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Martinz <amartinz@shiftphones.com>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Caleb Connolly <caleb@postmarketos.org>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1452;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=Vu0vznjdWxs66nSkbS9cacJp9FhincaEtP6y7P6cQd8=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmS2yAGFfxWjWLHLcjMiOszvA68CXROR7bXORIn
 5oNNuwg1aqJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZktsgAAKCRAFgzErGV9k
 tmycD/9W6oyUOT4pwY+xWiUl96huz+0T0LDSk+g5l8Hg0Y5H29wcVNc6Gp7sk6R6TKaP5+WdNrc
 p9Y8Hz2zQHT4yFpecDQoCOn50/eXTa+zKUdueDC7VGinxTpypjslooNIKgC4usopO4UQZH9iYW0
 IybixkH3rtVgNAEbBaByUMe9NoXiELDHNZayfhdiryELdcS/qziU4zygfQeWLsCsMpsFVwSbjzE
 oqBMwTd28YglMiM8+dQpAhkMXnIdan3CMsTwJ5MuzlNpWttzdhJIRFrHwheNU6T6PbOgZdiT7j1
 0oRbN5yLZ1ibjZ0PixAi9ymRcAqiHseRhyd62HbLKU+tSxBMxCGMeMxIWD8OP+vWCFdYq1y0sxw
 0o5fXs17hL0MIqvNRN5SxQdMhBUka3nTiY3ACLuLnBVFkfEDuw4066eTcPOJmVc/5WgUs1KiMDC
 HvcN6R1ftuJg8PuLSj9TWWMfevvxDZQXH6GMs0nZe0aLayKJckBRVgtytAFHp/Jw8cVoJab9xk8
 w1q2kQ9OSkLDZEG/76D5tML/+/ZRye20S1MOv1Nm1k/gAaDpN10THuQQWlmk8obAzCdlYFr1w2c
 f5ZDpz7KhcSaa2OCNG9dN80CEoW9IF+e2SQ3owiYwxcowr63aPWrAg3AHgPWDcikI4Yh918zDeG
 u3/ODIEcVOFRStQ==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Migadu-Flow: FLOW_OUT

The SHIFTphone 8 is an upcoming QCM6490 smartphone, it has the following
features:

* 12GB of RAM, 512GB UFS storage
* 1080p display.
* Hardware kill switches for cameras and microphones
* UART access via type-c SBU pins (enabled by an internal switch)

Initial support includes:

* Framebuffer display
* UFS and sdcard storage
* Battery monitoring and USB role switching via pmic glink
* Bluetooth
* Thermals

Wifi works but requires some commits to be reverted to prevent a
firmware crash.

The serial port on the device can be accessed via the usb-cereal
adapter, it must first be enabled by flipping the switch under the
display. Additional info can be found on the postmarketOS wiki page.

https://wiki.postmarketos.org/wiki/SHIFT_SHIFTphone_8_(shift-otter)

---
Changes in v2:
- Fix authorship
- Address Luca's feedback
- Link to v1: https://lore.kernel.org/r/20240508-otter-bringup-v1-0-c807d3d931f6@linaro.org

---
Caleb Connolly (2):
      dt-bindings: arm: qcom: Add QCM6490 SHIFTphone 8
      arm64: dts: qcom: add QCM6490 SHIFTphone 8

 Documentation/devicetree/bindings/arm/qcom.yaml  |   1 +
 arch/arm64/boot/dts/qcom/Makefile                |   1 +
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 923 +++++++++++++++++++++++
 3 files changed, 925 insertions(+)
---
change-id: 20240507-otter-bringup-388cf3aa7ca5
base-commit: a38297e3fb012ddfa7ce0321a7e5a8daeb1872b6

// Caleb (they/them)


