Return-Path: <devicetree+bounces-197551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4634B09D26
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:58:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1CFB1716F8
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09B729CB40;
	Fri, 18 Jul 2025 07:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="cd9Ca9UM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BA929B761
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825391; cv=none; b=gMmyKpcEFzPVNFzWLocuaSJqH8l28It5SHrNXtjYnd/PdDdIf2ni1i6rGW0C4cI38Gx1LdoQ+/8AOnLTA5PSVnhIsUuwH4yzwva6lLLleJRsTBjDqrPwEA8EB0AT3QqkFvpPq5OcjBYkD4yR/YBzT3FooDedYZzg0rrcdnKryuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825391; c=relaxed/simple;
	bh=C9bqcrGBhTrsWpfUjOW4kU/Mkn12SfkpmSUDhAhPK+o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d2V0Ldu9KsRBA7efbuPMCH6UbpEN4NqdLDeH4G7Z6VWrlCCcBLzztWzqfkH0VplHyQKiF7bas+xQ9bT8h4cNTxMTnLkf11CYk1WnvrmLv3zAOt/TtFla1Orp9vRT57zddenE9kCRyjLyZusK50GqWf6dQcZ6qcWeztvCgCm7AJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=cd9Ca9UM; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso1218957f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825388; x=1753430188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2WjJ11dRN5Gip96AGcE1HrjIgLasYoR1jtLMOpXHO0=;
        b=cd9Ca9UM/JJ9jTuwXzHFn1qxbb8pXmcWnK502LQlyY+FLGMT7OdfR/zoEXZ6zUqaeV
         edgGEA3tJTsbDoObg3JgBTmU+0ud8xQOCQWmqh6hAQi6l0tCQMu/H/Jhne3QOhJarBwR
         pZceQvTUuJbyR8xdrNmtJ7NQigHfMrMXG/9xT7OgZBGxLkvbvKn6Shp1xEeBGydTtk99
         pp408/vFGghdURM+XupTpTyXRGhKWX5DLm+dxoJzGMGR4Mgvj0C1YjJwozd7+o+szfKm
         jq2OypeDFvUDZBtUlBxVIyrADORZ9gyBr+VmjhFOO11t6BBDmaVTTTqP/e3wvpBeu0sf
         rzzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825388; x=1753430188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2WjJ11dRN5Gip96AGcE1HrjIgLasYoR1jtLMOpXHO0=;
        b=rJ4LfyrgpK5cDQfDFTgvM0E0Tg+g3QJXNaNXtSak72dygp5msKyTgnwTEDw/0OjNsJ
         1s3LgQC9CAvKmpkRXM/9RbewX6tFXONfgW7AGIik29sZP1GVIEKOaW22qFxqO63KVJ6B
         pJhNn70sHn9I02QnkeKtayX/w0I1qVJtqbWaxS3zqkCAX8AkFTCl3gt0tZktvcAL0if8
         MRFVEEsEXj61jQab1OD9WxoLFNKlvMQnYJyddLi+UIkIOrk+fWNt44eR+FwcaPtuhKK+
         J2PTnYX6/o78Dqcs3Qd8UUdP1xqBBeevzESzm7xwSt/RGBjSMr7AIZPqB/Oj/rntrspg
         Z7yA==
X-Forwarded-Encrypted: i=1; AJvYcCXyUA+C6P2icovyexg6zD89MRlibAxDrMxBIJFmh9t3eFnm3c9kdrNjPTIe2SIaUlhEJhdL5J4UDD0f@vger.kernel.org
X-Gm-Message-State: AOJu0YwhHdWzWLQduRRoEm7ycKXbZEWZA2t/u/Po1jdBnPeeMgVOLqe3
	2nisS3jUdL9us0hQtM+zCB9kMj5PC0Uv6E07BsklI4oM48FVgZn2yUBKJ7DJJ0kpAho=
X-Gm-Gg: ASbGncsFH8kYoQkua2opwaE09vucWO8YfLhG86LAb8ZDnsh2LyzPBGOUrtelUWc8Xa7
	5mQ1yuMJmPPbygI0RoThS5v7/iUgBzqIvc5qBMS/4llQU5HuwZDnFmGZJ7vqWUYC1brv20N01sG
	s2Ei6xVAsAcEOfGVkmdwcsM/9XFpizPp1k/bmYrxKsruyw4aGzVCsHTAjYaoOA6mT0TJnDoCH2W
	t1ha8utRdNVQsyUlXEKTjkX3S2YfUg56o3Bbj8yC5Rir/WJG489E9bi3fFMj1N8126Q5GI11mWq
	lIdXYHhOqGA3dYL8bCfWz/Sg/ogYbwIYrAPX5+DH12lVUI00+Cprd8Ey3tW+6qSBiqN22qyrc0g
	EFJDiF2LBTX+MjhlA6vol5abpeos2mgc=
X-Google-Smtp-Source: AGHT+IFzwWzItXEyAswXF2j8T2V3Jltv/4LmwN9EFBQ4BjRqOu8vs9NQK02Z8i9W2KisnoCadrxSJQ==
X-Received: by 2002:a05:6000:2209:b0:3a0:9dfc:da4 with SMTP id ffacd0b85a97d-3b60e518cc4mr7354018f8f.42.1752825388439;
        Fri, 18 Jul 2025 00:56:28 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:27 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert st,spear-spics-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:57 +0200
Message-ID: <175282531515.45055.9916675888040268718.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202753.3010240-1-robh@kernel.org>
References: <20250714202753.3010240-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:27:52 -0500, Rob Herring (Arm) wrote:
> Convert the ST SPEAr SPI CS GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert st,spear-spics-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/3a315c97fcfac3785060c1980d0a81ce76a24cc7

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

