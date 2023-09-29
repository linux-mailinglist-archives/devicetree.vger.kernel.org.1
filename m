Return-Path: <devicetree+bounces-4503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C1B7B2D9D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:17:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9678C1C20A3C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CB84F9EC;
	Fri, 29 Sep 2023 08:17:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8522F9E0
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:17:50 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8CDE1B5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:17:48 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9ae75ece209so1666052866b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695975467; x=1696580267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mjg/OOV1lyu0ZM76luSIdSZTlINxZsnRT51fNeIzO0U=;
        b=Dcxs+rnrZty+b//dIuZKvPTfWJMfmKXVScj1GQkgMPsGerYPmoFzenof9iDFnPKf1k
         WwhX+g+ydt+exuUDp04YO5JKdW6xvEjnkUCnGKgds+ji3dDp+lQ7TqM2goeU/NwJw0Ui
         ZLTHHW10cNsA/G3CQH6lhmRfzYY1I6L5fMdlVEsBZbFxl/PGIIaHjp9kgPkSshBR459e
         HRU9oYh9U7bnypGQItDuZbiADq7k6yA3G6wLcw5+qci+zcq6GZ3DO9LrAgXqXcb6fuD+
         ytRBmFDCR2zVNc1OCLC/gZxQrV3SRFtrBCICRA6aL9WIq1nyGTo706JCYJ0H2zXgG5JO
         VdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695975467; x=1696580267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mjg/OOV1lyu0ZM76luSIdSZTlINxZsnRT51fNeIzO0U=;
        b=uGtc3BSroXIVdaZe2qsj1rncf0A5PEFYmxT5JZUdmPEmptBy8mxuoUsbHS4Eg3JBZc
         fEQNepQPSUEHGKasvT3KnPBaevAGtV65No+8mBMyHyBnlu8ly1g8oMu7t0SbBlxbFXn/
         heGfw7x/AeZakcktYIODCRpuZJ6i1GgcMLfMkV2rQO+9lrtmrri4bzOFWMe/wMs8XXSB
         sV5Fgwt1A7q81UJJaJdBGgvJzioVOOvfKM78h2A8Bn9rvKWDhuKy7uLCiAsEbfa4TYvN
         y12nFpVAdEvVgjm0T/oelmTz4J4uJ6N0n63AVCyvLV7/6bPoW1H+1l5IIJApKXozHLey
         rAcA==
X-Gm-Message-State: AOJu0Yz8dDSJYdOVjl3kNEPbESLdKj4BxjtWhTQGbKkbF/BmTOKZxpnd
	W2mzOzchdxvSfDVB30tFPrElXwlW35Fv7LIP3zvXfuID
X-Google-Smtp-Source: AGHT+IGNMF9dq96zmzBvLwRdTFAD5BaFsUEit6AtZ3ewgeB7NiMDeOLFUa0yLHiABLhGW6vTFYwtmA==
X-Received: by 2002:a17:906:cc0e:b0:9a9:ef41:e5c7 with SMTP id ml14-20020a170906cc0e00b009a9ef41e5c7mr2967227ejb.8.1695975466889;
        Fri, 29 Sep 2023 01:17:46 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id y22-20020a170906449600b009adc77fe165sm11873803ejo.118.2023.09.29.01.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:17:46 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Sep 2023 10:17:39 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: pm7250b: Use correct node name for
 gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-pm7250b-gpio-fixup-v1-2-ef68543c1d3b@fairphone.com>
References: <20230929-pm7250b-gpio-fixup-v1-0-ef68543c1d3b@fairphone.com>
In-Reply-To: <20230929-pm7250b-gpio-fixup-v1-0-ef68543c1d3b@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Use gpio@ instead of pinctrl@ as that's the name expected by the
qcom,spmi-pmic.yaml schema. Update it to fix dt validation.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7250b.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
index df0afe82f250..3bf7cf5d1700 100644
--- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
@@ -148,7 +148,7 @@ pm7250b_adc_tm: adc-tm@3500 {
 			status = "disabled";
 		};
 
-		pm7250b_gpios: pinctrl@c000 {
+		pm7250b_gpios: gpio@c000 {
 			compatible = "qcom,pm7250b-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
 			gpio-controller;

-- 
2.42.0


