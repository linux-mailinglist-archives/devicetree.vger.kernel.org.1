Return-Path: <devicetree+bounces-197552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4E6B09D34
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3591A85734
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0DA29E11B;
	Fri, 18 Jul 2025 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="GMFeRoOj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3306929CB52
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825393; cv=none; b=k9XShfpoCl/ec1cROq8xix6KxMBIh24N6uETWMgBvoyhtMbrLzP73gBEqNzmF0pPTJBvyZ+c9X4mqBi872Fu/VSVgZxGWJmhx2lLD6hSgEXyATc59pXOEvaWfgSq9hE8yCr1W6+S3KIh1zsbxVfBNh+/i/14dsXbnJjRlRgpVro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825393; c=relaxed/simple;
	bh=2zSrbkBN1qgdayu2lKnPKxAZnlK/9cpO6m2rcBz+RfI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e7JuW+h+lFFfi4JJf5c7D2bV6vq1UGN7yXiKiHYG1bHnBttJf6hDIv6g3FjM6NOpp+dtV99EqIrFDawoD0S1Lv6ZFbHND0d65RgGVeGLFYaTWKJfFaVwno9cu0BwQTAvpKyQBhgv+iSjoO71SX6xmET/6Jr9vV5K7U2ozjIYxKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=GMFeRoOj; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a4fb9c2436so1035495f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825389; x=1753430189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKZhnFJ0UZWMgAl5cwKz/S/30VP8TEq2FhHcHdAs4+M=;
        b=GMFeRoOjOvooxJKlZAnUZgzTWlMLaZYoP62GD1e1YrFzgKVMK5/SBcCA7FwCiMTJV0
         2c8ebX9tx0XbHzZgAQMCRYlctxrQrWYKDnxTr5MDRDdFZ/+hlxZbtkP25HMm+HpcTk0k
         8bU763W50m+lfdyAALtK7oLJb5Bq/Zogocc8nDqY4e+Qcd0iBzHokWqs8h+CA7icXhKU
         TLIi9q31oHSmtJnItpgeQHBdJOYtWSMnF8SPDc/QsjG9DTASOnJB6OsH70c3971iSWFX
         8vhFZaxtTkiNeeI+KKVqAV+iuLZsTBZ/SCs5bHf5GOsG03rtBCEW2f8xoDZ0qjqJLM5y
         XfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825389; x=1753430189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKZhnFJ0UZWMgAl5cwKz/S/30VP8TEq2FhHcHdAs4+M=;
        b=GWhO4eJc3luTMrEHnBebqctOcaMrhCB0PQt6soa5DzuKQbUfG7CUyXij78ptb6Yg5f
         jwiJv1NfNC2YVkLS83NJN+NC9nHijBjhasi64nDvhHKfbIP2Ygid4RHcWaywROfRyH/0
         HQ2ohdAKIxy4xQ/N3sJcv0C3N/G2l1SNUj9HJgjGqvBQRaDZUxoAKWnicuBoBFqO+phg
         jc58iJbzN9aakskxW8/hppIXQ6qOEMA8L99Zx3I1YJD3TsHvgMARBvbEwr0+eYuhMKNz
         Ya60Ivw8E6Fy1mra6Pko5ZDI37u9lY+uOuDQ2bxh0Nlmsx9g2KMcdouMgHT+FuO8Qd9H
         YnCg==
X-Forwarded-Encrypted: i=1; AJvYcCVABZ9JoAVtRxMhSNvDNd7vLehWox+WTswQ1A5DCOPHNV0eJSlW0ytyQ3pNgDVt0meUjCd4SXzqFB5R@vger.kernel.org
X-Gm-Message-State: AOJu0YwKyEEaC8VZ1DF90QRLeSYz9Hw5ZpuQFZhFoxTWuK9ik3tarzcI
	CmFt7ncoVgEmOv1DJfPE5v+3K9P9///ba24g8Gmz3hoXE696wVgx6Mwn36LXJl3oTCg=
X-Gm-Gg: ASbGnctvGtwEDURaalj8sVU3U2fxwJWigixIr0O4uATQ5k1JdaIH3zUQdLHiPjiSn1A
	juvYDYBFueUGBfCx66NZtbGgZoPC5nvBxi19uDhvT1GPyXOIK4YWBYV4R2pCJAShfVyJ0jxcjT/
	o9qOfH6TjrwNViJE37jzAyQo5NBctwX2p7b8CjCWC6f+aXP74vTlSJTmTNC3bW8fajlWbrqpbpF
	5vSMKKX6bZawG3H1wqiDj62KMtRF4DvQQCPNs8Jnn0ZZ2xIq1jAFboRWJfGEDm+P57YLlmOq5y5
	aJKOTFZw3tp6AHd+VpG/4mPBbKEG/tMpMIAPmj9tiO6IkozK/VR8gTa9qY7baXhkTmhgjxWGZaG
	e8JNmJsIq8Z7pQjqj06PPho26csYAmE0=
X-Google-Smtp-Source: AGHT+IGt4Sp/2DbN6c5CNaWJJ3OCnBcFOsqcxfA4oO8tiDItFVCLYx8dWbwX87QOuiDeXXZ5HwvMkw==
X-Received: by 2002:a05:6000:4911:b0:3b6:119d:58a3 with SMTP id ffacd0b85a97d-3b61b0f6a35mr1231316f8f.26.1752825389525;
        Fri, 18 Jul 2025 00:56:29 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:28 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Grygorii Strashko <grygorii.strashko@ti.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert ti,keystone-dsp-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:58 +0200
Message-ID: <175282531513.45055.12673543088829296239.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202850.3011952-1-robh@kernel.org>
References: <20250714202850.3011952-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:49 -0500, Rob Herring (Arm) wrote:
> Convert the TI Keystone DSP GPIO binding to DT schema format. The
> "ti,syscon-dev" property was wrong and should be "gpio,syscon-dev"
> instead.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert ti,keystone-dsp-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/aff0a1701b020c8e6b172f28828fd4f3e6eed41a

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

