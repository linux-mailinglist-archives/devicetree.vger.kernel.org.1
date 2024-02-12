Return-Path: <devicetree+bounces-40963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C91D851C41
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:58:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A1641C218B5
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5265B3F9EF;
	Mon, 12 Feb 2024 17:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="xoyzT17i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE834D599
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760506; cv=none; b=PumqsigMspECWr1DNB/92UoxUSAd5X22Gd15Q7YwrIWiizSGCnFBBNJZTSk1ciU2gMr5VVh5wEveBGIIxdE/2+DoobcRPLlwqZxzLrUqtT7UBo/UuTi1fdh2gEwSuPAnynmNIOnCFpdwC2MS/TSTbkiNCuBP6cfsyl0SnOQuYgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760506; c=relaxed/simple;
	bh=3R4g0tZajHiEbG7HAY/GX8YDpWjCsKOCCYyz2X7ABkQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=YY0ORvT/cQe7pA597VjK1hhAuR0bgE5XYdeIl/t8MxXEdm+PfZUq/9y/gpO7ExSWjN+hbjic4sJaYgIhh8mxmLtohy14gWyt1lA+RID4n5sRQTVM8ymFFvhOS7/4VPGMLU5nP9bdWdIeW6NQJ/sF/NEl/xeo9wL7IhDaNv2W1PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=xoyzT17i; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-410e676c6bbso164165e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707760502; x=1708365302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7ebjFfPQsMxBK4OMU/9r1jjxNqRYFypGqz5PkxsLNdE=;
        b=xoyzT17iSk+oOe4JWx5vypONZR325CCy1i1s4ggnvvqzAZCGLZJ6vSQKduv6M6ANb6
         C8zZu5bKKX3vCTjpH9IFbENHg3tDdArJXfDiZXShTbONsaEp0zUbp5v7iq7sZM6mAmRn
         De04LLHYlZNGeJG/lGRrEIJgywE8LuzyjyKjcJQ5eHbsvjpeIMNbS98x37nEQQ+nM5ag
         h9/OaCngS9LZ7DiLq6ATesU2PTh6RNKIivrCewRg9j/v9sVd3HXfesMUDNvrvKSkRWZ5
         kCtKMGTI64qiV7LAWPHT/pHysqCRb4ngN0ipdQgy62iNm3QIDV7gAMSfu8IZFM5TekM8
         92vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707760502; x=1708365302;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ebjFfPQsMxBK4OMU/9r1jjxNqRYFypGqz5PkxsLNdE=;
        b=BCszdJMub1Gvg/jpS9Fzt+ywIRUG3lAWQrYEDkZZM12gp1SF9BiANzUVCfZd4vzZqL
         srRy/WXZaRe/KvnRJm0BNbbq8vv/hHBcY6Q6KaQeAPJ6YvO0JAWPhKoAyvVVOJjh31zY
         ZKkcG7O0BCpdtub3Q+qZ+m9Sd4Ozrhr9muE6MYf13FMFlNuD8Je/WcyFl0fnJ/o4fYXr
         uoyBzprpFTWSqcQpHqOE02FX1BCkz7hqWGy1RApxsbCE23Bprm7lWErmhENNOHvrIUvd
         ZBvA45YseFJcPoLaGtWUBToSPJ9uUZzFhqC3kGkv00gHAhAcxez8s3DA13UNPYHxRFHM
         vrMg==
X-Gm-Message-State: AOJu0Yzr1gHH1OxENuECcoEMHwMAqOvSpCBCvmOfPlDlUqWqbSwb9HR5
	A3iqmnAKgG4RcSmQtmX2Kgl+gQnfPy+KB3Bmd8RLcF8rIEw2IzdjMcubycADBno=
X-Google-Smtp-Source: AGHT+IEhd7KNesDgKUWdCkIORym/IY1OJUpy3huFuFeZRZdij3h9/hNIdnuFwB+DK2vwH3NSNrmh1A==
X-Received: by 2002:a5d:4808:0:b0:337:c4be:7b9a with SMTP id l8-20020a5d4808000000b00337c4be7b9amr5001000wrq.63.1707760501760;
        Mon, 12 Feb 2024 09:55:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVZCg9hnC5ntvPHzdHafHGTF9d2EVs4jTaWWlA3rBmly6vtvsdM2YVS7ir1M5l6zulv/XRAmui4aAmyn3sqbtyNxRw6iNIgcqeP1K9QWP/tM39HdJUyFD9eQ93gKHXZhGIMyDp0j0mF0+rvPU4rLF3B5NHOp8qXgFsrQ56s/i/FdBauzOGrUicZ0Jg5+5HUE9kNlMlA8tGVsR1HDwObmCHkxgc0PI0mt5+XPz97lIY1vQG2ug/MVwlL1/sXozSU7EvlWweyvBLD9jHDp1TvX6S3Cu6DW8suVOEc5z2kw3Jt0ya/4s+1PLLSUPENyiE18yXuAjg01do0+ksyJ5Z8ZMMR/6CHytyvjQBSx9D9t9+kc6k=
Received: from ?IPV6:2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9? ([2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9])
        by smtp.gmail.com with ESMTPSA id z7-20020adfe547000000b0033b55186901sm7380912wrm.94.2024.02.12.09.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 09:55:01 -0800 (PST)
Message-ID: <47a5baee-866d-437d-8950-4e730f210bdf@freebox.fr>
Date: Mon, 12 Feb 2024 18:49:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: add freebox
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

Freebox is a French ISP who makes gateways and STBs.

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

