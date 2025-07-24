Return-Path: <devicetree+bounces-199486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC9CB10E77
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 17:17:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09DE31C2850E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785362E9ECD;
	Thu, 24 Jul 2025 15:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dhjY7Olt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562D72D5423
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753370226; cv=none; b=OTG70CMHJH4YBQCdTanUrGoIQI3+RxODEvMzM953a4fdFbqphxyU6hvA78WbiH7tU/h5R5vCBEe0kYfi7P81SR6k3ICWiglIz3rJ6DSjygMwZJGXrra1NQzVs8rFsUAwP6QC8GPH6u7Baf2U/Tkop2nRUq81iqqERTm7jZ1y++o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753370226; c=relaxed/simple;
	bh=rRtJDDGQNkuc0IDMIF8Hm5MSrjYukLVoLEvXaEsR1bY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=nFjaGQAaAZVktIC2UszE2bcF40+aNUu3LQ3q5wES6minmuK8Jxk5mR4zdjHk1s4/snISsemEKavpw/q1SAgbHxuvIhpwYSdFw11xqcXH4V4OsOt0EfBRPLb61LRCe3/2FjmK5yA85cYecQ9Vi2crnKQwFYRTmd7sBuFhSHNfwB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dhjY7Olt; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a531fcaa05so545939f8f.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753370222; x=1753975022; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ZljJ9jOeuFt5jY4KeARy4p3x6G+xgYYvDLqDLNf7nc=;
        b=dhjY7OltHsxm/AGoY3QSsmkF2UkF/PFkRg/gZZrLCWFX7Hjvyr5WOO6WCvgSxdr76w
         3Fpicaep8bZzv6FoD0NEmDpE90pdhTq3l+KQDSK/ypv+2rK9S2iZ9TeG5JNnfougRLre
         nRZqm48H6ngL5rcIsVpMn+X+g+B2eHzuPce1J3T/zZfug4QPPgFSAo3Z9KHW1Un78gik
         k7GAHek8eH0PAmZ5M+B+fVSGNFJr2h7Yhc+5LnBv/fEifosmSQc14lK0kaYhJXEsorFD
         hxXvVxqRrYmrvBEpOkJplngc4NaP5eZpVnvto64gxhjFsSDmsr/FjNrowryW6Ozf2j1X
         NKnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753370222; x=1753975022;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9ZljJ9jOeuFt5jY4KeARy4p3x6G+xgYYvDLqDLNf7nc=;
        b=I/N5FDE1LbEKiP2FGdZcRgaJonpdTewm441jbJ3KpiAffjfMuZs/oMJNp3J9+GWhgg
         ooQYzLNhpPMU255LkAnkl2sE+gyistfLHeK/mJWo0Y4tuYG0QEW4v2yrQ2Mj6Yh2NE38
         Si0Mv0kbyeR3Tu7bzJlluSoL9QteZPKD/YuN6mqZVQ5kYKZ3eGZIcFDNg9YeFqMIxY3U
         B+G83vGjtBw8ddY21KsyUX7SvJ8d+dLc0+9c7mYNuFcF0ep65F6RrPg/Q/W9M8AbkbNG
         6iGs/LiC3Mx+kuBK6lGul6UQoksVyTm3ytXWdUGecedPEQN1jqKF+7qhirIE81Mu0cBe
         beVg==
X-Forwarded-Encrypted: i=1; AJvYcCV9rtOmWIb8gD+1NSoLES3qSqcZWjTBTnvwLFSEWEdpl5VyuOrBpJ7EUHMvNBfkygmqQto+m9unn6ox@vger.kernel.org
X-Gm-Message-State: AOJu0YzeRlB2CiBESqKlzeWfHWt8JjKg5F6JsWrSrCsA/eHAxRTS9Smh
	PtbJCx1OAftUISzg/C1LaHi1bI2hQLj+Mhk+HjS5c2tlJsoYmv1vykZ6YbVhQJASYXqyrZ2e9rG
	WNeUe
X-Gm-Gg: ASbGncvlyzRD8nzQ//DY+70dSZclTuyF18bGJOW/QzHOaD7gOn3ftSWNnXBZbknvhZR
	titiIF1FcBI0STlZBgw0DjxzBVVdkB5oDxtObgnnpD5gddhuJP2Ac2IFrQCqkZ9Pl4+bfebyr55
	PqfocYlJjr/Vw/d42HYvcxOF4XhUwdDw1OUvNAWIucnnoHtDegr7EijDrTspvYlJynPla8Q237C
	KSai3xPF2640QhuP4SbwGx3n7OAS47uaF/kGdjaawxTFFSQ82lebBHYy7oJ33ggnMp5LlRoEnbS
	systXVM4b27//FMo9k6wAEtyvzhQVXzieJlYg3SthLeMBSO9JCgYEXhIbxpLcI/3V6B6TccvYB9
	PtRz+ViiW4QpkukTHaBPeuwD1mZU=
X-Google-Smtp-Source: AGHT+IGJIwXjAl0x8bo9+v9cZ8DYgapXIAGw1HX/4H1PrXe4j7vZaMGeCQer0wRpipUiu61pr3zj2g==
X-Received: by 2002:a05:6000:26c9:b0:3b3:9cb4:43f9 with SMTP id ffacd0b85a97d-3b768cb12c7mr6437878f8f.16.1753370221540;
        Thu, 24 Jul 2025 08:17:01 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b77078b1absm2257447f8f.1.2025.07.24.08.17.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 08:17:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 24 Jul 2025 16:17:00 +0100
Message-Id: <DBKDVB96ZC98.NOF39E05HZ8H@linaro.org>
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
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Lee Jones" <lee@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250711-pm4125_audio_codec_v1-v2-0-13e6f835677a@linaro.org>
 <20250711-pm4125_audio_codec_v1-v2-1-13e6f835677a@linaro.org>
 <20250718134334.GF11056@google.com>
In-Reply-To: <20250718134334.GF11056@google.com>

On Fri Jul 18, 2025 at 2:43 PM BST, Lee Jones wrote:
> On Fri, 11 Jul 2025, Alexey Klimov wrote:
>
>> The audio codec IC is found on Qualcomm PM4125/PM2250 PMIC.
>> It has TX and RX soundwire slave devices hence two files are added.
>>=20
>> While at this, also add pattern for respecive node in mfd
>> qcom,spmi-pmic schema so the devicetree for this audio block of
>> PMIC can be validated properly.
>>=20
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |   4 +-
>>  .../bindings/sound/qcom,pm4125-codec.yaml          | 134 ++++++++++++++=
+++++++
>>  .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |  79 ++++++++++++
>
> Do you have to submit these all in a single patch?

qcom,pm4125-codec.yaml and qcom,pm4125-sdw.yaml describe one device (sub-de=
vice)
and change for qcom,spmi-pmic.yaml is needed to avoid failing dtbs check.

In theory I can split soundwire slave bindings from IC bindings itself and
I may get questions why bindgings for one device is submitted in two steps.

If you really want me to do this, then please let me know.
Otherwise I don't see huge benefits of splitting it since they
are logically and physically connected.

BR,
Alexey

