Return-Path: <devicetree+bounces-26871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB40F81863E
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 12:21:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A5B51F23E5C
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 11:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3944D154BF;
	Tue, 19 Dec 2023 11:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OLq88u/O"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3901548B
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 11:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702984861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vrHI+C/8N+6WMywKa2Mtsu2yooelBSjntgs3OJkiMbU=;
	b=OLq88u/OoCwPqAaEuUTiAvQAkW/O8qlGsksvVzRzsye6YVDCF5fjt5sWB0UIdjTC/ud3rV
	FQXuPNE7/KwH5MwW0u4ncHtMUsx59n4B5dmjD1MmfOWzy+BqMcKXJ6LVkv0+/sSsi1rWWV
	ATb3fitMWAfU/bCEzhkakO+B8+AdYKg=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-688-IpiFEDnGPqqsRvZuvUmZHw-1; Tue, 19 Dec 2023 06:21:00 -0500
X-MC-Unique: IpiFEDnGPqqsRvZuvUmZHw-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3365bc111a5so2902145f8f.1
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 03:20:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702984859; x=1703589659;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vrHI+C/8N+6WMywKa2Mtsu2yooelBSjntgs3OJkiMbU=;
        b=kHGbSFah20majLJhDRIBZdbjy/Sg7d5mOJYeAdGubiR2e3vuRZo27kXyvNNCkeN2Gi
         xEwMPXlODba2JVbrX/++fZaVGJIKDDuKLqqrc2eOgKGZAObcANQdEeQMn7A4OW447Tw9
         MhOqcIQ7NlzfqZ+yhMmtax13Q1aoJFVRzDTTN05qvwQq1xSvHxXJ87n+BdLBv4QKvdko
         hLU+B5/PcptHFM9kuvyo+Mno0dATut/YRR/49NwIMZ5mUzcWDJCmvnNuUE+L+8ejq7IN
         IJ61JFtAGC46jLIMIK7iJQPhZFDVrNK/S3qJvtIv/j+TMwCgT5Jc4zxY1vNUg1Wtc0/Y
         LKrw==
X-Gm-Message-State: AOJu0YxE8LLpBv6u9dAx9N5xIR22T60sX/o2Tslpnk2A8pCD7oU8Hzku
	yku/Cz3Sq/rtbicszdvwhZkVX3S1RLhT2z7oZEjpplUaJsg/UqBRt3cLclIpW9qNEbd3m243d7l
	uPL6xu+L2Q4DXDKHwQodYWg==
X-Received: by 2002:a5d:4d05:0:b0:336:58fb:f458 with SMTP id z5-20020a5d4d05000000b0033658fbf458mr2986548wrt.36.1702984858906;
        Tue, 19 Dec 2023 03:20:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEm9OABKgWalersq3dWUQ+/G4ZU/EwjszYlINMkbd4HSl17b3TLGC/tl0msGG4gFGtypoj4iA==
X-Received: by 2002:a5d:4d05:0:b0:336:58fb:f458 with SMTP id z5-20020a5d4d05000000b0033658fbf458mr2986525wrt.36.1702984858527;
        Tue, 19 Dec 2023 03:20:58 -0800 (PST)
Received: from localhost (127.red-79-152-77.dynamicip.rima-tde.net. [79.152.77.127])
        by smtp.gmail.com with ESMTPSA id h15-20020a5d504f000000b00336566b885csm11182577wrt.87.2023.12.19.03.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 03:20:58 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Jocelyn Falempe <jfalempe@redhat.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Thomas Zimmermann <tzimmermann@suse.de>, Peter
 Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David
 Airlie <airlied@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: Add SSD133x OLED controllers
In-Reply-To: <20231218-example-envision-b41ca8efa251@spud>
References: <20231218132045.2066576-1-javierm@redhat.com>
 <20231218132045.2066576-2-javierm@redhat.com>
 <20231218-example-envision-b41ca8efa251@spud>
Date: Tue, 19 Dec 2023 12:20:57 +0100
Message-ID: <87il4u5tgm.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Conor Dooley <conor@kernel.org> writes:

Hello Conor,

> On Mon, Dec 18, 2023 at 02:20:35PM +0100, Javier Martinez Canillas wrote:

[...]

>> +allOf:
>> +  - $ref: solomon,ssd-common.yaml#
>> +
>> +  - properties:
>> +      width:
>> +        default: 96
>> +      height:
>> +        default: 64
>
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
> index 8feee9eef0fd..ffc939c782eb 100644
> --- a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
> @@ -9,24 +9,24 @@ title: Solomon SSD133x OLED Display Controllers
>  maintainers:
>    - Javier Martinez Canillas <javierm@redhat.com>
>  
> +allOf:
> +  - $ref: solomon,ssd-common.yaml#
> +

This part worked correctly...

>  properties:
>    compatible:
>      enum:
>        - solomon,ssd1331
>  
> +  width:
> +    default: 96
> +
> +  height:
> +    default: 64
> +

...but when trying move the default for the "solomon,width" and
"solomon,height" to the properties section, make dt_binding_check
complains as follows:

  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
/home/javier/devel/linux/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml: properties:solomon,height: 'oneOf' conditional failed, one must be fixed:
        'type' is a required property
                hint: A vendor boolean property can use "type: boolean"
        'description' is a required property
                hint: A vendor boolean property can use "type: boolean"
        Additional properties are not allowed ('default' was unexpected)
                hint: A vendor boolean property can use "type: boolean"
        /home/javier/devel/linux/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml: properties:solomon,height: 'oneOf' conditional failed, one must be fixed:
                'enum' is a required property
                'const' is a required property
                hint: A vendor string property with exact values has an implicit type
                from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
        /home/javier/devel/linux/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml: properties:solomon,height: 'oneOf' conditional failed, one must be fixed:
                '$ref' is a required property
                'allOf' is a required property
                hint: A vendor property needs a $ref to types.yaml
                from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
        hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
        from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/home/javier/devel/linux/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml: properties:solomon,width: 'oneOf' conditional failed, one must be fixed:
        'type' is a required property
                hint: A vendor boolean property can use "type: boolean"
        'description' is a required property
                hint: A vendor boolean property can use "type: boolean"
        Additional properties are not allowed ('default' was unexpected)
                hint: A vendor boolean property can use "type: boolean"
        /home/javier/devel/linux/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml: properties:solomon,width: 'oneOf' conditional failed, one must be fixed:
                'enum' is a required property
                'const' is a required property
                hint: A vendor string property with exact values has an implicit type
                from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
        /home/javier/devel/linux/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml: properties:solomon,width: 'oneOf' conditional failed, one must be fixed:
                '$ref' is a required property
                'allOf' is a required property
                hint: A vendor property needs a $ref to types.yaml
                from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
        hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
        from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/display/solomon,ssd133x.example.dts
/home/javier/.local/bin/dt-extract-example:75: SyntaxWarning: invalid escape sequence '\s'
  root_node = re.search('/\s*{', ex)
/home/javier/.local/bin/dt-extract-example:79: SyntaxWarning: invalid escape sequence '\s'
  int_val = re.search('\sinterrupts\s*=\s*<([0-9a-zA-Z |()_]+)>', ex).group(1)
  DTC_CHK Documentation/devicetree/bindings/display/solomon,ssd133x.example.dtb

The warning goes away if I follow the hints and add a type and description
to the properties, i.e:

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
index 880c71fdec68..0f4d9ca7456b 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd133x.yaml
@@ -17,6 +17,20 @@ properties:
     enum:
       - solomon,ssd1331
 
+  solomon,width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Width in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
+    default: 96
+
+  solomon,height:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Height in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
+    default: 64
+
 required:
   - compatible
   - reg

But that would duplicate information that is already present in the
included solomon,ssd-common.yaml schema. Do you know what is the proper
way to do this?

Or maybe should I just drop the default values for the width and height
properties? I just think that is good information to have in the schema.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


