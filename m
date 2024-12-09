Return-Path: <devicetree+bounces-128646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD199E9324
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24ECE282997
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8292D2236F3;
	Mon,  9 Dec 2024 12:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="HAsTprHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20733221DA6
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733745673; cv=none; b=Cxg90QGe7KluCJOKPvEFYBBExcD2Pj5L2wufiQjjKpqVtLo5ZxVHp7+RZI2W/Fy9280xBS5WEzd24nF+Tl8JhCN0B2gtdMzxKlk6ZHdIV2br60T0IKPdb4GRIl/4Y6maUTtwPdQwW9pal8Fzhs6XX13ad2FmrFtvuaCTb3iq3Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733745673; c=relaxed/simple;
	bh=EayO3poauy5/rht+2wdYMwLDBTRR4tdjIRay8qW3Xeo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rQQvDuyj2gmgAONXKi+dcDj/kcj63mBrtRrSgWXjbmPSqqTx8GXg+0C63tRp9UzW5gA0ye/lpZ6bhwcfGAB/ox0B3++4S5L5vQ3IaP03pxdssUpD7j1PfoWn9QiWPBYe8awtQpY2ATDsg5kBuH1fren2TIUGNJr7zXU9Dv+NGLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=HAsTprHA; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa68d0b9e7bso140593166b.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 04:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1733745669; x=1734350469; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJN+RDGJvasm5eLSW6rewyUE2UnqBa7DZC8SLRN3C/Y=;
        b=HAsTprHANCgQ+t3XVQLmEIFv9nDGiALvmFL0chTgKcWI+RRMsHBd87QM6Im4Kqmift
         04JmHuNbhIGlekInf8WTVifv+0UIEd4/seYle0hhYFD8BgTuU6+vwf6fAFEasOwE15qu
         eyIt4U7OI/DCffAgYdEzlTTA9lw9Y7TCMVEx1uESynmdTNASKfXx9unmiMqZj4x9VAdP
         6+R1F5a2SHu7HWvHD/ml9+YxFgHMDnJobDlT80EQl4NMhlGaYW+SIER0NA2Fb+DsUYRM
         AyEagYDDE7Jf8vu5o1s8ejOH2Maw0IJ/ZY/KkUIVmOEbcER4Ef+/zQVVbkF5hLovcz1A
         4x9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733745669; x=1734350469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cJN+RDGJvasm5eLSW6rewyUE2UnqBa7DZC8SLRN3C/Y=;
        b=AK0W27nkmP7LpzSmynop6PrpyFaSOnL51oyoqZLuAMouWucTbf3wkwAto48u3oUpoR
         IwjUQ+GpdcE75rxo3etU/Vd2e6Uc+hPRGgob/Ij2ngUq8wVLpr7/3Wu0+LKctm/1JoSx
         svbVoqQVPF79rX22ePIe3BNXjDzxkOvM3iUCowCLLn3SWMMqE30Pi5r76Gph0gpQCofo
         e+MxZB9923po8+W+yZ1+wSUHFnMfCELORLrGU9kNlt0fiEYEBu6HYN3/KMgdrCq6u1qO
         VrZKaEL2gwPYCpHwV/G9CHh9ssWlGXDyYO20evlnroPE+C/GEi7p8GQbP2CF00jWP/YN
         ql7A==
X-Forwarded-Encrypted: i=1; AJvYcCWW5eLXNX0CE3hv6pEQkUIsOzOLak2/oDbj5TCRJh3W8+hREMxOUNlUfCqKlLsgmP3bY+4jYGMmVp3A@vger.kernel.org
X-Gm-Message-State: AOJu0YyH0wLNtNi3yT6Xs7lROaypfmkpzk3FXv13YXXhRt5xzQDBuMS8
	N9w5aQBVstovOGCuzQmAC2rvqzln3HjzZUIQL0kR3Bl8AdsjxgFzjS8Qzh0/soU=
X-Gm-Gg: ASbGnctYMs5gG9P3+JudvcRlyyT/RlnRYmEdPtQ/VWshTtl/Wsg5FAKYTZTagKjuYag
	YcuFz55CVaaGZwJGJL5T9Xzi8aivfKBT9qpzITRArCTLRScwtn5h2moAR5cu5HPAPOA8AnvmntQ
	9XT8dorC9oITttXOHyX+GHjxnNZ7IKAJjsVzEYiVs9Fg6H2RKVxJ+SveqPD8VTnRe+2J/98MY9M
	pcaGdWVRE94bfV+NK4lfWqA9XKDGtavtACKSCxRiqf5s95/pjCIzUYiEEwq5bsEhTwUVlz5h/RG
	pl3sv47q3ZgvGjdMLGPuP6jsUiYsTXoTeSONxiYdlDZjknoqBIA0Df/btlJwMD2Jlw==
X-Google-Smtp-Source: AGHT+IF+p9gVWhFaOEldkR3XDKLXXb1rK4KX30ftSf7RjwBOAfR7BnsNTeQR8MNatD02QvNHIJdwOw==
X-Received: by 2002:a17:907:770c:b0:aa6:8160:8495 with SMTP id a640c23a62f3a-aa69ce00080mr4712666b.42.1733745669239;
        Mon, 09 Dec 2024 04:01:09 -0800 (PST)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa69afa395csm22555066b.71.2024.12.09.04.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 04:01:08 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 09 Dec 2024 13:01:05 +0100
Subject: [PATCH 1/2] media: dt-bindings: media: camss: Restrict bus-type
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-camss-dphy-v1-1-5f1b6f25ed92@fairphone.com>
References: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
In-Reply-To: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Barnabas Czeman <barnabas.czeman@mainlining.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 David Heidelberg <david@ixit.cz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

The CSIPHY of Qualcomm SoCs support both D-PHY and C-PHY standards for
CSI-2, but not any others so restrict the bus-type property describing
this to the supported values.

The only exception here is MSM8916 which only supports D-PHY. C-PHY was
introduced with newer SoCs.

Do note, that currently the Linux driver only supports D-PHY.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/media/qcom,msm8916-camss.yaml         |  8 ++++++
 .../bindings/media/qcom,msm8953-camss.yaml         | 15 +++++++++++
 .../bindings/media/qcom,msm8996-camss.yaml         | 20 +++++++++++++++
 .../bindings/media/qcom,sc8280xp-camss.yaml        | 20 +++++++++++++++
 .../bindings/media/qcom,sdm660-camss.yaml          | 20 +++++++++++++++
 .../bindings/media/qcom,sdm845-camss.yaml          | 20 +++++++++++++++
 .../bindings/media/qcom,sm8250-camss.yaml          | 30 ++++++++++++++++++++++
 7 files changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
index 9cc0a968a401836814560c1af3ee84d946500b4f..3de2a3d2b5b761106975aab65ff614b2ef579ef5 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
@@ -94,6 +94,10 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -113,6 +117,10 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
diff --git a/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml
index 8856fba385b1123d748199b46c5009c97700ad9b..6d776b0ca71140c0816b246dbaf41ef376205bba 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml
@@ -112,6 +112,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -131,6 +136,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -150,6 +160,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
index 5cb0e337ea6e4274dbb75b7b25a9b4ac44069cfd..cae4c4f19574be30e8a9f8ca08f26d67be1e455c 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
@@ -116,6 +116,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -135,6 +140,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -154,6 +164,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -173,6 +188,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
diff --git a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
index c0bc31709873c20b63c011148394f10b45c1655e..f9e3f514c61bf6fd48e15904b62b59c390e63b20 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
@@ -143,6 +143,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -166,6 +171,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -189,6 +199,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -212,6 +227,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
index 584106e275f67aca814de5dd70563d395305399c..a3e2ee7f643d2a8c1490b4d02e16e509cf85f85f 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
@@ -122,6 +122,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -141,6 +146,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -160,6 +170,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -179,6 +194,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
index ec4380a0a03f7dce2539085e24d9d9ec7205e825..98cd0df4570ed168fc1495619c408c4fbaac66fa 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
@@ -109,6 +109,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -128,6 +133,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -147,6 +157,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
@@ -166,6 +181,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - data-lanes
 
diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
index fa5073c0fd1efaa94f171e4ec26b918d8a5261d6..c95533ac92002c70efe7ef56ab2712565a5a7297 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
@@ -129,6 +129,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -152,6 +157,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -175,6 +185,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -198,6 +213,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -221,6 +241,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes
@@ -244,6 +269,11 @@ properties:
                 minItems: 1
                 maxItems: 4
 
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
             required:
               - clock-lanes
               - data-lanes

-- 
2.47.1


