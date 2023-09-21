Return-Path: <devicetree+bounces-2047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC327A98EC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:00:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5016428279C
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C598A3D3A9;
	Thu, 21 Sep 2023 17:22:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350703CCFD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:39 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2938453677
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:16:53 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-532addba879so2606928a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316611; x=1695921411; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wErjPQt6qENv87TZs9KiIyjig4b2yslS27coAwsNZVw=;
        b=OOEikmHFeqwNdAVobte+8XTks9t7a0Neny6hDYQK+ByllhdgsfWfLJCjeW8NyEusne
         ZeSrBKcuq0n8UdFFstEeAklYGrlGa6Xk/RsIslDyuMqZMUVqJRQILeSN2lHeG5QkCbMJ
         3ia4JUBVfNgg5lCi7F6pz0O0D/ncZTsxfQuvdC/7JA8JddG+D8VrynD9JtWHm5NYapUU
         vYnwNBkG5uyJ9UMEiiWlO1TKxS0LhZh2ZDho0wrXKbxDruTLUAfJ/a+sqGYIZeVCI02t
         eq2mrIPPZrpHjszuQCqqR38TYGKbR1fC3jcWISWktw7QnVpL0N8eEuLO0VzI18HDRPjg
         lGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316611; x=1695921411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wErjPQt6qENv87TZs9KiIyjig4b2yslS27coAwsNZVw=;
        b=hEwFybZKfLynutfL0t84vJ2YQljIoiR7FzoGz9ToNAJS4o9mmIdGjtZnDDZBqebiyg
         puvsSB642u2s10xsnhbkSlVfSwcVs+gRpfhsJ8zGmZOYw857VcXJj5TKlamDUB+uwaSi
         0iTxEjc3zpqDHcGNkmooFYx+lsMzBsywy5XflOcB/Z0DSQ+iKckSden56nZgN/YvURih
         vjM6VEfbZm6NLWehaBKBkzpHBSdtvEFdcvOdicHr2ur98NEFKG7acEhh7QCDEPD1n5Cq
         OWbf4olnxGnC+lcbTp/aW2a6n/rN/sel/3sqdDJ6ZJlxCsZ/w5PIj6i0jGdoWl+Wd9Je
         4p3g==
X-Gm-Message-State: AOJu0Yx731DJOD86NaclFGwUghy3uUjEib4Qfa24EtxpJxzqCSXmttDl
	QIk/G2qBYQiDZFgZa9ywerxEOpwrV+sCzewLTfI=
X-Google-Smtp-Source: AGHT+IFOB3eMDwI2t0a2q9Bc3NUa0OvjwJSrkAn5FCb5ugaSbmUWlrXrinmvhlY5/5p++bwV6SZ9yA==
X-Received: by 2002:a17:906:847c:b0:9ae:6196:5094 with SMTP id hx28-20020a170906847c00b009ae61965094mr2756229ejc.30.1695306770505;
        Thu, 21 Sep 2023 07:32:50 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id lt12-20020a170906fa8c00b009a219ecbaf1sm1153327ejb.85.2023.09.21.07.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:32:49 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 21 Sep 2023 16:32:40 +0200
Subject: [PATCH v5 1/7] arm64: dts: mediatek: add mmsys support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v5-1-fa6f03680832@baylibre.com>
References: <20230207-iommu-support-v5-0-fa6f03680832@baylibre.com>
In-Reply-To: <20230207-iommu-support-v5-0-fa6f03680832@baylibre.com>
To: Yong Wu <yong.wu@mediatek.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1264; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=5Tm918SwyWroVCRT9x2Od4dOEXsJxNFB5Eps83AeIaY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlDFQPu6ZqiZkD/quO4t8h+hA6Isg4BN08h2+76mls
 Gl5YOuqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZQxUDwAKCRArRkmdfjHURVtUD/
 4/BNRJAHNO6Wlh1V/NiAriWpP17skcQQDHSsFYzz3Y/aaeyXPE91Bu4TdQVJLuNj+3Z5o86DvWG1SV
 U8KUyuQ1MmO1q61clIxSfn214ayuu6300dUg8HSU76C6jEdzWjQeYdaL06+g1XEKvnzNISOcsvsZ8B
 DlZZGHYUsfeAEFzNlL1o/2q3ZlPCqgkRLvu5rNFSB7ULIhzpjfrr7kh5SplD0SgfOCN8ydJp57fLCk
 xMUoKhP1brq3zfUonx4Kho4m719ZYPPbgODu1QGkztz5TRqheJWRWJG6DS9LCcsQ+Y3dTyurJLDNFc
 gOv9o7jCikev4QfhT07WIFFoNgEylBji9qVZf5ATyLaqJSSoK1rMwm7YitpXz6S38TLnWQVcFeb5TT
 sUeIYfOxMoGVK87fh3CJv/C61f4tCSEUYUSlWVBab/fqm4vcpyQX0TFJXz0dNBMc7z3Qqp6aFWPU8m
 cLA2NmyoAU9wiD7g26quS/1VsD6HoUpGbMssqlD1BAwP2Sn/ZNO/lr2pLHhGifeSbY72D2SHAZzgXD
 pkV5+nsdMHHd3lWLHVSR14J+DZdnuedWdiZRC75p6ftLrXyabvyesfi37UTn/dwOrFyqewKxN10x5l
 LvjEw3zQsCAan4BaA7VfIfbsVJoKuzd9KhBgOu7RI/ZLD+JNv3xa06Qehdug==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Multimedia subsystem (MMsys) contains multimedia controller, Multimedia
Data Path v2.0 (MDP 2.0) and Display (DISP). The multimedia controller
includes bus fabric control, Smart Memory Interface (SMI) control,
memory access second-level arbiter, and multimedia configuration. It
plays the key role in handling different handshakings between infra
subsystem, video subsystem, image subsystem and G3D subsystem.

For more detail, ask Mediatek for the MT8365 AIoT application processor
functional specification.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 413496c92069..bcabc2b89a94 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -603,6 +603,12 @@ u2port1: usb-phy@1000 {
 				#phy-cells = <1>;
 			};
 		};
+
+		mmsys: syscon@14000000 {
+			compatible = "mediatek,mt8365-mmsys", "syscon";
+			reg = <0 0x14000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
 	};
 
 	timer {

-- 
2.25.1


