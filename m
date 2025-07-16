Return-Path: <devicetree+bounces-196785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59247B070D2
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 10:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A137F17F1C9
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 08:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B932C2EE982;
	Wed, 16 Jul 2025 08:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YCYr+BL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A5723ABB0
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752655369; cv=none; b=eUIFOtzom/S7sIux92RUyGFx26ZmVZ4l+1OL3nZI7GyHO8LRsmNriUwatFIy0i+ZPe6zOCT75qNEs37THKVJU2vQ1PmANv/KAx4bu2ZaiZUFz+CoT7nxEY5ExIdeN7jSswIbDXBofZ968bteC2yKm96CydHNIQtAQTQot24oPu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752655369; c=relaxed/simple;
	bh=B7SsdO+MenMYckXWR84ZUdMgGeszbtfwtQYKlL+IKug=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=U41uT043vWUj1X+EPaqbCvdpA1gNTLv1GfB91UdKT1v4EvIqi4Bp7wJtliRdS8ENrjbMZj5jgkdx/7vCtGkwQH/2dXHKSVs8/EGOdbwZN+fGj4BgLTmdEr6XrLcutMVpsmwygcW07p75kDUxzNtQ4Yhzt2DeO7xH8USR/5vVd9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YCYr+BL7; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae3ead39d72so134008966b.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 01:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752655366; x=1753260166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rEwTO6jDq9O1mX9IG6Eme66k2aXlrb5FWoDpo6lnm8I=;
        b=YCYr+BL79jTPQR9L1CxHCYOtcpEswJv268F2OgdQcRxjzaEmNFdYmAZu2zHQAk63of
         ONFw7M5fHR46bIsXgDAny65czF1Rvozo7nqGMSYshOLgrArYDIsoXSRf/vFFYj8tdXvn
         w39FGMlQ0pi3PUhp1uEb6c3tyET1t/ZkhSQgQXWK+QMZc+4p0X9XK6pVDaT0/FuUqRqJ
         XrK3S5305s4595oqFfmTYxw2hqR+zKYV1AwAqPT80WMO1/3YOok1bw657wwzB2sWnn7A
         eO7LiQx25JDmbR7hgIiJuQdNJV3j52yQDGjFFhsb3ulqukl5fkj5UtUPjyBO44pFcZU6
         xXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752655366; x=1753260166;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rEwTO6jDq9O1mX9IG6Eme66k2aXlrb5FWoDpo6lnm8I=;
        b=OydPUvXb5jrda0iL02aUHx3sFDWuRnLbkNgQpWKcQqJdL6oYGkwQf1frBBxjSDj3zg
         h0h4Ovj+mKtX+XvXWPR55P6MIxnt0OAT6RsvAtJQa7g/yJHSAnJahD08G7WNfG8P946W
         VwSuoK7pUskLGzlGYZwik0GUxeOL1fMaKN2DDBaxF6gT5Qtvem9SSkfWmQqN7efaIwtI
         gOwqaU15PPNUExqrjd1dpFhklOYeTq9GQg3Q/ULZ/Zm/oR4bidazr4WQR+dVOA6+rU3k
         2F9ftdp/gLDUCSEieSZTkmUBholvEw8q6iBHsQ2lNFrRqUV+liQqZ1zYmSkx3UabME8p
         J+pw==
X-Forwarded-Encrypted: i=1; AJvYcCV7iWiCYlu1v6H3OnuJTdFsNM9yr4Db8u0AdHqjOOgUwhU7b81kRwwzKf93watGnn65IU+PQGMPWxYL@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/QPHzS9ZSH+MnY29huOmdTDYoT/paqAMsOOXprmESDEJERxy6
	5AN9B4SNK+EBf96yt1BNflhtxJUoXvl5ngSAUlp/vYuBgX62GySeF16FTw/j2SLmqDg=
X-Gm-Gg: ASbGnct0MXbmAPFyUu6LKgW9upIeQsSBtuSAv93FlcpGVuWfdhlD8gtQ2EY2tB5tuFi
	60jxWleivYpEpFUc9du4Ig6z7F6wb51NTHA1+Tnfv3Htl/z3SQuQLmXbkIeDF+4XS+6eGQNac8T
	VuykDIalz8u9g3k+ok2LElV3XwnoGBvISIDPAcW0QF+QTUEj1PMbIibu7QfJoWfLElEQjqZKKqo
	oYMW8QL2iCIGETthsZ/VUoCBLiqySjsOrgX8/DvltN9nJ68HKXCNml+FLuGr6xAMr0kac5eos8Z
	Bk3T57S4kIjYi1fy0S9DR/kJsWgoIyWfxIXwNV33IZjqIZGziIkRivKXKk1z8SpcynnNqW5FXVF
	eyMK6osQK7J8rJaXpkHHihqNXClgPlMoMkEla
X-Google-Smtp-Source: AGHT+IG5VzneoFYbewswXVJiJQA7X4tnJGGDHvgb8EgFHw+/z6nhgITDJiBHyRBEDaIMb0avqqonAA==
X-Received: by 2002:a17:907:86a5:b0:ae0:8621:2233 with SMTP id a640c23a62f3a-ae9c99cf09bmr84890266b.6.1752655366273;
        Wed, 16 Jul 2025 01:42:46 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294bfdsm1132749566b.120.2025.07.16.01.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 01:42:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, 
 alim.akhtar@samsung.com, kishon@kernel.org, Sowon Na <sowon.na@samsung.com>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20250702013316.2837427-4-sowon.na@samsung.com>
References: <20250702013316.2837427-1-sowon.na@samsung.com>
 <CGME20250702013332epcas2p4ea41cc442d42fd7b2c742e1d08b26182@epcas2p4.samsung.com>
 <20250702013316.2837427-4-sowon.na@samsung.com>
Subject: Re: (subset) [PATCH 3/5] dt-bindings: soc: samsung: exynos-sysreg:
 add hsi2 for ExynosAutov920
Message-Id: <175265536480.111577.14907577908476237198.b4-ty@linaro.org>
Date: Wed, 16 Jul 2025 10:42:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 02 Jul 2025 10:33:09 +0900, Sowon Na wrote:
> Add hsi2 compatible for ExynosAutov920 ufs shareability register to
> set io coherency of the ExynosAutov920 ufs.
> 
> 

Applied, thanks!

[3/5] dt-bindings: soc: samsung: exynos-sysreg: add hsi2 for ExynosAutov920
      https://git.kernel.org/krzk/linux/c/687d974a218a719f7e729bef9c498ec36f18115e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


