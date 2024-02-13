Return-Path: <devicetree+bounces-41402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEDC853707
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E93E1C2313C
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 17:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C6415FDA5;
	Tue, 13 Feb 2024 17:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="oGf5komK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1435FEF5
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707844608; cv=none; b=CLd6ZpOEZRLNZDjM7zYrPmYmFpvGSqCW/TDZPhYua/izdEKkExZ/rXez4xXkezkV3Mh8YRbtkFRfUHX5kCZmSdR8ZAQKjA6Cu4skmXXojQ2qHhALjFK0TUVX9aPaYoPInYkvtS4+2T/W5ztuTs7eFSKT0++9ouWp8EfLpy1kTCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707844608; c=relaxed/simple;
	bh=sWNIPdfI6neDKoEy2FqcF/6VOjhd/wHllhs2wvI4O6w=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=rRAF52NLhlqi+75TfuWoWOGhE6vnAlJ6JpGN42i3XP1uTbiknyIYGKq7XkvhIHHg0ILjZcEvqlNfaMBmFlPsUCsuVx0snLvRh1VvFv2oKzMRhAYPMzYm9/wyMjloL3Q22L4DQ7QT5jgAnIlIR1ixeJBtETVkKy1RKcD3uByDIJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=oGf5komK; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-41166710058so13991295e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 09:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707844604; x=1708449404; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wrRudLzDGL7vdbtFsMh/EJY4eKFKxjp27rYByGmoSpE=;
        b=oGf5komKBGb14sn+qUZYW7WJVRVtEIrSJ8mduIKSw+nJKXuxiNL1/l0gjseJ1L5fuc
         GZSRxe7Pm6FRIr8wgkETP+mWqthUifxRQF5LUU9QomQ886diMhBEpaNS/S7JzXWYlp5p
         2RO3fsoOFwxBzRxwc4qxlKqvvLnsGawWLNu9hM/XR1BXRYRoyh3vrKSrpZj+al0KpPIO
         8dF1q0EI14fVjsuvDkzx8wTc6uJa76JhMOMarkHLSJSomQDnNPR/ZIjt4M+EP7Uu2tHJ
         WuUf1DV9MZth+ypCzhVoN8uU/4iQr0HX6MPWtCULlcMPXNb3qRqQ9boxkJ45VISxjJxE
         Uw6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707844604; x=1708449404;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wrRudLzDGL7vdbtFsMh/EJY4eKFKxjp27rYByGmoSpE=;
        b=myGuN4JagOv13iTHs9OLljyeuKtlRCe6anior6Gra5/XULPQtwm8ftnUp2I/wx3bK3
         yKsZ1ESXq5oh5qfLZdsYTsOuxNHq2NI23gD3hMZ2BJ5dfDEhOQwe8anbsKrTQS+FFBt/
         G90WX+lnomPuRcB5JGasVCGKn6YLlLHvrG2VsL6JnZU/Bv4AHXvKqn2nGbzxlrX0Xw0t
         mh34Qlo4M1xEersvcY9QLxsK66uJLT0kL/rz2D3K7SLMm7y8UpHqAWc6CABvmC4v+lwD
         GURYgPqzJFPUzUf+Xb/IMt68JGIy/49f4HfiOw9/Is8wm32sH+eTyTu23A8AE8d72tXB
         UTew==
X-Forwarded-Encrypted: i=1; AJvYcCVXp+o6BfQuAwLKLJ0yGWVCBmBulAll+72DpdLAv0vX1+7j7xTjPe63CVXwVjo1Vqw44XjcWrxD5C8/6eKw+NxTKLXW9axmnc3Dwg==
X-Gm-Message-State: AOJu0YxaHtwWGY8+OR2DW5rXj8GYEzAU7nL6O023kXHrvvRNnM3abwfx
	evpFzXjLqAGuZcqsJpSqopGbLR7faOx2rom1ccd4tpQCKYJmZejYb2UanWCdRIM=
X-Google-Smtp-Source: AGHT+IFhGnlYJQIODayatMiLDQGcA7n1DCbcC2iZ+l++RVhDHhGAeSZxazycC123pinudSw+nAAayw==
X-Received: by 2002:a05:600c:4f14:b0:410:c127:62fe with SMTP id l20-20020a05600c4f1400b00410c12762femr233098wmq.1.1707844603987;
        Tue, 13 Feb 2024 09:16:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXZNpD8wYJmrXqQSl65viXRKYJqHWxhmDeMraIW2yY0l9GvX2yTv+4UhSVKSQCKcxsjf4yWiTDMh+QICqU8L0GoDr0Dmsy+2VzHaY/WZmhgFvmH3E0O6hM1HFp1xb7NWHYBxrzvtw/xrxJXwr6ULWgABwZWMe5exx2kErG/k1Sh5hYfR2yKM9CMcKpWyQK1yaw4nGwW2zvvtPf+n7RtjdnrvBet3609RWuLPjhagxnGnecsa9j+Rn7IZHIWgYLpZwP8Xey9Ui0Bc8udncm9PSTgIZltilV0wCQZXN+yz15eoe/Rq8fSoDqlcAJmb3YR0v+gFX/maqkYZSegbC6gbvPfkd1NwOCGGgc0z6vgpPfWEV8=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b00410c2f39833sm7805785wmq.30.2024.02.13.09.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 09:16:43 -0800 (PST)
Message-ID: <64e806b4-5366-4722-9aa8-c72667ce7962@freebox.fr>
Date: Tue, 13 Feb 2024 18:12:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3 1/4] dt-bindings: vendor-prefixes: add freebox
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

Freebox is a French ISP who makes gateways and STBs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db47..4f5a1f4e6689a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -500,6 +500,8 @@ patternProperties:
     description: FocalTech Systems Co.,Ltd
   "^forlinx,.*":
     description: Baoding Forlinx Embedded Technology Co., Ltd.
+  "^freebox,.*":
+    description: Freebox SAS
   "^freecom,.*":
     description: Freecom Gmbh
   "^frida,.*":
-- 
2.34.1



