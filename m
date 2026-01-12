Return-Path: <devicetree+bounces-253959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E21A9D130C7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:17:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E28AA30094B6
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F444246762;
	Mon, 12 Jan 2026 14:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M//UmJg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D1B244675
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227424; cv=none; b=PIKx25yGNPUYJHKvx6/+07Y+m9BZiX8SLR88KvW/GQMeNGnOerHZEvFCoJGHvLoPHmoBcm/c44WGRGlNuENT0l+pE3cStjpRwAOWaR6jkqakz1wfMLUPn3QK0wu5C5t3ipA9EjWe0e7JzlbYjQtvv5yTvHWfZfldDQ8tATjL4QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227424; c=relaxed/simple;
	bh=oobBN1+auz610sw10HqvNqOak/BJA1CD/FOHBMfA6T4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iGxp41cGrMkdYLXXNXsHlooQrPfcW8buXaxQsWZ+M0BC3qeHPDLCSBCwe0b61C7dXw2YNz4px0cWA+2wlH1Git6S7m76inutz0qTpAnTisFqciKGDAmtiQa/wdyMTKNQ4rk64QouAAYJonDBEZQev9YhMBHGKN1AGe8hRRNZNYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M//UmJg0; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47a8195e515so46309205e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768227420; x=1768832220; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bo0nvDkmN3KsM8j/PrnTVe1jyTFQO6nL3NdErnbtENs=;
        b=M//UmJg0a/Sf1hjDStAeQ4hnszo4P3HM7tQtsgx/fLpD8qYkW2qP5dR9MJIJMnp1lV
         bO+KBbO8IMZucjtBVP+KLhXS1jwaTZ+w325J3fdqSF0v3Ids01wA+Z/LPayaktqtbDq4
         cdYIprCSnncEAEdBvNy9+GAdfaZg2wjY7LHD95Sq7Um46yI/7yVHLke+YvX/tvBRNQxR
         vGQSWtarwrLr+xrZvg/MPsQhwtvR38l4Q6Ic6tagzPr5nN5keIhPjIJl4ljjzBHLqhIe
         76hehbbMfyGua1XGP3tP2PlJyGF++AFi4et+Cjobnd8zP3LCrj0PNf86p5oH/YweV6BX
         h4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227420; x=1768832220;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bo0nvDkmN3KsM8j/PrnTVe1jyTFQO6nL3NdErnbtENs=;
        b=SvYOajgEEFHoYZIPAZ/Q3fr1CPhqTCyDSEseMhzSIIkM6jHZrvuaGfsK56iuaVuqrx
         fCyuHHbNpCYLUkuYKWmObLMy7YXLudh2IWm2uAv52Resddl7mXij/EBcz/XuWsjQc75I
         6UcXCKawBWdyV+jfpsOcBZTpGCSK5rdjw8ZB6gi9zNKBySuC1rjU1W3fdM90wDR5Mg9B
         xRrcJzwOrU5cFA58otiDAU+Z0sgNVRSf2bCqEk6aRfxQ5PDVpwtO0VT5w0Vb+3GIpRIL
         X/UowQXIbTI2YYOgTo8Ia+TmOK4Lrv2qPK1lkcLBB4RUsi44jdGgoLomF9G6tGGItZNP
         ns2g==
X-Forwarded-Encrypted: i=1; AJvYcCXzTIgr3eISOd6tDKRLaC88lTR91xyIjiDGA/3cZjINkof24+PJoNParf/PaWLvg7sOr87pGOZTopu1@vger.kernel.org
X-Gm-Message-State: AOJu0YyJTzM5807KfNr0BX9XJ8tEEXZwKjsNCP+SWU+hOTcfs0JCuqcn
	C8vNZPgaqJdk4NXv64VQblPycVCAcuOryDy/mqkip911PawkitvtUwNGNnNPJeM3ZnE=
X-Gm-Gg: AY/fxX52g6zwSEO6I/Zu4O2+QcgQ1LWKAnXLOzfnva2cHSODd2CShVlTSzHR5QtKplz
	NorwwmpXxwzpQa9LBF+LBBRihp0407RCGsW5goZvI30c3uvNL18oPJkiWXShZ12AWVAyBgoJLkV
	MC8HXHYRmdBRqGpTR2GbQZjeBHsuznIxsHOW9lntO7+vvBepMSYIRZW9DMLn2baRFd6HRbqi5pq
	v0zHnQb1rMAUFvkJBiOsjK85e3amLEPRnfjf+jtVrmLfpNU/TETYoAhfnU9Sjg4j5UMZyEOJcLK
	Oi3EDWCj5hTa9mbuksYpKbIS/P1Ql4TDu8sgNh7a2O1XOFI0v92g6bPU2+JYaDXDj1ou3nhLmEZ
	XkxaCCBAH/oI/P24phLckRGplRyUBmGImxnLymdgjwCgU4xFW4v8tpbpKSc51fhkAX4r/HfXRLp
	tGp4DyqAgpQalXEzusurzzxRdHWcI4bx8msL2IlnJtPQ7A
X-Google-Smtp-Source: AGHT+IFzvepiXD7vAKBHM7AFBjb08xifNJGQg6KCRPXLe6wDMrhsqgCa+EwfBdw082tzp7w00nRu7A==
X-Received: by 2002:a05:600c:8b43:b0:477:1bb6:17e5 with SMTP id 5b1f17b1804b1-47d84b3983dmr220300675e9.30.1768227420514;
        Mon, 12 Jan 2026 06:17:00 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:4c43:39e0:348c:a72e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5dfa07sm38705096f8f.25.2026.01.12.06.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:16:59 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 12 Jan 2026 14:16:48 +0000
Subject: [PATCH v2 1/5] dt-bindings: clock: google,gs101-clock: fix
 alphanumeric ordering
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-dpu-clocks-v2-1-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
In-Reply-To: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1414;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=oobBN1+auz610sw10HqvNqOak/BJA1CD/FOHBMfA6T4=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZQJX81y3zbCKBEPGlyWFqAKsRBnSRkA5yKgTc
 WjPDffnQY2JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWUCVwAKCRDO6LjWAjRy
 uhVjEACFFzHOLnxP3+zZgClgyLri1r5h31GFhuFx/FtRXQhHQHyXHi66yWBuQq6sUunBy44ub/N
 1rGhvNtm3B5LXaxxeJe0yiau9EItco/lUfghlmhuPXDrYbItTOdQ/RwtYRe5vWxwAcu6tKrZ7l5
 uO2FUNIDHNAB1HkLhnUtLR/PiIRwNlnmkQWmMUEQKiINZ3nhoHwCSUCczGPUd9T4dF2RrAD9biW
 GNGf54TrtlgZEcfff56ew5inuxsNspi4/rvUy8SbDU4sE/UXujW/6l7ASC9DtuCJuN9q3ikR2Uz
 OjTDAIFMdEmjCinsgpMzk9VAkV1NfuezjzgevvutMCboG1DMFSStMt0OIwAkHhYhsSlHHiIFRGG
 EuqCUYn9/ht5VkPM8ONknIPU6XsofVLrcMZJ4D0wc2KSjMT932z9lAR9gYNCGa4rACE/Nadz7fi
 /6+rMNW27KGFwEQF+RFZ2dthDNOEB8BTDS3Gc0XQbYEZhEcAEKFgDyxeTzmguQbPihMoYcmzyNZ
 FQlZxsYoJ78Q78fIqr/Lil92+RIe2EotEIA9AT4yq1fygHcGL/Wvxr3UsFQvmSc40Y3wVGl5ErQ
 5ix7ZKuoe5s2WNjatvZgYQekKZVmpRY7Z1LSHZYicxkBmWFa8FIvJVbdkmCt07kK9Ea2N1rvjv8
 0lQ7kk6wgJBwE6w==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Fix the places that don't have correct alphanumeric ordering. This will
make reasoning about where to add future entries more straightforward.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/clock/google,gs101-clock.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index 09e679c1a9def03d53b8b493929911ea902a1763..a8176687bb773ae90800b9c256bcccebfdef2e49 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -27,13 +27,13 @@ description: |
 properties:
   compatible:
     enum:
-      - google,gs101-cmu-top
       - google,gs101-cmu-apm
-      - google,gs101-cmu-misc
       - google,gs101-cmu-hsi0
       - google,gs101-cmu-hsi2
+      - google,gs101-cmu-misc
       - google,gs101-cmu-peric0
       - google,gs101-cmu-peric1
+      - google,gs101-cmu-top
 
   clocks:
     minItems: 1
@@ -70,8 +70,8 @@ allOf:
         compatible:
           contains:
             enum:
-              - google,gs101-cmu-top
               - google,gs101-cmu-apm
+              - google,gs101-cmu-top
     then:
       properties:
         clocks:

-- 
2.52.0.457.g6b5491de43-goog


