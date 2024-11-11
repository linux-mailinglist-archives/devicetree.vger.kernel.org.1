Return-Path: <devicetree+bounces-120650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 270809C37A3
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 05:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D424F1F21D8C
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 04:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 834908249F;
	Mon, 11 Nov 2024 04:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UYUj0RTu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0222336B
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 04:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731300903; cv=none; b=YoPqXEvZNbYdCoqNYBHMACwNtU0AWi54RFvGoom5VFg6uwCOCcp778+qy7IERaOeZSX32LIHBRTt2B1VIdNOL2V36NpS3ucH3tqAkU7WCswQU2YUw06bFto5Ld/8udBf9sfpbVu3hmwhObKu0zSEX/4Hnple8LMtACsuOu3SW9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731300903; c=relaxed/simple;
	bh=wgtUh2n1MeOUW1a+9r0Vb6yhmLzJbzjzPptIR7aGYas=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qPnepHiK02ozaMJIHJiXl/OUwMZ2t1/ew+iTw/iYl56NqBn9hp0J8vF5Ub+siUj33j5EEx95ODcF5qGABZDKtTZt4RqA8bsaXT43Yq9KKex031dYYAC4DZ/olA3tt2/xxTo3DpFlnisOgnJb+ZlzLo3p2L518lJMABoEkG2YXBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UYUj0RTu; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7181b86a749so1671770a34.3
        for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 20:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731300901; x=1731905701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RM89Z8X1J9m/vAfwktJr4x0l9qOUQLpLqVFpzBQlXNg=;
        b=UYUj0RTuG8Um7KdP/3+qrCOkrpUBy/UVHh5EmFGQIehthDdB6uplq2hyflxCl5VjpE
         FzZEnGJCwo7t7VCaEfCUW1FfkCs9lvSkR2ibZaDOw8M5f3n3ePiYJv3YRch+lSdEPS6T
         v6MuGtHiEKbhE7VyWXI+BrA6CcrR6zHRbXTkiiK2ognUlbBxgdgP46Q1tSKY1hpg1qr7
         l6fkVr6PFxIMNfDzcwAMAKwUhr3qbSwRHg5a00PmBEtwXmy8zNWpXG8kJjgP+IbxvXul
         KTuldSikBqwbrDczOb7gYNUXO+k4SbKX9lXHxiBKh2Lp1dcPnRehnCXGb7p4Ll6TpjzV
         KMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731300901; x=1731905701;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RM89Z8X1J9m/vAfwktJr4x0l9qOUQLpLqVFpzBQlXNg=;
        b=s4rMvGpot45wz1RhJHw2ciEAJ994M+VJk4bkT0pZXgrtDBdT5DaYvRzrrOibOrJH1Q
         QksdZ/qQjBZ7dNgei+5M7ZckkaHZZqxPF7y0nqKtn7hmHmk8AoCs/6MtIsR2LTylQnpg
         JOIknWFHVpPgKBd1GiHmOOBJ36n/2aXH/8JlmqSOVHIySiEPyXqOdawLZB18GskbvTS4
         shm4uh0enEVdFWpth3TTcBtQX/GJlevcFgOIE6tR1Cewee/HKxxC57CH2JqMKe+C+MQ7
         SsWnMuFTVz5DrD47eAoCADfu82r/K6JnB6LCPyfuSWQIjblWEXKZ3R88G9efUfOuUKgb
         aB9g==
X-Forwarded-Encrypted: i=1; AJvYcCXdU+CVs+n4pJXlvPrgCZjiSS84Qsjmm76vSDKUy7NtAlTzy9mm85hprP8WnLiPIJN/mnzw2nmfukPm@vger.kernel.org
X-Gm-Message-State: AOJu0YyLzgMq/zmn5id3lZfCFYOhLNJPoCwo+e4vVce6NVWC4M98obDl
	BaJ9ykFQ4Q/0m/PA623ynpewJWUw7W0b0nk9mksGHb8eG+IY3yfk
X-Google-Smtp-Source: AGHT+IGJljlRh/Mfy7crqu/pWQzecRFC7oqT3sDgsTUU9vusu3hLddExKcAbC5V7MC6l+cGlQBJFKA==
X-Received: by 2002:a05:6830:9c3:b0:710:edf4:a6f8 with SMTP id 46e09a7af769-71a1c2088b5mr9756225a34.9.1731300900973;
        Sun, 10 Nov 2024 20:55:00 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:9ab7:85ff:fe20:5865])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a107ebd11sm2089439a34.10.2024.11.10.20.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Nov 2024 20:54:59 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 2/3 v3] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Sun, 10 Nov 2024 22:53:25 -0600
Message-ID: <20241111045408.1922-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111045408.1922-1-honyuenkwun@gmail.com>
References: <20241111045408.1922-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588 similar to the Orange Pi 5 Plus.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a5a8f8bb9e48..82fbb22de207 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1070,9 +1070,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Plus
+      - description: Xunlong Orange Pi 5 Max/Plus
         items:
-          - const: xunlong,orangepi-5-plus
+          - enum:
+              - xunlong,orangepi-5-max
+              - xunlong,orangepi-5-plus
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.0


