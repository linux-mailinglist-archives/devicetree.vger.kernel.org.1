Return-Path: <devicetree+bounces-143186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B35A2860D
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D2781883928
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090F022A4D3;
	Wed,  5 Feb 2025 08:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qsTZvYSf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363AB22A4CD
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 08:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738745989; cv=none; b=ssaPSEc4UWfoSzFZfgKVk8GdeCmuvy8D0QL+H4Rq0of/uIqmH1eZIia0ynCoIPqZPiM/W3rYUd2KwDI0EF+chi37cs2suUpz2qPALukaZ943LNWtL4+K8E7PLbem5WN9UgxBL1a/I+bXSTnZhKe/wMQ/2X1Ra/LpoDPpe9WQgY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738745989; c=relaxed/simple;
	bh=4rdH6GrIXB8lz8HjYqpZ22C0ajtDCyflT20HUHPnBBw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eAjsmQkhAvHlkck0JW4DdCxan8zmnEUTLPEGlVENMbmLIBgLP1dYshStz7vJvFpT0EwusVM+uedy7cKSuhjxKO5p/BKv+PtAwo3pukCdRppMZvI2BIABqmCGixvwHUmtvV792G5qB1XkrCe8jf4zfW4I0OhScYyLhMuty7E2wak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qsTZvYSf; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-436341f575fso75683135e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 00:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738745986; x=1739350786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5wmjz18zqFyKr/G/A4DW/iVZd6rNAAhBzVdAwovC+Hs=;
        b=qsTZvYSfA2iAaSvNAmjNIfOyMh4C4XDBJbJ8lEHGaDffN7K8UItLD8F2opmcBQGBbU
         4OvshB2mP8fSP5DC/dJouuENaIueeg1zN1v/q/ek8n1EhT9kaJnL+pq0ESMyhS5QXApi
         u5nUTgUPgVrel3MlJQ8n1kSiwHvoJyVjLe4T6QDnA2cisHp0ty/SoTB6AN7jczb3zCVU
         GczYmndR+a0IXfCqlvWXB003PQn3wApz5cJ66kr0/dxfrsFZKh1x6TYblP0bggXNbHuy
         7te44fmlbzVnwfi0zPYVp7vTM2QmmM8Veoy47SGXZr0kCplpWUjfZefVgHl6JRQQ6Eto
         jEaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738745986; x=1739350786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5wmjz18zqFyKr/G/A4DW/iVZd6rNAAhBzVdAwovC+Hs=;
        b=qeNElOfrrvnjmtNUzZU/slrVaf3gA5tzfnx/dvIEg0UOiemVLsDgUcvr6c65cKRU2I
         tNE6TDjLfG7bHgaJU+ZQfwMpHu1i661iW6IxunZOHmpr2sLVO9VNSXZhACM9DO5xZ8NA
         OwVqO5BlxP5uasm4+n0bHE2KUP9bHlKwrB8KstFROzdet0f4DOsrQ3dXZufXhR3+aXAc
         fBJ/RJvrBGgSHrRVx23BsOCLdbrpmuUCVDEpDqpxdJY5BXcxdIAqHcmYRPtfwlTTs193
         DjzmymZh96eomzMpFPUUeeozlJ2ar5LR5fBAf7WferWVKwI1qzvmi+se+2udBB0hHXYE
         NyUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD2LpwsvaLi1pTYl/48iZMAaRB+sgJVEICQAuY2WIDL0mbZlbmEdUxfGcMI+AgPROzruqFboJuYSqc@vger.kernel.org
X-Gm-Message-State: AOJu0YwIGFyNKlW+j3l9MVLgK0/T8QcPFSd0038DK9m5uAof+N5WNyFR
	So14Iim65LlE9vDZlbPpn3vy2c8vzRViIkjvUQQ/IyiKKEhJWns0Q0WEuqX6ais=
X-Gm-Gg: ASbGncvBUoFzhNwfIRV6pfCM0r5VHNvMpDqMphXDVs2a8LQ7qXXRsLVbW9WqteKtTpD
	IVkPOFIpk3qFsjiim+8rUk+At8OghTwIASMiXPf7MKexi3xalJESYhKvOxgCUDBiGBME3hdknwu
	cpykhtzKiIwAQ8933T7EnbuzXraEq6jRVqRd5WnlGqD31rnuWUnsiTkdI9vN8yb1yuZ95K70HdG
	z5AtF/JjlUT2UCi6uyvNKQ+/WUi4RK7BqfDmj1n5rkgWua8NQVUyqKS1Io45KhGhRIjGml1VQa5
	4IaFnY4SNoo8p2I=
X-Google-Smtp-Source: AGHT+IHvujR6ocyaWXRib9FJP8dFsztpMFdYT+nb0yAfmtcuRsRIBa6C6+A4Dxp5o66bjEcIRw+i0g==
X-Received: by 2002:a05:6000:2cd:b0:38c:2745:2df3 with SMTP id ffacd0b85a97d-38db49009a6mr1396467f8f.37.1738745985676;
        Wed, 05 Feb 2025 00:59:45 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:a766:1fb1:99b5:1d5f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43907f1b570sm33940815e9.1.2025.02.05.00.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 00:59:45 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: brgl@bgdev.pl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux@mainlining.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH 0/4] sm7325-nothing-spacewar: Preparing for the cameras
Date: Wed,  5 Feb 2025 09:59:43 +0100
Message-ID: <173874597816.7784.10623106141376200723.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203111429.22062-1-danila@jiaxyga.com>
References: <20250203111429.22062-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 03 Feb 2025 14:14:25 +0300, Danila Tikhonov wrote:
> Nothing Phone (1) - sm7325-nothing-spacewar has three camera sensors:
> - Wide sony,imx766
> - Ultra wide samsung,s5kjn1
> - Front sony,imx471
> We tested the UW and Front cameras by hacking the IMX412 in our fork and
> they work as expected. Wide is a C-PHY sensor, so unfortunately we haven't
> tested it fully yet.
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: eeprom: at24: Add compatible for Puya P24C64F
      commit: 78d9ee370ed33cd8b662981fe1f47cff7b4f0e43
[3/4] dt-bindings: eeprom: at24: Add compatible for Giantec GT24P128E
      commit: 03480898cefe9cb5ba921dba9304703f7574b687

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

