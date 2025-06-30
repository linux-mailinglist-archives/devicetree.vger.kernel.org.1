Return-Path: <devicetree+bounces-190948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 086FCAED505
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 08:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49629174432
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 06:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38F821421D;
	Mon, 30 Jun 2025 06:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JBG8t4iI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0ED20D50B
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 06:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751266606; cv=none; b=ndtw7ejrWxdg7NZYneCxG0U+EtZnDTPHi5094LbfdBf4ct4M++nQrYltKvCdpZ0SbiENMBF+nlAPpNcMKuOJEx/ADlmA73jD6bthGUoAB0glMUERdm7JG42DFsES0NwMVMLPDYamMBul4TjIYPTw5x20c1nnyMBmZAI3pQLU2AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751266606; c=relaxed/simple;
	bh=/OJdkfuxyOzXu4rfQeCVTf6S+zbG5rW+/0MB2W1q4xA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=A/LHusRaeFxJKfJNBNLy6POVrs3Op0LPLgP3ZZQUn5/9Y0QRHXKJpC+IHSU9vlGvi1i/6sylh+8PyHvlYv/xplSkohCFcKeiE84/pPAzhSuTSkoNIdprjpTla2jsQSDBZU9LT9s0G6eLTc1OO3JYr+zeH8tsIkKRuayZWRp2ys4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JBG8t4iI; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6095f07cd53so749829a12.3
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 23:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751266603; x=1751871403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EbcEwlMPoK+8K0Wa3mxW6OSQ+8uP+x2nz1ulJY9SlpQ=;
        b=JBG8t4iI25BxkvJp+pWQ6xcScJavjgT1kotIUk01K4W5MRwnYKZCuPPHGFJntOfgzk
         ibPosLZOXsD3gEewKwBRiqBSHhGI4JIBYEZz28pwK9ff0X9nrvviOKc2NX9UeQV/ANzr
         +dLmb9rK3etYC3J3/oBoPZI8fcOUDl5zapzgfcQ53ihjNka+vtvWedcjRF6FzjfWgUhC
         7sb3RBXUlRSF3LGg/97Rd7IknVJgJhSth01NoNBntmhg6zuOEjB54mWTQsRBqzuVHy8p
         JHmWoEnNTXMLMvveKG5whX+WtSivMbBYE63JIKBNdruGkFP5xnnnHe6wboHR1+E2iHZn
         DOfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751266603; x=1751871403;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbcEwlMPoK+8K0Wa3mxW6OSQ+8uP+x2nz1ulJY9SlpQ=;
        b=wRs0+p9PcWeA6ougr8KMpnpGd0J6FZaVlXFP1yaIBSthYx7yvjcRDzi8odtYfzWO+5
         ZeE1ALvXCRjjQKs70p+SM/qIhOxEXcm4gzJ1zO35HBsWKrj2gZDV8MQASRq+0QTgFBbQ
         xDzlCRuSIQH3WtHLcBIQU5ORb+Ds9lVZGdkally4F8jw/R8rQsFFEcukG5YJTHpXpqpJ
         +6j18BktUuLa7sFuKLC/h8MA/yUbhEK4kY+wc0uN6f16p1J+epx7V/VoRaSRpa3Af2EI
         Usrm0CSRibVmbV5NhwjMUpDi/f1v6NfqjE3C7pAhvGGB/RySiW86vsjoR4f2Ur+v821g
         W17g==
X-Forwarded-Encrypted: i=1; AJvYcCWfiEpk1Cy/0aRfftkrNhyCpP/SvXuM9JRSmgww7GTcTjZn5RyDrTibrqKFN65k+ujqyXhnQJm/1eSV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl98mdogBMkA0hCQIY5Prx3yzl+1j+6kiVe9gpVY8MsRbp0qbA
	ekCekEMzVFnL8InJpToMkIF/wVqoaI8bikvTM8F+umf4MhKz1Y9iGRGSrRNChNX8I0o=
X-Gm-Gg: ASbGnctD79eX9LviWapfiK52T4/fOqy4rCQd+fKCIEK20VnMMXsM6lXBtf79bkUKERa
	c/kT/X+ndwiP1LDdpYgN+KfvfumOYofp/ocMOcmNtbvuPGfxYuDpTxLjQYCo3dQNVWzJ9OVlSwt
	Qo4YLaPA+DBmodca3LQPczK95qMs6MOnjF1fV1Ft0wKr83+oNyvdZxSqkwU5PNlnl++gcRGgb86
	ixPkYjYAH6o8tv/l8sz9jeFdUSZwJpcRVuJ+om+bwShncTZq40aF5buRl3WcX1g3lcnZ7HkC+uj
	7jwXjYBSFn+e9dCpxxoF/s0DztYljn/60IO2z5nqAHn9Qp2QQeX7v2RjHHqMyoelvDo02lzxYdt
	E
X-Google-Smtp-Source: AGHT+IFP0wQ8NEUxXNo3uWDGN4V5O/Owg/HraPOpJkav6IiJwSf1ANe4iXPDIZitMnEo6gWmmey5OQ==
X-Received: by 2002:a05:6402:5023:b0:60c:39b6:69e5 with SMTP id 4fb4d7f45d1cf-60ca3de328fmr2215955a12.6.1751266603199;
        Sun, 29 Jun 2025 23:56:43 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828bb118sm5368960a12.2.2025.06.29.23.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jun 2025 23:56:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20250627-gs101-reboot3-v1-1-c3ae49657b1f@linaro.org>
References: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
 <20250627-gs101-reboot3-v1-1-c3ae49657b1f@linaro.org>
Subject: Re: (subset) [PATCH 1/3] arm64: defconfig: enable Samsung PMIC
 over ACPM
Message-Id: <175126660170.23797.11112517547521144221.b4-ty@linaro.org>
Date: Mon, 30 Jun 2025 08:56:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Fri, 27 Jun 2025 14:29:30 +0100, André Draszik wrote:
> Enable the Samsung s2mpg1x driver as this is used by the gs101-oriole
> and gs101-raven (Google Pixel 6 and Pixel 6 Pro) boards.
> 
> It communicates over ACPM instead of I2C, hence the additional
> defconfig item.
> 
> 
> [...]

Applied, thanks!

[1/3] arm64: defconfig: enable Samsung PMIC over ACPM
      https://git.kernel.org/krzk/linux/c/a7d7aebed4005b9c287f9bd9d22c273da63c9028

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


