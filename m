Return-Path: <devicetree+bounces-188921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C30AE6112
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:43:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82D001B6083C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7313B27D77B;
	Tue, 24 Jun 2025 09:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="roYw0110"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02D827C144
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750758189; cv=none; b=drqEG5Lteor6RUQZzIBJKvSAgOE9GNGkcSG7DMYq0JjitgJDtbaqyzg1hX5JmjldZAYzaLiinDzCHa49Y09DVyb8Ckf9HAVdvlju8ZbkNm2/nmN4b3kbmbQdDgBZHyz88KUnxFR8/6dRT7t0pe2bsPUnCdsMInLQxb0Kw3uaL5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750758189; c=relaxed/simple;
	bh=vc4T3W18PvkFg0rj79V12KCNRxUBkAeilmfIoZ3rL50=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FP6SW9DOuDO/Am0Y89znzOBY0f6OYWYztC0ZogQLOlyOt3C73Atx8fcsIFDJvcSf+/s8mIm5ucHgvEQYt1rfxFwiV7RG6Fn8IZGh2gjBNRAsZVwfnArQecbvbcSfU35afdS5SW7MhLfLcQeYdGYIs6AniTduQhYXmvMT/tluyNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=roYw0110; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-553b7a3af9aso463241e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750758186; x=1751362986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IDaAFYI52ky8ECzgixqMv55kMOm5gQwoYNn82tPUwfI=;
        b=roYw0110eEOIWrAzYN9tmfg6Tnhhr7WtLD9B64/tfbQpXkwx0NZEZci5zGW3oPS8rY
         zFPQ+9CvhXZ44YsUlG6jDWRwgYkjs0IsPkY4NS1YMwh8FEKpPrGwopyYARqo2ycrhDrX
         k52nSlcRqGhkO4yP+9f4OJbjh9J2OKLz4Ql5IXsiLzSkd8lPGvkYOmgu9AeLFno3CTdW
         Gh4E6ovcfiIRSxU/7vhWdxuLFcLI+DUHtMh6qx11AmO4zVx1K6lWrlT97n/S35jBP2Yd
         ovy6K7AmccBQtejUshwhMlA5BWm3mC+rKxeo6W4PhGmo6eZV6MCVJFvwhlfTfLi00TRs
         HH4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750758186; x=1751362986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IDaAFYI52ky8ECzgixqMv55kMOm5gQwoYNn82tPUwfI=;
        b=QzzuxGfEBOZw3/Hw1Nc47FXeuvm0Nh1OyGhKPQIYhui+Tq2hi3y/pgbGeFmKehg11e
         9ZQKcpLkDAUVGkUCnCacfIvpDW3iGkaBbeM58chWcVNb7TZOa6xI5DHPWHHnq9z/fTNt
         2Zu3SOHwYeVttQ0sfi59OX5TuHl4e0YbSs6OY+utm5vvD/jKvgUHTN39yggbPXuBokVU
         z5ze5VkQa/PvZZcvg0JN6Yl2YZCOW6UYKsKOzFEysLCdASxdLr6TuXAcN10D6XIKDtMp
         c859cWxhQ5Ronje72tuPhoG4FXF8wWuDNFv//oSBwFD7VYcer+F56Q7j5lDh0u2AsY1Z
         1BCw==
X-Forwarded-Encrypted: i=1; AJvYcCX/xbBegb8h1SPjlsV1Cmnflosg2xDB12rnsOty5JM/ID07cEZfA3XS1zkY0NvjI9t3zt5lzpmVcH8e@vger.kernel.org
X-Gm-Message-State: AOJu0YyCcmmO++OIhYpgJ0N+l6CQVyWKw5HSu3Y4wbxUJMz3UkSa7s4q
	8lUSCdREzAA9dCks3artHaC4ooLkIZBoDfzgHZRFAAQuvTcpSEF2ZYKkvUgPCXFtL78=
X-Gm-Gg: ASbGncugyVOoFESSO9Oy2B/k0xcOFmIQgd2wJm1MBfNvsz050YLRgQOeueNzd41kjGD
	TOQd7hwj/uJLHc5S0c5UN7/F0C4wAcOiWQJ0eXJ2WVoWAuWsUNjGvYjyPbGckHO/l2xRZDhAXtL
	f31WfhlrfibD+r3TVyUwCXcK6zCwrk1It7/3N6SuZ56vz/QS0Soz2jusoFPipVA/T51lAcoS1+9
	1vrik21ZW1m5YtrvnsHuuVJkMkeY7FsF5eP29xRo+9zAUsQjf8zTZ/xU9jjKuNqGrw/xJmt/IoX
	WMOoFwls1tcwWNwNTnvir8jSAwjs16czGh2bJyVzKd6NyVFj7L9BIQFDDEM3FyBaafPlsrtl5tD
	P5LjqUjtKDuYYRi38Xb0nj/q/jugJcDOhoiG+6wxpKp8I1cAxRac=
X-Google-Smtp-Source: AGHT+IFB5Y+BNiftWwmBvAOA5kXC+eLDm74Ade7DqALAPV7CezKuc5b/NKdfTZFuJ1jHFwoH9fG+fA==
X-Received: by 2002:a05:6512:239d:b0:553:2a74:b455 with SMTP id 2adb3069b0e04-553e3bb63d1mr1481243e87.4.1750758185716;
        Tue, 24 Jun 2025 02:43:05 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e414445asm1745793e87.12.2025.06.24.02.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:43:05 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: media: qcom,x1e80100-camss: Fix isp unit address
Date: Tue, 24 Jun 2025 12:42:53 +0300
Message-ID: <20250624094253.57441-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
References: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the devicetree specification a unit address shall match
the first address value of the reg property.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index b18c7d1794ed..303c1458d410 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -189,7 +189,7 @@ examples:
         #address-cells = <2>;
         #size-cells = <2>;
 
-        camss: isp@acb6000 {
+        camss: isp@acb7000 {
             compatible = "qcom,x1e80100-camss";
 
             reg = <0 0x0acb7000 0 0x2000>,
-- 
2.49.0


