Return-Path: <devicetree+bounces-7005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904AA7BE83D
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43B25281A9C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0B438DD1;
	Mon,  9 Oct 2023 17:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lCqTeXS0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1C347D0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 17:33:16 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABD57124
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 10:33:07 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4053c6f0db8so44498735e9.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 10:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696872786; x=1697477586; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcMcyZKlnP4WspTSCi1Haubc/6WCYhDr1nk35xCXfrc=;
        b=lCqTeXS0Gb+SDsxC5r2gjKbbdB2JAKiEwUJSLiY89Fhyvr9b6eo9XPmk5L+d6GNvci
         /YRGySdp9hmO5y+DDCOtSpsQKE53oicIrlSxbg6IC0gQqyDCdy3toOVkauWpI7cLohO9
         pnRICb2OIEuFOKDM8vqUxMdTm+25UqoJgbFFuGJaiiNTksOAgGGK5OH05flTlnv5Xlmv
         r0FbamdDSJDdl4tl4bnzxW9olVhNcbTOSu36AZ45rj5Rbsh6pa8qWqR0ZpLI80MElJwi
         Xdpv6pMFMijxfxKu9KiHGyFOCM3rD3jTrzkZBvueL6quVKq1FClsOV/OFkiaAnuY0Hfs
         KzBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696872786; x=1697477586;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZcMcyZKlnP4WspTSCi1Haubc/6WCYhDr1nk35xCXfrc=;
        b=EcXrP/RDICrTYBql0RTy4XlhvqrZbHlqzdOtAWU50biswGCYisOnlODkIVWTOlAF3/
         kdCDTN9rPhFdb/mWYFEdURIoaDPIHKI9dHnQC7aDY6xBAZxzPaeenHrwMiOpscwSGULK
         6YUIAnS8dXUCLshsq6nnjz4NRDD5J/cAKtApHvkrd1r99NAayojUM7fVCMxEeB+KUX5j
         IkAIo8sHWF1pZE9scyYNl6eeDeizQjzFaQ5wBBz0kGim+Kzo4WULF+TO/8A5+VBlR9ic
         tHpMnXy+O5S1pyPpb76i/8xYQCESKqrZki/grjykSIOVa7elVOMs563VXHvlUeognf8E
         rOcA==
X-Gm-Message-State: AOJu0YzUxIzJh0I/YKFUaiIHLdEeT7H7Olq90mR7X8nOmE2NVrjB0ly8
	w6NSIjcvd7Pao4JsmQgLLZWQfw==
X-Google-Smtp-Source: AGHT+IFXMVi+f/zKGH6RmJTpFPuSVC2y6U19+gQuZGXDePsTdmR3HwCI2zSRqiKT7AkLvgLWc13Yyg==
X-Received: by 2002:a05:600c:2a4e:b0:406:3f62:e591 with SMTP id x14-20020a05600c2a4e00b004063f62e591mr14788311wme.41.1696872785863;
        Mon, 09 Oct 2023 10:33:05 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id n22-20020a7bcbd6000000b004060f0a0fdbsm14095109wmi.41.2023.10.09.10.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 10:33:05 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Mon, 09 Oct 2023 18:32:50 +0100
Subject: [PATCH RFC] dt-bindings: display: document display panel
 occlusions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231009-caleb-notch-example-v1-1-9e0a43ae233c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEE5JGUC/x2NwQrCMBAFf6Xs2YW0oYpeBT/Aq3jYxBcTiGlJV
 Aql/+7icQaGWamhJjQ6dStVfFNLU1Hodx35KOUJTg9lGsxge2OO7CXDcZnePjIWec0ZHIy1YQT
 GPQ6kpZMGdlWKj9qWT84q54qQlv/qRtfLme7b9gNtqYZQfwAAAA==
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Caleb Connolly <caleb.connolly@linaro.org>
Cc: Robert Mader <robert.mader@posteo.de>, Guido Gunther <agx@sigxcpu.org>, 
 dri-devel@lists.freedesktop.org, Hector Martin <marcan@marcan.st>, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 asahi@lists.linux.dev, ~postmarketos/upstreaming@lists.sr.ht
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=10493;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=rhVSYBZeAquBrfJRb865MEo3MYIxY0W6Tw/e0hrrO6s=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlQVy4CDzyL9djglr7sw68mVayEBM5uvCGzpZJ1+vSVkm
 aVPkMetjlIWBkEOBlkxRRbxE8ssm9ZettfYvuACzBxWJpAhDFycAjCRoNOMDOsZXu7Z6biKb2/J
 7S3K7n7RYvyTX55d9fw89zTPm9sOiOxl+CtrYKLz5nJU1/anZcefXXt/3bkw6vVJD8GK2Utjtqm
 f/twMAA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some display panels found in modern phones and laptops feature
non-standard display shapes with features like rounded corners, notches
(sections of the display that are cut-out from the edge), and cutouts
(such as circular "hole punch" camera cutouts, or wider pill-shaped
"islands").

Some discussion has been underway previously on how best to describe
these features [1][2], including a reference userspace implementation
using SVG paths [3]. Using this previous discussion as a jumping off
point, this RFC allows for describing the following display features:

* Corner radius (on a per-corner basis)
* Circular or pill-shaped cutouts
* Notches with arbitrary shapes

It's easy to make a case for only using rectangles to describe these
missing parts of a display, however this severely limits their utility.
Describing display occlusions as accurately as possible allows for a lot of
useful UX features. For example, displaying a ring around a hole-punch
camera when it's in use, or wrapping UI elements around a notch. These
behaviours are only possible to implement when the dimensions are known
with near pixel-perfect accuracy.

Cutouts are described as rectangles with a width, height, and corner
radius.
A radius of half the width longest edge will definitionally be an ellipse.
This simple description is suitable for describing hole-punch cameras,
as well
as pill-shaped cutouts. I'm not aware of any devices that can't be
described like this.

Notches are a little more complicated, they usually feature convex and
concave corners as well as straight lines. Here they are described as a
sequence of optionally disjoint arcs, where the space between one arc ending
and another starting is inferred to be a straight line.

Each arc is described with an X and Y pixel coordinate, a radius, and a
start and end point in degrees. These arcs can precisely describe the
shape of a notch, and easily allow for a basic bounding box to be
derived using the min/max coordinates specified in the path.

Some displays feature partially occluded edges ("waterfall edges") where
the screen bends, it may be useful for user interfaces to avoid placing
certain UI elements like buttons too close to these edges. These edges
are described by a distance from the edge where it begins to be
occluded, and the number of degrees that the display curves (this
directly affects how usable this edge of the screen is).

[1]: https://lore.kernel.org/dri-devel/f8747f99-0695-5be0-841f-4f72ba5d5da3@connolly.tech/
[2]: https://gitlab.freedesktop.org/wayland/wayland-protocols/-/issues/87
[3]: https://gitlab.gnome.org/World/Phosh/gmobile

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
Some folks have previously suggested that this information belongs in
userspace and not in devicetree. I would like to be clear that
devicetree is for describing hardware, and parts of a display which can
never actually be seen are very much properties of the underlying
hardware.
---
base-commit: 268c4b354d66908697299063c44c0b553b01d935

// Caleb (they/them)
---
 .../bindings/display/panel/panel-common.yaml       |   7 +
 .../bindings/display/panel/panel-occlusions.yaml   | 182 +++++++++++++++++++++
 2 files changed, 189 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
index 0a57a31f4f3d..6ea52a031872 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
@@ -150,6 +150,13 @@ properties:
       controller, this property contains a phandle that references the
       controller.
 
+  occlusions:
+    $ref: panel-occlusions.yaml#
+    description:
+      Some panels have non-standard shapes due to features like rounded corners,
+      notches, cutouts, and "waterfall" edges. The panel-occlusions bindings
+      can be used to describe these features.
+
 dependencies:
   width-mm: [ height-mm ]
   height-mm: [ width-mm ]
diff --git a/Documentation/devicetree/bindings/display/panel/panel-occlusions.yaml b/Documentation/devicetree/bindings/display/panel/panel-occlusions.yaml
new file mode 100644
index 000000000000..0932026bbd8c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-occlusions.yaml
@@ -0,0 +1,182 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-occlusions.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for describing display notches, cutouts, and other occlusions
+
+maintainers:
+  - Caleb Connolly <caleb.connolly@linaro.org>
+
+description: |
+  This document defines devicetree nodes that can be used to describe
+  different kind of display occlusions such as notches, camera cutouts, rounded
+  corners, and other features that may require special treatment by the display
+  subsystem. All pixel values should be given in the displays native resolution.
+
+properties:
+  $nodename:
+    const: occlusions
+
+  corners:
+    type: object
+    description: |
+      An area of the display which is fully obscured by a notch.
+    properties:
+      radius-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Describes the radius when it's identical for all corners
+
+      radius-top-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Describes the radius when it's identical for both top corners
+
+      radius-bottom-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Describes the radius when it's identical for both top corners
+
+      radius-top-left-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The radius of the top left corner in pixels
+
+      radius-top-right-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The radius of the top right corner in pixels
+
+      radius-bottom-left-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The radius of the bottom left corner in pixels
+
+      radius-bottom-right-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The radius of the bottom right corner in pixels
+
+    dependencies:
+      radius-top-left-px: [ radius-top-right-px ]
+      radius-top-right-px: [ radius-top-left-px ]
+      radius-bottom-left-px: [ radius-bottom-right-px ]
+      radius-bottom-right-px: [ radius-bottom-left-px ]
+
+    anyOf:
+      - required:
+          - radius-px
+      - required:
+          - radius-top-px
+          - radius-bottom-px
+      - required:
+          - radius-top-px
+          - radius-bottom-left-px
+          - radius-bottom-right-px
+      - required:
+          - radius-bottom-px
+          - radius-top-left-px
+          - radius-top-right-px
+      - required:
+          - radius-top-left-px
+          - radius-top-right-px
+          - radius-bottom-left-px
+          - radius-bottom-right-px
+
+    additionalProperties: false
+
+patternProperties:
+  "^cutout(-[0-9])?$":
+    type: object
+    description: |
+      An area of the display which is not directly adjacent to an
+      edge and is fully occluded (for example, a camera cutout).
+    properties:
+      x-position-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The horizontal coordinate of the center of the cutout.
+
+      y-position-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The horizontal coordinate of the center of the cutout.
+
+      width-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The width of the cutout in pixels.
+
+      height-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The width of the cutout in pixels.
+
+      corner-radius-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: |
+          The radius of the corners in pixels. For a circle this should be half of
+          the width/height.
+
+    required:
+      - x-position-px
+      - y-position-px
+      - width-px
+      - height-px
+      - corner-radius-px
+
+    additionalProperties: false
+
+  "^notch(-[0-9])?$":
+    type: object
+    description: |
+      An area of the display which is fully occluded by a notch.
+    properties:
+      path:
+        $ref: /schemas/types.yaml#/definitions/uint32-matrix
+        description: |
+          Sequence of values defining the arcs which describe this path. Lines
+          are inserted between arcs that don't directly meet.
+        maxItems: 8 # Ought to cover most scenarios
+        items:
+          items:
+            - description: X coordinate of center point in pixels
+            - description: Y coordinate of center point in pixels
+            - description: Circle radius
+            - description: Starting angle in degrees
+            - description: Ending angle in degrees
+
+    required:
+      - path
+
+    additionalProperties: false
+
+  "^(left|right|top|bottom)-edge$":
+    type: object
+    description: |
+      An edge of the screen with reduced visibility due to a waterfall design
+      or similar.
+    properties:
+      size-px:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The distance from the edge where it begins to obscure visbility
+
+      curve-degrees:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: The number of degrees that the display curves.
+        maximum: 100
+
+    required:
+      - size-px
+      - curve-degrees
+
+additionalProperties: false
+
+examples:
+  - | # A panel with a large-ish notch on the top edge, and different corner radii
+    panel {
+        occlusions {
+            notch {
+                path = <360 8  10 0    90>,
+                       <435 10 20 270 180>,
+                       <645 10 20 180  90>,
+                       <645 8  10  90   0>;
+            };
+
+            corners {
+                radius-top-px = <30>;
+                radius-bottom-px = <40>;
+            };
+        };
+    };


