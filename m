Return-Path: <devicetree+bounces-204409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F086AB256A0
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 00:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDF1A5A7035
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 22:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8910302770;
	Wed, 13 Aug 2025 22:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OIYExKi2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46AF302750
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 22:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755124130; cv=none; b=RjFg2/xHqX/7gzRGDx5AXQUGClpRxzWwlbJ0YHJKFiZd0GQrfbrzUPjxzy1U4NcD/zJ8FpJ5M4Vde4EZTqUz8Q3gO8lVFRRWvD+WavcuIOwe3YDlepG6+afz2z8ENzwZy0vWsIgsgZKehPOybLtomCerCPXDO9kJSPIAyePa7Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755124130; c=relaxed/simple;
	bh=GTN+5WirIPVzvLSwAv3/9YAKlkgOlUeRjCYAsj/rpzw=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=jA/Qy+f0k2JxVMeYMzkedltk2JVkgtLb+muG9I1M0BzrmMogqZ493g3Ln7Y0aQ35j691gjFKDjtUC1I5uG0LViAt/afNkuIlqWnMhegRyavCrWRd0juaDxQabflFih2fin+LZ7BD+HbuknrhbavNjCweSer7OXPzXXrZSQjBYwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OIYExKi2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45a15fd04d9so9874735e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755124127; x=1755728927; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sloit53e7whTsQFAQynr7aVEZzM4yMZh+xfD4/W9sqg=;
        b=OIYExKi2Kt17S9SHvoPHNIXnCbSXM+5Ql6yGxlpWrkVEYJ7ptqeMjR1/EBjQvmyqps
         Wsaf/uswP2XByKaRfrx+iPEJDXBy1eh0qE0a1RwtPbCx5fBg4wo+hggEmgPEAVO9C6pi
         q3ckgc8l9yhIXzf7x2z2jyH8+N/GqGSXF9sX6GaXnbIRTOApxe9cn9Y9hhnmd18M60bl
         hYWIDQ/TMVj/ERzAkj0fDCQZY4cRYZqwP2j70IYe48DHwEP804QYT2JFDir3UVjbvg1F
         /YAxI5fgszeYOOp4cV8K+PM4ZgKQmmwWPLjFSOyOVVTANwZXyEbF5KNgh8ZzARK2Z35H
         LYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755124127; x=1755728927;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sloit53e7whTsQFAQynr7aVEZzM4yMZh+xfD4/W9sqg=;
        b=SBG4w+6TvADrmrn984bxapT9gueZ0AQExxoHr2hbsiM1XXrXj7F6t9cSgf3yOx3Hph
         rd4JQtWxQGAybUTbl0FAGuc8BbJl3H6qUXSlBh+41scofHvI/1/7bUVCSYNN9VGvJg3q
         wijDQfk7BpYX777C67Ix8EzrL0mWbuGe3E90hvpwPHR6f8nnj8ICbGcQ6z2R3fsQUfBQ
         itr4uZpdZLI33Rb7iOSYfyiozXzT83Z6fRClQBIe/AkSnf7xQJvcVqKjfbwtNfGrfIyW
         0cjobCOMg+TigY3aTE4Qq3/mQvRO+XuID8K8hDuMOSCl4EuUNwdUEvdMW0xoFIQRtA/C
         2guA==
X-Forwarded-Encrypted: i=1; AJvYcCV/vB2xEIz+kvZ47oJ/z5wSzQlTb/LvLgLG5hiX/3IY5x0O8fDbcMLq+WabfV+1hdyUPntuOGyneTTs@vger.kernel.org
X-Gm-Message-State: AOJu0YybMuoc/yyFVumYa4BGzQBM0tHfyZjh3be8ClCEvtoBLkxLuF/p
	STvGuYB/RM/H0zOCHRUcfWZ8kerStYubLJcv59FCLsRsqESvx05T8OUzGfrU/7vRcfc=
X-Gm-Gg: ASbGncsW5FKdtceIe6NoTluu1LE62xKPkgNcjhC/O6DqODo5hWmJZtTQ/y7saoJgLCu
	v5Svgm7XvSr7BqrvzXQTueyh9FzV8caTohsPGSqkfO4/Ewn3muGgc2CobsZ/QIT8Rx/wHtHvGSL
	8HGfJNoQjcVHqaOImwbHCTvH5w1VTBrAGawm9GOANwyemGP9WUm6phkbXtU66LB+950yYNoed7Z
	oh+Xp7/yeuDPYzotXGD1CK0tJcvswOvzGIDFIBhsSbwrB3DPKb/WZR3RLj84ToeBdoTGBqRA/UJ
	GyzH7TlMzpoppCVD1vKJLBvxTnzQ9L53CPOrpkv7jLC3sXqme+o2VdzO7mcdVcdL9ifQHsMDspt
	I9R0Rmds7Ql6TQy2UNChsARhbBcY=
X-Google-Smtp-Source: AGHT+IFaVC8EcfmFnezsgQds3hcWeHYfy6YLXuZiaXqv+d9hK1doPUatpRJ57+lgFQ8CFRK3tCcYgw==
X-Received: by 2002:a05:6000:2dc1:b0:3b6:d0d:79c1 with SMTP id ffacd0b85a97d-3ba5067fcd2mr272072f8f.10.1755124127183;
        Wed, 13 Aug 2025 15:28:47 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:7f3a:5ab2:26aa:831f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1b1db885sm4014715e9.0.2025.08.13.15.28.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 15:28:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 13 Aug 2025 23:28:46 +0100
Message-Id: <DC1NKSHIXLHX.21F0AXCTRNINS@linaro.org>
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Lee Jones" <lee@kernel.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Stephen Boyd" <sboyd@kernel.org>, "Jaroslav
 Kysela" <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-sound@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: add bindings for pm4125
 audio codec
X-Mailer: aerc 0.20.0
References: <20250711-pm4125_audio_codec_v1-v2-0-13e6f835677a@linaro.org>
 <20250711-pm4125_audio_codec_v1-v2-1-13e6f835677a@linaro.org>
 <20250718134334.GF11056@google.com> <DBKDVB96ZC98.NOF39E05HZ8H@linaro.org>
 <7b012ae4-32b8-4de8-97a5-9b73cced2e4c@kernel.org>
In-Reply-To: <7b012ae4-32b8-4de8-97a5-9b73cced2e4c@kernel.org>

On Thu Jul 24, 2025 at 4:48 PM BST, Krzysztof Kozlowski wrote:
> On 24/07/2025 17:17, Alexey Klimov wrote:
>> On Fri Jul 18, 2025 at 2:43 PM BST, Lee Jones wrote:
>>> On Fri, 11 Jul 2025, Alexey Klimov wrote:
>>>
>>>> The audio codec IC is found on Qualcomm PM4125/PM2250 PMIC.
>>>> It has TX and RX soundwire slave devices hence two files are added.
>>>>
>>>> While at this, also add pattern for respecive node in mfd
>>>> qcom,spmi-pmic schema so the devicetree for this audio block of
>>>> PMIC can be validated properly.
>>>>
>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>> ---
>>>>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |   4 +-
>>>>  .../bindings/sound/qcom,pm4125-codec.yaml          | 134 ++++++++++++=
+++++++++
>>>>  .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |  79 ++++++++++++
>>>
>>> Do you have to submit these all in a single patch?
>>=20
>> qcom,pm4125-codec.yaml and qcom,pm4125-sdw.yaml describe one device (sub=
-device)
>> and change for qcom,spmi-pmic.yaml is needed to avoid failing dtbs check=
.
>
> Preferred way to solve this is to just list compatibles, instead of
> other schema, just like all qcom display bindings are doing.

Ok, thanks. I reimplemented it for next version. Couldn't say that I've got=
 it correctly though.

Best regards,
Alexey


