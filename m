Return-Path: <devicetree+bounces-197553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7FEB09D35
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35325A84CCD
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23DAF2BCF66;
	Fri, 18 Jul 2025 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="taz8uFfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AA329DB7E
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825394; cv=none; b=K9Cuy/oOhnsTxDWrweAieDrq0XRmBBY3xJWW7xzx1Ht524BZFyKqXRldHqbGCTwco6tolqodeC5CaqaJHzNX19HRX3rlNVTCTb5l/3rnkbOIA6j3N3DozQpmBBIRYCxmLYBKvDbeVvenUVLmv6fNzg4LASM+4oSi+MvB8qeUyhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825394; c=relaxed/simple;
	bh=/IfDGxxWwH9C3Ri8YFjSmKzSi0znt79eWoGTibw5i+A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=s//Alo5XdeKScC6A9oWbM1Z0/StJEB+rSDrAjTH3m6Mz9A8ToG6KMyZtQ3j1yXBm7xQzYSpr8uKcUx+MMR9g56lpRuM09Z2/ToqYPHwtIZp7t3ZQJ/yytlM758q/1L0msloZeWBT+wtKhG71S7pq/XUegtpbuZIn8Tq8e/aOS1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=taz8uFfl; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a51481a598so923227f8f.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825390; x=1753430190; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JCaZ+WKPsEn8tCTv6g/PRmp1aflmC3F0blXp5umhp8k=;
        b=taz8uFfllFf8x8IBig0/UiL1bVdrxm+3PaIha/L47PkZVuqcen5pZFOnllSWw96UZ0
         +AaU3a7lUo4M/UIL/hV4ea954vwL/wlLZm9+lL/hOh0I47c2+Iqy565zxbIKDSyAmn0j
         RBsNgVgVM+zSyHgz86xvhqnd9c8avYqXIAf8AwwOJZnXiUFmFFt+nPbokZQ8l6pVkLCF
         5GV0aGq9vzL0QgIlAzbjWWt/fbTBP7Y87nQiyhfSKtg+kcs42EDACcRF+8FkeootCbOb
         ZWALbKVl1OeVYN5uoKK7I43IemlHGxoCwB+M0AQtmhZ9w+lJ4DpogSvHUgEEePByI7Rs
         ORAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825390; x=1753430190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JCaZ+WKPsEn8tCTv6g/PRmp1aflmC3F0blXp5umhp8k=;
        b=eiJPcvMCnVGQeSefZ6MuqbnMZiGv8KMY4Zj4ckxgXHE4/tPIaIjLZilO+PiI6s5Z3x
         juAZDKF6t+MxNwSGLsBZe21joIUwtaWyCySsS7CYo1fCSQ+0hQGQU852tZqdlGvKr2ck
         9LrjlAVo61DrVjYb0pOsbrAk1s2chz8xlfvsD4q+C8Cc+BZupKAjZOUv1u899e/7W5YE
         eUFjFTZ8CF5UMrIaPIjwtWwpNup/Q3iiIBNhCKThR+BhGqJ1u1h4BRQkqFN2OP0Lj2Ez
         nUCq0RW7MsuD3WLvF6ghzAGiTp3potTiMXbp0H+0+YSp4PGPc3BVzwlDN15e6MOo5lc7
         hidw==
X-Forwarded-Encrypted: i=1; AJvYcCUBrXcpmsGdt3pYotrm2gp0O8x7n4GSXaa5JR3cepPB6bwsinG76vsbUaTpt3hjT/HOVdoilWZhrZn7@vger.kernel.org
X-Gm-Message-State: AOJu0YzrFYfXylR1XOXRVvOO4rQm7LCeKVDR0aF97BzaxgEND1o60gwq
	mebU4oDdrtvd9E5GdPvBi1tonoVJ9b0DbhUtv5HRqbBRkJBOF7kxZQS1mCkcfEhMUC4=
X-Gm-Gg: ASbGncsaTBGrvZTmZGzZWAY7RKR9XWU/RfCIqMxChjENYSpQL+jrlS71/KToOx3LMRz
	hcH2bD9IzXE6KW034rfSanjk2Q+EV2ymxuyzX+K2f1h6r3sftkWh4dppueVM7hSUTaW7WUOn50s
	92Dh8c5T4Tfww+FGumSuOrwbutGotF768JSPXMu/WlYbFpg65OPQOGqUvl5cMAx+Vzu+LTCdBRm
	R435aOgZIyIE32CdggSVbIpaCdq704Nq3Rec7QKkjvvR+JgUFTZhd00PAb60MLpzZs3kpZdT2qO
	SRIHmwebgoZu51Ty+9teAv12X01QihM7zBX0QAWWWPb3HGCLqQcR6jh+uOg+2vK3BAw+b5CxVaq
	z8t2KtznD5X+y7FWSaiZe
X-Google-Smtp-Source: AGHT+IE5asmOHY9ijht3WIRY02R518XDUE2Kx8RGeuGf24vxDpkdK3gfoDUp+3MG8ORx/gDQZyYPAQ==
X-Received: by 2002:a05:6000:2d0e:b0:3b6:164e:a059 with SMTP id ffacd0b85a97d-3b6164ea1cdmr2649609f8f.17.1752825390520;
        Fri, 18 Jul 2025 00:56:30 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:30 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert ti,twl4030-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:59 +0200
Message-ID: <175282531514.45055.3441491568286298987.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202829.3011298-1-robh@kernel.org>
References: <20250714202829.3011298-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:28 -0500, Rob Herring (Arm) wrote:
> Convert the TI TWL4030 PMIC GPIO binding to DT schema format. The number
> of #interrupt-cells was wrong compared to what is in use. Correct it to
> be 1.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert ti,twl4030-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/a12b566ba571aab82f969bc3b137487e61afc976

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

