Return-Path: <devicetree+bounces-241391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA63C7D4E0
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 18:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5F384E0126
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 17:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC709283C87;
	Sat, 22 Nov 2025 17:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BC6y5zpH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4542915E5BB
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 17:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763833501; cv=none; b=LM/TMmM31z2OZDGwIkXyNcnXdJDg0BDa6aZV3wmPaCoNz0qj2GW8999ET9T1xofsqityfcnQ5hO4IiHV9EUwhszI8AeSQcfBJSOroIj/SBMUrXvki431jHJzPgjmi30wNtkVCDXuCjSB00allnRFSLoE4JZHpI/YLusXPSuFuZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763833501; c=relaxed/simple;
	bh=hgq5szZw1cJQ6Pay5skWEdtBmkCCIRg1Ew30CGIykR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bg/pD2xkiuf8OMW7dbtr8gvdClQ0rMJCjpv06I7lN8lc3yfjAG8jyEAyS2+OuYEprhBGNzqoLf6dYgEsyUPKs8MrLJaHH7uU0/+vim+deJT2ilVKEZCf2REk880VD0ZzI7MqrClQTPl/qymuda7YJkBoBupWilbaD+nvy0PGhU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BC6y5zpH; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59578e38613so3531658e87.2
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 09:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763833498; x=1764438298; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sK2kUfLFdnAIPOfoUdBAt1ROupy0YOwlhfQRrIOHuz8=;
        b=BC6y5zpHqYSq+3JiOePT7fImpfyvyty5q005NKqHWdApdVYJNq8c0U25oSN/Y9bb/W
         mpWB7TpfZV5nwcZmc1HmFnCF4d9rv8MORNUp79KE2dFqwW16Q+Orb65spvVmXfKBT+Dp
         4H5SbuiJ9YHLiRzEFLJA3ZUSIxtJaK/j0M1nt0v7Ojkkb6XQ4W3YnmQJR7atHOcCyXI7
         SRWmmPh5XrTmNp4jGl0R9otYmiA0AfC3pEcEBz9igwSJWO67mfaqBo/O5bMSb1UyjJ7H
         cW0xllFsmtHRiDLBDD7Anmx3Ff3s0GVARoX55xo+0v0LqkhAIpYhpCXnjV2ubhoj35TJ
         BoUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763833498; x=1764438298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sK2kUfLFdnAIPOfoUdBAt1ROupy0YOwlhfQRrIOHuz8=;
        b=a0eJlbUeaPy6v8XYJ0sRfGAagBAdOxE1c7zM9x+A/9jgngQo72wrEgJv2FQqJo/Zcx
         6pTbaPPk1JZDTP0Cv75Nd5MzCdP9jWzABh3+QAc/ozHA93sn/EruvAAKvjpxhr+nKoD7
         4zCU88XSV4qYHZ8hvTjvQU9VaUS/ysbc22nFiXVmGv1Hdv6SJcn+Fv0X7e9D4S02JVXn
         aE1bd7TZxAPsomF4c0dCojueBphwC+y1ULpH2U7RDBeckkDzH/QILELLF/IQESBNVTj6
         325FEB6vtPPX46DYUFutJvxOfz0gGt+z/+7hPh1Cyy3ICC913cwffgtuFxK/SVhHU+e7
         gtMg==
X-Forwarded-Encrypted: i=1; AJvYcCX3/IgDNrn3wGy3PMzO4jcdQ9XZq4VrAK55k0tRq8Ujv8tqO/dkzegAtATliIUMefw2ji6J7HSYyKFf@vger.kernel.org
X-Gm-Message-State: AOJu0YzlZDxp2IYmy/jxgxd0p5lP9Oz56Da/QbVmbeFvadiS80KIzye3
	7rvD5wcvLastRkr3dmt57l/V/Ko2t70VAO3I9uqKS6gsJuE8jwMVMFAaHgnjXw==
X-Gm-Gg: ASbGnct510FmbhAbSHeVXQMD7IUuDy5UIeG4XCAKOo1IbpAlnMMYlyTZ7hFp+mJy8yj
	K5/2OrQ9es+xihbiDNwhuM1WSFEtR9qNdTAVOr7cbW4mEAN842Dpu4esmObt6wCC1TcOF1sKdtt
	ICMxPCyBPjZkXDsehXcqFnPEGTnDBQ/HO9rezi/uQLLI73boUA4ufZJqvjl66dQLIt55TcdOjqp
	e97jRv+kUFUxn2puxgpXFFpGd8mH4zSjFdHuBkWwk1Aje/lM5ecbrLz3EiRzd/3/FbpDZTpi8Ow
	p0v6ntrAoO3ZbBxqT6yRKWYa7ZL0Naz7unMCLz7cSQINfNZMrUaG/lpUi13FC8vBSYT7p00O9y6
	ZQxQJD9iXZr1P+J0LxEMkcHsiLgIlxSNUYEMVZUw/RH0kz9SMX6PcgvcZv27St9Yt/RuxKR/WgX
	RfFD2Y/FuL3gM9j9C4J2UdtNU=
X-Google-Smtp-Source: AGHT+IEPmZ/ql8yWquej3EfMZ1YkbDrP2BJ1nc5Ebqoks1N3idwLrOnLQ4i2cbgU3+oONurcV1tlCQ==
X-Received: by 2002:a05:6512:3185:b0:595:7d95:eacd with SMTP id 2adb3069b0e04-596a3e9ebb5mr2220711e87.8.1763833498193;
        Sat, 22 Nov 2025 09:44:58 -0800 (PST)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db8d967sm2596677e87.43.2025.11.22.09.44.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 09:44:57 -0800 (PST)
Message-ID: <ac2fc24f-e554-44df-9c28-00ac12d41af4@gmail.com>
Date: Sat, 22 Nov 2025 18:44:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] leds: add support for TI LP5860 LED driver chip
To: Lee Jones <lee@kernel.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Pavel Machek <pavel@ucw.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Steffen Trumtrar <kernel@pengutronix.de>,
 Pavel Machek <pavel@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251110-v6-14-topic-ti-lp5860-v5-0-5b777b99a905@pengutronix.de>
 <20251110-v6-14-topic-ti-lp5860-v5-2-5b777b99a905@pengutronix.de>
 <20251119153627.GT1949330@google.com>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <20251119153627.GT1949330@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/25 16:36, Lee Jones wrote:
> You left Jacek from the recipients list, despite receiving some good advice.

If we're dropping grouping then I don't have other issues than pointed
out by you.

-- 
Best regards,
Jacek Anaszewski

