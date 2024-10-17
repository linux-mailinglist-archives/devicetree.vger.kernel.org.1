Return-Path: <devicetree+bounces-112610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C29A2F74
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 23:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA837B23FDE
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 21:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8D11EE011;
	Thu, 17 Oct 2024 21:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="EEq9yrHp"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC271EE00E
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 21:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729199686; cv=none; b=Mx2F38qqOg6DeDmsTRxCIvgz1lPRpA6AX9t0pos5e+2/pjSvUcu0YdIALjveQlm6qwt+NhCQ7XeNSsgRIUOMj1AKq8wC6somceTqNh6L80YA8SMN2/OVMl/y/RUwRDYWhAz2esEcPe+T//6r8iPipu+pEhMPfVcZ2vlMTq1A1N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729199686; c=relaxed/simple;
	bh=D9EsxNG00/yNQ5TxUrgVN7tdzXubxnUS6oF1BGRcvUs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZfdlWX3dlYTC1w6MeMAtj4MUg5EDxSzhEU3Qb9gleFJRShQ5lS79dEBZae80fHFypy7Cf+KL825ywG5RiXVaRKUfxIHtfFNUGu68+TvmEo45wNbbopG++VS2g8xSuef7F6estvKwy/X6ODvZTuhHNWo+go5vhpjtoI/O727HfYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=EEq9yrHp; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id EB98C89093;
	Thu, 17 Oct 2024 23:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1729199679;
	bh=AxUnqKNAmArXioYoVUcVop5axGejt5PJs2t+OLCbU0w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EEq9yrHpSpHAvaUvxtsuVyuXCzbcgitgT1dFWD2czyMweWzusTxOPyUJkNqJ7X66o
	 pQhqOG+ggcgzXwOfImtst83JP4BLNHDtnWFqjWEnsmoCKqhgL1lfrMWz3e/oTbjZT0
	 jauECt6pI5DWI/hAvt1oNy3YjkTVlzYvFAsX9ayfJGy7z6XfXphviABdLNYOm2QNbQ
	 4w8T7swY4XS8osJntrHp6DjBRZXxXToOkO42Ni/SFMn+IVTnzPlrxT90s47UxRl1FZ
	 tYzToFBphU2jSCp6UY7aAUzVCsRmfjar6M28HUSNu3Y5Oo1CtC6nh/LCtZq6XhWhRl
	 MHe9hf2qP4pVw==
Message-ID: <f485fe9d-b514-44d9-a0d7-acfcd6b1f4ed@denx.de>
Date: Thu, 17 Oct 2024 22:50:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: regulator: lltc,ltc3676: convert to YAML
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
 kernel@dh-electronics.com
References: <20241015224343.94302-1-marex@denx.de>
 <oif3padobl4laflhuqyw3hdqnf4rdwlzh2twllieoelyxcgtdk@fulczljt7hwq>
 <2055a272-8391-4990-bc13-329247e09197@denx.de>
 <aca453f0-6cf7-4fab-8b0d-ce455affb62b@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <aca453f0-6cf7-4fab-8b0d-ce455affb62b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 10/17/24 9:01 AM, Krzysztof Kozlowski wrote:
> On 17/10/2024 00:48, Marek Vasut wrote:
>>
>> I wanted to ask though, there are these patternProperties here which
>> cover sw1..4 and ldo2 and ldo4, and then there is dedicated special case
>> for ldo1 (because this LDO node must always contain regulator-always-on
>> property) and ldo3 (because this LDO node must NOT contain
>> lltc,fb-voltage-divider property). Is there any way to place all the
>> sw1..4 and ldo1..4 into patternProperties, and then selectively DISABLE
>> lltc,fb-voltage-divider requirement for LDO3 and ENABLE
>> regulator-always-on for LDO1 ? I was looking at allOf:if: , but couldn't
>> find anything.
> 
> Maybe this would work:
>      patternPropeties:
>        "^(sw[1-4]|ldo[1-4])$":
>           ......
>           ......
>           allOf:
>             - if:
>               $nodename:
>                 const: ldo3
>               then:
>                 ...
> 
> but I am not sure if this would be readable and beneficial. Current code
> is OK.

I was hoping for something like this:
"
diff --git 
a/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml 
b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
index f47eacf96cd67..4fd5c7dd509dd 100644
--- a/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
+++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
@@ -30,7 +30,7 @@ properties:
        after their hardware counterparts (SW|LDO)[1-4].

      patternProperties:
-      "^(sw[1-4]|ldo[24])$":
+      "^(sw[1-4]|ldo[1-4])$":
          type: object
          unevaluatedProperties: false
          $ref: regulator.yaml#
@@ -56,36 +56,22 @@ properties:
          required:
            - lltc,fb-voltage-divider

-    properties:
-      ldo1:
-        type: object
-        unevaluatedProperties: false
-        $ref: regulator.yaml#
-        description:
-          The LDO1 standby regulator can not be disabled and thus should
-          have the regulator-always-on property set. See patternProperties
-          description above for the rest of the details.
-
-        properties:
-          lltc,fb-voltage-divider:
-            description:
-              An array of two integers containing the resistor values
-              R1 and R2 of the feedback voltage divider in ohms.
-            $ref: /schemas/types.yaml#/definitions/uint32-array
-            minItems: 2
-            maxItems: 2
-
-        required:
-          - lltc,fb-voltage-divider
-          - regulator-always-on
-
-      ldo3:
-        type: object
-        unevaluatedProperties: false
-        $ref: regulator.yaml#
-        description:
-          The LDO3 regulator is fixed to 1.8 V. See patternProperties
-          description above for the rest of the details.
+        allOf:
+          - if:
+              properties:
+                $nodename:
+                  const: ldo3
+            then:
+              properties:
+                lltc,fb-voltage-divider: false
+          - if:
+              properties:
+                $nodename:
+                  const: ldo1
+            then:
+              required:
+                - lltc,fb-voltage-divider
+                - regulator-always-on

  required:
    - compatible
"

But I keep getting this:
"
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:sw1:lltc,fb-voltage-divider: False schema does not 
allow [127000, 200000]
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:sw2:lltc,fb-voltage-divider: False schema does not 
allow [301000, 200000]
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:sw3:lltc,fb-voltage-divider: False schema does not 
allow [127000, 200000]
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:sw4:lltc,fb-voltage-divider: False schema does not 
allow [221000, 200000]
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:ldo2:lltc,fb-voltage-divider: False schema does not 
allow [487000, 200000]
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:ldo3: 'lltc,fb-voltage-divider' is a required property
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:ldo3: 'lltc,fb-voltage-divider' is a required property
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:ldo3: 'regulator-always-on' is a required property
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
/Documentation/devicetree/bindings/regulator/lltc,ltc3676.example.dtb: 
pmic@3c: regulators:ldo4:lltc,fb-voltage-divider: False schema does not 
allow [634000, 200000]
         from schema $id: 
http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
"

I am at a loss here, do you have any hint you could offer ?

Thank you!

