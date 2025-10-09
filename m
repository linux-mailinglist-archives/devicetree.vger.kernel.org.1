Return-Path: <devicetree+bounces-224908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94051BC8C29
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 13:22:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E39343AE474
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 11:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC892DF70E;
	Thu,  9 Oct 2025 11:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m3MIRV9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6C22C21F1
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 11:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760008902; cv=none; b=Eir4LZUhI1YYao6wIDSHEs+wttNQ+p9Q9vfct7Aj13IcDD3YCfM4OGfKOmbbODx/mGZGwJnqNGsovgwFEG4rhFpsu5loGXr6BAt4EvJBqVDtUijn8haIRvyAQJaGDHBTfGvsWA07Q+1Q+lvyHFrWvnlmhg6h285F5LKRomX3gwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760008902; c=relaxed/simple;
	bh=6sSh5spmOZHPAgftosq8zlVm3OoCuBCxRRQ44DRZGjc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=uHXCrYbVCm5sJ7adNp6forBVQsGkoPoo6nho6K0TmEir8amKGOYLrYdrr0zMMP8zXzJPXnbw/mYANzh3jrqQO12U+JsBwHuHMTcNYJzZVyzwm39LFC+xJFRjWE8uO9a87WDNjiGCljLqBkWKmt55IZFPkzSOkKNqtshxI1/NTbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m3MIRV9b; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4256866958bso502128f8f.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 04:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760008899; x=1760613699; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6sSh5spmOZHPAgftosq8zlVm3OoCuBCxRRQ44DRZGjc=;
        b=m3MIRV9b1XS61m+5IN+IwLqYRot/WxOMPX/pLjsCv8pEDdgKmbpg3e3qRS4S2z7Vup
         PKrcV6CymqWAM6GSIaXRxOOe23X7YuUh3wae8EzEsO/U06z1ehli74U8TUS33Pu6u7oL
         iC2qhVjg9zkMRMtYDp3SueySjadkMGF4+k89xmigDm3mXBkGLJVhwRDtUJNuNc0pKul2
         6EbCE9WRy7ieKb0HCvyW0EWlIK7pOOw47pUT7dm1PBSoM2f4CZgFJqwXfHJYyFcZHi0U
         J9OPt1mIToH1XILlU7ZFRAJO/U5WrMI1ohhkQdb79FwPhcGKoIjmVy6p9Rg32Yw+Ptyg
         Fn2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760008899; x=1760613699;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6sSh5spmOZHPAgftosq8zlVm3OoCuBCxRRQ44DRZGjc=;
        b=ohI0hXYYXT6B06nb876pPgKyFZaj9A4lnKYg8JZ8MvxeBEEkk0Da61plrsYM/pFfRJ
         WdkLlzTyRPKglUxrvawgrPMHphKzz2z/lxTnRlqiCuO6RB0ynbW266wYZffqBNXpaed1
         Y/92bFrAFucx14d8MgpAJB4WJk7H8Cc1W2HBeFjlPIdkdfJhgGlTk7F3ZKxrNvbVG/0N
         hHnVHTJIOYB9m9LaStDKH1u+YQKjZWNtUiO8920IQAuGRnUW6VVTjiI/CCfDr8pD0jQD
         WovIasj6CUXI/Hqk33V0FyvM8Sul30v3RTv4My0CbZ6HH8wuRpxmXt4J4WY+iN3Y9SIv
         SCuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXzYPnGUhlTXrmRE5HZrAdcpMM0LVT7WJ+A9hfdVXbdGKv8iKfdd67riA7VUv5yWeli6nL/moHzjiF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8rbGS0/WQ78hKiIv0n7prPg48xFTMnGrTHr3Shpu1CmMakudi
	JBwGbJkMnEXqA6kryawGcw11quRMuwIeM2IKmWVQPKPpJNgKZ9lGVids0eloPmrxNCs=
X-Gm-Gg: ASbGnct1t5SZpmMOiTtJ+AaajhYbYTJO49cwN+fxuHUJcBVsTOh53/9ouPLebwualxp
	39NEtkpI0AwAhv+CANmFE2me2kbdZ2xTz7zDeK6qmzn8gRHRYS4kKaYTIP9PKomJJtS4+s/I8lJ
	eZKqbMasZCOd4Qgkoy8blw2iBoa4kDXSEPWmzP6/9FLJQi3MI5IoWCY8UBXTLT60R2dh+nhidtW
	epz0Kw8toz7f60k9bNow6NvvLJeqPmtdSALNZl1QssjXr60CkvNqiqAJDRGV3KA4ovCAY8uEHd8
	FH1BOzh/XRUFnZ0OMzzpWVuswrL0zSOY6mlQS3qHf/ZEs3tt9x9OQ3/d/hyDapDZGVaXPogOt0U
	uF/cpflpwV7lXAgM89IJ2AQE7Z6Kde8jt99Dhx6CxqnN4lQxMK8FwP8eIZag7migZ
X-Google-Smtp-Source: AGHT+IFflhQlmkSN/2tNWXDC3THAhllPJpTf3aMPCOXB2rnMSjN2hhW4xvzZzF5ZeV/gFPVv90cBLg==
X-Received: by 2002:a05:6000:607:b0:425:72a0:a981 with SMTP id ffacd0b85a97d-42666abb02bmr4351249f8f.2.1760008898811;
        Thu, 09 Oct 2025 04:21:38 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:5333:92bd:dab:a2ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e97fbsm33992893f8f.34.2025.10.09.04.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 04:21:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Oct 2025 12:21:37 +0100
Message-Id: <DDDR31N2P498.3FYKHZRLUS54G@linaro.org>
Cc: <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v2 3/6] ASoC: soc: qcom: sc8280xp: add support for
 I2S clocks
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.20.0
References: <20251008-topic-sm8x50-next-hdk-i2s-v2-0-6b7d38d4ad5e@linaro.org> <20251008-topic-sm8x50-next-hdk-i2s-v2-3-6b7d38d4ad5e@linaro.org>
In-Reply-To: <20251008-topic-sm8x50-next-hdk-i2s-v2-3-6b7d38d4ad5e@linaro.org>

On Wed Oct 8, 2025 at 7:56 PM BST, Neil Armstrong wrote:
> Add support for getting the I2S clocks used for the MI2S
> interfaces, and enable/disable the clocks on the PCM
> startup and shutdown card callbacks.
>
> The rate can be easily calculated since the card forces 48Hz,
> 2 channels at 16bit slot size.

48 kHz?

48 Hz rate will result in too narrow analog range to reconstruct anything
apart from beeps probably.

Best regards,
Alexey

