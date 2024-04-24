Return-Path: <devicetree+bounces-62167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C23278B02C4
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2D8B1C22583
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75231157A5E;
	Wed, 24 Apr 2024 06:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="leSngB3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4862157499
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941926; cv=none; b=Wm28oi/3Ta0mkbF0hI3a3T3eSwSr35klxBuT+XliUz+fHRgc5vfIXIRVN0z+C2+JkKiMk6X5sNwXX8HTMeLtRp7Zkom01HYcwSg/tRdmxQcBhmAJ3bF2wrAWRtG5Pv067W4XY8h+BKce8bBdh+pgTAGsPN0LisPAXLhJsLG/900=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941926; c=relaxed/simple;
	bh=EPhpfYLr3pd9IKJO7ZsiXXvriNhHFJ3HJ8XUUtyRL+c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=G42KRalWg/RZ+JOun6AvWRvch18UVOYIU4hSj7+qspwoqgOI4dLdVisSfhDXqcM4A2bcJ/5LUVct+7uPM1vfwVHec7bddixcTsJeuITipaBiMAur/97xGqGYqyTpeuJ4o1LFHci3VD8dQ2MvF8ZecqCDVqdD0JfdSfE8Vz1vo+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=leSngB3C; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41a5b68ed85so2992945e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713941923; x=1714546723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O78Hh36TSUxQHiXT4IV/zwLJ0EgsWrgWuOVvzi0ewJ0=;
        b=leSngB3CuRBp9adZmNVuYl9itvjyNodC0a1+nO97ycuEW+lrB6ftcai3pjmLNWzYCD
         tYJv1OTU1crhok6bzvpbbTat5EowGm4jjRMq+lcBJWvesYIV0sUfNKLuP1WeJDx84m+L
         CkON+JaXSdfbIGNwqf1onNLQoOiJSYO0jEGOrAI2hrXTrnLbihVO+mDfmLpyXii1uvCA
         PwxmUR1BjfV19wbDXyofpn+rzozOO8Xo/UUFiCy0HrZi6e/eQQ1Cv8c4u6JPkXBhh7mi
         mAXMzYA28bwup9033KOuQcX4gWSaLTDU1UhJPtPAHoUmt1Wg1ORIwnyJMP1/RyPF3JMN
         j+/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713941923; x=1714546723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O78Hh36TSUxQHiXT4IV/zwLJ0EgsWrgWuOVvzi0ewJ0=;
        b=CTLNM9/r2KOzxLq4GWuMl65opcDpzTlRiJAH6/XTFQvZ2GXPuc1Uuwl/ko2jatHYAK
         jW/+jcE/EsYbiFAxBdPTRpSn7zQYlljr5zRVBxzsJ6BVdvGS2oi0gFJ8sjATl0sNlx7q
         qKK2gnT5Ro70JCwlAXgmbv4yyhyhsFKfLa4SP+H3ehcb3/YGvT/l76CfdlO/HenMgRVf
         4g5OGp8PmOA34cIZ9Np+lLxhfTqUNBT9BVyfUZ4lEl7PHFRf4i4LGBouKtqoFoPLWN+D
         B51qswIxDt/amyNiWj4NaAYNBSyKy5OZOwGh4nWhNM6eYpR8Q7uiKjByQTtl68Lur7Od
         IDIg==
X-Forwarded-Encrypted: i=1; AJvYcCVKISxlgSuocNv3wtNYam+0KrJbIGkpwmIMzrtb5twlnWPxhwLDNJkP2QWSxBSmnVavXkz61njfrM8N/ygnymLfJAvZ/diiw3JB3A==
X-Gm-Message-State: AOJu0YysvUzhyHHjLSA0GO2ZXcPoZ3AMPYU7XLiSdSxF+4F8gxfm/Sjq
	6p+6YW3AvcvHUKzE5beIg5ODZf9sqYi7kIWB+L7gPUIGCb65QzmhpAXES9pkw5I=
X-Google-Smtp-Source: AGHT+IHdqdvmG1OCdSVbD8Yhju6eOHjIjw+T/ul3+A+rVxpO/yj3O7VyiNa0RLwyXKP6Wll0sbVX/Q==
X-Received: by 2002:a05:600c:46d5:b0:41a:56b7:eb37 with SMTP id q21-20020a05600c46d500b0041a56b7eb37mr811061wmo.20.1713941923197;
        Tue, 23 Apr 2024 23:58:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id bi8-20020a05600c3d8800b0041afe0f2f17sm1175010wmb.16.2024.04.23.23.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:58:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Zev Weiss <zev@bewilderbeest.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: aspeed: Add vendor prefixes to lm25066 compat strings
Date: Wed, 24 Apr 2024 08:58:38 +0200
Message-ID: <171394189432.44668.6061047707500811188.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240224103712.20864-2-zev@bewilderbeest.net>
References: <20240224103712.20864-2-zev@bewilderbeest.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 24 Feb 2024 02:37:07 -0800, Zev Weiss wrote:
> Due to the way i2c driver matching works (falling back to the driver's
> id_table if of_match_table fails) this didn't actually cause any
> misbehavior, but let's add the vendor prefixes so things actually work
> the way they were intended to.
> 
> 

Two months passed, no replies from maintainers about picking it up. Dunno,
looks abandoned, so let me grab this. If anyone else wants to pick it up, let
me know.

Applied, thanks!

[1/1] ARM: dts: aspeed: Add vendor prefixes to lm25066 compat strings
      https://git.kernel.org/krzk/linux-dt/c/1afe35e54a89d762f1cf71da1ef29be2c387be35

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

