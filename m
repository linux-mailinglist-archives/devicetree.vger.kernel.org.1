Return-Path: <devicetree+bounces-7401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAB47C4081
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D24B9281509
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 20:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F89225DE;
	Tue, 10 Oct 2023 20:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x4U9APbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54AA32186
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 20:00:48 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF555AF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:00:43 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3214cdb4b27so5764837f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696968042; x=1697572842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8LZW2a1/agOb4EcyOBgjrAObDp3oKGc9wtM05/IHU/g=;
        b=x4U9APbJ/AQ2U7DLAUAT9szbYXdZFpWC6XwFW2CAg5p9gziQZUm6v4dL1QQUJ7f3lh
         PCmDho0NJAQPoxdobrc5IPRlqa2Mc94c4U3SpMAjJnlZMbdYTUUeLssg7wIlKtnId8nU
         8Bq20FukRg72/AZuS0vXThnkHTA3RqjQRYepQdbb482Y/MlkSzIvTF60WZ6QsV3BRKJz
         SAMSft9oJHNDOaVKxoqSBczFhg6I9S7GUATo+RHRBGctIIjnXSdJ0fBauW46JLzPY3C7
         92NKpY8nHiuMycP89R3DOtrcz0ji/Fn+uYnli9u7tEwqAjT2VMoPW1SP/z4FKEYF0tcd
         /BaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696968042; x=1697572842;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8LZW2a1/agOb4EcyOBgjrAObDp3oKGc9wtM05/IHU/g=;
        b=Xk9ZTQFkmT2ll2aHm9uryhzqWfcLBSOiE5dBucw4yy6jJkcwRz7zvc+Rvs9fnGVU/1
         uu0Urr3LqbSvkA1oVkyIhUsn+s+P4v1h22FfZEzApnIntMiKIYbSDoxTZfTCxfHApPhV
         zckNkNtdis3QcqkTU0nrzC1WEHVZtsTFx8gztgBwVwbQQntMgUcNNLLbb4/B6WKi/rFi
         Kwrn1V8yDhDYBnU0Bav7hbQfqTjcn+6ez1ke6/bZcpaI9svhm9CwSFZkyHY6p5zfjGpu
         lk74woosZ6gGliQWmYWJEeODbGglgZb7GiSqhn4Jl1Bs3t/YJBT+dr8m6JtDXAeYwQLv
         lasQ==
X-Gm-Message-State: AOJu0YznlFRaLgEGhBGALMg8UX6VMKFkPQnh+sTGRvwOmKnKOmHBfZ5l
	56CNTtyZTgLOJXKaR3jiSoXBHA==
X-Google-Smtp-Source: AGHT+IGrlio8/tPiLRiz8NKwjGBpcCT120fSaK2UWhj4XKM6crHlMDQhvNDcQNPiyBk9QRBLqt/mGQ==
X-Received: by 2002:a05:6000:100e:b0:320:485:7010 with SMTP id a14-20020a056000100e00b0032004857010mr16371246wrx.67.1696968042168;
        Tue, 10 Oct 2023 13:00:42 -0700 (PDT)
Received: from [192.168.1.15] (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id p4-20020a5d68c4000000b003232f167df5sm13496634wrw.108.2023.10.10.13.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 13:00:41 -0700 (PDT)
Message-ID: <d7b3ac65-9a67-4f12-9585-260f48b18283@linaro.org>
Date: Tue, 10 Oct 2023 21:00:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] dt-bindings: display: document display panel
 occlusions
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Robert Mader <robert.mader@posteo.de>, Guido Gunther <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, Hector Martin <marcan@marcan.st>,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
 asahi@lists.linux.dev, ~postmarketos/upstreaming@lists.sr.ht
References: <20231009-caleb-notch-example-v1-1-9e0a43ae233c@linaro.org>
 <20231010165258.GA1012576-robh@kernel.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20231010165258.GA1012576-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/2023 17:52, Rob Herring wrote:
> On Mon, Oct 09, 2023 at 06:32:50PM +0100, Caleb Connolly wrote:
>> Some display panels found in modern phones and laptops feature
>> non-standard display shapes with features like rounded corners, notches
>> (sections of the display that are cut-out from the edge), and cutouts
>> (such as circular "hole punch" camera cutouts, or wider pill-shaped
>> "islands").
>>
>> Some discussion has been underway previously on how best to describe
>> these features [1][2], including a reference userspace implementation
>> using SVG paths [3]. Using this previous discussion as a jumping off
>> point, this RFC allows for describing the following display features:
>>
>> * Corner radius (on a per-corner basis)
>> * Circular or pill-shaped cutouts
>> * Notches with arbitrary shapes
>>
>> It's easy to make a case for only using rectangles to describe these
>> missing parts of a display, however this severely limits their utility.
>> Describing display occlusions as accurately as possible allows for a lot of
>> useful UX features. For example, displaying a ring around a hole-punch
>> camera when it's in use, or wrapping UI elements around a notch. These
>> behaviours are only possible to implement when the dimensions are known
>> with near pixel-perfect accuracy.
>>
>> Cutouts are described as rectangles with a width, height, and corner
>> radius.
>> A radius of half the width longest edge will definitionally be an ellipse.
>> This simple description is suitable for describing hole-punch cameras,
>> as well
>> as pill-shaped cutouts. I'm not aware of any devices that can't be
>> described like this.
>>
>> Notches are a little more complicated, they usually feature convex and
>> concave corners as well as straight lines. Here they are described as a
>> sequence of optionally disjoint arcs, where the space between one arc ending
>> and another starting is inferred to be a straight line.
>>
>> Each arc is described with an X and Y pixel coordinate, a radius, and a
>> start and end point in degrees. These arcs can precisely describe the
>> shape of a notch, and easily allow for a basic bounding box to be
>> derived using the min/max coordinates specified in the path.
>>
>> Some displays feature partially occluded edges ("waterfall edges") where
>> the screen bends, it may be useful for user interfaces to avoid placing
>> certain UI elements like buttons too close to these edges. These edges
>> are described by a distance from the edge where it begins to be
>> occluded, and the number of degrees that the display curves (this
>> directly affects how usable this edge of the screen is).
>>
>> [1]: https://lore.kernel.org/dri-devel/f8747f99-0695-5be0-841f-4f72ba5d5da3@connolly.tech/
>> [2]: https://gitlab.freedesktop.org/wayland/wayland-protocols/-/issues/87
>> [3]: https://gitlab.gnome.org/World/Phosh/gmobile
>>
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>> ---
>> Some folks have previously suggested that this information belongs in
>> userspace and not in devicetree. I would like to be clear that
>> devicetree is for describing hardware, and parts of a display which can
>> never actually be seen are very much properties of the underlying
>> hardware.
> 
> Makes sense to me.
> 
> There's similar work happening for touchscreens/pads here[1]. Seems like 
> there might be some overlap in terms of what the binding needs.

hmm, maybe for the cutouts it would make sense to have a common overlay
binding, we would just need to add a radius property.
> 
>> ---
>> base-commit: 268c4b354d66908697299063c44c0b553b01d935
>>
>> // Caleb (they/them)
>> ---
>>  .../bindings/display/panel/panel-common.yaml       |   7 +
>>  .../bindings/display/panel/panel-occlusions.yaml   | 182 +++++++++++++++++++++
>>  2 files changed, 189 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
>> index 0a57a31f4f3d..6ea52a031872 100644
>> --- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
>> @@ -150,6 +150,13 @@ properties:
>>        controller, this property contains a phandle that references the
>>        controller.
>>  
>> +  occlusions:
>> +    $ref: panel-occlusions.yaml#
>> +    description:
>> +      Some panels have non-standard shapes due to features like rounded corners,
>> +      notches, cutouts, and "waterfall" edges. The panel-occlusions bindings
>> +      can be used to describe these features.
>> +
>>  dependencies:
>>    width-mm: [ height-mm ]
>>    height-mm: [ width-mm ]
>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-occlusions.yaml b/Documentation/devicetree/bindings/display/panel/panel-occlusions.yaml
>> new file mode 100644
>> index 000000000000..0932026bbd8c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-occlusions.yaml
>> @@ -0,0 +1,182 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/panel/panel-occlusions.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Common Properties for describing display notches, cutouts, and other occlusions
>> +
>> +maintainers:
>> +  - Caleb Connolly <caleb.connolly@linaro.org>
>> +
>> +description: |
> 
> You don't need '|' unless there is formatting which is significant.

Right, thanks
> 
>> +  This document defines devicetree nodes that can be used to describe
>> +  different kind of display occlusions such as notches, camera cutouts, rounded
>> +  corners, and other features that may require special treatment by the display
>> +  subsystem. All pixel values should be given in the displays native resolution.
>> +
>> +properties:
>> +  $nodename:
>> +    const: occlusions
>> +
>> +  corners:
>> +    type: object
>> +    description: |
>> +      An area of the display which is fully obscured by a notch.
> 
> notch?

Oops... There's a few other cut/paste issues here, I'll fix them all
> 
>> +    properties:
>> +      radius-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: Describes the radius when it's identical for all corners
>> +
>> +      radius-top-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: Describes the radius when it's identical for both top corners
>> +
>> +      radius-bottom-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: Describes the radius when it's identical for both top corners
>> +
>> +      radius-top-left-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The radius of the top left corner in pixels
>> +
>> +      radius-top-right-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The radius of the top right corner in pixels
>> +
>> +      radius-bottom-left-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The radius of the bottom left corner in pixels
>> +
>> +      radius-bottom-right-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The radius of the bottom right corner in pixels
> 
> I think I would define the corner positions the same way as cutouts 
> rather than encoding the position into property names. 

Do you by specifying the positions in pixel coordinates? I wanted to try
and avoid specifying information that could just be inferred.
> 
> I'm not sure I'd try to optimize describing all 4 corners other than the 
> all 4 the same case.

Yeah, the top/bottom case is a bit much.
> 
>> +
>> +    dependencies:
>> +      radius-top-left-px: [ radius-top-right-px ]
>> +      radius-top-right-px: [ radius-top-left-px ]
>> +      radius-bottom-left-px: [ radius-bottom-right-px ]
>> +      radius-bottom-right-px: [ radius-bottom-left-px ]
>> +
>> +    anyOf:
>> +      - required:
>> +          - radius-px
>> +      - required:
>> +          - radius-top-px
>> +          - radius-bottom-px
>> +      - required:
>> +          - radius-top-px
>> +          - radius-bottom-left-px
>> +          - radius-bottom-right-px
>> +      - required:
>> +          - radius-bottom-px
>> +          - radius-top-left-px
>> +          - radius-top-right-px
>> +      - required:
>> +          - radius-top-left-px
>> +          - radius-top-right-px
>> +          - radius-bottom-left-px
>> +          - radius-bottom-right-px
>> +
>> +    additionalProperties: false
>> +
>> +patternProperties:
>> +  "^cutout(-[0-9])?$":
>> +    type: object
>> +    description: |
>> +      An area of the display which is not directly adjacent to an
>> +      edge and is fully occluded (for example, a camera cutout).
>> +    properties:
>> +      x-position-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The horizontal coordinate of the center of the cutout.
>> +
>> +      y-position-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The horizontal coordinate of the center of the cutout.
>> +
>> +      width-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The width of the cutout in pixels.
>> +
>> +      height-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The width of the cutout in pixels.
>> +
>> +      corner-radius-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: |
>> +          The radius of the corners in pixels. For a circle this should be half of
>> +          the width/height.
>> +
>> +    required:
>> +      - x-position-px
>> +      - y-position-px
>> +      - width-px
>> +      - height-px
>> +      - corner-radius-px
>> +
>> +    additionalProperties: false
>> +
>> +  "^notch(-[0-9])?$":
>> +    type: object
>> +    description: |
>> +      An area of the display which is fully occluded by a notch.
>> +    properties:
>> +      path:
> 
> Too vague a name. Ideally, a given property name has only 1 type 
> (globally).

Right, and I realise there maybe doesn't need to be a whole subnode for
this, it could just be "occlusion,path-0" and "occlusion,path-names".
> 
>> +        $ref: /schemas/types.yaml#/definitions/uint32-matrix
>> +        description: |
>> +          Sequence of values defining the arcs which describe this path. Lines
>> +          are inserted between arcs that don't directly meet.
>> +        maxItems: 8 # Ought to cover most scenarios
>> +        items:
>> +          items:
>> +            - description: X coordinate of center point in pixels
>> +            - description: Y coordinate of center point in pixels
>> +            - description: Circle radius
>> +            - description: Starting angle in degrees
>> +            - description: Ending angle in degrees
>> +
>> +    required:
>> +      - path
> 
> Couldn't you just describe the whole edge of the screen this way? IOW, 
> the corners and edges, too.

Yes, I think you could. We could add additional path segment types, at
which point we're comparing

corners {
	radius = <30>;
};

with

path = <PATH_CORNER_RADIUS_ALL 30>;

As a third solution, what about dropping the subnode and using a more
verbose property name:

occlusions,corner-radius = <30>;

> 
>> +
>> +    additionalProperties: false
>> +
>> +  "^(left|right|top|bottom)-edge$":
>> +    type: object
>> +    description: |
>> +      An edge of the screen with reduced visibility due to a waterfall design
>> +      or similar.
>> +    properties:
>> +      size-px:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The distance from the edge where it begins to obscure visbility
>> +
>> +      curve-degrees:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: The number of degrees that the display curves.
>> +        maximum: 100
>> +
>> +    required:
>> +      - size-px
>> +      - curve-degrees
>> +
>> +additionalProperties: false
> 
> 
> [1] https://lore.kernel.org/all/20230510-feature-ts_virtobj_patch-v4-2-5c6c0fc1eed6@wolfvision.net/

-- 
// Caleb (they/them)

