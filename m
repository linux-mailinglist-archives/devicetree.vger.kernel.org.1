Return-Path: <devicetree+bounces-294804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHRWJiWe/mkVuAAAu9opvQ
	(envelope-from <devicetree+bounces-294804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:38:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3317B4FDAD9
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6435830054FD
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 02:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E3A33374F;
	Sat,  9 May 2026 02:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OqMoxk2z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4D126ED46
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 02:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778294306; cv=none; b=Uz++vmTNQ9Mwjzwv8ZcLnHtsjS5j8ERoj4/o8C3zT6gfNg0GAaHH0Jj6nZFMedcxCUiLKywGSWjQwPAKS1FgaacIRXHXuBShNoK0+UVLH4Cyc3LYLFrNK8/qjf4dDkWRirhUIRu/5/ynCct2iZqU5a0LSBH+Bwa0lEQWNJnbij0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778294306; c=relaxed/simple;
	bh=By/+eZqFEM5VaLMz1VnW74ySyDqoDe81IrXPYvQDmDo=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=T/MhOykAk0if5H8K0KB8wiaymehdTGPvTPwO8hnk+kEZYINUJx8tKMuZ3A/EVz8NNGxvQFKahZnNseJKRJ6r3V+8uQEJbrfYul1CYZyo/n82DbMVpTxynHLVI0kKJAG7SqzrekzWqd7hIYkUgoZBr9aF8brFZce7iGCZNbrer0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OqMoxk2z; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-82735a41920so1049858b3a.2
        for <devicetree@vger.kernel.org>; Fri, 08 May 2026 19:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778294305; x=1778899105; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PSou2Z9/z7vTfECpLev9DLhoc0ZcyF5XLNKGMWcPXPg=;
        b=OqMoxk2zaWHiD9H1VDmfzAJafc6qGF/57l4CgTiuOJw9AVmdoforkinZ+aT2La3Uzc
         YBAMR8bE78fMPrh1vnKEfAiXUZ61A1I+FIIHT4nKFZtq82VrAU3b/ybFlas+ezK1K7e3
         IVaXtjuD8YGlh1nMVrGbAGrkttriKtv2NseL233of6mxPrHJKAZtcDxE3u/OOwIgUUJk
         gjkAtBfPpgsiRl1iVlelnnSrNJG1qJobTQORL89zKlsutgRD0dou2eTmGfyqsp720IZ4
         QplDAXfX+5K/60r64QGmM/0K416cB3Ifxj2thtqY10GPQHgpm51PgbZkbh3z2xYqCdM4
         UivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778294305; x=1778899105;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PSou2Z9/z7vTfECpLev9DLhoc0ZcyF5XLNKGMWcPXPg=;
        b=FA5spGoAIDT0EEbIyNGSR7b+E/02sGc/eCVhIvN37gdL7zLuljpVx5An1d4MtyK0hr
         q1sQM9ycelsXVo0s0vVpXjwiUbeWPpMWmODZgPxAy9UQ8GBkyM+C7vQHyYgkN8qZg5J3
         /zmLI0IsCPRGnTppVSpKw4ZvGbdDSq40gMx0X/cJST5m1FPD8mm/o+pyA7RqBKftzMvI
         NBV5gA6UPhL51q4C+Ncc5l546OLaf7uObdCC6IQ5zj1P058/oxFyGOQKLxO0hT/Eal+q
         XWtnFJKkfJ4fgI+T7LIBTklOVLVgHkduI6CDRXJjZG9Q+wVPu91fZjVwlX+e7Bnt8ooG
         qhGg==
X-Forwarded-Encrypted: i=1; AFNElJ/36CnIWKyndRMhQtnJB25TFsOaJ5ndDcIHNeN3u2d3VrGtgzIMSlueRRIPjal4YQsCeQuenLPLF/cf@vger.kernel.org
X-Gm-Message-State: AOJu0YwFabwrm0UZJPEB7uvaASqfkCYbdoYv5RFZiMNg6+6/YXmDVhEP
	8PmhXmApWQahNrGQnUJ49Pt/JOlC8A9eq9lEWVGDhTsixny60TC4wVrL
X-Gm-Gg: Acq92OG9IrlmVe6GaLKffyOHIBMqvHPHoTqx5t7oqC5Mq52MVfPWlQrYrqpq6iRa8Y5
	ZMWHJCBG0zEjZlacLd1Vc3NBIr5IGwlUTpeTO5+bfKQPatOZJwAUDv0Dc1IeJMMCAdBISClfdrv
	CWE6AwQrxV0/h9jdomF43N+maZ/r8OtU2/hGV4iUM62QcoSfkPJ6tifs3YDQxjYdAIpqsDS3mwO
	iIgq/w1FJVjlRbvf9nehf28kghTdJVeKnGoiNSOH1So1WrFrBhuuB/AaX0N17Oxgew23RMcLaNb
	I+jUkNpxWMMaJwzZ0QifeMtZ74IyreyzOxkGc82y/tp00kmXh0AXy6hdWQ59RxAwLUnOoVQ4u3+
	kta+3QNdUiyzuFxnXzaxj2izn4rUysNTCs+pj2HO4fYHma/MYOcmbjkVZGjoA0sVs5Ax3w08R+C
	0rAFr+cI+QzFYftQ42S1ZrUn764rXTZfVVHe4MKoHCTeB0zpC0cNl2LCyNdA==
X-Received: by 2002:a05:6a00:2793:b0:835:3f51:72fb with SMTP id d2e1a72fcca58-83a5b8d20dfmr14023721b3a.12.1778294304450;
        Fri, 08 May 2026 19:38:24 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:4900:791b:cfa1:9b60:879e:786b:b8d8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-839682a272asm13914537b3a.54.2026.05.08.19.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2026 19:38:24 -0700 (PDT)
Date: Sat, 09 May 2026 07:50:40 +0530
From: Sanjay Chitroda <sanjayembeddedse@gmail.com>
To: Hungyu Lin <dennylin0707@gmail.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
CC: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/1] dt-bindings: iio: dds: Add AD9832/AD9835 binding
User-Agent: Thunderbird for Android
In-Reply-To: <20260509013745.80478-2-dennylin0707@gmail.com>
References: <20260509013745.80478-1-dennylin0707@gmail.com> <20260509013745.80478-2-dennylin0707@gmail.com>
Message-ID: <1B57A7B8-6ED1-4F90-9AC0-924635520E64@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 3317B4FDAD9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.85 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294804-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,metafoo.de,analog.com,kernel.org];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.329];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sanjayembeddedse@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c09:e001:a7::/64];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 9 May 2026 7:07:45=E2=80=AFam IST, Hungyu Lin <dennylin0707@gmail=2Ecom=
> wrote:
>Add devicetree binding documentation for AD9832 and AD9835 DDS devices=2E
>

Hi,

It looks like you have sent multiple patch versions within 24 hours=2E

I would suggest taking some additional time for development and validation=
 before sending updates to the mailing list=2E It is also good to allow rev=
iewers enough time to provide feedback, atleast a minimum of 24 hours=2E

Please be patient and wait for a few days, or ideally upto week, so review=
ers have sufficient time to review the changes properly=2E

Thanks, Sanjay=20

>These devices are SPI-controlled direct digital synthesizers
>requiring AVDD, DVDD supplies and an external master clock=2E
>
>Require spi-cpol since AD9832/AD9835 use SPI mode 2=2E
>Update the example to include spi-cpol and use a generic node name=2E
>
>Signed-off-by: Hungyu Lin <dennylin0707@gmail=2Ecom>
>---
> =2E=2E=2E/bindings/iio/dds/adi,ad9832=2Eyaml          | 91 +++++++++++++=
++++++
> 1 file changed, 91 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/iio/dds/adi,ad9832=
=2Eyaml
>
>diff --git a/Documentation/devicetree/bindings/iio/dds/adi,ad9832=2Eyaml =
b/Documentation/devicetree/bindings/iio/dds/adi,ad9832=2Eyaml
>new file mode 100644
>index 000000000000=2E=2E9f3e41cb0a0d
>--- /dev/null
>+++ b/Documentation/devicetree/bindings/iio/dds/adi,ad9832=2Eyaml
>@@ -0,0 +1,91 @@
>+# SPDX-License-Identifier: (GPL-2=2E0-only OR BSD-2-Clause)
>+%YAML 1=2E2
>+---
>+$id: http://devicetree=2Eorg/schemas/iio/dds/adi,ad9832=2Eyaml#
>+$schema: http://devicetree=2Eorg/meta-schemas/core=2Eyaml#
>+
>+title: Analog Devices AD9832 / AD9835 DDS
>+
>+maintainers:
>+  - Hungyu Lin <dennylin0707@gmail=2Ecom>
>+
>+description: |
>+  Binding for Analog Devices AD9832 and AD9835 SPI-controlled direct
>+  digital synthesizers (DDS)=2E The devices use an external master clock
>+  and are controlled over a serial SPI-compatible interface=2E
>+
>+properties:
>+  compatible:
>+    enum:
>+      - adi,ad9832
>+      - adi,ad9835
>+
>+  reg:
>+    maxItems: 1
>+
>+  spi-max-frequency:
>+    maximum: 20000000
>+
>+  spi-cpol: true
>+
>+  clocks:
>+    maxItems: 1
>+    description:
>+      External master clock input=2E
>+
>+  clock-names:
>+    const: mclk
>+
>+  avdd-supply:
>+    description:
>+      Analog power supply=2E
>+
>+  dvdd-supply:
>+    description:
>+      Digital power supply=2E
>+
>+required:
>+  - compatible
>+  - reg
>+  - clocks
>+  - clock-names
>+  - avdd-supply
>+  - dvdd-supply
>+  - spi-cpol
>+
>+allOf:
>+  - $ref: /schemas/spi/spi-peripheral-props=2Eyaml#
>+
>+unevaluatedProperties: false
>+
>+examples:
>+  - |
>+    mclk: clock {
>+      compatible =3D "fixed-clock";
>+      #clock-cells =3D <0>;
>+      clock-frequency =3D <25000000>;
>+    };
>+
>+    vdd_3v3: regulator {
>+      compatible =3D "regulator-fixed";
>+      regulator-name =3D "vdd_3v3";
>+      regulator-min-microvolt =3D <3300000>;
>+      regulator-max-microvolt =3D <3300000>;
>+      regulator-always-on;
>+    };
>+
>+    spi {
>+      #address-cells =3D <1>;
>+      #size-cells =3D <0>;
>+
>+      dds@0 {
>+        compatible =3D "adi,ad9832";
>+        reg =3D <0>;
>+        spi-max-frequency =3D <20000000>;
>+        spi-cpol;
>+        clocks =3D <&mclk>;
>+        clock-names =3D "mclk";
>+        avdd-supply =3D <&vdd_3v3>;
>+        dvdd-supply =3D <&vdd_3v3>;
>+      };
>+    };

