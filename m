Return-Path: <devicetree+bounces-104423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C96AB97E539
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 06:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DE1828112E
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 04:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCDD72114;
	Mon, 23 Sep 2024 04:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DvbuOU4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFDA1103
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 04:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727064677; cv=none; b=FT+I+bYW9oRAenBbZOZWKr/8uXNr+sqI7jlvXmZqfxgX1Pe5IfICLcGm3DhjjuSe2PCRxJRxd3Q8JcmlFs+vmKVW09i6eEOblWgZy0TBuEYlf/kPBxXEcf39UQdjlhjA92xSby2l50cTIPE2f9rwuWVdwUL8IzM+wkJt9lIkp4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727064677; c=relaxed/simple;
	bh=KHRUOtY/XNlpU5iTpnb1Ef40DmxCEguKJgWXmtCFIDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QtJkLJ3D6R7J9ZZBz4gaP6Lzyq6beEharqTTUDSI7AMWPv+52mHSFudQNEjA4w4W2VWFS41w5QDMdfLInMP6AVY0BB+QXrQuEQro7MPr3ZsPpGkvk5AtqXYdiIjiBg9oRIVZaY+VUYVXeEvtcJLNRcNEZOnDSfhjDbiGszehZAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DvbuOU4N; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f78b28ddb6so33333231fa.0
        for <devicetree@vger.kernel.org>; Sun, 22 Sep 2024 21:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727064674; x=1727669474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bzw04PZf0Wp70Ne6HQFmFnwvWqAFwMmQEnzY+hhgqtY=;
        b=DvbuOU4N+h6iUMRcHa1C1/nsKMYGjH/J9OgmJB0W3HTP9vPFvCODlUdB9/RkQoM3vN
         eGFRfyvNtOQ+coH2YOUgglkkj8HejJwLajSE7QvPp8+xvl6CLKpYnx5XUQQh9x4aDiYp
         APxBcoYuZ5d5jN7PesKLMBxvGP9t1iM+4Di5iKarN9QhZFvcbOVXJpmGL2MTSAzqOKfU
         UjEQazPWJzlNouvI1S1eMXOtuhTIWvy3u4JhfRXwUkt+cwY2HFZS53nTQQMZQePZaM7s
         puJuWImJfXsyKo0QK3a/7kh//F/Dhvi/AHRCSvUeD7Ph5XSTwJ6x81LeiSorFvFuKgsw
         o1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727064674; x=1727669474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bzw04PZf0Wp70Ne6HQFmFnwvWqAFwMmQEnzY+hhgqtY=;
        b=Y9X1Yim7Rha4iIqsDhs54xp6DRBuSpQp5z4o7C/9r3vO5nH0juwBh3h8ob/bMETwat
         jV1gaHxKoPRXOGi9c/kM1KEvgvpIi93AlOzcQiHt7fRLQQz2VQptMYNVRxdEBz9lK2r1
         BXxX6q0eKd8ep9Mtl6EQdK5S1VMP9xYQGGYQsfK5jDGuS2l+lI1/EVdXqXGZaLSngKea
         VreyA8WES1UdExLbNVLtsMR2bUbm2QDmydN3ownQetweXOTg6n76fSXr1Akl8NFm+G3o
         M1fz1GMpP0MEsuyiJmZB5NKuHaaQpIR0UXWF73kB9wv7LAu8ncnvCJScHKYLih+Zl2GP
         hiQg==
X-Forwarded-Encrypted: i=1; AJvYcCVR98+FgteJ+iSHlmEs2nXEfSFUbH+0wkNAXC6/Rcz622bljm7CJGZfuuCnpRSfZgppro4HrX/Doj7E@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd4hbUlnDPcaoJr5gUYR3pXlnnvoYiWmlGBGHk6w3l6x5tWfeK
	3ZoigYs2LJKh5mRQY1T8BopmSzmVy55ftU4T0ydJGBxYbDjTNvzrt0w5qbYfZZIyz11uj8TDvC5
	OjTk=
X-Google-Smtp-Source: AGHT+IG2mI0V+zIkUmlvNCdY6wSIS0STTWJT2Fx84R5jhDpbx2HRXBM48C73YcCdv04YRYnjSNzjqw==
X-Received: by 2002:a2e:b8d2:0:b0:2ef:20ae:d111 with SMTP id 38308e7fff4ca-2f7cc355cb4mr48406991fa.6.1727064674047;
        Sun, 22 Sep 2024 21:11:14 -0700 (PDT)
Received: from eriador.lan (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d4878adsm27824431fa.123.2024.09.22.21.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 21:11:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: mripard@kernel.org,
	Fabio Estevam <festevam@gmail.com>
Cc: marex@denx.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: lcdif: Document the dmas/dma-names properties
Date: Mon, 23 Sep 2024 07:11:09 +0300
Message-ID: <172706466234.1395184.17165074006162117967.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240903162729.1151134-1-festevam@gmail.com>
References: <20240903162729.1151134-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 03 Sep 2024 13:27:29 -0300, Fabio Estevam wrote:
> i.MX28 has an RX DMA channel associated with the LCDIF controller.
> 
> Document the 'dmas' and 'dma-names' properties to fix the following
> dt-schema warnings:
> 
> lcdif@80030000: 'dma-names', 'dmas' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> [...]

Applied to drm-misc-next, thanks!

[1/1] dt-bindings: lcdif: Document the dmas/dma-names properties
      commit: ee06d5f52c1d35e319bd240c8438ffe5ed02b24b

Best regards,
-- 
With best wishes
Dmitry


