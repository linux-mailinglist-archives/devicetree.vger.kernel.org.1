Return-Path: <devicetree+bounces-152962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D40A4AB8A
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 15:13:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED2003AD51D
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 14:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C751DF730;
	Sat,  1 Mar 2025 14:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IBjpVbat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C49263A9
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 14:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740838406; cv=none; b=L3/9TQdGWbP0jqARwHQgFbVbfHIlzIH11qQWMSmB717w78LnGPzav5YVlqUYn+yQU+YFwY3XygFDfa5MjBe0ru6DetzzDWfvlQJlejZqWVEiZQAVCrfLZcwZmfmAguLiL2qfOZKkeKBGckKMWTxlvO7uJa1KiZ5KSqWZVCU0keE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740838406; c=relaxed/simple;
	bh=jiT2JUaC/QAsy28BOMROpUvqNfVZo9Bo2xs780cMecE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EelQ8S1wB/bfSseUlh97zKlqIwT0Iwejlc0eVTI1er/qNKjpLMfXT2zfHyAlr3Qcht4VQdyRGbioj/8BClAvEpFO0gnW2eapjO2cVfVZX9Gec8VvmoqxkIXbcRofw+S39LcTezuwyUSixlXqobxdR4v3oX1nxT01qPBoMRsYXzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IBjpVbat; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e5258a2bd9so94842a12.2
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 06:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740838403; x=1741443203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hIMmXa+05o7cFUzmMY0oE5JLkS5yaur+8NGSr9bhuis=;
        b=IBjpVbatbcjKVLmf6CvUmzmS+uHgTWROXMEu3RIB/VmsnvYnDVGxWpkGvq38uQtV7Z
         t1XaciXjApqJai78XgeHW6H2uNFmpOxaVR0zqxuEcTFoWvlSzP2teiHDrdVaMhm3BcDf
         CpRGpTXNORHjs6N2jV8Q5XKLuhjOkBeNOuSRVMzoOT7Wg2cMyp8EtkFVdkLOW7OdkQYo
         YRI61pGaOyDYXka2XLFfSBs5trPfH+9n6pFSfBp1X9Y1P7ecNId3ajouI2vQQchVTXhy
         DH/FI/aRiN/+Mkp4AUscWMzrXq8nolB6SieQJdHiSCBfpKIZ1J9KmatpcVid/noyUubB
         V0xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740838403; x=1741443203;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hIMmXa+05o7cFUzmMY0oE5JLkS5yaur+8NGSr9bhuis=;
        b=M1VIR/Q0iixl0aKfz06ih9ofBNkz2aJjXjxG0L8n2V1Q/EZ2bR6kHAzhvQK6asKPe5
         Sp0uNUwdXjTFkyctjpGxgriQkJa8ppSHgIQ9AXf1yPbaNlTS7BexkEGMXawc8cL/3DQ8
         8AXY0VytKrz+iFUGSHZYxK+FYzDjjaZpQD+pXkB1A8drSiS0XEuRLBqshk1LkrXQmQBI
         OwMbYFmIeIXqcdS7FPhxrqoD8tIPMzpgDFrhCPzaJKjkSirYrOSNx8fDk/hCu/KIRg/h
         +3ilvhblv/XzHGq6c2eedacQI5B0G9DP88whNyIcTG0CEe20ipmvr3wduO4Hvfwo84mf
         sETQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpVkLFIRMQrCz5dXMMckF6kIvAb2xtoDP915hG7HrcJ6u4FQlM1CSdOiq0LWLzhhV652Td9CQE0cA5@vger.kernel.org
X-Gm-Message-State: AOJu0YwulOPUz0Lv+166kp0nUSEaeKI3nuX0WDHXnQcGwzAl9wau4tBN
	lYmu1BEM1j9XXHCfx/dl81ALWFyfLdJrFaIeg5NA1D6CuVwD3DeoDxqm710xHA4=
X-Gm-Gg: ASbGncvvHx41B7FMXSWtzmEtN9L8Ueu6eYGu3zDrR6LWNEjclJUjeEBE6hKuQ2r75Go
	eBr6nsaEnyvCQlH5H873eXRx771VK+gG66MFT3LD3w7fOAnV8ydDVXTZkpVexuoaBczQXqqd9RU
	IdYaqEnbBcTZQR+5+2PbqVn5UKWITS/llzOmt9HQxBa3j+7ToeQR6I0hCaedCIO/msggkKgSliG
	FUDYdEVlxi0IFkQEMh/lqpXRptOE6b5/STZxyRLFngm8KDe1l7GnIB7mRzozzBfKg/Atm+Aevuw
	L3ThsTQ7ZlUil8OTSFFiZ7fhSNWUAjBHe6qlYG0BvZRMPfBNJ7fE69qxqaYe
X-Google-Smtp-Source: AGHT+IHamdT8SxBWV4TfuLdPou3W8IVb0ZsVqTsHbzvccKkfVKbSEv939NC7kdF+ka7ZD+Wv5iaqLA==
X-Received: by 2002:a17:906:d542:b0:aa6:ab00:7b9d with SMTP id a640c23a62f3a-abf27360ac8mr179019166b.4.1740838402656;
        Sat, 01 Mar 2025 06:13:22 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0b9cbfsm485532366b.14.2025.03.01.06.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 06:13:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250223115601.723886-2-ivo.ivanov.ivanov1@gmail.com>
References: <20250223115601.723886-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223115601.723886-2-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: clock: add Exynos2200 SoC
Message-Id: <174083840012.17657.16502862587559253626.b4-ty@linaro.org>
Date: Sat, 01 Mar 2025 15:13:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 23 Feb 2025 13:55:58 +0200, Ivaylo Ivanov wrote:
> Provide dt-schema documentation for Exynos2200 SoC clock controller.
> Add device tree clock binding definitions for the following CMU blocks:
> - CMU_ALIVE
> - CMU_CMGP
> - CMU_HSI0
> - CMU_PERIC0/1/2
> - CMU_PERIS
> - CMU_TOP
> - CMU_UFS
> - CMU_VTS
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: clock: add Exynos2200 SoC
      https://git.kernel.org/krzk/linux/c/6662c09c0ddf10ef97b430533bb9e2f0a8fbe471

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


