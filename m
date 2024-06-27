Return-Path: <devicetree+bounces-80745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 712CC91A586
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:43:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1292B1F25E9C
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3371152164;
	Thu, 27 Jun 2024 11:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="BfXNPBdM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE4E149009
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719488549; cv=none; b=ermLYbNWsVDGpQr/5pO+lYCmhpeoIzMhT1ybI0T6MYm2lEpUKHoQWH+kjHoBKKJ7yHRM3nDr9QKs2yKMgP9lZuK6VSGsBg8WAXUC1WMQSbC9OLRbxvW1p6qnILth4OwF15ECewYxvT+vV4Spz7OSZ0UOnl2KWHqR1MqgIeD6izg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719488549; c=relaxed/simple;
	bh=6oEPaSCChudDdQl5CoJDofrXFQKG94CulRBD/mPvurQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kHbMtPZhKa0lemOx4iAb6gM+vby+YfC90J9zXtzL8oZeBrsmTdda5XvI78z0Rn2+pYXJz/RblJypO3KDtdJHpTqj1Zt/iIicma7BWkO1KjoI9fX7MBnoQv7x6YPL075ODYycDP+1i5lWwpTbUc5NwFLHiQHUHmU7B1z1lslVJ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=BfXNPBdM; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-421f4d1c057so61088735e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719488545; x=1720093345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wW5TgJTLJvnOUoVv5AkY93z+u1qC4NhO9SwlIzEGESI=;
        b=BfXNPBdMOpIJnoK2N/EQlW53pJlZZTq/m2iy78wpOZVqJqusGavXa82zeAewo9rI9T
         cfCm/WYeiobdqVsBFEXX4n707R/gXHQqzmjC0Qy4a/RDJ1YkMts6juca8rgyKeuPaiLl
         rAC2md2omUxaZorfFAJCHaBewB6bfvG6M6WeFiJdllmZdPQcgxUnHm8Y/6oAPSGw+3nk
         4IZ5lQLOaBRFElyy6a+zQGzYZqTWkm8y6G4avF/2jhFNj9Jti8fTv+zR26cSUYcSm0DW
         BunS+bqVfqwKk53fBg8Z/0cZFTAmDpznmtXBoaE18WVPCYWryNYvFfRg1bxUltenZaPE
         YR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719488545; x=1720093345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wW5TgJTLJvnOUoVv5AkY93z+u1qC4NhO9SwlIzEGESI=;
        b=PRlvrBL5pBmpO/P0AvKUOw/8TXJLYgUJp7VoCnRXSxiWMZgSspewJUnWcTbqIANFr+
         rfzT8UNb4djHATq0YTXuARbr61Y2adyqnCRpyodEUNNYWO1+P9g1MHobta+cdiMFAH/Q
         PPhUhdo9DS8+DDbJenBNBde7RM0rOlHBx9xJ2s+tTg8biDIAw+4hYfiGWStm3GKWCyZW
         hWmAPS4GTsBUlBk+Lfgix3HknyGpY/M18AtP8JzEmkwWMGdI+bBHCSB9XRaGIDKdhOXF
         QEcX0Vhyh8C/Q+wJ0yHhL7QdzU7dDj213MtUETwpzfkc2eb+Rp2l/ppr9yB9VMR9HJqp
         ThgQ==
X-Forwarded-Encrypted: i=1; AJvYcCX16F2unjSflDRHKoKzzcxBggPzTmZGS95yTRy8ysX6c4CVU/HhmK5UxKhpv0DsWhTSFv5L5jMkyhIjO+cwrRGzDvQTjMriD4qTaQ==
X-Gm-Message-State: AOJu0Yw03I+eRQXw1/tValJY+HnZyqW/6XposF3VHNp9zVSohV/2BaQ7
	xdxx0nctwr4mQeOD1hMjM+nGTXgk7SDDQDqsttMmjuZbAFhUeKIkPXdHaaP2HhA=
X-Google-Smtp-Source: AGHT+IEvpC0QWOSLfFowkg+q3L3PVTJh511qVzvF1jMYGQWw3+qmqIAw5pksjwKTEnW7pydZK/liKw==
X-Received: by 2002:adf:f50d:0:b0:366:e7aa:7fa5 with SMTP id ffacd0b85a97d-366e7aa803amr10088266f8f.1.1719488545563;
        Thu, 27 Jun 2024 04:42:25 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:7fe5:47e9:28c5:7f25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36743585276sm1554749f8f.62.2024.06.27.04.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:42:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: arm: qcom: add sa8775p-ride Rev 3
Date: Thu, 27 Jun 2024 13:42:10 +0200
Message-ID: <20240627114212.25400-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240627114212.25400-1-brgl@bgdev.pl>
References: <20240627114212.25400-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Document the compatible for revision 3 of the sa8775p-ride board.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ec1c10a12470..000037f4a712 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -895,6 +895,7 @@ properties:
       - items:
           - enum:
               - qcom,sa8775p-ride
+              - qcom,sa8775p-ride-r3
           - const: qcom,sa8775p
 
       - items:
-- 
2.43.0


