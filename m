Return-Path: <devicetree+bounces-205686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDD7B29CA9
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6C393B4DE2
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 745CD302761;
	Mon, 18 Aug 2025 08:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JwUdK/5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9202BE7B0
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755506855; cv=none; b=UtlhWq80+SJkHYec6FfGqIRLjdbjkckhkUdHWaEG4IFAr9cgUQGcdSFETnYR5RZh0xZJ+XFiljak04YGBxa+wlzCg5VvAtQrz1uaGvGcbG0n0lKvrhM97nhQ3sQid6sZeLTn66JUvz093T2X2hP0BIPHY2QpIXTnfIiYyW07Apg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755506855; c=relaxed/simple;
	bh=BFqb772XKvnkGz/X/GiHYC9tY0Kc1FlOx29S2g2BP6k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=n1pBQBoYdQxKR+KN5vbLC0aJZlk8quOozeltTRv3ESaciSVxlc42sr8RnRbbmSs/+VufMugZWArZkQyvyTQP6CEd+NTgpZWnx1x5ACf4W1R9ZStbpQmOxqKrJbCjL6f3VIrSaJ26BK06I25ySLzbSc0iSluKBfBHLPIJ5rM53FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JwUdK/5n; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6188b67a951so647914a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755506851; x=1756111651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BeuayamteocopIdawkFz8GBgWsuO6jcTjJdO7tqQ9I0=;
        b=JwUdK/5nUdkGf0zbwUKOLs+S0/DASbi0UqaDUkEU3nwHR+Ki8Z8Jfsv7aJy0kJ0ABx
         5xaFtRBJpyIdqZthpPCUnb+I5wVK+kQR8UgrdDAt756aGl5ruv44ArgHOKGcjHyhZ74w
         IvkSP2pKgTk3a2OofaEF3+HKt0zyjgCZSKW9FIpQTXEVFTZv3bPE2VerVme+5wX5hEJ8
         3wjbr2HascFvi2Fau6qL+OZiOiSCRVegWe+cWc60BNs5CPSXA5vAwFDPYOyBiW2lRwHp
         NHxR5cvdwiKAgfn8rZ4SZ7CfEy8DC4NKuYDDEWRi2Ke/742SVuw696yP0Fbw40/M8jFq
         XH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755506851; x=1756111651;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BeuayamteocopIdawkFz8GBgWsuO6jcTjJdO7tqQ9I0=;
        b=at+Y1BDr5Q73W6Z90w2qsZLgswuZjdEKq0QtRUFqtWk+ZKrm1GwnQyjOEq4RrIT3Of
         jMVyt1VSw04O7wpSzbir9qPi2P11A5T7t0UP4f37lN0T+rLFzdugAbeWQ6uLVmsmOeMV
         VV8/7IsasuDN1fpS/TvgdAiZ6VlOUm9uGuhulX87QdgXyORSqCHlQ+1BxmTe2Af65rN7
         cgJl1PtTkdxm9akmsRjLjIvlWsO2rI6/gQqFVxlKHsPKQQOee1e5QfSaxBIMOEquwo3K
         A/RFCCxZ33ZkpqO0DjMwSd0W6rhvfUDCVj1Ga6wLdZJk//XLrDB5gEIDIFM4YwNsSy2v
         CChQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJMM/s7u/jo9qQdLFp5FYkuVouFD+CTfbwMLFrhs05qNSCRkhEYpfL/5cSCT/oKVYCVu/nwAfZOHfD@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkr6v/UJOM9SjG89K4/e5D2/7M/tqDcC00umrHx9bts7Z3tXUN
	wAYIzuBT8HH5kblYGIgJdYbsUASuJgPb7CQB4nH1g7okGfQaXEiiZgpLFQTI+c4oBcM=
X-Gm-Gg: ASbGnctORk86ODLc9HxAPteAArSwfDrOtNfe9R1upXHlgcMr1xm37TrqZ6zdYKREVW0
	tANJnuS1Pjn8NZHgCAco2alJfPsRIyEkTLdHEl6GO9LpMDz3IYbyHFINk7jUtz1bsJWfFEOY36C
	wDhwEizEG98ZtxMGQGeeaBr94V7sO/eMVAD5zBNvuXuJPkYy+045Ej2o43EpmHbb5C2JT0cWCaU
	oweRsMUtEU2iK0FWzsOugqKyZsHZtAgVM0UNDfVUlAHc3fA3RUWvgvoQ61fQM0GKfDF+A+5lU5w
	Osqvd4jT2sc+xD+IKECYbHdGATxMNf1p25eLBbKqWdeweLg+CiCZJqj2WtLc1LEsxHbVpO8pCmt
	AOr2ssh/hza93dEJDzOfqoCUkZvrocLVoUw9mdK634hYtuV4+Zg==
X-Google-Smtp-Source: AGHT+IHnFT/QiiX+/jyxr6JrjJHBnX2ZgiTGkz6V56Qs5+zyrhsCVsoAqUSeVCMOf8wng75ASWqViQ==
X-Received: by 2002:a05:6402:440a:b0:617:be23:1111 with SMTP id 4fb4d7f45d1cf-618b0865203mr4787283a12.7.1755506851453;
        Mon, 18 Aug 2025 01:47:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-618af9da68fsm6627647a12.22.2025.08.18.01.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 01:47:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, s.hauer@pengutronix.de, shawnguo@kernel.org, 
 cw00.choi@samsung.com, rmfrfs@gmail.com, laurent.pinchart@ideasonboard.com, 
 martink@posteo.de, mchehab@kernel.org, linux-fsd@tesla.com, will@kernel.org, 
 catalin.marinas@arm.com, pankaj.dubey@samsung.com, shradha.t@samsung.com, 
 ravi.patel@samsung.com, Inbaraj E <inbaraj.e@samsung.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, alim.akhtar@samsung.com, 
 linux-samsung-soc@vger.kernel.org, kernel@puri.sm, kernel@pengutronix.de, 
 festevam@gmail.com, linux-media@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250814140943.22531-2-inbaraj.e@samsung.com>
References: <20250814140943.22531-1-inbaraj.e@samsung.com>
 <CGME20250814141003epcas5p167e0a3d0ecc52fd8af17151cdddd031a@epcas5p1.samsung.com>
 <20250814140943.22531-2-inbaraj.e@samsung.com>
Subject: Re: (subset) [PATCH v2 01/12] dt-bindings: clock: Add CAM_CSI
 clock macro for FSD
Message-Id: <175550684881.11777.14718777449068060989.b4-ty@linaro.org>
Date: Mon, 18 Aug 2025 10:47:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 14 Aug 2025 19:39:32 +0530, Inbaraj E wrote:
> CAM_CSI block has ACLK, PCLK and PLL clocks. PCLK id is already
> assigned. To use PCLK and PLL clock in driver add id macro for CAM_CSI_PLL
> and CAM_CSI_PCLK.
> 
> 

Applied, thanks!

[01/12] dt-bindings: clock: Add CAM_CSI clock macro for FSD
        https://git.kernel.org/krzk/linux/c/5576d8098052952a6c95af86ad3dcb341554ac75

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


