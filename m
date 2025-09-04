Return-Path: <devicetree+bounces-212837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093DB43D97
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:47:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29E4A7C6EA2
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AABC3074AF;
	Thu,  4 Sep 2025 13:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XllKDlSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653E7306D20
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993579; cv=none; b=hFc6fpFN1wy8oFqmbNiF/85VxgwFmOhDWnYdzZ6coRNCK0WD9rsnzdJ86H5LRQDABLc1HrnZ3QRbmtzKFmrale3rolX8XE9lhejv7ZQDfnetRfj+KXx1Kiytbx+WeFxIl2Y3T3+F2a031vTbAPHdC82hZbI/PrnQuwwTAAWSTPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993579; c=relaxed/simple;
	bh=exbALax/KRnxM/htU8cfFCENh4IpreCWgJhwJJBmuts=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kPzrESa59a+ZVD3Cz94TLjE1zqSBo35lt21ZjeVgRPzPl4JfHCdOc7EG0NcFIO/c0PyZm2ZJRhAOi1nFrjJ4RdVLS2fREfQpXeVN2xFox1EydtyHNrykN1Ug07rn4IO/Wwk4rYm+viz6M36QzHqZ0508HkeCGpqFIjueH0bJH6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XllKDlSw; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b0466e52cb0so12617366b.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993576; x=1757598376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWzUXsK84owgqc3mGwjxow+K46mQbNDiKZu7L/mwO3w=;
        b=XllKDlSwVYM4Dm4Eyfg6UnPT9NGYHhowMX4kzz7IeWlSwsiCSzBy66y1nfjR2iROfs
         KZ74/ywLobRVkbXPbBJNd2jAx/XM+T/tZbRg1W6f8kwWw1IDBhMydMM6m9XXN/rEXXY7
         mRJ/r5x3pMlF0ipbplmE6ad7ym53WYpeSuXPH9HmH2FF03bZ5kOG6rJK46teDxxyrh69
         RD4FFDxSsYdRZsF0JWGceHkOT2qjObiJJXhykEJ7sAvn22Wa8qV+cnZvtWdpeENARRJF
         6DmU9ST+6yT1x/1S1qqCwKD6mhbALNoC1pVg5ONceldmh4tkWV50hFFIF5mY8LLBqoYu
         56aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993576; x=1757598376;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bWzUXsK84owgqc3mGwjxow+K46mQbNDiKZu7L/mwO3w=;
        b=w4a/TX9hQCSoRMiXVV+XLlpu5fz0yQh7lfRBdqpK8sDRTDHgFE/elmLEFV8X4x+iYD
         oiiOUOS9mLDBTRmpUH8CK9wl2NEOC5JpA6Yo11wwmxy578bhcN1P3HUulMbsT39RCRfI
         L+EAoKCG+HJelMxdzdo4rTiOIebJ/4uvX0Y3L7RBs12gQV8LmSAZlUej43W7+cJSErUT
         mSaC2EBXJzLQzaK4ViMi54CILkeC67EHZkNSyL9yQHND/gPLbi5Kl8fQha2SDUQhK6B6
         UAiJZyjCZR6/Aflg4WZRbiAfXbTNbJrY08cu1533KHZE7L95BiyHlSksC9EAE0Cfwh8e
         zsmw==
X-Forwarded-Encrypted: i=1; AJvYcCXno9sWEYT/enBuTl7YMqZAhI7IkQLJv3Yy+525DkpMhX636NFqPTi06qJXso0hloB11oXwUtmbGbFi@vger.kernel.org
X-Gm-Message-State: AOJu0YwDU/PpbfeVQUchtlTXmJoBePYrsxmtvyo9TILMTfESFPDu/MNT
	Sa4vMURw+zlDkuHQ6lhDNvQW+kpQP9yrAuSG0n7A9JcNBUTdFNoPlBJpYWccnFIWD3Y=
X-Gm-Gg: ASbGncvTn+bGGR5sJBtl4Ei9vdg0OHJdixp+cC1QsDK2JThWOPiHI0cCQXsJFgeUkFX
	APeTg4NMANIjgBKeHkIIjc8oWCTAGgEfgbCy4iRkq593miIltztThHQ3T36W2vwHvvLoeLmIW2N
	nYQw2/mj8LU+/D1kJpimavBUWFTBh+x6gBcswl1CSyzP6m+/cCTx7xZkUMi4qamky9gxQ9oRj8l
	2i27lmY9ziB03ho4V3mA/7jSRHpyrf4V6trQPe+OBzKYPGq/dn3I7GLRP/O0CZDEq6WXbwQ5ffq
	a7oo6rKa3qy9bFm+YjyoXoONz7rh1L4O8xvZMpEZ+LOwzxSgXkQn5vaMR758JtUCkdG+lu+DP54
	8PqsxHBR9HCotvpV04RKOO3K1u9eJuT5iBCsFrQmqHPnT1Etz/Q==
X-Google-Smtp-Source: AGHT+IFRjqi0rL8OiC4NZXNOIG4FcZYbVhKsdzHVKskJZtLsw0JBOE11012YrpNCw1Y7RX8De6y4QA==
X-Received: by 2002:a17:906:4785:b0:af9:5a1c:fee5 with SMTP id a640c23a62f3a-aff0e28e4e5mr1209123966b.0.1756993575559;
        Thu, 04 Sep 2025 06:46:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413782b94sm1180634266b.35.2025.09.04.06.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:46:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 linus.walleij@linaro.org, tomasz.figa@gmail.com, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
 gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 smn1196@coasia.com, shradha.t@samsung.com, inbaraj.e@samsung.com, 
 swathi.ks@samsung.com, hrishikesh.d@samsung.com, dj76.yang@samsung.com, 
 hypmean.kim@samsung.com, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-arm-kernel@axis.com, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org
In-Reply-To: <20250901051926.59970-7-ravi.patel@samsung.com>
References: <20250901051926.59970-1-ravi.patel@samsung.com>
 <CGME20250901054303epcas5p3d8079b7806d995bfaf3004cbb4f95e41@epcas5p3.samsung.com>
 <20250901051926.59970-7-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v4 6/6] arm64: defconfig: Enable Axis ARTPEC
 SoC
Message-Id: <175699357327.171312.14592323274121562181.b4-ty@linaro.org>
Date: Thu, 04 Sep 2025 15:46:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 01 Sep 2025 10:49:26 +0530, Ravi Patel wrote:
> Enable the Axis ARTPEC-8 SoC in arm64 defconfig.
> 
> 

Applied, thanks!

[6/6] arm64: defconfig: Enable Axis ARTPEC SoC
      https://git.kernel.org/krzk/linux/c/eca86a61aedaa40310135c8799b28187afbc677e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


