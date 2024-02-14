Return-Path: <devicetree+bounces-41573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D128B8544F7
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 10:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 435201F2C0EB
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 09:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460DC12B69;
	Wed, 14 Feb 2024 09:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="ZjhltYGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C316C125C2
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 09:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707902431; cv=none; b=uLydDbW/WU+mkH5wN36fbPQ9dFQ9RrAxmittYrmu6beV8rP5mMtUZmCiNBtU2NGF3++LEyvI3iQ+LHvmFHq1ihX2F0oV0vJn+usoDZzJL7r8gDVxhbRUwLur+PvcbAvL/xVWG5SqC2FQ7Y9JIpqSLuwSIwFFFprgjn6IkfJVtPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707902431; c=relaxed/simple;
	bh=0fPdwZNsLS69Huv0I8sGB5yfphGY07GmyJfHv2XPGbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K9sPIDR9YwniIsIiOWFQuKWZGvblN62AnD/ltAmGlx01bkEWM3Hc2SzU/i0feGWanMWXkEh80D/GtPz5dCnhcmL/sqV8p+LcJy+0bZhPT8TRo2BmCsHq6A38m5EGaGW8YusdGW2/7NMJSyPTmrIqMLuhzMnzEYbWKtxmDt1WSfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=ZjhltYGT; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-5d4d15ec7c5so4301376a12.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 01:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1707902428; x=1708507228; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/19sQ4pxsIEJ7YhUTf9YS+0MW22psDvn0EMZBCLo3mk=;
        b=ZjhltYGTVFW/g0qD2ou35mpUYmqS5TwtdloGQotPG/ilfFoKamJnKA5W8BYCXw53Z+
         Pxf/cQtpi5i7HW23gtki9JNSZcKO8uLCaxoZPEqTHcJwVZSU8tsVTyDD03BwHscBYeiR
         c4B37vd5FQrqrRQ2YWpeSyhP2fgSymdk+zxhSSKFqK3eGqWnxSREUSaUV1KHny7wPG5k
         jpCyWipLW4pQlq91+CUW94WNEEguVXrXZeWs4vLfyslixbK8n7hnaDYbeCoMiiMHhVRC
         ug+H/ESwleyOkswRjtdJ0vvhc0OGzFw7w9HOyLJQDxKAqtlYDcP6j+gozg31XvE10WWd
         z4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707902428; x=1708507228;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/19sQ4pxsIEJ7YhUTf9YS+0MW22psDvn0EMZBCLo3mk=;
        b=FaNrxPJQKK8/+ZDmv7v8diucAjs36Bgu5u1CRDA4wg4SjnJsRVyq1epVZtbC28ONhs
         RzEz1vzPQT1ryCCrEMCeOjL0nWwjf1elsO0RLvBRsDQFUh+3mCdemXY2m4mePrpc0sFM
         z7ozk3HEt4mXyzskcsN5XSP+Cr4VcZoAYc6tk7Ldd2sOWstzgqopYCYrRMvrBc1w4iig
         lYTsqzhcnaErUTz6D2jGrcR4j4XrsxARYPW8hxRh6svcyanSS46OZFC0KbSKqZJ5TUcH
         qaJTvtKuBb/vOSj3Vf6c6I/9IjuN1t3FQ3qHdAqOaV5927uNQh3D9q/3os/OZJERwwoF
         i+Ww==
X-Forwarded-Encrypted: i=1; AJvYcCWx3PCTdyve6TlBl5ybyvGrgWmfTmQYusWD8hez4/MiCNlLdjQRXjVLmNGhovCqum+Bdzbfs8y4CTwF16hC6Yt9Y0NoQP2uCAfxcg==
X-Gm-Message-State: AOJu0YyIc5WU3Prlw0axV3tO7HaS/ZubNrWHcX6+B4fEnvQabZLtcgOT
	zB0SPFROlwUcPvqT0ZKEsdOGtb8xvRaabLxy+OUs3d8Iz9nm+i09TUp9bUWfensCHWB51DiVcWk
	iOABgiK0nPx8O42X3xJ94Dz016jBX02L8LnPk5A==
X-Google-Smtp-Source: AGHT+IGDrwWoVvQYVO4/41/tvlZknFSKtr/BQBfPcXc3+069y5dQgY8zPFO+V46/qc98bY82C+ghHupMVL7+PS4S9YY=
X-Received: by 2002:a05:6a20:4e21:b0:19e:9ae1:a2ad with SMTP id
 gk33-20020a056a204e2100b0019e9ae1a2admr1675398pzb.60.1707902427996; Wed, 14
 Feb 2024 01:20:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240126112945.1389573-1-naresh.solanki@9elements.com> <20240126-fleshed-subdued-36bae813e2ba@spud>
In-Reply-To: <20240126-fleshed-subdued-36bae813e2ba@spud>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Wed, 14 Feb 2024 14:50:18 +0530
Message-ID: <CABqG17injFdVVVYvbhqJNCpvBXeCKvA8OtJ+nx-0VNEi+NB=Hg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: hwmon: tda38640: Add interrupt & regulator properties
To: Conor Dooley <conor@kernel.org>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	mazziesaccount@gmail.com, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,


On Fri, 26 Jan 2024 at 21:54, Conor Dooley <conor@kernel.org> wrote:
>
> On Fri, Jan 26, 2024 at 04:59:44PM +0530, Naresh Solanki wrote:
> > Add properties for interrupt & regulator.
> > Also update example.
>
> Feeling like a broken record, given I am leaving the same comments on
> multiple patches. The commit message needs to explain why you're doing
> something. I can read the diff and see what you did!
>
> >
> > TEST=Run below command & make sure there is no error.
> > make DT_CHECKER_FLAGS=-m dt_binding_check
>
> Same comment here as elsewhere.
Ack
>
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  .../hwmon/pmbus/infineon,tda38640.yaml        | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml
> > index ded1c115764b..2df625a8b514 100644
> > --- a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml
> > +++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml
> > @@ -30,6 +30,15 @@ properties:
> >        unconnected(has internal pull-down).
> >      type: boolean
> >
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  regulators:
> > +    $ref: /schemas/regulator/regulator.yaml#
> > +    type: object
> > +    description: |
>
> The | here is not needed, there's no formatting to preserve.
Ack
>
> From a quick check, most bindings with regulator subnodes restrict the
> subnode names with patternproperties. Is there a reason you have not?
I have corrected it now & will push in next revision.
regulators is expected to have subnode vout0. like below:
  regulators:
    type: object
    description:
      list of regulators provided by this controller.

    properties:
      vout0:
        $ref: /schemas/regulator/regulator.yaml#
        type: object

        unevaluatedProperties: false

    additionalProperties: false


>
> > +      list of regulators provided by this controller.
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -38,6 +47,7 @@ additionalProperties: false
> >
> >  examples:
> >    - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> >      i2c {
> >          #address-cells = <1>;
> >          #size-cells = <0>;
> > @@ -45,5 +55,15 @@ examples:
> >          tda38640@40 {
> >              compatible = "infineon,tda38640";
> >              reg = <0x40>;
> > +
> > +            //interrupt-parent = <&smb_pex_cpu0_event>;
>
> Why is this commented out? Please either restore it or remove it (with
> justification).
Ack. will restore it.
>
> Thanks
>
> Conor.
>
> > +            interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
>
> Blank line here please.
Ack

Regards,
Naresh
>
> > +            regulators {
> > +                pvnn_main_cpu0: vout0 {
> > +                    regulator-compatible = "vout0";
> > +                    regulator-name = "pvnn_main_cpu0";
> > +                    regulator-enable-ramp-delay = <200>;
> > +                };
> > +            };
> >          };
> >      };
> >
> > base-commit: ecb1b8288dc7ccbdcb3b9df005fa1c0e0c0388a7
> > --
> > 2.42.0
> >

