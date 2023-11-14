Return-Path: <devicetree+bounces-15577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3841C7EADDD
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D973C281117
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C31219448;
	Tue, 14 Nov 2023 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="slwWsjAi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266BF18AF6
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 10:19:58 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A86C1A7
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:19:57 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso47078035e9.2
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699957195; x=1700561995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1QWKo5v1x3RldbHoETv2ObEXLCGaOLMr/Qq6NkPTAw=;
        b=slwWsjAiu3nkpkU54skAv6EME0H3gWV0VPr+pLTm/kwOi83uBiLdJPhyCOfAnW2oMT
         Mcxaf/tjRuRcuFTcwOH/77MxVbaIdeB6V077IgjR39meWs8SnZjc9rxVVHPAlfFRoVDC
         NDMfyjl1EPdKcHuBpB6G8DG9myrB87sS00CEw7qOkx0OnHS+nld/KvTd/ptm1527KVDP
         eHMtEQbrXLSaoihWdZcVafV/AAzM7bQfrWmQL8Lu+s28BOCQbnKEdRs6pnu17h79caWz
         UxNyTuWWmRSFrBRsPoClx7GdUfGs/wJw8UIXzBTU+pJyO0P3CjPjChf08QuPX0L8khtz
         /IXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699957195; x=1700561995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D1QWKo5v1x3RldbHoETv2ObEXLCGaOLMr/Qq6NkPTAw=;
        b=ut+oC1xzSNvkyuL3Zqmxx4EZCOgnLTL5wcDTX5dDyitfUKX+P6+9MNCmEWqGeFdyPf
         ngMEyR8EpZnI5Qt+fIn/4u/nksN6w4jTiTXQie5rlFXND74qAx9kJNIEdT2VhMBinEB0
         SRf1IG9RIqAr8kW3ihUB5XibKjkdjjaU6ciMkWiRdi0yX7C3wXtHNXrYXmi5IUuHYZAb
         vS4zSxm7Sja15MVn8kjbKZWQ3LJMQ1+VR5i7o43LTaHbWMT6JUtNuOascfekUkBaFkxt
         hxR+Lb4L5X6iZ9JDHbmN049FAgkCd1tin4U7/KqvLDTPtjY2Fl99HWLGT2iXXnKIO53o
         //vQ==
X-Gm-Message-State: AOJu0YzFo3KSrgmsG9ZIZ1o2Je3YJPZHxgrF/4vay2IPOF/GvVfmxxVN
	lDGD5YsYGdn3FfTwDkVvgeNjTQ==
X-Google-Smtp-Source: AGHT+IEtRy6/1TJjxurvCCcvkAtUDZaID1wnEiQdKSWVWSMY+EUI5ohY3QFVq9O366Nao94h1NMqJw==
X-Received: by 2002:a05:6000:bce:b0:324:8239:2873 with SMTP id dm14-20020a0560000bce00b0032482392873mr5689990wrb.37.1699957195651;
        Tue, 14 Nov 2023 02:19:55 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d43c9000000b0032da022855fsm7419675wrr.111.2023.11.14.02.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 02:19:55 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 14 Nov 2023 11:19:50 +0100
Subject: [PATCH 1/2] dt-bindings: power: meson-g12a-power: document ISP
 power domain
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-1-f01e6fca67a0@linaro.org>
References: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
In-Reply-To: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=643;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=TxQCQp8KexETWz0DJ5Ct9muX5KYY3F1pMZr7p8jc1eY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlU0nJN8WGk5SnAfQY6NQMuQ9Y2QaJiEjnrNK28CTN
 3KX/EhuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZVNJyQAKCRB33NvayMhJ0c3aEA
 Cojhb5oA95QAfgsCKWFyi0lXKqq0xsdU+OqBoQahY5LJYvKMov4oy1eWZO8JgU4DbIzXZMXKKv8Fvt
 occrcqxosWG/hDs5U5qEdWM5N6PoLVgYtofaqm/7GD9Zsm4GRpqIbFgkFZhXAt+VifzXwgYf4STkMM
 JPYa9O+itDHAOkLyN+kT4Gf9qQunbGaqNQTMs6RMM3Mb6ka6YYRuOm2qopuEv31DE86+U5Cin5TpbM
 xCUob2ZbP5bL9ue2UcHBsFQ7wJ1FKSByJcEiN0pd8TFWZH2zRLkBWORx1knQ2tObqCzNiNdGJucSS5
 i397W51sjErzBVTnBoHLq8Qs6PA8Rimrqdw0LwP6ED+b79yCiyhsjjpRhmiPMO5Wr+iXc7rjWf0i5e
 00UhsuZG8ruOVONe8zi0kr9EdG3pvwdiJ1Mzfg2U/YRgfXkBGotX0w5ww2xnaeUHiw5NGRnd0BXUyB
 2azZ3kOSKNtAxfd90b5GOoDFmUWCRB2g/LStbmpM2Qj4c7MHaA3ItuWkxR2Og6cnAb2ljJk9h0+bpU
 ocgbE9Kb5Xf6R2wytOISOQ7JuzLBW69l91xmGTkCdPVjTQfm4vze8RE/sxl9NI85H4dHaG0kYW+EE7
 V9e26rxwkJdHD74bj0B0B0rXhA79oQ1GRpXDyQPn0YWJJKEbSeYmD+Tu+tvQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add MIPI ISP power domain ID to the G12A Power domains bindings header

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 include/dt-bindings/power/meson-g12a-power.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/power/meson-g12a-power.h b/include/dt-bindings/power/meson-g12a-power.h
index 44ec0c50e340..01fd0ac4dd08 100644
--- a/include/dt-bindings/power/meson-g12a-power.h
+++ b/include/dt-bindings/power/meson-g12a-power.h
@@ -10,5 +10,6 @@
 #define PWRC_G12A_VPU_ID		0
 #define PWRC_G12A_ETH_ID		1
 #define PWRC_G12A_NNA_ID		2
+#define PWRC_G12A_ISP_ID		3
 
 #endif

-- 
2.34.1


