Return-Path: <devicetree+bounces-189890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 162E4AE9C39
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 13:09:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF4931899A98
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 11:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7C527510B;
	Thu, 26 Jun 2025 11:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D7FIelBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DF61A5BBE
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750936142; cv=none; b=n2ssglaM3wratTEGXQzaOrf+ktgN38pc801yKy4r4rPSwsc4pyC1mIcNIJl8JKyraraWFI/TSImhdR4Kg+iZBC6Smrfo5xgI+B9e38nxIxqn2yaY9SZFbMI0eWPaSgPjy2QAsra/zVXmoKh8u+8owfX2+p0v+SoKnvLjOQjtxXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750936142; c=relaxed/simple;
	bh=Jfn0fS2LI3pBix9K0aM+ywu2YM+BVe8pJsIOOMevAyY=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=dkvr4T3k3u26fWweX0V0m/3gXcoCbh5ihnuzQOYbAfmhz1QAR1D8J8WMquDDoAz7ezVIzwWbc/qCDcaVX5jihn/JAOQjDGt8/pG5oRDXVT9CWwmnVJkkDJYVpmpqHlR7+K/SdfIqg1mZ2ELZDoOAYQztU9oI0ZVMEzplzGOosFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D7FIelBi; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-450cfb79177so4563865e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 04:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750936138; x=1751540938; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L47FMmq/heBHOm6gQHtGzqnF4x9Cl2uyNAnRXAGiwmw=;
        b=D7FIelBiZ3Hm3+LTCyuURHsgZpIEjay5r+e1ThraOFBaJASP+es927Ydqu6Q+ob0wn
         jcch+eeR2/cwORQiufg1xN/ZvZgydLvD9iiH0R+5puFJgpZJ9hyFY8IecgI6kuVp5Yub
         EKDx18upmAPBClNs2kGYy8ZwfXpB5dIffoMwMWP1qHkSe6dB7/zBYzOt8suOx2xbh4uo
         R72uF97skIr9m4/fn9WR9z8VNykciYtG8X72TCl/1DEX0rTJ6sv6mQGHeGrjdIXZn6UH
         UmdbYQRfFDIysKg5dR1Hc+4Yd7TBhCg1qCAhHi/RReugjouzr6l43xWXERhRHlwVKBct
         TbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750936138; x=1751540938;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L47FMmq/heBHOm6gQHtGzqnF4x9Cl2uyNAnRXAGiwmw=;
        b=CubXgC5mYjh7A3sRzZJvhlpzqolEuuKlvYk6hElOsoxt9n8B2HBSRxrS8XFaUOBun8
         rPLzHv4FMfigj0Kea/x8+om+oBQcqshe4Oa96inDTQu1FmW2wwxqSr8L525EytwIvjrx
         IybLJvN91nAZAA0zZb5clXLkA2v8FTPXx16RAgfTsBY0Wl75f3R6EEhe5x/ROFy9Z22e
         Zw8GAfW02SzS2T64fBx2yYzfE6GnSOz4+dF/U0/nTr+6NA+OnShcu6WOD+smGIbMZqVM
         WnIhXQBpIOFLvUdX+VwEYVBLJ2TWbRBb9X1o1jUjr/+75fYUY4r0wP7uzz1LxLXyH/Gb
         zylQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8xKEE1ddt995ZM4quUX3emloZrs2GFj474t0U+pT9q/UqySqG19qVf6S9M185f2u44x4OGLyfBVtB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyov8w5MHSRaOEtkNWVdODRABLqgdFMVe98x0Qb2p1ofLLNHlPm
	VYH2Vtpykx7sf1E6ZMtuMH6yGoCWUwvP4/Y0VkfTq/EvKtUGf3kKmjiJFVyZ+2jRcEY=
X-Gm-Gg: ASbGncugjomqR1KcuVYyzHEKxzMj87TR0NTNLjdIR4k3/s/bxsIObJFHpYXagZVk7+s
	cKZfFdEZcSzA9WiiZE1yu0+WEFKp5UTwezFQI/6Y/prth8NjfrfFYwKidxijljrYecS+0qZC5qh
	wK7q7zNqEPN2aUcuOYARe34eUwLAqIkmM4/OkVrxGvjOkPIYW1hDVh0V+KNYH1h2NmqTTJRj3qv
	BiRvocd2PFKMDlcAGKANfU5C/1yOMYEy7LLWPMBjhjQcNg6/RwO3QFEAG8S3GBJspzqvhl6xqo3
	V+YPcrnUaTYOfWxuz6BLL5+mwelaHfdMv6IR1aQTM5BkfHy6IAhdz4eqWUGjioy/SQ0=
X-Google-Smtp-Source: AGHT+IELxnFr+7S8k465yXgeM0nKFIFmu+MciekB6iPH5ORG6jBuwjyOj4litHeUFKiMBlazAykM6w==
X-Received: by 2002:a05:600c:1e1e:b0:43c:f3e4:d6f6 with SMTP id 5b1f17b1804b1-45381b0632dmr72455385e9.31.1750936138307;
        Thu, 26 Jun 2025 04:08:58 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a390c88sm17336235e9.8.2025.06.26.04.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 04:08:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 26 Jun 2025 12:08:56 +0100
Message-Id: <DAWF24I1XW5Q.3FDHE6CS3DZBB@linaro.org>
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>,
 <devicetree@vger.kernel.org>, "Jaroslav Kysela" <perex@perex.cz>,
 <linux-arm-msm@vger.kernel.org>, "Srinivas Kandagatla" <srini@kernel.org>,
 "Takashi Iwai" <tiwai@suse.com>, "Mark Brown" <broonie@kernel.org>,
 <linux-kernel@vger.kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Stephen Boyd" <sboyd@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Lee Jones" <lee@kernel.org>, <linux-sound@vger.kernel.org>, "Liam
 Girdwood" <lgirdwood@gmail.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: sound: add bindings for pm4125 audio
 codec
X-Mailer: aerc 0.20.0
References: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
 <20250626-pm4125_audio_codec_v1-v1-1-e52933c429a0@linaro.org>
 <175090145961.2702141.17071553013552846812.robh@kernel.org>
In-Reply-To: <175090145961.2702141.17071553013552846812.robh@kernel.org>

On Thu Jun 26, 2025 at 2:30 AM BST, Rob Herring (Arm) wrote:
>
> On Thu, 26 Jun 2025 00:50:29 +0100, Alexey Klimov wrote:
>> The audio codec IC is found on Qualcomm PM4125/PM2250 PMIC.
>> It has TX and RX soundwire slave devices hence two files
>> are added.
>>=20
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  .../bindings/sound/qcom,pm4125-codec.yaml          | 147 ++++++++++++++=
+++++++
>>  .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |  86 ++++++++++++
>>  2 files changed, 233 insertions(+)
>>=20
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/s=
ound/qcom,pm4125-codec.example.dtb: pmic@0 (qcom,pm8916): audio-codec@f000:=
 'qcom,micbias1-microvolt', 'qcom,micbias2-microvolt', 'qcom,micbias3-micro=
volt', 'qcom,rx-device', 'qcom,tx-device', 'vdd-cp-supply', 'vdd-io-supply'=
, 'vdd-mic-bias-supply', 'vdd-pa-vpos-supply' do not match any of the regex=
es: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/s=
ound/qcom,pm4125-codec.example.dtb: pmic@0 (qcom,pm8916): audio-codec@f000:=
compatible:0: 'qcom,pm8916-wcd-analog-codec' was expected
> 	from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202506=
26-pm4125_audio_codec_v1-v1-1-e52933c429a0@linaro.org

The second patch in the series deals with that. Reordering these two patche=
s
doesn't seem to make a lot of sense so I guess squashing it in here is
a way to go.

Thanks,
Alexey


