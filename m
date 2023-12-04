Return-Path: <devicetree+bounces-21474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF3C803BD3
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 18:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99DDE28103F
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA032E84E;
	Mon,  4 Dec 2023 17:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hTl5hK1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1F84D3;
	Mon,  4 Dec 2023 09:41:01 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9fa2714e828so635942766b.1;
        Mon, 04 Dec 2023 09:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701711660; x=1702316460; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0YoXgk1fmeGz9Ml7hlpE/8h2Sivb7FXL2iIYJZqnuHo=;
        b=hTl5hK1+vHB1cPY6Ul5dmkCGNh/9C/+rWqGSJ0GznYo9XYzJ7eKcjYPoe0je0Tl60O
         //K4fJTjPX0avVotZfOfmbWyVSHHXGSij4h31b2lmAWpYOZPeUOAHXChacMnDeD3HbQQ
         oEdwDhmb4OJXkYGGE7dZc+IKW2lEjTVUoGADxcWJaLxAT4y2mV64jRXyk97OagPPYyBL
         CNfOoP1Rf+y8qJvvwWJyHymVygi1pI960QHjI8kcT4vO7o2rjzUkmwLn+/U1DT5QStKu
         sLb88Shzfr1oRAaNZQfSwk5oxhnxUH8q0LTLYzEoxeJrpKhVGFFbRvMr44OxCcjZov4N
         //oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701711660; x=1702316460;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0YoXgk1fmeGz9Ml7hlpE/8h2Sivb7FXL2iIYJZqnuHo=;
        b=rIPjChrLiarf9hnPHgg+WT+RdCDwdwYNXMOmjtsgkF0nLhK01spHuRzgZ3wsLZrws8
         ET8VDsIvJH8WY8IrAKZdyD76FCM0ExEE51lRfVUpIxyGZqrVxGyiuHYZUOeYLWSmYagF
         Qn2SMVCKri49cfpwy2dL9DJsaVAxbSunelzGJA54TW/p1PCO0M4F5NSbh7JnFbirt/zG
         puZoWX/jNmlA7F4/A8nhjqNYCnN4DFAZX+SeQjFegpza45ZDLam2BYCvD7zopSa/chYH
         lbe/B1rmJJyx1nQq1O58tSB33CyQ//XkPTdR23/oESLTpXTFMyN/RDAgOtxPxa84M0kb
         Pheg==
X-Gm-Message-State: AOJu0YwM6f119oqB9tABSMObNTT8RsKBDqAN4CYGMQGhH9c81JdNon4+
	yF95RYvQJM8wNJItnjpN3H8=
X-Google-Smtp-Source: AGHT+IH5CahfTiqAKyTJCwE1ddGA7CrKLTxjhTR6LznurnRE9jPGXs+oBd55rb4exBi9MUScKfvJ5w==
X-Received: by 2002:a17:906:6d52:b0:a19:a19b:55ce with SMTP id a18-20020a1709066d5200b00a19a19b55cemr3477124ejt.94.1701711659945;
        Mon, 04 Dec 2023 09:40:59 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ub12-20020a170907c80c00b009d268e3b801sm4350577ejc.37.2023.12.04.09.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 09:40:59 -0800 (PST)
Message-ID: <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
Date: Mon, 4 Dec 2023 18:40:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] ARM: dts: rockchip: rk3036-kylin: add hdmi-connector
 node
To: heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Content-Language: en-US
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Add hdmi-connector node to comply with the inno_hdmi binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index 67e1e04139e7..a213333be011 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -13,6 +13,17 @@ memory@60000000 {
 		reg = <0x60000000 0x20000000>;
 	};

+	hdmi_con: hdmi-con {
+		compatible = "hdmi-connector";
+		type = "c";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds: gpio-leds {
 		compatible = "gpio-leds";

@@ -110,6 +121,12 @@ &hdmi {
 	status = "okay";
 };

+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
 &i2c1 {
 	clock-frequency = <400000>;

--
2.39.2


