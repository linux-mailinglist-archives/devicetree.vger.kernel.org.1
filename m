Return-Path: <devicetree+bounces-197543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F18B09D12
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18ACC3B0FB6
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D67E2951A0;
	Fri, 18 Jul 2025 07:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="O4HHZxcK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5F72918D5
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825381; cv=none; b=kbP8qMp7TqwWKxegs88D74nnLyW1tBlbotVpvlOYlitIBqC3AU+EJyHgelJycO8vg+lLGi/bFa7gSVbqp36nap6wkaD0wABPBBWY8kINzPrTC3JIygxqYPH9BdCrfNRt5VSsZ1HXxOOwUowva9QrKwrlCB5UoS9H3N9QbI3WKMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825381; c=relaxed/simple;
	bh=AH8gj/lye4cjsag6tkRFASwBoNl2K/FYCAB1SRwBtOs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HHeyPp/r/CznMF//W8rEQVGdDJ3CddaICrVWSZkiTlFLP0ZDFM324qyFQwGcQB7lNMceta/dtN8MCo6YC4nai4+UXPeSDEJbSmmeau7s1NnG1o9FHSQHPZBOSP8cJ/rTp2UzdxOSERGFuuMX5wgT2bEtQwR1a/htJj2vJiaM5Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=O4HHZxcK; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45629702e52so7463025e9.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825375; x=1753430175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZToTQ8PW4JsaMkDi4L5ivDoGiP/EegAxDULuwZK1b20=;
        b=O4HHZxcKW/6Ee12Nk7mLV8uQ0Wn//IL6MRZmfOWMC7TSD9y/wlFZ9Lfxn8hkyTMx7E
         ly4MZS8Ck0edLC3R8nx76wPTAkqrL42wHToQkeT7fwk/+lNVJ4UqGBgnILM1ynfVFBIN
         OEZq0YpnavNyOfc6JGYnJ3outvBdsHh9EDca2g8E1yAC8sc51lpn5ixBgtjmEAF2/Esc
         wZ0/tbgB9mpkMOlMedeNHkiTuYnaUOWjsB8qxQ95rUmGSDeXgCvksF8srk8L8gqjIvja
         T1h2fQ8amNhCrkLLVfYznMt9j3YB+kYwLMsekvhari1/fY7zvqZQA9gpoPtx7wV1G8rM
         +DAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825375; x=1753430175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZToTQ8PW4JsaMkDi4L5ivDoGiP/EegAxDULuwZK1b20=;
        b=uAD+rveeN37HfNvNTN+3TorBcgP09F03Heaw08j2SEASL3NKaDn35SqMEwD5pGlfbK
         NNUXQdJ+xsNucIBZUt7VVcY4rAyfrnEclMyNlbaslWg+fSIuCskDEehlxWBSYYcwtcKg
         K/cqpOVmNOBjvRnTP5HzK90cOr9SpjCHAKyVvErtwyTmhJl11KIdC751zZFJIrB9VT81
         lgmjof5d35+cAEKwpTtUv/WhAk8kzQK46TE06KMxNIatGzE+vejcXHIgapl+nj8eOzo4
         umcIqgo5HMNuhqWoML197rEiz9OMhTyWd8FpIWvKk8d+mwxw0avqjdPIphgUgcY03YZu
         BC5w==
X-Forwarded-Encrypted: i=1; AJvYcCUVy/i/iWIFESZQIYVvRcgcz04yzLb9dMcaEw51Hp0qjIfGNR4kVztnpsy4/kT63v6GzmeGwtq/KfY4@vger.kernel.org
X-Gm-Message-State: AOJu0YxipSJUxztM2sQfMG0KzE0xHXe007adLCQ6s/jdZmPfd5Cy5RBU
	aR8xbpM2CVWtcBKqKKMc2gupQ1BA0HPvgqDMo/tE2iSdHUturyZcKtIDKkbfNcGVq2g=
X-Gm-Gg: ASbGncu5+ram3bEUTECG9y75Ijx7S1UnEv9fWZKUZWJJnnOW3F2h9fpyMxqvszldqPu
	x3zVMz0sZ+yVZfbhOh6ioLqjbIlZJi3q+KqwU/Vs+1jCeJxuMV4dYOwly+cirnQqb7NPyKAXIpJ
	+5L3o/MGQ/v/WPet+r7nyBnmU5EmEEHPQS1+lhgsL7yhns95e+K4aD9l+JRnWaa14wOPiEi5IJ+
	XKE/Px08mOQh9iWnCzFL3bbIN36kcrIccp6TOLPy//gO3nFlmct7QziBnC+ZdR4mc4KqTrD4jkZ
	UZrJDx+KtJQXgQG70KoTinZzfUWhWFB2oA/wOhN+CssfxBH1+GJvurPck6rLNKlNsYMGCY2f0+M
	yh9MD50WJsgjK6Dl7uUqV
X-Google-Smtp-Source: AGHT+IF63wZIgbHIjDHSteYojloqPMvMUL5Da8SVDOUi+uUHbZuSXcpOtHDDBRVodn3nB1iist0iMg==
X-Received: by 2002:a5d:64e9:0:b0:3b5:e084:283b with SMTP id ffacd0b85a97d-3b60e4c1e2fmr7838667f8f.17.1752825375521;
        Fri, 18 Jul 2025 00:56:15 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:15 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Ruppert <christian.ruppert@abilis.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert abilis,tb10x-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:47 +0200
Message-ID: <175282531514.45055.4499067354058389239.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202934.3013189-1-robh@kernel.org>
References: <20250714202934.3013189-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:29:32 -0500, Rob Herring (Arm) wrote:
> Convert the Abilis TB10x GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert abilis,tb10x-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/dedb4dd925ac8ef514391adf4267cfcbd4f27ff0

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

