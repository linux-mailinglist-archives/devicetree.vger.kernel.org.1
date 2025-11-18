Return-Path: <devicetree+bounces-239798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC4FC695F7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 75191347983
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7826633B97B;
	Tue, 18 Nov 2025 12:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="B4uYJqkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37D230649F
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763468881; cv=none; b=DvzyHq9DVtx6ehc/oKb+Rt9lc5Fy/A1IllW1l9XRXTO46W4pD52DkkY9bcANzuM49PEZtCrbN1NdXk//kG45Eh5BIVacen+JYGZBjPHHaHaug30yVuloXWbt1H8EmQCGJOd1/H5DzjInWYlV0cqw0S3lkBoOSxUyOYS6qI6Vc1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763468881; c=relaxed/simple;
	bh=5DEkD6EzBulinSrQzH4gj9jjI2T7RDQj5F5OtFx2q04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S8Tp8r4T3lESUCGJvqAQBqXj4srhPCiPG9VFlfEO/nMxrZ7+l4nlATVOq7iPfzukJUxP+oc8rUFp7InQTOC979Ls0tuqt87BnttkKDoX+oPCk5vuT986t1aHEyTeHqYOH/T/B3PGXH9qhUrjZvUktl/rbaA1ZeGFc05D9eMclMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=B4uYJqkv; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4775ae77516so59762055e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1763468878; x=1764073678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTg/zFhYq07dRdInsaNPTNhQ1s1RrOcCC4Ij7Sv6vBk=;
        b=B4uYJqkvfeL1R2GE2BQPxD9Qgrxpuh8qIqfnYB/B32ZMI5F+hAfNsI1q4aTZUIIpD7
         l2JylTFabC5jWy+VoNNrttjCtIjbZX1vNmTdR7LsJRWx/hJ1ujWXnwIcBfDIm7RZCYTr
         TBLoWQI3vLrLBw2vXShKS2EPM+hXzJWQ4/trL91Y9Z2ubrAb/YJrw8bF1r+UkHzllG1y
         +ezzF/c5HYn1CleVpXjqGn+9KX8/I1HEIUYtk/pSwozpOmATcu/SCCF0+MyLAoQcA7HT
         UOblYQkPkSMdR3V1brtWg/JMj6cDKnjIWbmV6Y/91frzgqiWmECIeQLROJTgutJmKRqh
         XFOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763468878; x=1764073678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tTg/zFhYq07dRdInsaNPTNhQ1s1RrOcCC4Ij7Sv6vBk=;
        b=rDa5NzrabVnd0ZlxsgimCarOTnQVkB1f+0KDQHSPm6B/KAj8/+q6VaycsbE1sc8pv1
         ZcTO59HmUhy6PwyQ+7owROkZNz4EftReTLJuuG/NGlx7DT1y8PsEGL/kJRBvb9YJwiTz
         IvtpCEBMmEhGsiCdCTpmf5gW0Eejxh8aFYWkD0Routn37eVdwAALxRGO3U60JNUUOz3z
         C9pEltlapMsKv/oGdwkrFce2eLWpg/Ro1BvZkLdVRua3CsqgFbQR7SJa5tKg40vUkN8z
         h9bpLDfA1eQvzPS4GXpy+gDYsN9FryP+9LQ9RBO6/TYY5tbf7NYvj83bfuzFyU88y8tP
         Ys9A==
X-Forwarded-Encrypted: i=1; AJvYcCWrdllzRZwa5Q9kTDc4ATRqcy91fovxt9WiE27C1PoFUm2LTAxLuOQOXXc8wKxEmMZihV1y4J9A9EHM@vger.kernel.org
X-Gm-Message-State: AOJu0YwTq7JW6tDeeQaQljsfgHGJMZaUCp+L3oZP4Nv5BqVPcnuOjJb0
	f1cbd2W2r6if3ThKUyWLEs12PNNbbzTirkc6VocJPQ1riVwl0P8U3o5w0R7QFfrPJMA=
X-Gm-Gg: ASbGncvpzG3WuwuwsDuA8FWLIRkN6uxI+ZKz5VfBhwsfg0unC+JWVdCPKJI3NEdTCrO
	aBCcFHnj8Efn8lP+U5KWD1lAJzLeY0sDBqUc/yuCJj68lIJYgjfv/wIjOI8m/KbFhyEZl5Np7rj
	dYqVZb5GK9/HfJEPb21yDZGLQvY9tEf3zsiSrrOX1k+2hrHhix6cIk3sWeaEu0BEsLKE7sT07QX
	LsfIGB3N1iSB5iVC1WscHyRaKeay64baHd4d42jMDFqOMq0D/eBj1PnLTNw88IoiWzGjd5rzlyP
	Gaj7xldk73Ycx+XF3Hh/If9MoSXhtRfD2qwym5S3LPSdOWCfdwJW93wprD1LjQB1PsN86IkvBhd
	PDk7lK/M7OwP+uXrXGnt0FPYUuWConiBiXEPC9r7737thkSABey7qgjUCeSnj4dwNiSglmEXOVR
	ddqTo=
X-Google-Smtp-Source: AGHT+IGwGnIyZlfEO6CUHM/fTs2swA6eepL0DvcJAV4a92k35zE3cM2txOp8KWawxG5WDghBOM9Y7Q==
X-Received: by 2002:a05:600c:35d6:b0:477:ae31:1311 with SMTP id 5b1f17b1804b1-477ae3116a6mr9228035e9.13.1763468878245;
        Tue, 18 Nov 2025 04:27:58 -0800 (PST)
Received: from brgl-uxlite ([2a01:cb1d:dc:7e00:c283:3472:316:988d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477952823d3sm216032355e9.11.2025.11.18.04.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 04:27:57 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: mpfs-gpio: Add pic64gx GPIO compatibility
Date: Tue, 18 Nov 2025 13:27:56 +0100
Message-ID: <176346886857.23977.6496336184922024881.b4-ty@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-grumbly-oversized-2215fe887181@spud>
References: <20251117-grumbly-oversized-2215fe887181@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 17 Nov 2025 15:59:18 +0000, Conor Dooley wrote:
> pic64gx GPIO is compatible with mpfs-gpio controller, add it with a
> fallback.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: mpfs-gpio: Add pic64gx GPIO compatibility
      https://git.kernel.org/brgl/linux/c/bb7c963d0008f6d652ca7c7aa1aedae3d03425c7

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

