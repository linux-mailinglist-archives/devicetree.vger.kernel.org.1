Return-Path: <devicetree+bounces-210706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FB5B3C9C7
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8927BA06DA5
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 09:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ABC02652AF;
	Sat, 30 Aug 2025 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c85Jnuhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6492638BC
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756545604; cv=none; b=i907phV/JZwfT2DseipD6CaiYQQJDKbc3hL3KaneiIL9LcWMOqX4Zzts4beipkmqrKu5Yb1KAx7Tx7utpvzg0kYJiRb4JoHhFcTG4vZMfEQhJWgfSDM4rHeHG+h2ptHH+CGklxmmIXBCLUa14hznRDM7ZfmSn8j0XvnecdEZEsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756545604; c=relaxed/simple;
	bh=vKZxK3WqSG869YK1ejnNRrbE9AJOdCdAIjU5uTihOao=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bK6/6xehEZnACsjTCW+te4di/OGWyFdrlm1klKyOZxEyufBTHTi4Kw+bNI1yaLCFSYE7sa8KsvqUo3kGpybdJUIuKzvkhj33MK49s4fMlKJf83bjOtqdn89GtuUkSP4477bP5mFPuDNqA2bgub4e+7FumetAMumWMixc+DY/hcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c85Jnuhg; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45b7eb55a02so831185e9.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 02:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756545601; x=1757150401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=18xNVcTt+Ut2Li1HIkvZ7r0gYk2tthQkOl8QvQYyxWY=;
        b=c85JnuhgFQUT+JCfsBEPePhJ7BRwIpFnWifWiLtlAEQNVHK1OTjQ28z7e0PNFDEQul
         ZWsv6tD7u/t2dSbKSBfQNxV/rzQOvWZmE3dn9zJ1BLBVUP3pVPQhnZWykqhMwEPYovmd
         93D+c5w9rx3vhTsh32MNa/XpTlM0atuMbZOhH2/1St/6DmXI36jOpfUtxMzPGzIHrjqr
         CySNcsaPyPr0wCtc8RTfWMnh13Bx2PwEVapXdo9l8M6OQWCyMaNvYeET2k/A64gszMnS
         qknlMJTr35Szsnuv3z7YC5x+DcG+xLJ5jnbkja78wXVNnw1fhtzFMqm85jbfGr+zxEzz
         TyHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756545601; x=1757150401;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=18xNVcTt+Ut2Li1HIkvZ7r0gYk2tthQkOl8QvQYyxWY=;
        b=oLBG71dok2A4Bu8nG8Uh2Hjou28iCxXejFwGDB1wPw1EIyIxKdLNo1lY4rvT1mt4Sg
         2ClzJdmzDlkNL9knh/+duFbZtX2G7x2AL8QHukZf+Rz38dMdaMrx+VwOvnFjCrvJqYFi
         0vs8u7ENZGrbaMLK0K/cyb3+8cLew260yY0f52UHHe7NWQrraQh4k41FcxN+yrPl2r8Q
         i0aki8lPOsJq6ZN6kSBFfEEcLuUUgUNPEiWXelTY9e8r6rOZ8wFVs1HWGec4A+0e3SQc
         IBafVE9kt/MWNaQPushIh9xdBTtcZLWx3F+jijTjoOWbXlXP9PDeGoMoZMAxzARnkNkL
         oo2g==
X-Forwarded-Encrypted: i=1; AJvYcCUOZhx9odl1WnCdiiPj+oPsvP9r6ZkCl8w6/TCILsIDRDd/uJHxicQ3h/x6VweFBsvq0vwachwmemZu@vger.kernel.org
X-Gm-Message-State: AOJu0YzjPzO+K2QKTBGhOjBVh+VYK1PyF/2tdWCdrDQjkPLx0J11zDWE
	4nzqUQEeAhmBhy42nty+oUYGLANCy7aVx2TqxjS4cJPLrWdhpGGAPrwY2IeF3Dyd25k=
X-Gm-Gg: ASbGncu+6BlzCZ70IoCHrWrvZkL3bcPho5W4bUfO3hfpCvl5+uDXKgcfz+yhj12kOLd
	EoJ8cNLHChwwuS6Vgxvcvuc1Nyk7JGpdtICYayTxVgv/kBW319G9dX+zgn2Cf28CgF/D+4lMFOW
	JveGkxX/80dHqRIfV+Z1+S1gw2IDDJu2H32ijMf/9kkJiOT5HbXyg4miBRZPcAhGBZ8DsoNhss+
	QPJYGEYGPe+1iKX4uHfpUKmAGzZXzoJAw6E7rKjdKwy9zAZOeYigknvwTj/L4/kwnSGHtsCHUcc
	vXzVqAxpNtJznKrEijPQSuWM233I1PWzT8yDmPrvzRZWaTqVsMo2FXcKnKpgtsacu0DFHciaKaU
	TtzZUlF9wOLZ5Xiz150z8l95S64bgfGX3id6t5zIvd2MfMaLNQA==
X-Google-Smtp-Source: AGHT+IHwLu3eO3G/g09J4U6BQtf6Smm47bmXXP9dfIdI1vYcv6TcxL9zbzWeDgmZ0/d3DtuvTitzvQ==
X-Received: by 2002:a05:600c:1c9d:b0:45b:75d9:2363 with SMTP id 5b1f17b1804b1-45b8016df84mr21110275e9.1.1756545600887;
        Sat, 30 Aug 2025 02:20:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b8525a94bsm21186815e9.15.2025.08.30.02.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 02:20:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, linux-fsd@tesla.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250822121423.228500-7-krzysztof.kozlowski@linaro.org>
References: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
 <20250822121423.228500-7-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 3/4] arm64: dts: fsd: Add default GIC address
 cells
Message-Id: <175654559953.10738.12020984387702262826.b4-ty@linaro.org>
Date: Sat, 30 Aug 2025 11:19:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 22 Aug 2025 14:14:26 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to GIC interrupt node.  Value '0' is correct
> because GIC interrupt controller does not have children.
> 
> 

Applied, thanks!

[3/4] arm64: dts: fsd: Add default GIC address cells
      https://git.kernel.org/krzk/linux/c/a874b387213bd80b1288884aeb427cb7599eb5ea

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


