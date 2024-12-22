Return-Path: <devicetree+bounces-133354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 519189FA616
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 15:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 492F01886BAE
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 14:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4801518F2DD;
	Sun, 22 Dec 2024 14:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HUzFO46q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4684E18A924
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 14:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734877571; cv=none; b=lyEOAhUtdSo/VvmPBVX07MAv+Zvkst2yyNsvIM1K71A+amk+SxjU1MQNK1fBBcjkbbr9Ywj9PucfRmOhb4PvBxvNccuglJBG+XFDnQZVcbbqA91l7/ZcJXb8FSNuAyfUVLwa1kCb7vcbcfG07UhTsN/LAFdH4/WUAJa9zGt9pWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734877571; c=relaxed/simple;
	bh=nfREt+F6UPpxUaKDDrU1bIh3Hds8x0wN+gKl3MzzQOY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ivgQW5+QUfiOU6h6+Yg8JHP1+8VTPVzVNBAnvh1fArBG7zPMfnzJONQfprH0rrJVXa7g6NAO5K3kNR6ZpMu5geLq1yfHs/CyCa2Sc68ROom0sjQEO0qbppFSJKc8P6Q+fZj+QP8dYgT8gfVkGUOP2GXT3GyrbIcn7wLy+EdW6sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HUzFO46q; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d3e5c225aaso581577a12.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 06:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734877567; x=1735482367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5fv2CUS7ZbxpkqmLJHrcp6kZwBl6Wt3zoIFWY+Ye6cE=;
        b=HUzFO46qOFheUT4pLb3ggtXjMCyXnSV4CspxqPuLTO66IhdwdSCKInDqDvVdy4IH0O
         QHLiT4LuwO9yPWLBr2hoVtZzWmYnPR/DuNATEzWDHWyyPTzgD+6XQY6oB5wPtlXpMAwY
         W+3rku1HpLJ2qFrxHrfaxwKxxhojl+AY/VYjdFaCdWleJRkowAkzA+qQ5klNvks5fokD
         4ubO2nG/DEVY69mhRqJpK/KandivR7iz6EECOppL45v1UZwMv51xlo19T+TRHV21AAeH
         uv11C3+APc75/kqtpbLtCVA5C3S0K4dwylHg3EGtjssI44EkCCbRY6FxNWeJUoKnDy3y
         rT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734877567; x=1735482367;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5fv2CUS7ZbxpkqmLJHrcp6kZwBl6Wt3zoIFWY+Ye6cE=;
        b=J61gP70ctKH/JsdMCnllryEuOtEXA3zC4EppiJ4CPML7Ba21fNbrN/5aVaX1jdCNKi
         j1rw111g/MpvwGbyXNcgoiJ3uFJdPqjP9kxMMKAM2g2qAYfWgI/HJD9qJgHvOP/+hAVO
         xrJXcN+vLrpLOs16WGBY81OBCF7HmBIKF9rCelLg9QPatA1SkGcNAx2DpHTDCpPYioj4
         J0vTzTv+vVserS3qpUAfACIg2tkhCCTqp+4YT0IulTx52MPxiqlMtC83gg+AQOQ01oso
         9VFl8hCJfmN8k0I+zhX6zE810zU2teSVLr2JYWMSLgq0j+lIRUHYqbM3beUC/uh1WfyM
         lZZQ==
X-Gm-Message-State: AOJu0Yy6n5Rc5FRK7BG2ssKGKPTTb602P8O7MMqdg2JWzKftCCZA2qrs
	hZqTApjAeTDF3/QQNT2lm4bjdcub4eq+Rc2x7OMv7ZphBmjRmkLpSR5LE7j+cv0=
X-Gm-Gg: ASbGncs06IMFu+xVaE7s9wV08eUfr0721MlpXC3cWMGUR7G6G0H5Et+ie3IVEAiPxNi
	32ZIs8IALpD6iaZYp1VPabzALSWjkFEZ2V/nP8oMCllEavyJHpHafA4lqgfoLiZr6iFhSjG4DgT
	lMUEb/+ctdrWk8HlHtsBTwHk8rnJ3LpFVByzdc1Ybxw6pbZOUW+IYDTsAzPqvMsdmYk+dNZTM9L
	Tkj03II+icQkrJU315w0uqR6LiWV1qLUEoHzhXH3ZcfKVYG43RpqLUPDpUf4VStiV5aL8jVTZqR
	g0R55XX8hDHo45OJmJE5gwWXyaQNmhI=
X-Google-Smtp-Source: AGHT+IF6cnIbn11yHwZazziFYqCjkPi3z318Kw+gMS01o7Ckh/xs17Fg9qz8u39nDgfnBnEA00iHqQ==
X-Received: by 2002:a17:907:6d1f:b0:aa5:a60:ad6a with SMTP id a640c23a62f3a-aac2d4472c8mr325314866b.8.1734877567625;
        Sun, 22 Dec 2024 06:26:07 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f577sm392716066b.18.2024.12.22.06.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 06:26:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Umer Uddin <umer.uddin@mentallysanemainliners.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 igor.belwon@mentallysanemainliners.org
In-Reply-To: <20241214115855.49138-2-umer.uddin@mentallysanemainliners.org>
References: <20241214115855.49138-1-umer.uddin@mentallysanemainliners.org>
 <20241214115855.49138-2-umer.uddin@mentallysanemainliners.org>
Subject: Re: [PATCH v1 1/1] arm64: dts: exynos990: Add a PMU node for the
 third cluster
Message-Id: <173487756559.3738.15589488923856918285.b4-ty@linaro.org>
Date: Sun, 22 Dec 2024 15:26:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 14 Dec 2024 11:58:55 +0000, Umer Uddin wrote:
> Since we have a PMU compatiable for Samsung's Mongoose cores now, drop
> the comment that explains the lack of it and define the node.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos990: Add a PMU node for the third cluster
      https://git.kernel.org/krzk/linux/c/86c0d7f230fe71952cddac9905e4c090e09ecf3c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


