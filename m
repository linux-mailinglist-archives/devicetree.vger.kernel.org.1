Return-Path: <devicetree+bounces-213726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A27B4669F
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 00:23:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA7C9584320
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 22:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9925927AC35;
	Fri,  5 Sep 2025 22:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VverU1BD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD85295511
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 22:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757110940; cv=none; b=ILdQGcfu7Z0HYJ4aJa6EoVTpXXOc8U2laLGtd9l/6nOQGO7+uGruVt2jI1KSPy3W7kyGWsoQGbGTzXmOJyxBVdPi3G+gOdP94/RsBX7ezH/13D3Ya4J6XFaB/BpS5I1/9TiqKJ1gdugpfDjnpLiufhJf5b62cMHliNSgew5vWZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757110940; c=relaxed/simple;
	bh=4usknWEddfoi3Fas3Wgvr8wktFDBvKA4BChkoL+6ZII=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=AjOKwgsgxI6ytFtS4zuWqPwUdVe9Y7fDK54/n7GntS1grFNYD0iPx7egOCK97hr/Wh06KMK2JS6ZgeVJ2ewNO04U+eZacQcrzKaj+b+MX2nw4ZA0WkRKgmswBj+yerSgq44ybwKbCb2oD7NYQeuz+51WFchSPGX/+BUxkgeB1K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VverU1BD; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b52047b3f19so1159996a12.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 15:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757110938; x=1757715738; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajXrw2kXWcvaLXXTxcLJ0XN71Q9IM46eyqVaC58AnZw=;
        b=VverU1BDJnvUX8bN3NHzQpdocZt2adzhSN+Nvj1kEQXpwEUoHb4s2Hk+f7B5dHQqS5
         XoPbhSV21MPrHBEdHIM/V5iesW00YhsTgyw9MieXwtusEfh1olRTdulr5Hp4w73sXBcG
         GF1AhUNx5hqhohVjD7cby+al96I1HI6Vhfnu9q7rSg9r7KOSGPl+G73lb1WGO9sTER14
         c6TGeuRbmmnohho1kEj9+WQAzqgJWn4Ni9UUGOAVPRPzTkWGEEI558IErMThyfbMAOXe
         HH3uxcSDX/L+nwx+q8O1WK1R+WC822ophD21v5O72qmlihLfPN9K3x4sqqL8i0XpKNIi
         IuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757110938; x=1757715738;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajXrw2kXWcvaLXXTxcLJ0XN71Q9IM46eyqVaC58AnZw=;
        b=pduiUkkowZWoBwejW+hR1R1hoqN/1io1Zb93MEyktM15k1qLp8OUdxQyM3H26WC/8o
         SN8P0LIeGnN+mCNMJM5TpSXvyd9DusEe5UJyTGyfYTsulolg4WI8CVASCdoxM/KRppJS
         Aa94lO0pTEQTF7uwI2Vc/06FxRfPWSv6rMKkZuqqQlb6FxF7Zr2JQYe/9EI5/w9RUN10
         C65C3C9hHyeuErqfe3L5Xu+GyuXS5yp0ZU0GNLqWvl9+odxFNXuZeyYMIl5dJdqa43ey
         kwQtBRcFDg7i9ILp9J5mzh6g5vIkXsBWzVt9pZ68kpvhJW1YRFeBs+yGEQa0shIQPyqu
         NalQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhXg7VLyDKFFpoM0kUMjB0VzHIK9qPH+jvVAUYwpbd7DHr65gejObTFVU1WbEGh0tFpKlw2XQ2hz1e@vger.kernel.org
X-Gm-Message-State: AOJu0YzyIEn6WeQqQh0OB/+9VYKo9sbYozfJCuPR0KehcybJD3cRpNhX
	DKqPkHokvgIvCGl0VWuckudb0m7WKqdb4SPqe8jQnn5/dZHsCLkSQcqJbPX98nueHGM=
X-Gm-Gg: ASbGnctjExpT0auUXbSUYuXLmt25tmAdQ6hoURY8I+X6v1mPmua72G+QvEhn2O/AUmX
	CorvlQHGXBMnG7QyD/wPC7EVhhXGZwRdAjh46pnb4Q3qbrFIF3mx6yf882/F19mwmQy9p0PSQqz
	EJrzGMgyKowRjEBvPEuiqINE7r+A1gdqkHlbOuAu47Sk/dEcHLN+cBUMbFxT0D25pdgcTVEtrIx
	xOdPgNyrMeBkReV0Xel/S+rohueajA+E5v4xGc6XbNR/X8JRCXFsTpmrtF9nVUKlWkKRKtYhnZA
	qxJvrixfv9n/OOR2+Mqct2qUHYqXqlFQuaddLbzLNRmTKG+HiOPxF8V69mLqVlXC97SFuAG/abh
	jax2Etb922pX6GOoagQmb
X-Google-Smtp-Source: AGHT+IEvDKPFc4gicRV4XwsSMT0l8afEt7vdoanp91e0aTRQHmWzkYtjOcm3TMm9WB4qrIiHEdmjxA==
X-Received: by 2002:a17:90b:3f8f:b0:32b:9d3c:13b3 with SMTP id 98e67ed59e1d1-32d43f60f43mr501790a91.18.1757110938006;
        Fri, 05 Sep 2025 15:22:18 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2af911sm22510696b3a.23.2025.09.05.15.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 15:22:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, robh@kernel.org, 
 Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: uri.mashiach@compulab.co.il, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shuah@kernel.org
In-Reply-To: <20250830215957.285694-1-jihed.chaibi.dev@gmail.com>
References: <20250830215957.285694-1-jihed.chaibi.dev@gmail.com>
Subject: Re: [PATCH] ARM: dts: omap: am335x-cm-t335: Remove unused mcasp
 num-serializer property
Message-Id: <175711093712.666031.7805837780140276251.b4-ty@baylibre.com>
Date: Fri, 05 Sep 2025 15:22:17 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Sat, 30 Aug 2025 23:59:57 +0200, Jihed Chaibi wrote:
> The dtbs_check validation for am335x-cm-t335.dtb flags an error
> for an unevaluated 'num-serializer' property in the mcasp0 node.
> 
> This property is obsolete; it is not defined in the davinci-mcasp-audio
> schema and is not used by the corresponding (or any) driver.
> 
> Remove this unused property to fix the schema validation warning.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: omap: am335x-cm-t335: Remove unused mcasp num-serializer property
      commit: 27322753c8b913fba05250e7b5abb1da31e6ed23

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


