Return-Path: <devicetree+bounces-197542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F000DB09D10
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E5983AE445
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29EE9294A02;
	Fri, 18 Jul 2025 07:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Sh/UfQU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A964A293B48
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825381; cv=none; b=hmyw4ak/d2dB4P3nYvXNGOW7FiFRuSEgNdZIrMokk8f3k+eS9fLOqB5AucxChIJGBD8aiU5RG/yc+8HxyYlXPKgv7MkEb8KsmYt/PU+anTMq3VQcTr9JIWz0WXtGaU647RSKQRM6IvU6NIZCl7sOup4ttBbxcSMzDYyWsfhkwok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825381; c=relaxed/simple;
	bh=ftRw5OTTN9pPVwHGIIkCV4t7mbPYyECa7PWEzFp3EUY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mbVg6cbGlOZK8GZ0aSoCV5AwUDLbRiLsI3UtfLKcMBpIqqM3+djXtXBTjoVoyuvq+JbARbBjQkp7Ermn9O4867izscCTCeL8Gmvrd58kksAJyzjrgA5uwvp4soUpoSHnq9evDSBKfF8WteCVTQZxgKRLPxO4yJpwulupXA0i9yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Sh/UfQU4; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4561607166aso13826875e9.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825378; x=1753430178; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WG6llnBzWL3MBIZ4vJuqyDtZMdkbt5W1e9HnPWqk+0=;
        b=Sh/UfQU4a8MvDGz+54ZodRBksOHOBUT2CJMqHJn4jmScX7XTMuIG50vSTZO/K6uOej
         D/EWk13U/mlVo3k1gOdP/j7Dco3Wu7oVbas6lhBLEluI+3wlqmqWLNYRNm1Pt5yWS7Ki
         pM+AhF2bpCSSTAu43kHpXiMeAjJVIxzBZIQ9B43IZtjYbMtPRs2XL8AzQzl+nYC+K42g
         hEW7zcTrL/dMOd1vHX89aewTE4nwhlpWAE38L5m5M80Woysa+55IlYERtiGMla6eqQ4y
         Umip+dCztfyo6mz+Qz2VCGH6Wqzfcxp0cBFcsbMUJJKv0NfGbw5an6Ipon2iF4X6Ldtp
         eDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825378; x=1753430178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9WG6llnBzWL3MBIZ4vJuqyDtZMdkbt5W1e9HnPWqk+0=;
        b=h2tEPhlK4t4ptrGzd9KXXLNO56Q49DW0cj0dTUdGlE6v9CoPKPLrmdFg5tBTHvSWgv
         sw4h9Kd+PRZw49e0VaPMHofLlA1y/rYWMvfAiRHWkDBIASSRkmF8Dkgholm7bBTx4c2b
         pxJPs2GBG7X+IjA2/v0/F7WYSqHGOY8Ds4dg3ZOoKdttjEPGsEkdu5nd2bUGlQYbeFKW
         iujXx6ywIBM4wd30jJAkrefErdxQKUtUjPpwDePhTK6iHoaa0tihbnOXbi4VRzYycSrN
         3+P5IkJ3xm1rZXvM6jQb3YBYBJG2lJfmvUeFE++aVRM33PDLeiGtCSX5hMMw6rHBF41d
         S0Ag==
X-Forwarded-Encrypted: i=1; AJvYcCU7o++mtVAsKj7pW3aIdVQMBsc9lEwLe6vAms8mJlsGVT59EbGb2jvwM2dQbI/t1pnAH6J2rCtiojqT@vger.kernel.org
X-Gm-Message-State: AOJu0YyrDmTL1koXJKInh2RDVSy+r6x56wVjM5yt99zXmqqS09No68CR
	qTmSxfslo/MgCrSpNNEIzkW/0M4pQVgwHeSeOSqoaQxHGAXMNz8aOK2zi3+zNmaFCZA=
X-Gm-Gg: ASbGnct58DkFwT8pdhHHRMvQGM1h0oLreketMXa8p1D/Vi+H2TB0FYsYctGN5ejrxzb
	yks2fE9o1sB3vBGh+NKhfnS1ldrl7oLw0OHwJ4vEZ2GSZbe6TsdbBTcdB4EZ0ey+hcAG0zWTVeJ
	MLhJwpF/XFAxHLwfdBEbG1TRBq5/ZD4S03UXDe3VVeAY+gLSNKwrds/HCFsKGhc4cFR+VWAUxnF
	eVJ//tLPDe/NZhJOctnsurpvZkNV8I2dGOEQgonvG46Np75vlUvORA9uwB7cJFbe3Eoqgl9q2pn
	glKoTK0HJyyx62SaHgOmwGm9JZKOXybTPPFV3if/ISmdIsqLdyRjp1hfejgXEE+9YgWU996i/ze
	XJ5vTaIRBvl+CVHpZR5a6
X-Google-Smtp-Source: AGHT+IFjvvtk0Gk4O4i1psaL5hF0WvEUOZLUp4xP7m1e2rW7bDd4F500xiEFX6IzV9sl9d9EjIZj+Q==
X-Received: by 2002:a05:600c:1d03:b0:442:f4a3:b5f2 with SMTP id 5b1f17b1804b1-4562f7c7596mr76814415e9.6.1752825377878;
        Fri, 18 Jul 2025 00:56:17 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:17 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert apm,xgene-gpio-sb to DT schema
Date: Fri, 18 Jul 2025 09:55:49 +0200
Message-ID: <175282531514.45055.3453969331255231197.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202821.3011099-1-robh@kernel.org>
References: <20250714202821.3011099-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:28:20 -0500, Rob Herring (Arm) wrote:
> Convert APM X-Gene Standby GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert apm,xgene-gpio-sb to DT schema
      https://git.kernel.org/brgl/linux/c/9bfe54c511dbea9ae00db26abba1a084fb0bca59

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

