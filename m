Return-Path: <devicetree+bounces-268420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNPpDn0Rn2nNYwQAu9opvQ
	(envelope-from <devicetree+bounces-268420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:13:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D29881994CC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CBA84304B99E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADED3D5254;
	Wed, 25 Feb 2026 15:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OwFhsUFq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621C33D648D
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032293; cv=none; b=htf0t4XQgtFkT+1LebmDpJAQm3m+Ku/pjTW1FDPa7aofLG38mFe50ipAyf0VW8DhLgDebHnQphrpvsN05LjjvP9tZnqEJnWegYa5/V1P1v0V/1JyV0/FZCwqYBMlJ/SN/arbMVDIiEDh28Fu3gk0HqYi8gZVLfMooX1xtoTVufU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032293; c=relaxed/simple;
	bh=8iHwDAFeh3bdWbZDpz6LLnQiR8yaROrs4IIiP2W0Lrw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hrK8fpoJnaL4kyXw1D6CuccEqh8HF2ZlmBe2JF6ZyPOhNft47lGfVNpGuMqCF6ghaZg2bffj8hwrAUr3/SnFjAh8CaQtQOCaB3jduo9VkygrjFLh5KXrgeZ3fZaovfDgFS3GJPrAmeJRKwMTD/VE8/f18ypIW0wkA/536QoAh2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OwFhsUFq; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48374014a77so71737255e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772032291; x=1772637091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EFhoyoZ5mmYQSa4jSzB6G1OXMNz5eLbE8bJsbkX9OmM=;
        b=OwFhsUFqYqmjv5U6HZl+PjME1XOFj1lHDaf5lLhjPYtQtC5MaA5PEJunQxVhpDWrv4
         zok5iKLtLybiP1W2TImMuTu+R3rgHxMjeAZonrefOFQ8PdJmvQ3f+03rDmY2jr+ZXzBQ
         YRZP9E57zx9V3dwnBst31PnhQ3is+y5/VeKXizRW3IunnCafKjf5hPA82FT0rGFu+ALE
         YOI+n9YcjtGpxu5DS3kIwxd0qExlMmn0pANDGzzP2RLCdpTFYnD814pEohczFJLPwKlo
         8wRexmaiJ2aRftugAlZKfxRsvME1zdrZp5XevYOHson6qivTl5ePlHUpfcGARGIy5avT
         QH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772032291; x=1772637091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EFhoyoZ5mmYQSa4jSzB6G1OXMNz5eLbE8bJsbkX9OmM=;
        b=sTdPbN9D2nLlouaRf3q0lB/mmkbpLkYIypeYttNPEOIKz4weLlET8fKqjiHGlzEM/B
         fMlXeecoQmiGAD6Wnz1D5sqr8/0j/i6Zx089iFuwtrcO6j017h9Z/4x2S9qqceizQXBl
         Xr3rsQ5bNYQzEzkH0pBfJCvZ6A+TEie4hPaEpixvFJs7NhqWoj7LOQ50jj+hYp5Nm3NH
         uGCnM+NycaxhFkdPh1X3G8/BlZ8PD5FuDLDQu3sR4go/Kn3mwcsL3wOs0FjI+omKJZkw
         SzeWlRlaZnaJmyvE5nxSqzZyawqe4aHCXg7eNB2rfz5LJT4SwTqPdQ7b633V6GaJ5Hxc
         n8hA==
X-Forwarded-Encrypted: i=1; AJvYcCUSmQ1vrbVPVGp8diSGmVADZJRz0+ggenIFxefXLR/TpM3pdLWW387B+nANGVDnZuCtWN0ElLPhJfmY@vger.kernel.org
X-Gm-Message-State: AOJu0YyEoIb8ZQ8WLV27qun7ocMKyto00hP1K1ZUExMeqIPPWGxRYLli
	k1SAXtHhm8DvINeE0H/QbH5pdaQOFQ/cjPVJQGHcVa/EQoOpTQC2R/vXT2Cf9nIcPYU=
X-Gm-Gg: ATEYQzzQfHaiWxjXbYuPSMEY7i8yO9p1FxzLR7q1mDDQRvCa+to3kvKIzpUGHZNcUUb
	GygUQwAGBZqgnCj3T3TRVi9aPHNboBmlIHqTXXuo+li066A73x+L3fd4YGEdEe3e1bb1zv3imgm
	LqkkrPgk2OnYRdTbiSiVRDpox+ukAciwTVTC2Dn929JITaaDTgjSzz05EiD4G9m+RLJmTxBcP/U
	sEJw/t6InqeV2Nh1F5YNa1fbPzSx1MhI1YNJR5jSxc0+s6iMQ3yqP3vaZ+Po7DmqOFee8prwQWd
	ijbYBvyWIsuqpM8qv8a4o1hVIcoTAiiyLcbruqKwXv+Msar7G7gfxfAde59fZn+I8RqZP7/0/Ju
	NLFBuqoKh7eUqN5Xvq5ZtVjng+YY1qbjh4gi9qLFzjbvUwxonR0Ydlh9Trp2Z7FwY8/tDyE8sTr
	/X/HQ2j2JYDrWET9kfyBJJ5+kFks7XPZpv9zSW7es/iXIzUagn8W1D8lF6gMzZssVg
X-Received: by 2002:a05:600c:609b:b0:483:7eea:b172 with SMTP id 5b1f17b1804b1-483a95e9a11mr250826995e9.23.1772032290703;
        Wed, 25 Feb 2026 07:11:30 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfba9a5esm33950695e9.4.2026.02.25.07.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 07:11:29 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Feb 2026 15:11:20 +0000
Subject: [PATCH v8 03/18] dt-bindings: media: qcom,x1e80100-camss: Add
 support for combo-mode endpoints
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-3-95517393bcb2@linaro.org>
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3883;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=8iHwDAFeh3bdWbZDpz6LLnQiR8yaROrs4IIiP2W0Lrw=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpnxEZfAqrg+6o9JwIBouExCj2iZtuYoDj7MT64
 mw7+39Du8SJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaZ8RGQAKCRAicTuzoY3I
 OlW8EAC6WYNUmhnZg2iZIY1QfSdjjcBX4FkMBeKdmGCo4NSwHRPctsjH6JOwltuJXYiMpxx7Sj5
 ptpKmhtrFfPKcZAC++AyOpcI/9DJbx4IpPtuHIVP6EidIrEZ1AodoESIKxlRHFJEhoMpbRnkCi3
 xZ2XW+S3xAmt/nzgNC3g13pVRd5E7p+fSilNRxi9y+ErTCZS5DTlVBbCBJINoQUCAjHLoz6Bggq
 c1bl/aF1iLeGVBeScR/G6W5JLB0BdfKil0DfuSCRg8DLrPr8URohqSGmk8CaT9Sr9g77zs1p/6x
 Ij80/SUutD9tPWT2JzyquFR/MYZghwvcmXAVJOPWIsHB80SKq0F1gNILXjJF5NWQKizAZf9tK+l
 BuqgSluYYFD4guDGZ0A4VO5G1kDa0gnxwX9dfIVhq3k6ERj5D0hSxD9nTUCORl6PWQLXPuqCixA
 G3ohy/4Tpw4bo5jlo9aynNYto2uV+zqhhOqbWAdOdn3+KW7+KiMdAryOM0Bd34mi+nw4BNL8a/0
 yGmBcrLHE7VrcKPqji8LF51OE+HWQtQA/CggTHD+hIgDKnA26E4qfYZqAIy698l1wkk30tpYdZD
 RYiyDF+xJP+14HEc6V4x3oP4WRk4/fgOOwF4Zt9qM3ZY2NppdaJg1QKr2RiBFBCJDMXIhEkMIsz
 j2Q8PWCPRk/8ACA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268420-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: D29881994CC
X-Rspamd-Action: no action

Qualcomm CSI2 PHYs support a mode where two sensors may be attached to the
one CSIPHY.

When we have one endpoint we may have
- DPHY 1, 2 or 4 data lanes + 1 clock lane
- CPHY 3 wire data lane

When we have two endpoints this indicates the special fixed combo-mode.
- DPHY endpoint0 => 2+1 and endpoint1 => 1+1 data-lane/clock-lane combination.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,x1e80100-camss.yaml        | 69 ++++++++++++++++++++--
 1 file changed, 65 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index ff14a8248321e..462b1355c9fb7 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -116,7 +116,8 @@ properties:
     $ref: /schemas/graph.yaml#/properties/ports
 
     description:
-      CSI input ports.
+      CSI input ports. Supports either standard single sensor mode or
+      Qualcomm's combo mode with one sensor in 2x1 + 1x1 data-lane, clock-lane mode.
 
     patternProperties:
       "^port@[0-3]$":
@@ -124,26 +125,86 @@ properties:
         unevaluatedProperties: false
 
         description:
-          Input port for receiving CSI data from a CSIPHY.
+          Input port for receiving CSI data.
 
         properties:
-          endpoint:
+          endpoint@0:
             $ref: video-interfaces.yaml#
             unevaluatedProperties: false
 
+            description:
+              Endpoint for receiving a single sensor input (or first leg of combo).
+
             properties:
               data-lanes:
                 minItems: 1
-                maxItems: 4
+                maxItems: 4 # Base max allows 4 (for D-PHY)
+
+              clock-lanes:
+                maxItems: 1
 
               bus-type:
                 enum:
                   - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
                   - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
 
+          endpoint@1:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            description:
+              Endpoint for receiving the second leg of a combo sensor input.
+
+            properties:
+              data-lanes:
+                maxItems: 1
+
+              clock-lanes:
+                maxItems: 1
+
+              bus-type:
+                const: 4 # Combo is D-PHY specific
+
             required:
               - data-lanes
 
+        allOf:
+          # Case 1: Combo Mode (endpoint@1 is present)
+          # If endpoint@1 exists, we restrict endpoint@0 to 2 lanes (D-PHY split)
+          - if:
+              required:
+                - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    data-lanes:
+                      minItems: 2
+                      maxItems: 2
+                    bus-type:
+                      const: 4
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      minItems: 1
+                      maxItems: 1
+                    bus-type:
+                      const: 4
+
+          # Case 2: Single Mode (endpoint@1 is missing)
+          # We explicitly allow up to 4 lanes here to cover the D-PHY use case.
+          - if:
+              not:
+                required:
+                  - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    data-lanes:
+                      minItems: 1
+                      maxItems: 4
+
 required:
   - compatible
   - reg

-- 
2.52.0


