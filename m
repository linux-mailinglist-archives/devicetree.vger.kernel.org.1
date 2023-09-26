Return-Path: <devicetree+bounces-3425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E43867AECDC
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2DB1C2818EA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932B21A289;
	Tue, 26 Sep 2023 12:30:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E4227EC8
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:28 +0000 (UTC)
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00D02124
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:23 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-27197b0b733so1545874a91.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731423; x=1696336223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fhCY9gFfwu9aI5g1YFIO62IxUUYwRw3PBjVuv/Dnp94=;
        b=e2gvkcLeQ2Ia3aeeO8CpgsRrZbMVFkb+1UVPbUH+GHDs86RJhIv449tRzvSKSxq7W3
         2pP5pc6DdeG5u0I7Wsr4+GkGt0QOjJghahmgrCjaLKMBpSWJrJCRZzsRKgsUXPCZVKCY
         P7717aWD53scdS95iM/zNUmLTYz+r/L9DsplBW4VNBQPtByLXe0SIJGE6S3bqlkWmMOY
         +oRVVPTLaBhmPHujpWzp3WU7Ku+/1g/2wqUbDbW9hMlC7RDWLCVmgRl4a5kHCae5Jd2g
         3p8pHkCX2uLFHQCq/SkorhDM5AntXNCsOswj2nEJZSwH36YfjSQKu+Ijz+c4mgBDtQlX
         RopA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731423; x=1696336223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhCY9gFfwu9aI5g1YFIO62IxUUYwRw3PBjVuv/Dnp94=;
        b=dm6qO02CmhDNOkvCP5wCt26DkMZ7qodf4YW4NI3TMsT/u5SGPrkEq6S3e/YDtGZ313
         6Zzw27N7761TL3mWrFoMmT0yMHXZO82DvjxM4KuSS2u9ARQkwLzOoYv8L95uF/YDFuzY
         2GkJ8G2Jm44g3PLm92GFd7WAIQ9fcH8kInKxUIN1Qlvfa1G/CmRy4JJPUEnXxa6Gv40a
         2Ty0flsRgHqFxGQtHhq1kOcXzsnCMTQa/KucHGKzdk04zD+KSx+vb5r67kR6u5JKUO8L
         c8IpfwonbdZZ+Smdq/QWFuoE9FFfvHpIFEdlyUuJ6BgYFfG2CvPAuLHzu0vCF4M+V36R
         6qgA==
X-Gm-Message-State: AOJu0YzbpzxqhO0Z/hCOfWgOEcF0O25fhIeXjAwQCZ6cNp3UzPXBivIj
	EazYeiz8Ddkf29/2/3hlKMfwe1XnsUQ=
X-Google-Smtp-Source: AGHT+IHv80nLD2WQr2QPDAiaPcTs/JPeLvjCI1+KtKEUmeDzu8/MardF/wciBp6D1TLBZ3B2B8vocw==
X-Received: by 2002:a17:902:ea09:b0:1c1:fbec:bc32 with SMTP id s9-20020a170902ea0900b001c1fbecbc32mr11545469plg.6.1695731423326;
        Tue, 26 Sep 2023 05:30:23 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:22 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/8] arm64: dts: imx8dxl: Pass fsl,imx8dl-scu-pd
Date: Tue, 26 Sep 2023 09:29:52 -0300
Message-Id: <20230926122957.341094-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926122957.341094-1-festevam@gmail.com>
References: <20230926122957.341094-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Pass 'fsl,imx8dl-scu-pd' to fix the following schema warning:

system-controller: power-controller:compatible:0: 'fsl,scu-pd' is not one of ['fsl,imx8qm-scu-pd', 'fsl,imx8qxp-scu-pd']
	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
index 792b7224ca5b..19aa89ea442a 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -122,7 +122,7 @@ &lsio_mu1 1 0
 			  &lsio_mu1 3 3>;
 
 		pd: power-controller {
-			compatible = "fsl,scu-pd";
+			compatible = "fsl,imx8dl-scu-pd", "fsl,scu-pd";
 			#power-domain-cells = <1>;
 			wakeup-irq = <160 163 235 236 237 228 229 230 231 238
 				     239 240 166 169>;
-- 
2.34.1


