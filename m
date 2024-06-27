Return-Path: <devicetree+bounces-80763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9C091A5D9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E69BEB26E5E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD86A1581EF;
	Thu, 27 Jun 2024 11:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PH6EDQxL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F1D14F12F
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489367; cv=none; b=EelRGZqKsIGqQlX3+4wUzMpVnqwtzoGRMyVv6lKuFIqqi5yukFXfDM3MP3nV0OxMb7kuIM0i6FUeC4VLy5EwL3dGS82inH4O1vXDh8rTVF+nRAQkDTuPjGF6fe4RazSycVV3G0gfvSRafrYTsw2lfI/ZBN8kBL9sYK0VpYi30PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489367; c=relaxed/simple;
	bh=dUSDrgAtHsqrMBMVwu3TID32cVpjInOWsGks5FuWKtk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AV+iljRGAWX/cHgPaGLlgERdMmyV7bXoiur+h03L9+4En9hvYwDNpkN9yhQ6WXvXtJidMy0seNRDVOgrxZvBfR9ODU/iOyXk711B2MR1Rmh7CJZu5nFcJwXWNet3ZCifjEIgmHa0LVLU96aN2aKtNCH4XhgyV5vpNBOK7xEp0sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PH6EDQxL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42563a9fa58so6838115e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719489364; x=1720094164; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C8PKRIjUjJvRpKUO3o64Ez7TG7JmfxLlBEHlJ45a3zY=;
        b=PH6EDQxLTcxGM3sPn8xsNhYjHy0y/L/pEw/+x4SRv00k/xeac/cfyvw85tFbhTBxcP
         QdHawqIvgeYdTtz6KCesI2jnspq5r0tcBu35tDVVe7GuzREFyjZFbpapXvn8NNA0x3x1
         qdJpxbwhskH34G7f1Qnl/ldf0SIIhVzxWlWA1OmIDIqDQhOYccGbhFUuOOKxD/fYBNgK
         QqCuj9ZlefYRKSeCqDhp0LjOoca/UiSQ2Svl3kwuQIoJCJsYB6qDHcROCNDoM78OMlS2
         VJ/YsxEwqUhute5nyBl1VL5EOjD8dduXbHrFC+Dp+gZv5XEdlTYUvMZxs7z0y+clzv7e
         Xd9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489364; x=1720094164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C8PKRIjUjJvRpKUO3o64Ez7TG7JmfxLlBEHlJ45a3zY=;
        b=Gy3hw1tIz/7fG1N3RZqrmKnPnBRdmHmdW/XHnTsmB2J4m9b71gg/FET8ZsH6m1X7Uq
         466RBbFlNb3ZLI/URrvyJT/U5sYfB2r37IPUX5YKUbH3LRUKSlPo9aXtEDdkUKWivm23
         UVyHbFkPp1toNyOrYfm4ES4XKD3P7XeQ/xKx8TcjL/vRSUfmuvYX2pfcWHj3K5ZdA5+l
         fq197I/SkMjt9slEqer4Y40gsrLnZBbaKo5BiHyXL7U0UlCqStOLBsrvAYriA5Ulia18
         Sy32eEIADVGtG/Ex85wNxhpCTJbkiTZI3Ev1PqntZ5bvmcAbINuL9/X+5pMHcaZfbqRQ
         feAw==
X-Forwarded-Encrypted: i=1; AJvYcCW1ZZrWk0wkwTdUsu5IOqZVTFlhEXozNF35Vl/QDB7gH1uBTKw+E3/lne+9AyHXyJtg+9O6BKWWIzvsnQA46NaAX0rDqtvVrmuxiA==
X-Gm-Message-State: AOJu0Yx1LYnb3qEc7C7T7UDPubbkAfqwyMe0NZzsBLbyiUau5/zrgLB7
	CPv96xG6Ax9GCUCKbpVcSwsjOg4wRwUX+qHOun5VYpq9sEFCgRB37a84ReYBv6nSuILVJRUx+yH
	54Gg=
X-Google-Smtp-Source: AGHT+IHBbWux1XK3iRVshTsRxxXviYQma5KbR0jw+TjRRrgK4sLvfpFamoLeU0YCU0X6iuVK/eCNOQ==
X-Received: by 2002:a05:600c:1789:b0:424:a403:565f with SMTP id 5b1f17b1804b1-424a4035701mr51778595e9.11.1719489363863;
        Thu, 27 Jun 2024 04:56:03 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674369980asm1597552f8f.80.2024.06.27.04.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:56:02 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 27 Jun 2024 12:55:20 +0100
Subject: [PATCH 4/6] ASoC: codecs: wsa884x: parse port-mapping information
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-port-map-v1-4-bd8987d2b332@linaro.org>
References: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
In-Reply-To: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1132;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=dUSDrgAtHsqrMBMVwu3TID32cVpjInOWsGks5FuWKtk=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfVNNx5Keb8/2UTS2PdI7G4dwNTqMZW5WTi47u
 +Gyoboi9hKJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn1TTQAKCRB6of1ZxzRV
 N+SWB/9vQ7yE+tHfTCFxUmw7TEKD+173QS/8VEoVYvSpK0ZvixgEnUmeHsfZVfik5aauwyZi4qy
 EuwBCYrGkJt8e4RCsPkTC923sD43Sryur5818zRXs2x+3qzm9dKlVhLZzEUMl7W0FSA1WRikR5U
 2YicmmmHE61u0snF1GwA68kS43KHDEcxlJzQ09O4MYGMCJ3YA/LYaNCQkSHVYEemYgdDD1ZvSrt
 xqFqvcy+ivl6e230dGVSNO+GPHVAXnLUk6rRHUCCoNYku99GIxThaYleKR6/HKsn5dbRNAjisWB
 4M3vKwa9Wr41gtNrGaBQCdKeU1t4B5vGi7iyYUCwHg5RSg5x
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Add support to parse static master port map information from device tree.
This is required for correct port mapping between soundwire device and
master ports.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wsa884x.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/sound/soc/codecs/wsa884x.c b/sound/soc/codecs/wsa884x.c
index a9767ef0e39d..72ff71bfb827 100644
--- a/sound/soc/codecs/wsa884x.c
+++ b/sound/soc/codecs/wsa884x.c
@@ -1887,6 +1887,14 @@ static int wsa884x_probe(struct sdw_slave *pdev,
 	wsa884x->sconfig.direction = SDW_DATA_DIR_RX;
 	wsa884x->sconfig.type = SDW_STREAM_PDM;
 
+	/**
+	 * Port map index starts with 0, however the data port for this codec
+	 * are from index 1
+	 */
+	if (of_property_read_u32_array(dev->of_node, "qcom,port-mapping", &pdev->m_port_map[1],
+					WSA884X_MAX_SWR_PORTS))
+		dev_info(dev, "Static Port mapping not specified\n");
+
 	pdev->prop.sink_ports = GENMASK(WSA884X_MAX_SWR_PORTS, 0);
 	pdev->prop.simple_clk_stop_capable = true;
 	pdev->prop.sink_dpn_prop = wsa884x_sink_dpn_prop;

-- 
2.25.1


