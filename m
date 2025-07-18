Return-Path: <devicetree+bounces-197550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4D5B09D2C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 793E9A8514A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1B429B78E;
	Fri, 18 Jul 2025 07:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="2upAj3hA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB01029AB13
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825390; cv=none; b=KlQMjjs7BYyHV1Txd0xGek5obEPi29IMbTBGsMD41QIOGAqfL5AM6RrkL711DDOJB8ROVmLZ5noz8E1W03VzVcoURC+mcD4gszPEWSzGVM5Fwtea/a1TU+GigtjWEdmFXHRYFQB/6Yl1JtuJBKQ/YTBDp4xJzUF52MunDEfwxcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825390; c=relaxed/simple;
	bh=y7+hycb3D0CBE8U3Q0YDzmdLnL7oASq79gdF5oDq6Uc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QeBhFTK2SyVDFmyc+NpPX6yyR/yHZVfdRlZdlLIRkuUniJfg1ybH8orYW7d4wcemE8ih2UJpbcSQl62sSvYVhsSBoVhsd3BvWXfFoQlCXGn/mqHv/Eiv4D2TZ46hk33NDhnDFu1c01t9f3ol+g2kU1rOhFdPdlUvE8Q6DlCsahk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=2upAj3hA; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a503d9ef59so1274572f8f.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825387; x=1753430187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u3gYttOWpdgwpp/zXG5WCQv10lk4U+RHywnhkxe+we8=;
        b=2upAj3hAPyeFQ+CkuBztZBH++G1YsxkvIhiix6265U8gvKDMsTRaf7IPMKWtra5P8Q
         XeaNbsjmxpKaAQawJh9vnWrRedDj9gxjHWikRtQaKmGoEtmbaCuGgsZlmXjQRjMM1EyY
         5ThN+zR8qyZLSqnwmkEAJLpq72Hp6J7ycWT6FpnerZ8D7C/iG8pzs72yyZ/0omoTlokH
         czpTKP8UhYTGqL9h5++UdEauLyGROl50ds4t5RzQ5u0C8k8I42rlubCMc2PgwmDh1Qq4
         u0LnLueuVICn4iERSQbzU20EcIkZkLxUHHR9VsrDAzSRdyeBogcUtmLPSqxXVx6yd2sL
         WZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825387; x=1753430187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u3gYttOWpdgwpp/zXG5WCQv10lk4U+RHywnhkxe+we8=;
        b=Ud3RVBnJa8Ll5fKbQy/uCPge+maxmBWF8oCM2FP7r2XM9JvNdq1sOspOe2/P2mlLKQ
         /6QpdMrUboN8GBmecoXy9/EFr9eXWrQ7TZXYwyPQ8GG6Ec7PqpR4JGc0qmN8QEyeb+j7
         JYYJ3KYd6pUW74Jh890Y6AuSYfnl+C38TUGIC9VBW5W+olWxn6IkN+OlUk4A8t7p4347
         MmBL8mG0lWzbZ7d/vFNnabDbQP/4z2nXvlW6W99C6SpjyV0k/kXJFOGOhV0QLKDd7chz
         rAkr9p4uNJEhcr7DT4rX938YGQ0+fSqhQt54wOsYi55cLRHj2wOuQ8cLo0aDyO5KT9RB
         cv7g==
X-Forwarded-Encrypted: i=1; AJvYcCXwYtXIolyemlTDgJjqfe2xuVaqn2GYwUmUVF00cqK18ZfswF/dln8+/GJbwUZr02qu+ClCUBcZQ5YK@vger.kernel.org
X-Gm-Message-State: AOJu0YxfSAICNu89h6u7R1+zwYrjR8TMiE+dSVO0lKi/CgXXif1pH4fj
	qZXiZjr0vhX3D9j+veey18gLWs3dDKh19OjZqiMzjVmUgttvWik62FUJp+XSbBDAVg0=
X-Gm-Gg: ASbGnctu5fj80bBh8rvLHmNaFw6XCFAUMww0YvcqnuAhjM6J449H0pUhkBUw4qYQpVX
	W0ZJ0JEEgaxV4y2HkKQ0+lwDE/WZOU0U+pmErLBy1jBbk2m9HFz8OSTCBS3ESEdJyZEsfeSJ1a7
	F452iDk75FUbCkFs/8dKGvCMOzgU8vXBoRpk+v0u3LtmvaizFcEBPzUJfrzRAEqiI8904pubu4w
	CsiJctu7yo509AUYlf/AB3ULQkKCylzD1UWSLcJSYZm4h4o5fQUwnCF0Xd5E8yO1Zf/r8DG4Ve7
	/DGlbqN4K33vk4CaiaItsg4dNdErgdWoRt9oa55QzalnCLXGleTLfzf8DLnff6cmYYWaKBzAspF
	uMudOW7hQhsoExpPYl5wQb6uICmsLHZo=
X-Google-Smtp-Source: AGHT+IFpBXve8FC6yVzffBshmiK1SoLpAGkXD5ALpQXwZZeSlSPGznPrAYcEYYzhbx0iAh7iK181EA==
X-Received: by 2002:a05:6000:4701:b0:3a5:57b7:cd7b with SMTP id ffacd0b85a97d-3b60e4d5d4dmr6575703f8f.22.1752825387228;
        Fri, 18 Jul 2025 00:56:27 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joshua Henderson <joshua.henderson@microchip.com>,
	Chandra Mandal <purna.mandal@microchip.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert microchip,pic32mzda-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:56 +0200
Message-ID: <175282531511.45055.13712449219071610465.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202807.3010652-1-robh@kernel.org>
References: <20250714202807.3010652-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:06 -0500, Rob Herring (Arm) wrote:
> Convert the Microchip PIC32 GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert microchip,pic32mzda-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/82388cb24a2c057316801dc390321cfe2bc0f3e2

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

