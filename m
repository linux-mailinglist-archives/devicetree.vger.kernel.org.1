Return-Path: <devicetree+bounces-2552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5F87AB4C9
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:30:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 717E4282223
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF2641203;
	Fri, 22 Sep 2023 15:30:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592EE1EA9A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:30:15 +0000 (UTC)
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 648E1100
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:30:11 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1d63d38c74fso1183725fac.3
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695396610; x=1696001410; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4TJHGEmsDY+NAj3iBtyvpvCWy99F2/68mZJZrN4IAhk=;
        b=ci12aMbKg8E5mbHZ1ix4ERsQv2TIAVwQ3mAAAFN45hR2kQwt8M+9V1gPP7Nvi4mZud
         ZLRHXRYl7rB7OgwldzmjAnoWKWffKApTwWKzu+GyuUTmqFvRcQ49ptcl2X/pCNZMURGR
         U9V2yiWO0MSGzmOExEXGox6KEnGr0/iqlc0Tq07KtK7NLSMpyVWVvMqdGlaNmsyd0IEL
         EAKJ+iqmW+90D+RTqqO44Xn67Pp5ewSPvVfK+7UVY83Cn1qr8VGGrS2XY1TQfJPXgmje
         489xxtGNzqJDDhrIZrhKq90RHMVJMIl9ixv1is8KrDIIXKJyodyBXgYHfVoUxDy4vOm7
         Z9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695396610; x=1696001410;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4TJHGEmsDY+NAj3iBtyvpvCWy99F2/68mZJZrN4IAhk=;
        b=rOgKqDxGseBX2wt68oqwsvf75/RKiQ9y5yc+hEgREY64Xbmv2OkQBWbeq9VvJE8R9n
         TL8RBYiEFthSv8C/Q+lqD1tZ2MTS6Vi568BcyTjD+cPmMfEVlYYYzgsQhBal2NSWNmBC
         FO4sYZdic4Y0ro71ChsSllQ9wd2d/17frFirpD36fCeSwnCfhFKU3JanWLflcZ2mqMFH
         0GGFIQDlzdb2k7sBOz5AdnTrLf3wtd71HncyLPkH/SF/geHE1+ek6W3gNq3kVOAJETTf
         c0vFU+rFRlkEm67rfH5tOJ0vtPUXAqiuCbxIYq26fSg2qpHR+1blT8nyhDXTGKLguTa6
         vPlA==
X-Gm-Message-State: AOJu0YzH9rPo1BPeK+Z/YnG+Fr87G6Y+YSiafeD0838cYoDgM2nDuDW3
	AnvfBeVNIY8Ot7hLmwk48EZxvUN3Jl8=
X-Google-Smtp-Source: AGHT+IFpSNDfMbLwVAsfGTShXUDcaUIcejeAJrl4tdhrT/QF27f/mmhhBUZ++d9tBy4mUoUcC2tnuA==
X-Received: by 2002:a05:6870:ad84:b0:1dc:86e5:ebd7 with SMTP id ut4-20020a056870ad8400b001dc86e5ebd7mr3924903oab.58.1695396610376;
        Fri, 22 Sep 2023 08:30:10 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j2-20020a056870530200b001cd20f30898sm1071170oan.24.2023.09.22.08.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 08:30:09 -0700 (PDT)
Message-ID: <650db301.050a0220.81e83.87ad@mx.google.com>
X-Google-Original-Message-ID: <ZQ2y/d2GX9H77Ko9@neuromancer.>
Date: Fri, 22 Sep 2023 10:30:05 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, neil.armstrong@linaro.org,
	sam@ravnborg.org, Chris Morgan <macromorgan@hotmail.com>,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH V2 1/2] dt-bindings: display: newvision,nv3051d: Add
 Anbernic 351V Support
References: <20230809153941.1172-1-macroalpha82@gmail.com>
 <20230809153941.1172-2-macroalpha82@gmail.com>
 <20230810232409.GA1548096-robh@kernel.org>
 <64d648ae.0d0a0220.531ba.5b33@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64d648ae.0d0a0220.531ba.5b33@mx.google.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Aug 11, 2023 at 09:41:48AM -0500, Chris Morgan wrote:
> On Thu, Aug 10, 2023 at 05:24:09PM -0600, Rob Herring wrote:
> > On Wed, Aug 09, 2023 at 10:39:40AM -0500, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Document the Anbernic RG351V panel, which appears to be identical to
> > > the panel used in their 353 series except for in inclusion of an
> > > additional DSI format flag.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  .../display/panel/newvision,nv3051d.yaml       | 18 ++++++++++--------
> > >  1 file changed, 10 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > > index 116c1b6030a2..576f3640cb33 100644
> > > --- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > > +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > > @@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> > >  title: NewVision NV3051D based LCD panel
> > >  
> > >  description: |
> > > -  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
> > > -  this driver only supports the 640x480 panels found in the Anbernic RG353
> > > -  based devices.
> > > +  The NewVision NV3051D is a driver chip used to drive DSI panels.
> > >  
> > >  maintainers:
> > >    - Chris Morgan <macromorgan@hotmail.com>
> > > @@ -19,11 +17,15 @@ allOf:
> > >  
> > >  properties:
> > >    compatible:
> > > -    items:
> > > -      - enum:
> > > -          - anbernic,rg353p-panel
> > > -          - anbernic,rg353v-panel
> > > -      - const: newvision,nv3051d
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - anbernic,rg353p-panel
> > > +              - anbernic,rg353v-panel
> > > +          - const: newvision,nv3051d
> > > +
> > > +      - items:
> > > +          - const: anbernic,rg351v-panel
> > 
> > I don't understand. Is this panel not based on newvision,nv3051d? If 
> > not, then it probably should be a different binding. Lot's of panel 
> > bindings have similar properties.
> 
> It appears to be the same panel (or extremely similar, honestly I don't
> know because there are no external markings on it). However, this
> specific implementation seems to require MIPI_DSI_CLOCK_NON_CONTINUOUS,
> not using it prevents the panel from working. As for the existing panel
> MIPI_DSI_CLOCK_NON_CONTINUOUS stops it from working. The different
> binding essentially determines whether or not that flag is present, but
> otherwise everything else is identical.
> 
> Chris

I don't want to lose sight of this, but I am not sure how to proceed.
What I can do instead is change the compatible string inside the driver
from newvision,nv3051d to either anbernic,rg353p-panel or 
anbernic,rg351v-panel. Then, I can remove anbernic,rg353v-panel as an
enum and replace it with anbernic,rg351v-panel. The gist of this is
that we have a Newvision NV3051D panel that will still be supported by
this driver in 2 different configurations, the 353P (which is identical
to the 353V) and the 351V (which has different mode flags but is
otherwise identical).

So long story short would it work if I did this, and modified the
driver and all in-use devicetrees accordingly? To my knowledge this
panel is only in use on boards that I submitted so I can update all
those and test them.

      - enum:
          - anbernic,rg351v-panel
          - anbernic,rg353p-panel
      - const: newvision,nv3051d

Thank you,
Chris.

> 
> > 
> > Rob

