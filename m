Return-Path: <devicetree+bounces-294061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPwtD4ia/Gk6RwAAu9opvQ
	(envelope-from <devicetree+bounces-294061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 15:58:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25D4E9B82
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 15:58:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB729303D573
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 13:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFBEB3CF02E;
	Thu,  7 May 2026 13:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mirtsHe2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1242E3FA5C8
	for <devicetree@vger.kernel.org>; Thu,  7 May 2026 13:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778162128; cv=none; b=M8b/1omzvX/WOZ31F2FAqzkYOcDlcL/cl1Lau0crdnj6Vpz+NJjnHblRndSS/V3VQTmmnZI6+D+rQfgCtyQSmejBTcUUQPnZKm7ugX/YZW/gvsbhXf8ZdBrEo79lio4IRd/l1lrPv9ADGl6DSb6L4Ps9aVh28ZSMF+FIiSzCqqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778162128; c=relaxed/simple;
	bh=vLUqd2wF3I09DLEoj0Q1HeEyyR5NnRjBt5S4LdbbjVI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=huT/cft/vMa7UGgoX9aPphi3C99H5oKkgnnfehLyA0dQ3SF7Ls/4DxQpfJrpzmlRCGBOl433VEnD60OfijEASNmd5RWPyVFZCpCd2jpPBD7wvuFk8Ds8dt+w3bGEreC25ixyaCTThzg/pfNw/D8wrGj7/W8H0vgZs8mzyrseDHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mirtsHe2; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-12dca45ca21so1337627c88.1
        for <devicetree@vger.kernel.org>; Thu, 07 May 2026 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778162125; x=1778766925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6uKuIwz5ttJFhZbFp/Yx6dYZyHlJKa3vlWe5jeAlGXA=;
        b=mirtsHe2ZJUOrc1pZQunyg67PP1zarVNPWO9n+p+fbBXbihtGclwa0OoA9aaYJCdNA
         BF3GqGeddhlc1hFEfo3JwmDeq4SJ347rzyQYnl/25IDevEDpYNyb5GgYkUx3rqRoCIzQ
         mfOx9fY+tNI+MpZUAh4qEjZjlRvcoe1y1NZ9RecFQMToJ1yE0dehcDR+WUs9mhUNOFfS
         7/HINcW1DAdshXwjl/qAhIFbemJHhdFGMVLvgnITLzrvmKVqi8zGS5lSnJlEk3j99BNw
         5umXrsdrxgwpf1UeVokgvkcrnqCwa3I/+Ipk2Q/gntyymfGa4bIBBV1g5ZFiMinHWlhx
         l9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778162125; x=1778766925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6uKuIwz5ttJFhZbFp/Yx6dYZyHlJKa3vlWe5jeAlGXA=;
        b=Rb936o7guATTLrr8UOb9m5amAF1cP4o0CvbKFZwpJfM812e7jWZ2TGISr/GIKYLgu5
         wRngo4UWCw6af982H/hFBSG38QRTkd3+HHHsgfAfHVRdp3jTYK7BkbOuiZb52JuVZzJq
         B3ywxfkmu7f0qmMeLOC6MTQC8K6JhbzDaouIJN8rswiPI8c71StoaSVZmDFRtk2ClfKM
         LE02nPn5hnNOvWA8q8YvEGkVcLPBL7y09n8FhN9lKt62PbvTD4/IbNmtt3klDsKan/7/
         VXCws4KOSeMWtuHbH56OzN4HomU7foMOe5w+55sbBTLy/ZCTTKxCYm2b/xXB7SSrpY/n
         CFjQ==
X-Forwarded-Encrypted: i=1; AFNElJ+9+3g73rSoswIBYUOef9CerGHyNFcPbC5RBcQVYdyvQC5hd3kTJy6nPXEgGN/AvgoAZrFZGoDJiwu8@vger.kernel.org
X-Gm-Message-State: AOJu0YycIveVHx5UyUDooors0z2O+msZZ753p3jfnIsV2KIJ2u5a+/u2
	q665QWQGqCqJwbZ9DWtl823frHHa7o+l/7yndHpoDqTHxNh7VDwNCm8X
X-Gm-Gg: AeBDies7k0M4w9cw6EGQjeMR+CiXnTPUnLYeqFU3k0HY2xbRlpbcJRlQ7DjeFlbKIM1
	lTgBf/moOQsf2/Nn4HJ7PPKaQ2419BxupmQ9+QMUqTdBYsI9C5PrNe95GCMTpTDmbKEvEeyUc+f
	tTBVBLkCAv8dOtpRTp4O58dtwYcDfD/u8yDcKBq66O0ba2cbu7erOHcZbx6o/Hqg8sqvVnGiuu3
	0t/T9CerOfJcl5JeQRDX/QRtGs4EVYVRk4gbWer6Wxd9TC5feCykSd9mFyHoOiarfvrK+kkWeJ/
	xtgj+KsufZ795SOEfdTtPw3Lb4vzVBRnHE2BcQJmxR7ZbBai0dLnEOYq/RtQVmGGPeta4CD91Et
	zKRqBbTQbXTW+XwMw+TguGoWj7bNeNJ0gyCn0T7GyMfhsxkD9hPPN3Gd33i16/kBv9YzhYgJ2dL
	3AsRSwdP/7v2y81nQ7t1b1xX/bkbJI
X-Received: by 2002:a05:7022:459b:b0:128:d967:4673 with SMTP id a92af1059eb24-131854f9a7cmr3589620c88.16.1778162125063;
        Thu, 07 May 2026 06:55:25 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a53:11::1002])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1321e00e146sm6388817c88.0.2026.05.07.06.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 06:55:24 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	daniel@zonque.org,
	devicetree@vger.kernel.org,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	lee@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	luccafachinetti@gmail.com,
	pzalewski@thegoodpenguin.co.uk
Subject: Re: [PATCH v3 1/5] dt-bindings: leds: is31fl32xx: convert the binding to yaml
Date: Thu,  7 May 2026 21:55:15 +0800
Message-ID: <20260507135515.1449588-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260506194124.GA2989390-robh@kernel.org>
References: <20260506194124.GA2989390-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: BD25D4E9B82
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294061-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,zonque.org,vger.kernel.org,gmail.com,thegoodpenguin.co.uk];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

> On Wed, Apr 29, 2026 at 11:44:45PM +0800, Jun Yan wrote:
> > Convert leds-is31fl32xx to DT schema format.
> > 
> > Co-developed-by: Lucca Fachinetti <luccafachinetti@gmail.com>
> > Signed-off-by: Lucca Fachinetti <luccafachinetti@gmail.com>
> > Co-developed-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
> > Signed-off-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  .../bindings/leds/issl,is31fl32xx.yaml        | 163 ++++++++++++++++++
> >  .../bindings/leds/leds-is31fl32xx.txt         |  53 ------
> >  2 files changed, 163 insertions(+), 53 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml b/Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml
> > new file mode 100644
> > index 000000000000..cb4741dee12e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml
> > @@ -0,0 +1,163 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/leds/issl,is31fl32xx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: IS31FL32xx and Si-En SN32xx LED controller
> > +
> > +maintainers:
> > +  - Lucca Fachinetti <luccafachinetti@gmail.com>
> > +  - Pavel Machek <pavel@ucw.cz>
> > +  - Jun Yan <jerrysteve1101@gmail.com>
> > +
> > +description: |
> > +  The IS31FL32xx/SN32xx family of LED drivers are I2C devices with multiple
> > +  constant-current channels, each with independent 256-level PWM control.
> > +  Each LED is represented as a sub-node of the device.
> > +
> > +  For more product information please see the links below:
> > +    https://www.lumissil.com/assets/pdf/core/IS31FL3216_DS.pdf
> > +    https://www.lumissil.com/assets/pdf/core/IS31FL3218_DS.pdf
> > +    https://www.lumissil.com/assets/pdf/core/IS31FL3235_DS.pdf
> > +    https://www.lumissil.com/assets/pdf/core/IS31FL3236_DS.pdf
> > +    https://www.lumissil.com/assets/pdf/core/IS31FL3293_DS.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - issi,is31fl3216
> > +      - issi,is31fl3218
> > +      - issi,is31fl3235
> > +      - issi,is31fl3236
> > +      - issi,is31fl3293
> > +      - si-en,sn3216
> > +      - si-en,sn3218
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> > +
> > +patternProperties:
> > +  "^led@([1-9])+$":
> 
> Unit-addresses are hex.

Got it.

> > +    type: object
> > +    $ref: common.yaml#
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      reg:
> > +        description:
> > +          LED channel number (1..N)
> > +        minimum: 1
> > +        maximum: 36
> > +
> > +    required:
> > +      - reg
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - issi,is31fl3293
> > +    then:
> > +      patternProperties:
> > +        "^led@([1-9])+$":
> 
> No need to repeat the unit-address pattern here. Just "^led@".

Got it.

> > +          properties:
> > +            reg:
> > +              maximum: 3
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - issi,is31fl3216
> > +              - si-en,sn3216
> > +    then:
> > +      patternProperties:
> > +        "^led@([1-9])+$":
> > +          properties:
> > +            reg:
> > +              maximum: 16
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - issi,is31fl3218
> > +              - si-en,sn3218
> > +    then:
> > +      patternProperties:
> > +        "^led@([1-9])+$":
> > +          properties:
> > +            reg:
> > +              maximum: 18
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - issi,is31fl3235
> > +    then:
> > +      patternProperties:
> > +        "^led@([1-9])+$":
> > +          properties:
> > +            reg:
> > +              maximum: 28
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - issi,is31fl3236
> > +    then:
> > +      patternProperties:
> > +        "^led@([1-9])+$":
> > +          properties:
> > +            reg:
> > +              maximum: 36
> 
> That's the default max, so you can drop this if/then.

Agreed.


These changes will be implemented in v5.

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/leds/common.h>
> > +
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        led-controller@3c {
> > +            compatible = "issi,is31fl3236";
> > +            reg = <0x3c>;
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            led@1 {
> > +                reg = <1>;
> > +                color = <LED_COLOR_ID_RED>;
> > +                function = LED_FUNCTION_STATUS;
> > +            };
> > +
> > +            led@5 {
> > +                reg = <5>;
> > +                color = <LED_COLOR_ID_GREEN>;
> > +                function = LED_FUNCTION_POWER;
> > +                linux,default-trigger = "default-on";
> > +            };
> > +        };
> > +    };
> > +...
> > +
> > diff --git a/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt b/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
> > deleted file mode 100644
> > index 7082ed186dd9..000000000000
> > --- a/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
> > +++ /dev/null
> > @@ -1,53 +0,0 @@
> > -Binding for ISSI IS31FL32xx and Si-En SN32xx LED Drivers
> > -
> > -The IS31FL32xx/SN32xx family of LED drivers are I2C devices with multiple
> > -constant-current channels, each with independent 256-level PWM control.
> > -Each LED is represented as a sub-node of the device.
> > -
> > -Required properties:
> > -- compatible: one of
> > -	issi,is31fl3236
> > -	issi,is31fl3235
> > -	issi,is31fl3218
> > -	issi,is31fl3216
> > -	issi,is31fl3293
> > -	si-en,sn3218
> > -	si-en,sn3216
> > -- reg: I2C slave address
> > -- address-cells : must be 1
> > -- size-cells : must be 0
> > -
> > -LED sub-node properties:
> > -- reg : LED channel number (1..N)
> > -- label :  (optional)
> > -  see Documentation/devicetree/bindings/leds/common.txt
> > -- linux,default-trigger :  (optional)
> > -  see Documentation/devicetree/bindings/leds/common.txt
> > -
> > -
> > -Example:
> > -
> > -is31fl3236: led-controller@3c {
> > -	compatible = "issi,is31fl3236";
> > -	reg = <0x3c>;
> > -	#address-cells = <1>;
> > -	#size-cells = <0>;
> > -
> > -	led@1 {
> > -		reg = <1>;
> > -		label = "EB:blue:usr0";
> > -	};
> > -	led@2 {
> > -		reg = <2>;
> > -		label = "EB:blue:usr1";
> > -	};
> > -	...
> > -	led@36 {
> > -		reg = <36>;
> > -		label = "EB:blue:usr35";
> > -	};
> > -};
> > -
> > -For more product information please see the links below:
> > -http://www.issi.com/US/product-analog-fxled-driver.shtml
> > -http://www.si-en.com/product.asp?parentid=890
> > -- 
> > 2.53.0
> > 


