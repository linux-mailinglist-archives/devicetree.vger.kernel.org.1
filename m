Return-Path: <devicetree+bounces-173167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F0FAA7B07
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 118749838D8
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D44202F71;
	Fri,  2 May 2025 20:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xbhPuK3Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56281F1511
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 20:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746218515; cv=none; b=a7kTwvLefqXW/TbPPFykFkwXEbJ35NccFye0O8xXhBtpItew2BSU2Ptboyv2RLzt8qnD/PNuAkWsXpH3ZIW+3PYEPuW9tAxKtyg+N3SfJxHOwbho+JBhAg7NQDKbB0VD6lOAVx58VDWx9vgI6Sp90MKk0icmZMLr9n7FWEA/1Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746218515; c=relaxed/simple;
	bh=MPvPmZh+KI/vX6v8BpTlWha6CK4hH13DLszHrBZcvjs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=baZ7Hi1xIHekXx+C4n9B9WWpOP6UYHa9du42XdUF6KrLUqoZXBdytHBeeF1suIfWbNriJsGDPf9eL9ClK5KmCMmwTRQHgSwqqrqfJV8bDdb3JxOcVVyUQi4xlx7ryg7/rSl/NfmWds2+j1b3K3/aMGEB6adDgJWP+8V3Y2OyhmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xbhPuK3Q; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54e66deb66fso360135e87.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746218511; x=1746823311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPaj/4V7+OOkqE6GFuNlK/kYu1XUR9X/tbZvlr3jjRo=;
        b=xbhPuK3QjtnsjSyTlQVoV2R6uRgGaNLtU8GURPdEVkiX87/NvrHOybPaDIf8HczjaQ
         ypQ/xWpqkK0KgEj4rf5yvLrhfPvXqyz1UpwYKT4mxIi1klT04xArZeMGPdEKw/xgH2lS
         Xs3Bc0MYi93mAaPt4NHCxHS0ILewxR9cxOl5Z0qJCatKPB5Tr53+sSjE9lVBT8+RcCyH
         pgx+HSEn5b1hxEqv3ZRFobmkRxLqqtZuK7mU9Vk4Dj/Fa+i6w0q6baVREYajDe439QL6
         GAeoSW5JQncKpYKkWDEkV2/q6dRHogtzHlVhtVypebUMvgAfdwhUHtH8BL0SvOM+9KZT
         1P3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746218511; x=1746823311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPaj/4V7+OOkqE6GFuNlK/kYu1XUR9X/tbZvlr3jjRo=;
        b=BskJXHp3J+NY/ivzgUlYnpvprvaBgB7OEdthRi9nc7RJ01cV/m9UiPOAAnaBG7D66/
         YPsoVzsJNghT4LPxdmeozYwHA7mZknIhs3yIWfdbZZOsX+GIdqL2tMMDoJQJxED3920Y
         ZWsYNyYgZeQM9ti/7hPcodWHDeCz2dnyK1yEFSfwIOFQX6Foqe3IwrqW6259E71eaKRr
         uurMGdzhtlYK3dQMyyQj8q60KNa6FI1/vJGCfR9B2K7alLVOBHc7a5+Jbh2HA83oWz9Y
         IlxTnSCPe6mIgNq+Gbk1X5d0fuBdh/2xo+JmHIUoJo5vJWxkQccGzcgyZnxV7v/1HVv0
         obLg==
X-Forwarded-Encrypted: i=1; AJvYcCXsbWZU0tg1+AnqooLP3uw7TraeLc9brK+cymRB+i68/6PHtBqC0Lw7+169cEBC/LXDqriCdkqeRxjx@vger.kernel.org
X-Gm-Message-State: AOJu0YwW+zskvWf7oZoDF7TYj4JBjLQMfQCsmN3JAGta5iYC+DZ3SXma
	B3fyhP/6Vfwb6Uul+NstlPc0ghvsrGe+uNQKkcFjCupkV45c+dtAvzuN92zydLg=
X-Gm-Gg: ASbGncsjMnkssDlrbXgaVwKsvR/Yqr6TtQ+I3S8WuDLg0Z02h6+Fsz63th5coeVWy9t
	WZq9Cm8uBCTimuZkKAQCS/35pZ77YA6LaKs13HMLquyXwaLR5NWq5421z4HSGYRoJmZEvVJox1l
	q6uMnUYI7WLNJ/o3Qt7ez0OW23petdnYECOGyErL4coJNh9e2f1rG0Aa0TTfJiIzS9RNLUT4tCS
	AJjqdg5+FFIg75KgMp9d677cbXHYSUxR0NHeXy0PtXixgNnFOJibWs0mLUpSB/DYxfFwuKaRA5M
	lAg9QulFw/OaBC+gsrBolowM96VyGuLBKNQNu1R8Y0irf/q499L3vLRDcNnh8ExuQX8RFZW4lo7
	SjsTAIwDk14p4+6D2I4RUO8yphdiD3Q==
X-Google-Smtp-Source: AGHT+IEs3e6sj7jJlfP80Impdxq7EHKBnH+AAwUJDBb1D4J05e7jVTpLlGxeHYR91oREpm9Ef+xn3g==
X-Received: by 2002:a05:651c:221b:b0:30c:40d6:f564 with SMTP id 38308e7fff4ca-320c5701790mr4917621fa.9.1746218510798;
        Fri, 02 May 2025 13:41:50 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32029017825sm4675301fa.40.2025.05.02.13.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 13:41:50 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: media: qcom,x1e80100-camss: Tighten the property regex pattern
Date: Fri,  2 May 2025 23:41:40 +0300
Message-ID: <20250502204142.2064496-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are 4 CSIPHY ports on X1E80100, it'd be preferred to tinker a too
loose the regexp, which covers all these port names.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 113565cf2a99..680f3f514132 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -133,7 +133,7 @@ properties:
       CSI input ports.
 
     patternProperties:
-      "^port@[0-3]+$":
+      "^port@[0-3]$":
         $ref: /schemas/graph.yaml#/$defs/port-base
         unevaluatedProperties: false
 
-- 
2.45.2


