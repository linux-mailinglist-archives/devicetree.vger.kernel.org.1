Return-Path: <devicetree+bounces-117742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2689B7881
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 11:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02095286BCA
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 10:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557A71990AE;
	Thu, 31 Oct 2024 10:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hvjaPhpi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D9013A25F
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730369889; cv=none; b=uQuf7TnA0tXT15GH2ENdCTD9YtyybPYdcI2GTB5PWvB9Tj/rDAUs+MnFu1tqM/Y7MqnFNwYyVJ0ZwD5iTxILH5wEzVWgxoKjb4ZN36SNeQx3cAwTeAOiCOCxlrMftU7+ZthnYLXFaeQRN1Vo2mAz6Fm6TntSH8+kni3bvKVhBbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730369889; c=relaxed/simple;
	bh=2at9QXm0aNBG20u2WqXOcEomkIJcJIuX7V0RN33vqJk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=O3/zaAEq30YgJayElry1k9rLh4rIWJ0dLxuMSGtddOOyPcOY3NLcZu2lGiyYQN+62Nvf/J5fE2LW4fW8VZFxEC7eo4UksEoCtBq9SEP48IFR3OtqgGIJ2GyfFBoVZe5+iRBDIGNg0oWzenyVvToswWysaZC/hUY3Th2BV7oUwZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hvjaPhpi; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d538fe5f2so563503f8f.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 03:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730369885; x=1730974685; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zbKlMfLsvMFTnYP2zSuabkcuPcI1EtftuFYYUuKCDN8=;
        b=hvjaPhpiQn8QkYveUlMlqjTn+qHyMlYqgFCblHIEbfzGDDStNCUvYEAb1hk1OQnr/I
         EtCntOF1WYpAgLu+bmH5O6kWY16mvNlZ9g79jzwm/zuuG2ItfOSwbAAkxrRe0YOm1veT
         sq+tximCBP44djqiL9ghggdGiYejihXjPScPRaMzfijXh0hBUEleZBMssA00QjR25zMo
         GpnCGbfU8gB0v/yH0023/S6Gqej0NCw2YHKLaMZuK16xqXxnp3t9tvs+28+GwtFkaUZs
         X5ilkroN6g6FPAU9TC9L/mXCR+lcUZLmduM4p6dQTeual/Vou9JGTWpO6yD0vpxp38Cl
         tZ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730369885; x=1730974685;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zbKlMfLsvMFTnYP2zSuabkcuPcI1EtftuFYYUuKCDN8=;
        b=daFvoum4qtTtr7XrM9aHEjYeFxrpzLdpO60yZDE+w9g+8DmMasrsiqMjM3hzzzVKg/
         t0gIHhrG0So6JbInzIvZLJwoptp7r58LrXqv+qBzuju9Qtm1N9JvhyCFBjASXtaaiNIg
         eVgP9yb+uzRlUTmJ6XCy9YBOiU65Akntgu0lVYpiTLYEK41X1FH9KR0EzTbXWl2NH3hp
         ImAbChtDUrkpQuaQSq69uUro2dm6BzdLpXNqCnNPesq9qcasx0aY0GMPlNlKb+L0ia3A
         YYcSMKoYlJ1PH7kMI4YEVIeiBGZX2GRjZZH0dXj2LdyP9mMCZah1968NB5mObg11K3xm
         F13A==
X-Forwarded-Encrypted: i=1; AJvYcCUzZaG9nLJpAGxyjLhuG3juQEs/408YLXnCl8NT8x6BP9DgDOoY/Pj3aU6Cjk5AeoF5SAX8weghiHmC@vger.kernel.org
X-Gm-Message-State: AOJu0YyxfSTjH+fju9Zrh0vZrq/7jzimTUGU3GIQ81Tan9DxPHsY78cw
	6JhKQN/h8V2zN8lBk32vKXrrsgEeuVal2MyhboKkJMiid2OXlYKmoBKSuvNWHEI=
X-Google-Smtp-Source: AGHT+IGCX3IRxS92Sd+q6XBt7pJBtLTSBxWZ6mf2JAbO8k9l38YvaQZx8tf1dO/Ew/ZMJtShzY0QOA==
X-Received: by 2002:a05:6000:2a8a:b0:37d:518f:995d with SMTP id ffacd0b85a97d-381bea2772amr2508132f8f.56.1730369885431;
        Thu, 31 Oct 2024 03:18:05 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10e7449sm1678420f8f.49.2024.10.31.03.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 03:18:04 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jakob Hauser <jahau@rocketmail.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <cover.1730070570.git.jahau@rocketmail.com>
References: <cover.1730070570.git.jahau@rocketmail.com>
 <cover.1730070570.git.jahau@rocketmail.com>
Subject: Re: [PATCH v4 0/5] Add new panel driver Samsung S6E88A0-AMS427AP24
Message-Id: <173036988456.2180741.11445064656378016116.b4-ty@linaro.org>
Date: Thu, 31 Oct 2024 11:18:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Mon, 28 Oct 2024 00:42:01 +0100, Jakob Hauser wrote:
> The patchset adds a new driver for Samsung AMS427AP24 panel with S6E88A0
> controller. Patches are based on current branch drm-misc-next.
> 
> The discussion in v3 was not finished. I send v4 nonetheless as a new base to
> continue the discussion. I hope that's ok.
> 
> Changes in v4:
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/5] dt-bindings: display: panel: Move flip properties to panel-common
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3c0ecd83eee9b8584588f629e01d209f2c3a632b
[2/5] dt-bindings: display: panel: Add Samsung S6E88A0-AMS427AP24
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4998d53df6753c3dbb6e960291715027518c61df
[3/5] drm/panel: samsung-s6e88a0-ams427ap24: Add initial driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d5658db2a0768a73a862f8b5fe6daae10d3abfec
[4/5] drm/panel: samsung-s6e88a0-ams427ap24: Add brightness control
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/5b67fdf1668fc373b1e492e33ce7d17f7056a609
[5/5] drm/panel: samsung-s6e88a0-ams427ap24: Add flip option
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/e70d4f8e242bbc4fd39f3a867dc3e33122d7e559

-- 
Neil


