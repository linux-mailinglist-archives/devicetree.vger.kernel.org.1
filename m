Return-Path: <devicetree+bounces-40964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CA4851C42
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D865282397
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1DE445945;
	Mon, 12 Feb 2024 17:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="Ujv8BGcF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD694D5AB
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760506; cv=none; b=DbnWP/1feQdTrfMvbMMetX8wj+d72+ShDDbBwdvaMixmh//POjED7qWrelq7FUJqsdos4wlf7E1pZK+Ka1u6lrbJpFOLVKc/ScnCl//eGqZJQ6FMFwgCuoo89kg+t0/5cX3Bp+rK94kQp3cuJc13ZFauY7PPx8vA28arHdRV9eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760506; c=relaxed/simple;
	bh=r5pbtOn2mqiPoAQ1vzyjhVOnJ+mR2tjVcNYow09tuRw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=GIxCxqhOgUxFCU315iA+2Sy0lkuQ1ZQyywbaXPmEdryWVUtvxNXOVvHxQYcYVFoZ6COH3xlMiWX22UH3bLbTGY0Im6rb6R/IlyFOhkNXRrbSfRwcGsPFv98wmqevxfRnZOa9SEYCKbokcdKdCj5+gok86lurUP8qV8wONBkFeEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=Ujv8BGcF; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33b28aadb28so2240268f8f.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707760502; x=1708365302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iNHOgnZEL6wWzdnstM5LQW1NQeYMdiO9IQDuy9q7XM8=;
        b=Ujv8BGcFYY8+pntfuDo31G+lixESsp0VIg2zMh1Y8vXcrT+Sg57l5g3LRS+T2nWrH2
         a5a7056MSXHZ/lC5sghSYTz3aM0eCXa2elHFWCZZAs1nItwVohw38k2wox8MNz3ftH3j
         MlRhT9bnRFsTKWoieiPjChtOOdk+6EEBIn1E+A2GfgmHsNGp+6QCTpj9U8CXcU4Q2Yla
         ZrlJQKF4lpJ+85LULk+/1+66E6rNYBhVWJ8N9X4OWDEXf8ztjeNY9MwObxFaqEN3JxP8
         YxnvZsPDqpYAl11xib3deKfgFSV8Jg8UB/1mAVUfQ+sFkPjCAxQuVe9qNt/Vtu2EaMrV
         Hlmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707760502; x=1708365302;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNHOgnZEL6wWzdnstM5LQW1NQeYMdiO9IQDuy9q7XM8=;
        b=pdph7r9DCJ9XswL0ikwsXT4seYAnvCnzxwIYR5f6lcx+b6N4lSRf6OvuDPlN56k1pP
         ZEeFE9rsyEtCRolt0pDS/GWJwA+hNDeaJuBINtJAm/1mLs8GCV0q7xS1QEtUvHwH3Cmj
         Xew11i7emXvYvc+a9EuPsKdkS7qMH2CfVFajN8WrFqGlyuWbhBYl+wac67EK0fQRCAyq
         bt5XYkGZ3B0QeVtp8y1KblO6/o0/I7cDdv7XRcfJYkbnf/Be+uaEdRqbt6JkkB2sVnb2
         i66NPaiNeeWttyscNfQvBFEjBKJrCTsLKdX0bvYkTXJsdtHus7E9meC9GexX7sp2IzbC
         WhVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeq9smedkePGapRVYudzziRMPsq0aJM6bM0DSZzWiMep5wH0xkIE7VIL4DeZYMXxx9HMwok7rFimwU4HNsjISif99jxCbF4GeDLA==
X-Gm-Message-State: AOJu0YxrYt8Ti3o2xfH7i+OWG36BcxpB5pbpa7sQQ5MHE+1dIICCOAYC
	zObnQsuGLSdMUZRAIowaGlghfwGd+HMi5yGLVLdT88cntgWTHlX1jpbTL3eHCx0=
X-Google-Smtp-Source: AGHT+IGxfb2lEkbB2a6/Bc/7eB8ypmoBKjmF1ENAg2uPkX0pGHMIfU9KoO5w6GsHFBkW8UZAF3Yu0w==
X-Received: by 2002:adf:f1d2:0:b0:33b:18c2:df9e with SMTP id z18-20020adff1d2000000b0033b18c2df9emr4056510wro.48.1707760502712;
        Mon, 12 Feb 2024 09:55:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWNrYXfPXibdSnK/0nIIf8ldWktM5mAkvEELeUA7wp3A1tr9n8rt5t6hC2uBtGqdjaUfA2e7FeOH8QyZZVKfMDr/ZkiTEjYqIVZyYvNdPD4+AI0nRgDDmU/349bECmym3uN1In1eagVDz5x8HGrxv4H210vYr0BQ9T2F9FkiRi1QacckcMmcrTap7S+9AjRwrf4S4w6297h1CG/KQbNKmDRJpbg3JPJAiukmDptvOgcc0rOjxsMxFneK3WYTOrISFCClqHFruFuuwQZJfCw5a6RTaoMCSHAvc0T0gpbN3Cd7+z4dTttCEX/qyt8RwuIA6AGJ2fPU4nMhpub60+PuSWII6e8W5mqvFsScoroQBAQC+Q=
Received: from ?IPV6:2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9? ([2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9])
        by smtp.gmail.com with ESMTPSA id z7-20020adfe547000000b0033b55186901sm7380912wrm.94.2024.02.12.09.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 09:55:02 -0800 (PST)
Message-ID: <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>
Date: Mon, 12 Feb 2024 18:50:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 2/4] dt-bindings: arm: amlogic: add fbx8am binding
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
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
In-Reply-To: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Add binding for the Amlogic Meson G12A-based Freebox Pop (fbx8am).

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
  1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index caab7ceeda45a..fce12e44c00af 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -148,6 +148,7 @@ properties:
                - amlogic,u200
                - radxa,zero
                - seirobotics,sei510
+              - freebox,fbx8am
            - const: amlogic,g12a
  
        - description: Boards with the Amlogic Meson G12B A311D SoC
-- 
2.34.1

