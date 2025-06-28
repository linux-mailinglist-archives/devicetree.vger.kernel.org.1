Return-Path: <devicetree+bounces-190762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CC1AEC8D6
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 18:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A368216078D
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A406248F5B;
	Sat, 28 Jun 2025 16:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IXrLLTSi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C0F224AE6
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 16:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751128977; cv=none; b=XZm0egIkZX/r84PaGtLct5RCzbvo2Dbn3SWVMSJmkKTCcETzKc+8gSAZPpyfXmKg3OvZQW/vRFx4X6MN5TddNanzloES7xzb3HUFOXapbEQ9v4/ZUjkHZxEIU3XWh3eyFvGffHAQw6YurFvptSx+blq9GinbSp1Iryymcp3iKrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751128977; c=relaxed/simple;
	bh=8+0Um3IyKyjV1O1yQIgBid/7yX2tEmqks0sJwHrXkHU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=RL1arV5FEpgjnBSv0Ko9wbkuIlWnq4+rdDsjB+qhFYLqpZBp1W8/PwOJPffCyf+Kz8gXIjAMbMHKManS0rRZam6if0hRkjpJK4peIVx4FWzTdEgQQo7d+HEbI+0fviDil5HXgAY/cEeF+duByI5kD7TpIiNR003VlaY/8zSi/Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IXrLLTSi; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a582e09144so523166f8f.1
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 09:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751128974; x=1751733774; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8+0Um3IyKyjV1O1yQIgBid/7yX2tEmqks0sJwHrXkHU=;
        b=IXrLLTSiDQ7PCOgZvs8/ngQy/O5SAjTF7srjEcwqjngnGHZ/VFA/rcJUEFl01dg8WG
         pqnO1WWYC0myEY2V1941MXEUzrbhvkPY7MR0bDHPvHdhlXJZmKjGhpszcD3Q53x9efaX
         wdHXQhteGQxWLZ4w14kSeLioSuap68yRB50Wk35qdWT0Ol/qYRqtPvp7LeoiePNdrQvr
         tZQSy57SqsFscCDtKvJoT7R7b1OkGVjYDM2Z0GZvVHFDCK9OsyS+UlsIa10WcNI1yhTb
         t9T+r7k7gpyLJWZxDWH0GiZgljfyaXdWvYbPkKKWp7j0yyE/S7RgqKSNmT9ZxPvgCJOu
         XGjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751128974; x=1751733774;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8+0Um3IyKyjV1O1yQIgBid/7yX2tEmqks0sJwHrXkHU=;
        b=ZuiTRH1K02TENeuVOHXqAaPkknHpr7fQ/80K4e7sRe97ZOKizKLWjsbLM7jqc9FfRS
         YPAgiBtvkHP8ofDhuoM09x9/+UqiRSvZISzn9ni6Zbu6XjB1Luk0Hxg8896mAa+Cxfcl
         NiSNr56NGuobOaCbEQ2QvZPoTHdN8VyLQWpDIAO0C+cVv3sTG5URIfkYGKJDHq1dEaQv
         d4MjEn9KYMUxUBRPI3BbXInsq9xwTDXGclVERbouv9vm0sL/6lwC7N6OcTsHKnymVXNb
         fh7QMXNSj/yEtijrtGSCrFBMija0kWNNm7RE4z0UyOno53l+GdWTM7v+lrxcm5KuUENc
         9T9g==
X-Forwarded-Encrypted: i=1; AJvYcCXaRunW2KIwU8ycRGdzFVg0AmJqjZFePzmwI5qF6liSU6+6QLnIlstHjDnzcil/Gk+G0xBQIa9u75iU@vger.kernel.org
X-Gm-Message-State: AOJu0YwFLNkPI0qeE7bH/rk30tClTR1UrCpWRiY3HKUrVfzQGOMZi/np
	Ly+zzTAF1iENShobbVwZDPk2sHyVqv0wquPO0ILoqD7zSSeod/F70N39Z/y+ztFRpLQ=
X-Gm-Gg: ASbGncv/4plHlNcgfxLAPvwn/v7YVTihYroVTL+b7pHpfn0zPWPKN9fiHQnkCXolL9q
	p2J0vpPdkfS9hjEj1gpZyujSkDtjdMe2Bih7Z/qG1YMNYFC3hZ+bPqECpl6avnZ03O6TuNE60nZ
	fozrN6/GRdz3WgQAyTjzmOOLIayi645xCwNkpBVu4P9kdMMM1kKXARPNU0pyyeRHNKJDhj5VwHE
	I2am1aN9JJAQJFC6ywQEwdA0n2ZwEI73sSZgAEM1WKzc58M4m2WlAEcjHFhxpI+eNBpeT+LOeqY
	092RcWuLcG6x0f9Rq604HUqlsFsV0TPqErvaRHDiI97MNAXd2nHB6E/+6+GDG3n8sd5S
X-Google-Smtp-Source: AGHT+IGFXbwNYTSyjPQd7nh+H6Es9NPSjiD5mA2m1ub+Q2Abl5oNI0WlfEOljgb4IM3zbq46WDBVfw==
X-Received: by 2002:a05:6000:4404:b0:3a4:f66a:9d31 with SMTP id ffacd0b85a97d-3a8fdb2a034mr4733769f8f.16.1751128973831;
        Sat, 28 Jun 2025 09:42:53 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:e33b:a0ed:df4b:222c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e52c99sm5609102f8f.49.2025.06.28.09.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jun 2025 09:42:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 28 Jun 2025 17:42:52 +0100
Message-Id: <DAYBEWESVDJY.1ZDYI58M9OEWX@linaro.org>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: qcom,spmi-pmic: add pm4125 audio
 codec
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Stephen Boyd" <sboyd@kernel.org>
Cc: "Lee Jones" <lee@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>,
 "Takashi Iwai" <tiwai@suse.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: aerc 0.20.0
References: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
 <20250626-pm4125_audio_codec_v1-v1-2-e52933c429a0@linaro.org>
 <eb5cdcb6-7e40-4ed2-9cc6-6eff43da353d@kernel.org>
In-Reply-To: <eb5cdcb6-7e40-4ed2-9cc6-6eff43da353d@kernel.org>

On Thu Jun 26, 2025 at 9:48 AM BST, Krzysztof Kozlowski wrote:
> On 26/06/2025 01:50, Alexey Klimov wrote:
>> PM4125 has audio codec hardware block. Add pattern for respecive node
>> so the devicetree for those blocks can be validated properly.
>>=20
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>
> Remember to ALWAYS explain the dependencies between patches (merging
> strategy), because this now creates impression is independent patch. It
> is not and should be squashed into previous.

What's the proper way to describe such dependency?

Best regards,
Alexey

