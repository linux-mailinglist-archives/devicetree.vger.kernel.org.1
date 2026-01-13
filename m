Return-Path: <devicetree+bounces-254437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4ED2D18464
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:00:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8FAD30245DF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6A738946A;
	Tue, 13 Jan 2026 10:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dyuvW0NN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4063803C7
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301975; cv=none; b=csDbHpY9YDqfHYNSAAdT45k9IgJKMlER+SHKNubDoye8PFL6kZnRpMus+H07TM/KKzCTyBeNlEfYF+/PIaBioaSZ+cdjjzwz5mlk3n7GEe+mPvzvjV1P8OhhBR/4DRZ8jOYc2FXpjHBgGaXVoDOKUOBjWFuO3pCVT16eAkPWQ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301975; c=relaxed/simple;
	bh=S+ZAPlt7l7qSiwZZJgJDTP5SkN/10VGq32rITKiKJcw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C6a7ytIkAIRhcwtWAE/52UhoVKqi93YEXyD/am2EcVxzP7UR35xPzHzBjg7VEiMRai7LZWthLg5uxHvRTm1Zhse0k/laLszA9xf4rFf31GBSSNVwLgVcqI/+OvyUTbwTUyXCckMODTv4y2xXYDXDNkKgz2+jjaZYrLngLcFuvQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dyuvW0NN; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4327790c4e9so3816116f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768301971; x=1768906771; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBpbiT1UH/OA8X+hOXxnnO4w4MCR9v/fz6fRCvgTXsI=;
        b=dyuvW0NNlWeseETbH3z61x6fBubB8IxrWNvNSTFgSgZLhBhmMGFraO5/dOo+weJhWM
         YKmRu6n2dVxm0NEHoEw23eFp3snyClE3gbUANCTZWNw2N6FySq8oDvzpevGUtwBq9YXl
         EDe8wi5fPEkkXofwNkS8GwWmFGxlD7zskWTjKR+BXcQhgnuF08/5iITWBlM64ig/2p5V
         X69ryR2VvAnUZkwpqG8GT0o/fLTGgMByQ94PFwqqV9q+JwzofpYGOE99rHro9OGGWu2v
         tFA99Y/Qa3wSHi2iOf3/YVZGjYibMo4Xgad2zsEdVzyMKA+IdNctsQ28FnG1uP7BZqYx
         jXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301971; x=1768906771;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eBpbiT1UH/OA8X+hOXxnnO4w4MCR9v/fz6fRCvgTXsI=;
        b=ai1MGPBJx4I4eM0mYibERbQqfts+yoRGrwLo+PmzaB0qcFQFGHK4FmTbFSpV2ak1h6
         n436baonZ/xD4ja66yPaiLOVZfl5hkwcf3y6Bw60n30EdFBBS8qhCPNYxSuOFPSPSIts
         EJzVtvFM8zZacB+X8gVgXGFuEmlfWWmim9QWiiByvG0x5wAYbVqvvmC7jSOIqvzqJm7a
         DFwV7nn+ZYpv3Nq2+13fBH5H6WcwbFNrGSJxCv/jAvEatr09mniZZZeg83vA/y85evgu
         7qjjvvdoOrwqXW3649Et+nOOX8ccuNtOFvblGdfRQCKagUQo5cWtLu9PfUImKqklzidJ
         eH0w==
X-Forwarded-Encrypted: i=1; AJvYcCVGXAuF/lS2RUR7Tixp8gEzcHLhx/u+bUS4YTolVthnufZPu2PZXmhREI7QJkXZBvsRUvcpT2+q4lcJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/SVf8bfwWGPC2Bx+MfBwwiVZzwkH5FP4GlfbOBYeu5LPvzheb
	ofe1sNntyyo8XZghfGxTauy356WPtq2YktJUw0qghlSU7U2B+LLmOApCDOuOAzXYkDc=
X-Gm-Gg: AY/fxX7ZWtV2a0Bo6n2nygD/4dcwhsK684/cg9R4wjuPrQXnBszmEy0SBzaNl9/3KI0
	Rx/Sq59D3DR8atXLe95YjLGDt93frX8RmSi2rMU7I0cTJdQGgDpSzi4KqbahZIrQ8YS4vT1ADNm
	9SEzkJ1pNiCHzBSK/nrqdCV+IkysPY+TgY46qztdRUomfOybhxii7dJGHnhXEvuFe7TLktyE9M1
	WMWaTKXMJZHWFEAloJ2yAtOBb4+wdIG60KJ1CKSHgQ0FsnVM+e3b59BOm4RMMD3lgooJVCbCp4q
	ijQCC8fvFT3/mkPuB1nSbUfGCRysbxVHX8fQzL4HLvW5xuklh1u/NCGnl0nCBi6elkJJFJabkpT
	Ge2Eop9a0SEWaw46Ls+DNaVWIcN2KSCh0EHQLcdoNfLwdgKzgA42ydHYOPOgpf8pIL4/oasrEug
	wBR7/l0ZNztxZdbUG62W7d8hB/Tcuei36Dmourj4102Kc=
X-Google-Smtp-Source: AGHT+IHSgDVUH9/dhiZYJxnIUorYOCelZMoqtmXYQkautt0XBMKPQj25UwiE3+iF4Z6lVVM+z/bN1g==
X-Received: by 2002:a05:6000:400c:b0:430:f6bc:2f82 with SMTP id ffacd0b85a97d-432c374f180mr24842546f8f.30.1768301970623;
        Tue, 13 Jan 2026 02:59:30 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:3454:384:9eef:8e29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm43729881f8f.31.2026.01.13.02.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:59:29 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 10:58:58 +0000
Subject: [PATCH v3 1/5] dt-bindings: clock: google,gs101-clock: fix
 alphanumeric ordering
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260113-dpu-clocks-v3-1-cb85424f2c72@linaro.org>
References: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
In-Reply-To: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1218;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=S+ZAPlt7l7qSiwZZJgJDTP5SkN/10VGq32rITKiKJcw=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZiWNAam9qhTSzrSHSokiaMfkdqj20X6eKe1Mi
 PmqAX1HWVWJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWYljQAKCRDO6LjWAjRy
 ujKLD/9z6NjG0NY1i7Yp0KdIYiIkkBLtIA97IGmloAyQ4SVzpinID21BoZZuLQ/fD+mvCkoyKM+
 idFWAL/vbyBcU3uJYVAWte8JmCtfCgwACJjnbU9alawn/BQ6BGBzSfSdcbYJe+yX8XD0cse9xIN
 UzWwVp8QS8hz1Hdl2H+9fRGNKklKeSfcEdd/osHQ3mN1pKfjnw16nVfRg+Z3lvFAY/ntDBihQIs
 RAcavLvBSz82pZ/VZ0cjOZ5hitRoJPldq8fKtjnk3v1hIJhIQ1rV1D7g7VqV6yz7O2Nekq/gqkq
 iJorEXEuSvsoVWZxFXjN7EKToBEkH5mrVG3q0k7PgKvQhqJMGlxB9FWR689muzvRyHXUXlnqj0a
 Cljrw2z7YGY35zpsEDjCeEdlJPFr1nV+Qv7Wnrm0PuWkeppIrJ2JinPeeJ4KPLMJZYacyyPwZQT
 Wy8FbArW4d9ZIYa0xM0XT55UhIj+5x+M3wKCM3nmRzRQrx8b50EVwsffJx1cfXKuyOcGFKGEf/y
 jIajZcNgfdS3uOveMknn02Mnnj2EoUFpmQOF7+2sxg5jr/9xPuLzkFtgiMAg0YZrx1qlluXaKR8
 glzbQP4MvEhATjxQ/BWi3uIF0XGl8nFIiwe2Y6wtuWPVlYIC86AxS0ITG6eTQ37Z3AnP8Gk6GX1
 8RlhcnHtRlwA3Mw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Ensure children of cmu_top have alphanumeric ordering. Top is special as it
feeds all the other children CMUs. This ordering then matches the
clk-gs101.c file.

Reviewed-by: André Draszik <andre.draszik@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v3:
 - keep 'top' first and alphanumeric for cmu_top children (André)
---
 Documentation/devicetree/bindings/clock/google,gs101-clock.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index 09e679c1a9def03d53b8b493929911ea902a1763..c41043c7d25200fe947a2ca5b2780e4dd50ad433 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -29,9 +29,9 @@ properties:
     enum:
       - google,gs101-cmu-top
       - google,gs101-cmu-apm
-      - google,gs101-cmu-misc
       - google,gs101-cmu-hsi0
       - google,gs101-cmu-hsi2
+      - google,gs101-cmu-misc
       - google,gs101-cmu-peric0
       - google,gs101-cmu-peric1
 

-- 
2.52.0.457.g6b5491de43-goog


