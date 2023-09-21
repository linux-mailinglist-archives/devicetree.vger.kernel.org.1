Return-Path: <devicetree+bounces-2125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9D47A9B1A
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A152CB20FDF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B3C41776;
	Thu, 21 Sep 2023 17:49:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A535918C2F
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:22 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3C0E8B999
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:44 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5315b70c50dso1448437a12.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695318103; x=1695922903; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wT6/A5jKUKPNqREpSjfwwNBvJsp9RJseHUsd7KRCJ5w=;
        b=fYmGotSgbFbfbQpEDbqA14sY0XMGeGCpXTRI7AcB0yTIPfdCGD1a1qT3CWNPSk5T5z
         NT5/8Yt+r63fVOGYNrPeOpDq77/2qhRbvJgAcwkCJq18J3ociTgOBVb78reH/s6+Nu1N
         8vmt/+Fr9RMRgTZUqONoIDZKuq6+iQdj8UzDQMoOnuI/SoPNyvFZUo6crrNG4BI/Xy0h
         es0CKgmkXHSnM1ccu7Mh5n8/RV7WCFNtPVKzGP+HlOXAx9tbrnhFAgKQnjt43o2atCMG
         pv3sP/BBaPT2xu6CjICgJnKOra+ADii99Kx8wLedAamXsRgsJXRT8ddsm7yNCNd9BHvj
         swkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318103; x=1695922903;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wT6/A5jKUKPNqREpSjfwwNBvJsp9RJseHUsd7KRCJ5w=;
        b=Q5gBm430aoZeAGnRssX4PbXnnGpkyjyx/lNkQ00av6VIG9GULOrKeB384KLHk629b1
         MtHAY+wSM/iBTxzs4UXKei1AnFjylCpq514h6uthowlJXuuwIgMe3E5yEWdCxOVXTltp
         n6QDuiCXWlN9GCksjQ6oSLevo7W/lS0KSlmdyJuuyvCe7H9qm1jbxZWay8NN+jPI5R3V
         mzAlCkyGAeKXHQodztwSeYiy7hn+aTJnSCDHtmWF6vpJOgEarT5HEueoO6t/3M+HBCvD
         umQxt2JkSfkRu6hTro1q6mHSPLJ5s/WnDZ88jC6OMk/Y7hrCz9vU+24Sv2pwqxCj5ujv
         xUtw==
X-Gm-Message-State: AOJu0YwI9aFjmcVvnf5k9vU/Cl07kMuwx5oC12nDJwuTymbHjQpC1ggc
	0K3Wa7BeMf2uNrBBgN4Z7O16yqSQkLIQyPe34k53mA==
X-Google-Smtp-Source: AGHT+IGieRqnzeLuaUx6Ie7RXs8JxfkdBUmowjxYl2mDxddATi1AGsiIJ7LQSmc6+cCJVTz0fUr3Aw==
X-Received: by 2002:a2e:8696:0:b0:2ba:18e5:1064 with SMTP id l22-20020a2e8696000000b002ba18e51064mr3815918lji.14.1695278048481;
        Wed, 20 Sep 2023 23:34:08 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z25-20020aa7c659000000b00530ba0fd672sm367971edr.75.2023.09.20.23.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 23:34:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 21 Sep 2023 08:34:02 +0200
Subject: [PATCH] ARM: dts: qcom: sdx65-mtp: Specify PM7250B SID to use
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-pm7250b-sid-fixup-v1-1-231c1a65471f@fairphone.com>
X-B4-Tracking: v=1; b=H4sIANnjC2UC/x2MQQqAIBAAvxJ7bkFXJOwr0aFsqz1kohRB+Pek4
 zDMvJA5CWfomxcS35LlDBV024Dfp7AxylIZSJFRjjTGoyOrZsyy4CrPFVF5Y73x1hlNULuYuIr
 /OYylfA4JhdVjAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Now that the pm7250b.dtsi can be configured to be on a different SID, we
also need to specify it for this dts file. Set it to the SID 2/3 like it
was before commit 8e2d56f64572 ("arm64: dts: qcom: pm7250b: make SID
configurable").

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts b/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
index fcf1c51c5e7a..9649c859a2c3 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
@@ -4,6 +4,10 @@
  */
 /dts-v1/;
 
+/* PM7250B is configured to use SID2/3 */
+#define PM7250B_SID 2
+#define PM7250B_SID1 3
+
 #include "qcom-sdx65.dtsi"
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include <arm64/qcom/pmk8350.dtsi>

---
base-commit: 7fc7222d9680366edeecc219c21ca96310bdbc10
change-id: 20230921-pm7250b-sid-fixup-0c35c3c59312

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


