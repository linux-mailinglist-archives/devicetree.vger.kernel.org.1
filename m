Return-Path: <devicetree+bounces-10442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D84FF7D12DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 17:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 672972825B9
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05BF1DDE6;
	Fri, 20 Oct 2023 15:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="YnVp5gJt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FF01DDD8
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:34:33 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 743BCB3;
	Fri, 20 Oct 2023 08:34:32 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 18D4040541;
	Fri, 20 Oct 2023 20:34:10 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1697816051; bh=qRQqOpHEja4+bOVE0+RE+KlNzc3wVdpb5/j4pLNNEf0=;
	h=From:Subject:Date:To:Cc:From;
	b=YnVp5gJtdwMX8ZMIaaDoSKDwjqJQvXXgxFshemOzI6ssvK8imq0f2jHehF8s02o+x
	 6NGZ1TvMAk5o+7eR7uq/vT7ksA6B+wl6irU+dIhUPh3msdagOUudzfv7Vl90VWBB4i
	 OMQY2GiQL/uYXK1IfT2VvprDGjejRSHWXgPhv1hJpxO6pcrNjDsG9QOxpUa1Q6y/aN
	 crB1K61TFsLQmVZdiDV4wyRf1/QZw4IIIHxLFHHXFDGTtsjungB2LYF6hgcOgIhQPI
	 /tIAllZyUlXmCjqtWZY28YcIwuQwelwJ0hu1p6ib9fTzshhpxcg0FLMFTBB/D+iF2g
	 mccbBzgZqcqTw==
From: Nikita Travkin <nikita@trvn.ru>
Subject: [PATCH 0/2] sc7180: Add qdsp baked soundcard
Date: Fri, 20 Oct 2023 20:33:45 +0500
Message-Id: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANmdMmUC/x3MMQqAMAxA0atIZgNpFSteRRxqGzVL1QZEEO9uc
 XzD/w8oZ2GFoXog8yUqeyowdQVh82lllFgMlmxjyBJqcKYnPKMeqCkGnyNyT50j43huA5TyyLz
 I/V/H6X0/NZpha2UAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: jenneron@postmarketos.org, linux-arm-msm@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1022; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=qRQqOpHEja4+bOVE0+RE+KlNzc3wVdpb5/j4pLNNEf0=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlMp3uUQVyPi1hr+wNx22OyJ94FaggsSQx/aHpO
 pCkc2BBfUKJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTKd7gAKCRBDHOzuKBm/
 deraD/44ZNzmfdkYDMy8y/DufJVaMHVQHxfIRanM6yiVCm0bQr+6bXRsPMrzxNhBAmU0xDEd69V
 Tzd4/2b/Z8oAceWzPe+YzANtsN3BUL6W+sVKHv7h9FJoMazFdpVWk1UOhfNqSG5ycJMlylGyOLB
 1i96s/Fu2EGO5dc0eB48TWfDtPyxfnXPindRby3GFfy7xhOLDN3ix8UzaLlBpOT/FidRbWetzGO
 liQOzYRC0laCjulrI/+88i2nGbdyELjoBAz2dNPRkDs81rbIjmRdpQCSHQLCUwhUHqKX3/veR46
 LDouuaExRO5PUMhX2JDiIIgHT0f2lc25b3F/Od1RT7uP6BvdMXnQ5bGSu/jlg3uD4nXvrBxPuVJ
 a4cU1OLcQY63zy1pGGfmBufxWxzNsiiArH159YfllUasvo6I7+TQCKX6XLNgZ4Gg6IkzpGL7ubo
 Zo3WfntQNX3sXdmgatQwrzJxXpBG2MPhFGD59b1T21KVeT//Hzf65WLUVI6Bl3VXQrG6s7sES0z
 Ncg7SDR4Sq4LhZq6RBu90R9G3taZNiaZiKccYwEd/rrQfn0XxfBT/dXRyAzwT0TiKjim7/xafY6
 U3kcPXfVtq5ngscsz98JVMDs21XIk9pg3CcKHaaIR50ODYs5gmcQVPULZ6aMNSNyu1Jc6c1z9/9
 7IuV3DdXwpv7qdA==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

Some devices, such as Acer Aspire 1, can't use lpass dirrectly, but
instead must use adsp core to play sound. Since otherwise the hardware
is, usually, very similar across the devices on the same platform, it
makes sense to reuse the same boardfile.

This series refactors the sc7180.c slightly and adds the functions to
control clocks via adsp instead of controlling the hardware directly.

Existing google devices should experience no change.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
Nikita Travkin (2):
      ASoC: dt-bindings: qcom,sm8250: Add sc7180-qdsp6-sndcard
      ASoC: qcom: sc7180: Add support for qdsp6 baked sound

 .../devicetree/bindings/sound/qcom,sm8250.yaml     |   1 +
 sound/soc/qcom/sc7180.c                            | 195 ++++++++++++++++++---
 2 files changed, 174 insertions(+), 22 deletions(-)
---
base-commit: 2030579113a1b1b5bfd7ff24c0852847836d8fd1
change-id: 20231020-sc7180-qdsp-sndcard-e8067017eb4c

Best regards,
-- 
Nikita Travkin <nikita@trvn.ru>


