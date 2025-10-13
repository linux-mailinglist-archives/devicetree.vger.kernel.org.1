Return-Path: <devicetree+bounces-225789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A115ABD1053
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E7D73B729B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF38156C6A;
	Mon, 13 Oct 2025 01:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q5PlrC22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768E72A1BF
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317288; cv=none; b=e5RnSMeFUe9+Wq8puRUQ2ithDDtYIYFiWejr9lLRsfvuYSlWu1UFbhCbzRg+OQ7nBwrLkuPMUi/91r9iRFl5EIsXDNC7VkkLIrz19sbENBT2r8L81CG8cbplGZJPqX05vuMPAM8P9baHXWf9giQYqj13zPz3t8zkbiyQ/EVl6Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317288; c=relaxed/simple;
	bh=hCmW5zBZE9uimTQ5vZvzqHkQrWXaCfMbVKZK0Y379fU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NzKCSFnNOa4ubVjTPMNKBtMmgV69fAMNl/ERfaq2ox0E7j40+xvowzpYuXUvXK7kVco7podw9mychMHBQ9d0jnTEX3npHHX8OBcodzCLQv2VXv/CslevjImJcaTnEfoz75ZYkwenoloLlzVoBp5ex9sV+7oTduYB5PSWOa0k4NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q5PlrC22; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-79b03c2d4f5so27571b3a.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317286; x=1760922086; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x6Z1PIUihZ4CoSKz9QE5gP7AidgQI+jfdksvedwdF34=;
        b=Q5PlrC22f2GNThM1tOGYpC17lHt7rz1g87ia4BGWQ4cM7u9y0YJJN83Bgwqq0t8VhC
         eZBHEFu2IPTYUWzvYHaU/pTcXYTmgmjk0TnPoJ41brih2ybDjyBpVSqVniEEKbnmT1ge
         m7igMIfr1Xz0Y/Yczw8OP+C/LggxpSesv5D1b/Cbu0fnfuh+JUVzAhG+oPiw6nJJASt8
         bdNOiXWwEuOYyDx2i9EsgS2KM+tbY5AVHc+IELBUFVSmnUTfUob6i4W2HRa7j8S+mo6U
         26QK4/4Qdf+EXhqYJQfzMcaqljCKwhLu/JcmWDaCubJGcjnwdfbMFaZ6xFk28By4n2UF
         kfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317286; x=1760922086;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6Z1PIUihZ4CoSKz9QE5gP7AidgQI+jfdksvedwdF34=;
        b=b3XBlpvnVdUcS9wgrrby+vA1CuOIsO8jdypHHd7ZYdqJ04FFOYsklEd/rgRgASR3S8
         mTUiAHCobVrtOroWksXfJpMa400kRWlSgisUU8fs7U/p+clV0FQsshCXf03gU1b1Qbwn
         IYexMOuBlErHWowG0lqXnhXY/qXSv+/VgNwm92q/QFROwMnCVfxA/uFbO5ft51mcLUja
         lN5/STOgUkJAvE1omILlBHd4B0RzdP9HYSaW7CwEw0nL8fucEtEVQJz79K2ZkaLKvOR2
         wZSIy7lihxN6+QPe6JWmJCYj5JDSsWtQthShXhjMkVKtuLGtKmSqjH9c/SiEOYbGXe5v
         QFPA==
X-Forwarded-Encrypted: i=1; AJvYcCWH93nTSTjtdlevCjYFXEmtIlB+1VtDw0vh7QmaHKpVh4OOtdcwR+mONYqBhgmAIiykZbXVFDB2NR3a@vger.kernel.org
X-Gm-Message-State: AOJu0YyM7VHVyWAuYK3XnujEFMoc+7XD0P6JZbkACR4XZoJOIgm1mNZ/
	6vbrRZLhYKsP+jCcpRzYrv4YpfE0EklAj49UeglNfumaqQOfYJUU6LgmRuOw4lWcDBs=
X-Gm-Gg: ASbGncuR+Q85PTe5ryYiKJ1W0CQLbHQzHvRirryM1UBQBLcN3S7BVtbGFZSIef6D9nu
	kgCoiekkZhPAi7bioDPhhPJhAzGqtRGY+4quRjtN5sGsBsrQ4j33ntbmvHpvqjGvqQAkeVAf0bO
	Bzi8qN8nCbqoTtk3BhuJwQuVNk9sHUSVpxwyWy4YCQ7pkAa8Sldw0GMDvdgnJggnghOtcKiFWXp
	Bm+DavxU16Br7gbsRvhjOKZxIz8i5HQJBcSIvvKhxGRP4a7CwxH5M5VqriSSul3ydWjzc27AhXP
	2v0BY13Ry3YYUFabxHyd1wxet5E521DdgWlHuxLFImiw924qGnjDTFU1Jfn08t08ce2RE2uX0Vp
	VqVbH5z4AJNy2/XcX+k+A3TmOY39LDNpr/K3fIX9ZU+sAMfWJy0h8rvEkJLZx
X-Google-Smtp-Source: AGHT+IH4f79PGF3pwTJWa+RZTaKvtY1wF99tutuYa9r5c4lDGKIA1fkdUmCffSl7ZEfXNQxSTp20Eg==
X-Received: by 2002:a05:6a00:39aa:b0:781:1f5e:8bc4 with SMTP id d2e1a72fcca58-79387a281famr10486681b3a.6.1760317286563;
        Sun, 12 Oct 2025 18:01:26 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:01:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251007-power-domains-clock-google-gs101-clock-v1-1-1ee73c453ba8@linaro.org>
References: <20251007-power-domains-clock-google-gs101-clock-v1-1-1ee73c453ba8@linaro.org>
Subject: Re: [PATCH] dt-bindings: clock: google,gs101-clock: add
 power-domains
Message-Id: <176031728187.32330.16757640384726154867.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:01:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3


On Tue, 07 Oct 2025 17:03:10 +0100, André Draszik wrote:
> The CMU can be part of a power domain, so we need to allow the relevant
> property 'power-domains'.
> 
> 

Applied, thanks!

[1/1] dt-bindings: clock: google,gs101-clock: add power-domains
      https://git.kernel.org/krzk/linux/c/8c644749ab6e42f51fce82e3325f58ffb70f87b3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


