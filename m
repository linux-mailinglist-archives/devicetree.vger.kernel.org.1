Return-Path: <devicetree+bounces-171094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC237A9D33F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37C371C01F52
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636CE224233;
	Fri, 25 Apr 2025 20:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="iobspATP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4895221704
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745614068; cv=none; b=J55SUo++ill6PriPfIhyZd04p5Lk5cGY4ccCCHkr5aNcXEzcWEbnzRsXcnwsbMXHYK19HPv4xxyTbZi/Sd3dJS3/1szQfSfnCHWzya1SS1TSzxG5XCQpW5/1/TlaoGcaoNZSRPGVQHj73f5g2e035LKtLEyG4NGHw3VuBZpb/Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745614068; c=relaxed/simple;
	bh=Ons6fbZ/ZBBSkZ0lCnRlE60mRw4vXN50ao9l15AnCic=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=FjjdihN1i60XU18E9V/+HHqAsvDp2dA57Tt7ZVEfSW2EGk7mC/sX0//GP1UwF5G6S0v0eve3DjVGO6QTyAwrj4kUHC9ESShAevigvsqo5sCbBd8bmpH6SSiTWAQR7Xd9/so+F76YQ1Hup04BRhFCmbTe4zOZ1Py6XD6ArT3dBlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=iobspATP; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so25505815e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745614064; x=1746218864; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ons6fbZ/ZBBSkZ0lCnRlE60mRw4vXN50ao9l15AnCic=;
        b=iobspATPfwGqIsLM0hRdkX27+Vqee4L0hK2wogylTQQQC9L+KpXhkA5f+ufUH071k7
         qgJ+/c36AdNxZ+cdMkrDE9ooQA33mTTGNqt5WcH+Wc0yI1bLLLdPvR+8RR6eE1ja1h5I
         W+H7D/iIG+hff2pOE3PUh+2sGH4wo8EgNreZyL7jTb0xgL8hP3WvmQtCOV+5Cr7fqU3u
         //Ki43jNqsfiXc/67oMwWU2xrQT6OPXwdPjTt8pMf80P5yrLIVscYTBJuGsgYEuvpEai
         JKUXTf30k4vhbfxVbdV4in6mRewfa6G5fUDWy6ptcbwej9NsfGrL2C6+unNLWv4pTE9M
         HrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745614064; x=1746218864;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ons6fbZ/ZBBSkZ0lCnRlE60mRw4vXN50ao9l15AnCic=;
        b=KjZk/hVqmvPEAuAHjdNMf38XC9wS9y9bJOUFqARdkC+THLjxQS5dXdwpGQFMMc9Uo7
         jt6+WKlHdsI7FE+guotaiHoTembt80T5Cn8uIINKXEjfiMgQ32oykynGqGJ9lp0x1HAK
         2SCH/be2PsyfAjHDtLbGxSlwzb6WbibyTtdZnceHgWpEI7YndK73mDfeCYX39FOUBaKa
         KvbxhLHSvREOevObd6RkBWW8ZHqqlEMU2P+UXC1E64/ny6aMCp2OYHi2CwQeT3F3nQa8
         gHgtcndFkMeDUh+dwdUmt8wYFt+jYs+QgAQsY8jhzx1iEIvSnRLcTztx1j6VEvauxBKv
         wIEg==
X-Forwarded-Encrypted: i=1; AJvYcCWgt/7YPHKLmc1n4uWk/aWjJcd9T981WFLXELkiDp8ypZMll2qzU9iuzLUc2nluk5KRptXN2pibG0yF@vger.kernel.org
X-Gm-Message-State: AOJu0YydZddzE24ved6q7cIm0y1segz5cXq6MoTYAG9EA9VzoHE+yuCQ
	wSrYFI6ZZggXSAf+a/VzT4g6MFE40DdtUmDoB3pWyv2GsluUxGqftGyw109e87U=
X-Gm-Gg: ASbGncs2heFOuCiyAQ2GijEm2xj6U93orZXgLRm/eSNMG3HCsgpIayNhzlF3qI5Qdti
	PKu71eRap0azv6ZHYWoLj5u8xS1n4HTMAu8wthpTJJ1PPIbefunH0FSI+nvXHQhNTiS81peCJ7V
	ktzJ/gXKD4f5LUWUp8RY3BJAvhFfRmZ9WfhoRhYsvOcpcXU8PLrZWz/9dlJ1RQljfYHshMWbj/0
	G/lvHAU5HhXCr4MpY3KG3lU0711Tg4uS2o1TMW+kstDIbY9/Ncy5hajfUmFYiAROTt5jlFJhFhV
	2HOa+BI9JLcEReo5k/7IizajPkbot3G70EzJuvbKdr12bbqA7zQMmQjmkZ7wt/fxRqdtfpBUepm
	1OJVQEt58fi9rI/V4TB88TC/8Yx6e74rDMOLZJVW8Rw1g40mL9qhO
X-Google-Smtp-Source: AGHT+IHc2IGV1cabuJnO+f6tRyRq8tFSNKSMn/0EAuS9gCgWsxP2W699M+Xi8my9zfWANmox2FyRWg==
X-Received: by 2002:a05:6000:18a8:b0:39f:a553:3d98 with SMTP id ffacd0b85a97d-3a074f89292mr3119425f8f.56.1745614064100;
        Fri, 25 Apr 2025 13:47:44 -0700 (PDT)
Received: from localhost (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e5da0dsm3245891f8f.88.2025.04.25.13.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:47:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 25 Apr 2025 22:47:42 +0200
Message-Id: <D9G0JHKZ0RXB.3LI5UGS7QTVQN@fairphone.com>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Banajit Goswami"
 <bgoswami@quicinc.com>, "Liam Girdwood" <lgirdwood@gmail.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>,
 "Takashi Iwai" <tiwai@suse.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <alsa-devel@alsa-project.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 2/5] ASoC: qcom: sm8250: set card driver name from
 match data
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Mark Brown" <broonie@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
 <20250425-fp5-dp-sound-v3-2-7cb45180091b@fairphone.com>
 <36904d64-68e1-43b2-baed-50b5fddc2bcb@sirena.org.uk>
 <D9FXE4TJ23QB.1CS3D6PU2FGMR@fairphone.com>
 <ccca5e19-5a4e-423b-923e-ea0de6682752@sirena.org.uk>
In-Reply-To: <ccca5e19-5a4e-423b-923e-ea0de6682752@sirena.org.uk>

On Fri Apr 25, 2025 at 9:03 PM CEST, Mark Brown wrote:
> On Fri, Apr 25, 2025 at 08:19:39PM +0200, Luca Weiss wrote:
>
>> I've based this series on next-20250417 tag, so this is probably due to
>> the changes from the USB sound offloading series that Greg has picked
>> up.
>
>> So either Greg also picks up these changes when they're ready, or we
>> wait until 6.17?
>
> Or base it on my tree and let things get sorted in the merge, I don't
> know what the conflicts might be?

For this patch here it might be okay but patch 3/5 from this series very
much depends on the patch in Greg's tree, given it refactors/expands on
the USB_RX if there. Resolving this through merge wouldn't be very
pretty.

Regards
Luca

