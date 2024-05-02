Return-Path: <devicetree+bounces-64588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D63308B9EF2
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 18:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DC731F2172F
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 16:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4891E16D4FC;
	Thu,  2 May 2024 16:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ipQXLDOP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D61B15CD67
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 16:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714668818; cv=none; b=j8fm+5HkVpTDfLLhjb18x6HGd/yJN+mx8woO1wtIfR0+i3KQr1J5Msbh1Y8ImRFV+R9VSeVAAit7TbUQv0J87v84Q41yYuEtNq3Pb5lMTlBRcxprereAE4pR7Kh4p6sEdZ/pe1dFRKzRdzq5emBVGKfKiL/sr+rri3Xyo0vUiAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714668818; c=relaxed/simple;
	bh=XjRyZcbkPPNVr053QhfB4Tt3L/wMeaHosImZkXVN488=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pN/yUcbccpKFb31EIsXjmbFDAvCYIrW1J2k4TpajffSNl+h03uBFpfsZgSxcePr01JEsm5mCcXLxD2mtWKfHtC3zPM3QMq/JWzuy+QQHwAmevTmnb8BoD7CIN1EnyRhFHf4NVb32ct743VQo/yVIQwDQzKCZQiuyjnFLuBMjgVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ipQXLDOP; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2df83058d48so72964021fa.1
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 09:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714668813; x=1715273613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=++0dDf7LbDX8URIy6mLis8b2THjPJyF6lNsvAEFkq48=;
        b=ipQXLDOPZvy4j/RkAUuo6LaY0CAOisJjkSuA0L7ze9CUFiJSg/hvUUjjA+UdzG+pWX
         EOt6X8qkyCsE/Uw33wPS59NCsPZ3mP4UUW0dWDz55abESPHC0QImnDwB85jDTPPL5kHf
         Wh26JF/yH0vJPsLsKabme9MQm19wSfHm80QTXJzMgh91ZWwjIg3cKT2F41965l+1EddL
         yZWXGvPVDWH5cgBnFXpA7ULpNNskta1ZdVk80IrqUfITNSkbaL6OTaOaD/H5BIUfEo6d
         E4/s7HPB8V0AF6L3RxEVdXKBDf8XFlX+R0471jFNm12zpEjPAqXVYL/3tKzBckJ4QJnm
         6+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714668813; x=1715273613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=++0dDf7LbDX8URIy6mLis8b2THjPJyF6lNsvAEFkq48=;
        b=unxSdFwQPlm+FsLQyiLfG3HPIau0iU0voKmYZWKSrXcb7MY/oZAOjSU151NobB9d4Z
         Hz1Ib9st/XzQjV8glaFSw51NRrfUmp9p+h23ZRu6U1lMdF8mVnspbCYW92TkzzEfy3ZK
         LJBE/s3VLRvp7j21gkhUsgHCzB64UDJIbqG6yusJfVjNmpRxcuZvs+BGmljp1Q/LFTrf
         KIG1Pa6VmfJ/9uH/E5oesV86tJfCddbUsz6bfyHSaFkdgjQqw6pPu3oRcFElV4aiHUhP
         oRUNGMwuaHL909kmXjfCC0dd7tBUPRhfjGJCtL8G+dn99wxoh0UeMYVIyNuFRs5PL7Uc
         KKBQ==
X-Forwarded-Encrypted: i=1; AJvYcCViirdFarElzPZfYTFWgfDSMHay7B6dMDAjFuAkskj9mvn0AE3mzM7DX802FwzkF559/wNJ30524mtoJxPc5yR6CJlKql/4j6F2oA==
X-Gm-Message-State: AOJu0YxmJPyDKqbvgk0QCQXzyD0B+Q7Jz66XqbCn5UZFsg/qt97OgWFl
	ZPks3XurUWve5GTX0+BCJq79/f6KAhzXuKg4yNYQF7tRX3u24X4sxdlNNlAkyoo=
X-Google-Smtp-Source: AGHT+IEXeSkY/zOAsMcH0B+gcPhxPwuOzw65ZnMS/1Pa9z29hw0erM7nsfsvqm0Q2wqJd3NDchRVDw==
X-Received: by 2002:a2e:860c:0:b0:2e2:350:3975 with SMTP id a12-20020a2e860c000000b002e203503975mr190263lji.41.1714668810603;
        Thu, 02 May 2024 09:53:30 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id bd23-20020a05600c1f1700b0041bfb176a87sm6326774wmb.27.2024.05.02.09.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 May 2024 09:53:30 -0700 (PDT)
Message-ID: <a77357c7-0442-4478-b375-436eb6b114be@baylibre.com>
Date: Thu, 2 May 2024 18:53:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] drm/mediatek: Add support for OF graphs
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wenst@chromium.org, kernel@collabora.com
References: <20240409120211.321153-1-angelogioacchino.delregno@collabora.com>
 <1fc23530-89ba-4e36-9e9a-a1289f56a9bc@baylibre.com>
 <608fdbde-ad06-45ec-9771-18aa9f002f2d@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <608fdbde-ad06-45ec-9771-18aa9f002f2d@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 30/04/2024 13:33, AngeloGioacchino Del Regno wrote:
> Il 30/04/24 12:17, Alexandre Mergnat ha scritto:
>> Hi Angelo,
>>
>> On 09/04/2024 14:02, AngeloGioacchino Del Regno wrote:
>>> This series was tested on MT8195 Cherry Tomato and on MT8395 Radxa
>>> NIO-12L with both hardcoded paths, OF graph support and partially
>>> hardcoded paths (meaning main display through OF graph and external
>>> display hardcoded, because of OVL_ADAPTOR).
>>
>> Is that make sense for you to add the DTS changes of these boards into this serie ?
>> I asked because, IMHO, that could help to understand the serie.
>>
> 
> Yes and no... but I imagine that you're asking this because you're trying to
> prepare something with a different SoC+board(s) combination :-)
> 
> In that case, I'm preventively sorry because what follows here is not 100%
> perfectly tidy yet as I didn't mean to send the devicetree commits upstream
> before this series got picked....
> 
> ... but there you go - I'm sure that you won't mind and that the example will
> be more than good enough for you.
> 
> Please note that one of the reasons why I didn't want to add this to the series
> is that the following changes show only a mere 50% of the reasons why we want OF
> graph support on mediatek-drm (but mainly, it's because I didn't have time to
> actually rebase etc :-P )

Thanks for the explanations and examples.
Unfortunately, I have 2 display but only one is working (the main: DSI0) when I use the dts method.
I've probably missed something but I don't know what.

In my "mmsys" node, if I swap display (the ext endpoint with the main endpoint), the DPI0 is 
working, but not the DSI0. I conclude my both paths are good.

Then, I've put some trace into "mtk_drm_of_ddp_path_build" to check if it parse the two endpoint of 
the node. Both are parsed, but "of_ep.port" is always = 0. According to "of_graph_parse_endpoint" 
function, "port" is the value of the parent "reg", whereas "id" is the value of the endpoint "reg".
So I replaced "of_ep.port" by "of_ep.id". Now I've of_ep.id = 0 for main and of_ep.id = 1 for EXT.

Now I've the good CRTC path, I get this error:
   mediatek-drm mediatek-drm.1.auto: Invalid display hw pipeline. Last component: 54 (ret=-2)
   mediatek-drm mediatek-drm.1.auto: probe with driver mediatek-drm failed with error -22

After quick look, the "cpath" into "mtk_drm_of_ddp_path_build_one" (or deeper functions) seems not 
be used as it should, due to the previous "of_ep.port" => "of_ep.id" change of course.

But I probably have to fix "of_ep.port" because I've mis-coded something. Just in case, I share you 
my diff:

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 1aa3426f561b..f660481d3fe8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -109,15 +109,51 @@ vsys_lcm_reg: regulator-vsys-lcm {
  	};
  };

+&cpu0 {
+	proc-supply = <&mt6357_vproc_reg>;
+	sram-supply = <&mt6357_vsram_proc_reg>;
+};
+
+&cpu1 {
+	proc-supply = <&mt6357_vproc_reg>;
+	sram-supply = <&mt6357_vsram_proc_reg>;
+};
+
+&cpu2 {
+	proc-supply = <&mt6357_vproc_reg>;
+	sram-supply = <&mt6357_vsram_proc_reg>;
+};
+
+&cpu3 {
+	proc-supply = <&mt6357_vproc_reg>;
+	sram-supply = <&mt6357_vsram_proc_reg>;
+};
+
+&dither0_out {
+	remote-endpoint = <&dsi0_in>;
+};
+
  &dpi0 {
  	pinctrl-0 = <&dpi_default_pins>;
  	pinctrl-1 = <&dpi_idle_pins>;
  	pinctrl-names = "default", "sleep";
  	status = "okay";
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;

-	port {
-		dpi_out: endpoint {
-			remote-endpoint = <&it66121_in>;
+		port@0 {
+			reg = <0>;
+			dpi0_in: endpoint {
+				remote-endpoint = <&rdma1_out>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			dpi0_out: endpoint {
+				remote-endpoint = <&it66121_in>;
+			};
  		};
  	};
  };
@@ -137,36 +173,28 @@ panel@0 {

  		port {
  			panel_in: endpoint {
-				remote-endpoint = <&dsi_out>;
+				remote-endpoint = <&dsi0_out>;
  			};
  		};
  	};
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;

-	port {
-		dsi_out: endpoint {
-			remote-endpoint = <&panel_in>;
+		port@0 {
+			reg = <0>;
+			dsi0_in: endpoint {
+				remote-endpoint = <&dither0_out>;
+			};
  		};
-	};
-};

-&cpu0 {
-	proc-supply = <&mt6357_vproc_reg>;
-	sram-supply = <&mt6357_vsram_proc_reg>;
-};
-
-&cpu1 {
-	proc-supply = <&mt6357_vproc_reg>;
-	sram-supply = <&mt6357_vsram_proc_reg>;
-};
-
-&cpu2 {
-	proc-supply = <&mt6357_vproc_reg>;
-	sram-supply = <&mt6357_vsram_proc_reg>;
-};
-
-&cpu3 {
-	proc-supply = <&mt6357_vproc_reg>;
-	sram-supply = <&mt6357_vsram_proc_reg>;
+		port@1 {
+			reg = <1>;
+			dsi0_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
  };

  &ethernet {
@@ -229,7 +257,7 @@ port@0 {
  				reg = <0>;
  				it66121_in: endpoint {
  					bus-width = <12>;
-					remote-endpoint = <&dpi_out>;
+					remote-endpoint = <&dpi0_out>;
  				};
  			};

@@ -557,6 +585,10 @@ &pwm {
  	status = "okay";
  };

+&rdma1_out {
+	remote-endpoint = <&dpi0_in>;
+};
+
  &ssusb {
  	dr_mode = "otg";
  	maximum-speed = "high-speed";
diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index d34519a33c90..dbb559959a9d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -762,6 +762,19 @@ mmsys: syscon@14000000 {
  			compatible = "mediatek,mt8365-mmsys", "syscon";
  			reg = <0 0x14000000 0 0x1000>;
  			#clock-cells = <1>;
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mmsys_main: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&ovl0_in>;
+				};
+				mmsys_ext: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&rdma1_in>;
+				};
+			};
  		};

  		mutex: mutex@14001000 {
@@ -801,6 +814,24 @@ ovl0: ovl@1400b000 {
  			interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_LOW>;
  			iommus = <&iommu M4U_PORT_DISP_OVL0>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					ovl0_in: endpoint {
+						remote-endpoint = <&mmsys_main>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					ovl0_out: endpoint {
+						remote-endpoint = <&rdma0_in>;
+					};
+				};
+			};
  		};

  		rdma0: rdma@1400d000 {
@@ -811,6 +842,24 @@ rdma0: rdma@1400d000 {
  			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
  			mediatek,rdma-fifo-size = <5120>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					rdma0_in: endpoint {
+						remote-endpoint = <&ovl0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					rdma0_out: endpoint {
+						remote-endpoint = <&color0_in>;
+					};
+				};
+			};
  		};

  		color0: color@1400f000 {
@@ -819,6 +868,24 @@ color0: color@1400f000 {
  			clocks = <&mmsys CLK_MM_MM_DISP_COLOR0>;
  			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_LOW>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					color0_in: endpoint {
+						remote-endpoint = <&rdma0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					color0_out: endpoint {
+						remote-endpoint = <&ccorr0_in>;
+					};
+				};
+			};
  		};

  		ccorr0: ccorr@14010000 {
@@ -827,6 +894,24 @@ ccorr0: ccorr@14010000 {
  			clocks = <&mmsys CLK_MM_MM_DISP_CCORR0>;
  			interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_LOW>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					ccorr0_in: endpoint {
+						remote-endpoint = <&color0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					ccorr0_out: endpoint {
+						remote-endpoint = <&aal0_in>;
+					};
+				};
+			};
  		};

  		aal0: aal@14011000 {
@@ -835,6 +920,24 @@ aal0: aal@14011000 {
  			clocks = <&mmsys CLK_MM_MM_DISP_AAL0>;
  			interrupts = <GIC_SPI 166 IRQ_TYPE_LEVEL_LOW>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					aal0_in: endpoint {
+						remote-endpoint = <&ccorr0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					aal0_out: endpoint {
+						remote-endpoint = <&gamma0_in>;
+					};
+				};
+			};
  		};

  		gamma0: gamma@14012000 {
@@ -843,6 +946,24 @@ gamma0: gamma@14012000 {
  			clocks = <&mmsys CLK_MM_MM_DISP_GAMMA0>;
  			interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_LOW>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					gamma0_in: endpoint {
+						remote-endpoint = <&aal0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					gamma0_out: endpoint {
+						remote-endpoint = <&dither0_in>;
+					};
+				};
+			};
  		};

  		dither0: dither@14013000 {
@@ -851,6 +972,23 @@ dither0: dither@14013000 {
  			clocks = <&mmsys CLK_MM_MM_DISP_DITHER0>;
  			interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_LOW>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					dither0_in: endpoint {
+						remote-endpoint = <&gamma0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					dither0_out: endpoint {
+					};
+				};
+			};
  		};

  		dsi0: dsi@14014000 {
@@ -874,6 +1012,23 @@ rdma1: rdma@14016000 {
  			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
  			mediatek,rdma-fifo-size = <2048>;
  			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					rdma1_in: endpoint {
+						remote-endpoint = <&mmsys_ext>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					rdma1_out: endpoint {
+					};
+				};
+			};
  		};

  		dpi0: dpi@14018000 {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index dacf4eaa3457..5992b7865310 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -230,22 +230,6 @@ static const unsigned int mt8195_mtk_ddp_ext[] = {
  	DDP_COMPONENT_DP_INTF1,
  };

-static const unsigned int mt8365_mtk_ddp_main[] = {
-	DDP_COMPONENT_OVL0,
-	DDP_COMPONENT_RDMA0,
-	DDP_COMPONENT_COLOR0,
-	DDP_COMPONENT_CCORR,
-	DDP_COMPONENT_AAL0,
-	DDP_COMPONENT_GAMMA,
-	DDP_COMPONENT_DITHER0,
-	DDP_COMPONENT_DSI0,
-};
-
-static const unsigned int mt8365_mtk_ddp_ext[] = {
-	DDP_COMPONENT_RDMA1,
-	DDP_COMPONENT_DPI0,
-};
-
  static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
  	.main_path = mt2701_mtk_ddp_main,
  	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
@@ -334,10 +318,6 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
  };

  static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
-	.main_path = mt8365_mtk_ddp_main,
-	.main_len = ARRAY_SIZE(mt8365_mtk_ddp_main),
-	.ext_path = mt8365_mtk_ddp_ext,
-	.ext_len = ARRAY_SIZE(mt8365_mtk_ddp_ext),
  	.mmsys_dev_num = 1,
  };



-- 
Regards,
Alexandre

