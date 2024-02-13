Return-Path: <devicetree+bounces-41403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B6F853708
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2CF01C24566
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 17:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEDCC5FDAF;
	Tue, 13 Feb 2024 17:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="a8LOU6lL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E3D5FEE9
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707844608; cv=none; b=h4EK/H6VQla1/H/EvwsTAd9U9nEJ6dKmDPKd8oPz4zGbnO6/jC2I0myfw4gat6awwL4q+997aFVy3/B5zFrHzsQqgdWlUMlHLxZUMwHn5Q8VxV6CKz21BBl9YvX06m0UtaGUjfmRY5Ja31GZXXlCBwHpA366l4qHG1ReZLJWHpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707844608; c=relaxed/simple;
	bh=QDPdkCVb/W0/8L/A5aJcFK0QoHa/hx1mCwUIPfPP/8c=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Nn3c/GW7doccLgwBrm+9IoyORQPa8IIyPb6l0cp5IkMYVvQRPjLiKhc5eHOjMI2HossP++SCORcIgz4Jzzv9e3LflN3tzvc2KryqLJaSJYbEBbe3GYCtwCZRxoakFuv9ASvKFE55WFtslmeIyNiWXi8qPm+rG4c7cMxsZgUuTRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=a8LOU6lL; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-411c93e6bfaso5099945e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 09:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707844605; x=1708449405; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rhxPETmkFw3IENUE+zBAbE/05HwK6Twdv5P1eS9JV/w=;
        b=a8LOU6lLNzVe2BliaSVMpuN45t7oB8PmnqD1gvXZTKbB4dNO7xIwTPIwt9t0EJIVG6
         xH+9cDmaHmIkEDSI5OtwjjrChA3jNNzc9JfJwntxEe4LZJZUEQnodFUDqgJWn8+bPy2s
         YJoZA6JkjoND738rtrRmhk6+mdkT7Le1vZlKTmHt7S9ZX0c1nLC8y+xIrW7nY1iSprqc
         ShlbsfV9x/KS4gbmhZp9tBUY6phVcoFFionWeKZyXESLfEmYv7A47ksDtnBV/BnDX5qM
         7tFzq9JxYO84x+/fj8DC9/Dy+Asfqxo7yFcegm+d3yotNjW9oPZI0NqFkPFvsHFGFJv1
         x7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707844605; x=1708449405;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rhxPETmkFw3IENUE+zBAbE/05HwK6Twdv5P1eS9JV/w=;
        b=pYbe+1bQt4+QWWci24jfkzOerDtt/OhTYDCAv9sGyk2YZ7O0pCmFckh654fJGOozRt
         8+kx4VHK2dHBAn/ZgHrSGhlR5uq0opTqMaTIexhm5wTWv4iyrHiTM4ZplvTb6ho9KbqS
         l0gEDRfdIiSmoIUdRPfInNUbAh94FKaNB+mBwhBoCZkWINFfY2u2Eb+2Se84EWIcoa+Y
         85k7WrfFRn/rls31kD4bXpAlf9cjKQ/d9OL5IomGMKgbsZzXaSP/A/hIEjmLTLELe+vn
         RYnxB4CKETH7bV5uP4XO5Ptxg7vdeyK8StffXYMIv5s/A9XMSwCntSo1fbAu35ry+lMc
         YucQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNIaB9fdT9f0W7oyOBl1550o5KUCExP9PNGkYR/VRwjn8+FTOB27616x9nOPeW0BeoUqM9faMJkI4+AO/32LdXYqzhyDmgffyPoQ==
X-Gm-Message-State: AOJu0Yzf9TwqEZ80o3ehoC1POzwmIMH109aky4emZRp/GKD4JfdcRjkt
	xvhII35PPyLWRQDiC+r677T/VoKS/P8ESGTkFn6maogSG5QCpFBSC7uXPJIpP/U=
X-Google-Smtp-Source: AGHT+IGYzHr6pIcbv72cMoPnjodIenLV0rR+cBiGnl6SPrPBer7lxPhLIGuuN0rjSogvl0gRkd/njw==
X-Received: by 2002:a05:600c:500b:b0:410:862:14c3 with SMTP id n11-20020a05600c500b00b00410086214c3mr255434wmr.5.1707844604999;
        Tue, 13 Feb 2024 09:16:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXUMlj1du0zW4sqzvkqy1Kwa04fRexc8zyPF1gzXfqaXoTEOS7oa7jWJgtO6sit+HChttNYFsrV/UsvS+Ou89qXN4ws0kwE9rfkEKI9sMLTm/+Yor49XoFA/A+A1ZhWBEsmuPU6mVa3q8+SQ+mdq9YV6TZgDZS2H/ZukVbj1l6ahjeFenoRGD36JNg5c0TstngFgSNZH7wGQ0BChkBjmM1hf10qEwbe4dwLzgNt0Sy/eVUw/AQoM5FLmIFuSODGg0hqkzfmjfnll999IAlaGPOa3iF0jEm0WCavY8bLKvnaFzsRdi7xXcJMYEeRHnnYaBuZOjzib9Nng3gA4Z/LVlnzR6htmL71Sslc/ydJnF+5/wg=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b00410c2f39833sm7805785wmq.30.2024.02.13.09.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 09:16:44 -0800 (PST)
Message-ID: <5f238367-57f2-404e-b5ce-521c389bc728@freebox.fr>
Date: Tue, 13 Feb 2024 18:13:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3 2/4] dt-bindings: arm: amlogic: add fbx8am binding
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
In-Reply-To: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Add binding for the Amlogic Meson G12A-based Freebox Pop (fbx8am).

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index caab7ceeda45a..ce0ea36de0c09 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -146,6 +146,7 @@ properties:
           - enum:
               - amediatech,x96-max
               - amlogic,u200
+              - freebox,fbx8am
               - radxa,zero
               - seirobotics,sei510
           - const: amlogic,g12a
-- 
2.34.1


