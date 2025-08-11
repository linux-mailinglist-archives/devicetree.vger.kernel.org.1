Return-Path: <devicetree+bounces-203123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D62B6B200F0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96B183A4DAA
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB0882D9EFB;
	Mon, 11 Aug 2025 07:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sDjh9fFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A502D9781
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754898963; cv=none; b=qXCwYhLfQlpCZQRrpiaGTY4jMwCdXAPHLoHinKHfi3kYohYyJSNNhnmai9TQReiwHAjuetzey7Gi3MUBkGjLgUvZGdH0w3Xx8rAHSR/+BiHIZIPKy70zjjCSB+SvKsx/F50pLyszRrSm7ODhjY0ZqRlW9EFJB+Xviyf3Ig4Reqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754898963; c=relaxed/simple;
	bh=pHEHeCvx6mHDiIUFL+6VywN7wHOrPWrKHo+ygnf0eI0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=alQH9k51xuxFr2PQ+r1j0MSn0ZikTrjcjFY6o0iLkaMxrCw8P7jkD7Bxa1pr1IcOuchktPQSC6y5cct8uLro/pZa20oBfrsdxo7Fe4NS2JhQamM0H4QnAfkW6INT94DazOaR4aMsnmXRiaP+8t3E0BuTsA8ZNV+EpUH5bT9KdTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sDjh9fFh; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-61794547ab4so510327a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 00:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754898960; x=1755503760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2B+PdwnV07kNbcJNhPLT1/ZZi6u4wFzi0KY+3/EKxhc=;
        b=sDjh9fFh77a2dJQGXo6ySdV+tJYEJaUYC0I/5Vq5FDKAP/c2LCAKK+xJeA/rVfGGTj
         HPW5IdYD54SWlYXfMM+sJJ+qphckvEPPra3os6PgDbr5x67tyxoSqyYmsyfHJXgpw0gb
         jpkW6ZjFs4jxmf+uz4Tcp7RqElaw/RXjSjm3+d9/+q1Oi3hM7Z2c9jr0wzLg1W37t8vQ
         KpGBPwMA1mCKMuyIUCxkKpXmw3hEVpFDF0NlUrB/wpciYhtnFXQJ7dV+j3g/XOgd0EvI
         mfe40PLrQf5wouATskqL6nSkcJHmvTYo6+fdhrtb70HOBNqrgkLQKvuSEhMPbIigl+kf
         jymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754898960; x=1755503760;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2B+PdwnV07kNbcJNhPLT1/ZZi6u4wFzi0KY+3/EKxhc=;
        b=G3lW8m2rpKq8FPra94o1jec7fUncpaGV8b/NovKJ0iYLloH6u0Sttqov7PSO37s6/q
         OIBN75Z7HLJlar8ztO0f7KGhAPs7ENTL/W5pB0oXzE/Zmq5bsS66+xO2O4XHlvXBXhG8
         W+mP8m7aSaRYdCrVwUkWI3dEjsiS+Et+9eEPlHoXTufsoPmoAItmJoK2xC74MJIAybFq
         dPqhoApwvswG1sab8dnWKa1M9ZqXNeIsdmRYWqccjBt1+LZW1FYOoHaSkKrIn34VthmA
         Oag0Qg/5Clnkf0G6tIqUg769H1oqziLNrYeG6TOLaloDQhiL3OGqPOESf4c0FmjxetRl
         NYTg==
X-Forwarded-Encrypted: i=1; AJvYcCWaEUdjHy0bGoeQyHOQ2KKFYPBbXBS3sUCKTNSRMcb3Fv4RMquDS1Dvjac9muvfXlbvTUUazW5N2YdJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwRiP2uq6exOKcAepQ7fsw5Ei//c8jUwPp77bUkwsaPW5zIAUVD
	ieRCcvNAyD+J+FCy3HsknaJD3TD+s2hKQmA+gR+ogFFaQy+sj/b3VgvD/WSuw4FMGYg=
X-Gm-Gg: ASbGncvyyGiXqPUIRVNXBdFevUGjZnp86VB4UYfpTZkTh26GmYhwOVLp9QVlDHz6q0O
	RsJ9x+0EJZpInIL3gDE7OT6DlZBYJBKnEKl1YCsSkYFhPMAqTE/QBy7J9sV3xwrifA9dv9MpWpE
	SasX9snMOpkRPgsTz2GGc0Cwjqr6uMRxWbCnKEqhLLFaAfIT5aomYIiNlGKlcp1sSwmJ1KFYGu6
	+ddrhp+4mzROHDaPDYws+eE47ZiU+a7mAIf+JFawGrRVgbY+V8m1/16cObTavQZunC8pkrdOwYD
	vE17/kHn48Zj8qsJXBvHbfS1RbjXjHE4AYe4qnMF14k80Qo08IO2/l/lcZkgIPzdEZ6qr/Xclm/
	snIU5VgwO71ExE4Qi24Y4WD/9C8aIRh/6yuqCWgQ=
X-Google-Smtp-Source: AGHT+IGNmkXLXrR7zQMQNPjPvO6Wbeyt1MjIJrWklNZfntMizipUD1DSUNe0TAxm0XQdiwqXZymfhw==
X-Received: by 2002:a17:907:720f:b0:af8:fc60:5008 with SMTP id a640c23a62f3a-af9de994749mr316980766b.4.1754898960200;
        Mon, 11 Aug 2025 00:56:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a23fec4sm1979741466b.121.2025.08.11.00.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 00:55:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250730072730.1882549-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250730072730.1882549-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: soc: samsung: usi: add
 samsung,exynos2200-usi compatible
Message-Id: <175489895870.26398.4695794885978749604.b4-ty@linaro.org>
Date: Mon, 11 Aug 2025 09:55:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 30 Jul 2025 10:27:30 +0300, Ivaylo Ivanov wrote:
> Add samsung,exynos2200-usi dedicated compatible for representing the USI
> of Samsung Exynos 2200 SoC.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: samsung: usi: add samsung,exynos2200-usi compatible
      https://git.kernel.org/krzk/linux/c/187a3426a664737381a70a3fca3b8108f2300de9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


