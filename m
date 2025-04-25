Return-Path: <devicetree+bounces-171022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0241CA9D062
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17E5F1BA700D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F468217663;
	Fri, 25 Apr 2025 18:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="L2zE90Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98713215F7D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745605196; cv=none; b=HHbtMvdrUbwOnEcryjPkfJuLLbbaR7aEP4BenFkwXNrXlIRSvuRJaE2YU7AZAmbbn1C7w66sC0z2ibo4S7lsMUX9MrMknzgJDQDIJS2juizz069xq52Xlf/acHGfJSZFQhD091C3kpSC8Mc+FhG3q1vXRKEFL/dYrZqEmzx0b+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745605196; c=relaxed/simple;
	bh=IpSFoh4pYOY/HGqg1pleHeuH9QFifSvgR7QoQN+jals=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=Mhk3SwsDWAUz00sOn9XuyouhDxBIU3n2fBZOT0kQtf7bwhE/Y2G413glIw3PRC3Z0ne31CX3rLlyYtshUNE5UJllLhLLE9ladMN6Ix3RMfqDoIOWRamC8sHcxRQhqUjCuS9K0j/SDkcXhop+ZK0T/PghO0MXsEcLpMkdzvM4Ja8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=L2zE90Bl; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43edb40f357so18096975e9.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745605193; x=1746209993; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IpSFoh4pYOY/HGqg1pleHeuH9QFifSvgR7QoQN+jals=;
        b=L2zE90BlQkCwN8RxPhglh5+YQzR3YQ8NPSekKiGRb4u2Zs2dfJ/tItuWZaFHeDES1f
         V5W+e3hYuUJdWUFXpzD7ozesoIyZ9euiDfsvy5aF6BGN67VAUFi9u1T/Xqlmtt+Fm/Bt
         nHZXHjAjQo2Cs5df9yeqE4vu60ATz6pMTKTRV5vW0GNzbI7KPI0GHiCRj9gzGiIGCZCK
         lPssUdlz3UXbcZ8ByT0YXjeDgGXVjsGq7iA5LoWzdHacW4tRqD74ODrKglFJLEoJ+wMB
         FAut6WbA3gE5MJI45Oz4oTFNG/tBUup5rFhdDT9xhpxiWbqB1dmIF9CtoynWk1jJkd9X
         Kpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745605193; x=1746209993;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IpSFoh4pYOY/HGqg1pleHeuH9QFifSvgR7QoQN+jals=;
        b=Vg4ppw68JbTatGM2CT42pTXfN8fF6B66HDkJAXQle/+5wK1o/nlz9oUw9IdXtTe++3
         vcvhEzuR6xQHCZ7J0Lhg159T2ozJvM13Q+MX6PHCLgks2WQXA9ybKfRB165C2M8JLIjb
         LQsFX60tYry9cMRnFekRIBg5tM2KyWQtwOwpGfbuF8WOUhB0temsgxUBj1crwEytuC39
         tS4e/ltVqS/tRmDhewyEp6dWU8JWhqHoiKqnVH7hW1W6p+Ov/qiPoLNfB5Q2W1Q8lJE5
         cm+WNOaYlWG+CAzgx27XK3Ir2UI2ngsUDitHxpiLckQE9y/gLJngMuM3awdsVZRG4T4/
         w+cQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2OJYTuCME7zVsNrnJCsr+DII8hY5HLD872OfxuVEYbkDk6QBak4UDvRlo65PJMV4YI/jxIOt3jFL2@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw1q15YmsbMagOU504EQg1sxuMWlLnGCvnfazdq6oD5sTeb1qX
	8W4ulFelLtUuIBrah6ZLFFbsim4traTk6+bPEUZoNxss0cwRBenVtEAMQVLaqxM=
X-Gm-Gg: ASbGncuvFA0R1UObl8fYOTvdN0oXhVjfGrVbZYbfZUIcEx7REJV77FGqxiC+qhiFeWS
	Bt8oMz/XXK0gmynGrz9rgUU0DLQj/D6V1PbOAHPd4Fvo9zMe4uGdx+8sDmXfQ7UnR2LMgQvMdmG
	DnovFQJRIAWcJjYQ2RVFu/sqaWm5JyQLSfSOZbYLEvdUzNQoHOIypC6TzsFjMJxKFDh7KATRirI
	cqWab4dyev9WAdN4RBby8T3S24a3xUgxQxiMZsqrwEk2KUKKZYilZFzCCsv1ge7+YH1AJsY74Gd
	hW2DANpRXFCG5aYHn1pGDZTgSCsLEK4KPTsZanhLOGQA5Z+av/xJ5HI2XjNGFcmT4wC5xgmt5iw
	1HdbprxZ48qgNytSC1oO5J7zuJT19qlbG6gFru0wA3/An5VUHArKq
X-Google-Smtp-Source: AGHT+IFJByfdmWek2xSwsLT86f5MrKiJHwIbsxI4YxA+BfoGu8K395c02Fr79u8UPzgvjnNg9CP1eQ==
X-Received: by 2002:a05:600c:1e03:b0:43d:24d:bbe2 with SMTP id 5b1f17b1804b1-440a66b7b14mr25609255e9.28.1745605192764;
        Fri, 25 Apr 2025 11:19:52 -0700 (PDT)
Received: from localhost (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a536a02csm32734525e9.27.2025.04.25.11.19.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 11:19:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 25 Apr 2025 20:19:39 +0200
Message-Id: <D9FXE4TJ23QB.1CS3D6PU2FGMR@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Mark Brown" <broonie@kernel.org>
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
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
 <20250425-fp5-dp-sound-v3-2-7cb45180091b@fairphone.com>
 <36904d64-68e1-43b2-baed-50b5fddc2bcb@sirena.org.uk>
In-Reply-To: <36904d64-68e1-43b2-baed-50b5fddc2bcb@sirena.org.uk>

Hi Mark,

On Fri Apr 25, 2025 at 2:12 PM CEST, Mark Brown wrote:
> On Fri, Apr 25, 2025 at 10:07:26AM +0200, Luca Weiss wrote:
>> Sound machine drivers for Qualcomm SoCs can be reused across multiple
>> SoCs. But user space ALSA UCM files depend on the card driver name which
>> should be set per board/SoC.
>
> This doesn't apply against current code, please check and resend.

I've based this series on next-20250417 tag, so this is probably due to
the changes from the USB sound offloading series that Greg has picked
up.

So either Greg also picks up these changes when they're ready, or we
wait until 6.17?

Regards
Luca

