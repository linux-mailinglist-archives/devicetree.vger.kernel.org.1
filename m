Return-Path: <devicetree+bounces-229369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2648BF692B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:56:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC28A480D9F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF5F133375D;
	Tue, 21 Oct 2025 12:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="APVA8szD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F44532E6AA
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761051375; cv=none; b=pHyGogLrnDVbP3ewmsuYSO8rSaIye5Aa3XP85sOAO12g8aQ3KHerLLASx2jjCZ2/DurBhYrh2MmysPezdDKYFHv9gsiwXuaObfXNJghkKE+JXLmZp3VatZrNkEEjx9BbY9uAYV2f1BtYHlPM7Ks8TE0upglivMmepMKMMjxCV7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761051375; c=relaxed/simple;
	bh=G6BUtnjEM/zfg1qCW1pFmzrsk68q9uL7cRAs98tzYYA=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=bexpVNAqurU2QUz3EM+E9tw67IHZU/aNSoq8yUeapKeLP/dMsnFRokSNQU9no51UKEsA4tiVWOKB7kLaZxsw3mfiJe4tPOaGkkOvVbA/WlchINzrirfoeoaaHBhtgaSRNAYsdVNI9XwwvJ5tL0ApfkC+4IYScNeVWXpDRJnT1xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=APVA8szD; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42421b1514fso3467325f8f.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761051372; x=1761656172; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D3+jqWip4cBpergxUpE3r3nDPRXBu9AkUkhJj9MutYo=;
        b=APVA8szDJAiTkZJNaj6Hq1AuBwpvzZ6SSMFTJ1vHdGh14L5DKXxBvCWI8ApIJGsVdQ
         JROzQdlXEuQnTZRpYCtwqhSdJIJAt4m2ZyHwkqMUQNQ8CzHZXSbiQc+WUtdBVCA0dXIr
         ZINJbqJOSId0NLQfEBJw3tOgCOKWv/CJUDg1MOXLbixyfMFezCKtU0BSfHwzCJNvAKJD
         eR/RgeIuMFvUU6iD7C0UvfabIidwx+uu8zAFd91jx7QTXORa4UF6BTQqukOc0OKC2DjV
         pbkkAhCrgYOrW/YVZnPurAuQi4PtAMMRfFAUgKtXVyjIPNzsmTegpdcdRE9QThVoJILN
         1Mug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761051372; x=1761656172;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D3+jqWip4cBpergxUpE3r3nDPRXBu9AkUkhJj9MutYo=;
        b=r7dt1PktykxDzLdFpHkaLYP3DrIVSQn6HvKnDyG15lAJxN/V7vDACWUqHhWd0DHRLK
         Y5mmcLiYoteNWsxlJs456EugEnKWplQmyYH7/J4UpUrzUk1MYET/SdVkyH4wchkDx81d
         jJ52VPNs7AmAiKssbeTfAHn0PZkpPByaUNf7NHAyhwEHqvaR1JveYxfr4LVvLRRItALV
         m4dcSyMjGvIou9zZzpyDkpyCgmkxhUUgH33EvMKyBHbxbVCs2+xi9oUgj4RuDRhHHGAu
         FuPBiYeCWdwU99YeWvtQjuPy4gneKbeRMi0YpQeyVdb+Dj35Fc71BcwTxAZn8g97qvJ1
         CEww==
X-Forwarded-Encrypted: i=1; AJvYcCW6tzrPgfrZpwCIBrsNP+1USjMY/kLGOk2BBgU/vqacJ+G1/U8vrGkfFKbXw2/modWvzNeZtBph2AUx@vger.kernel.org
X-Gm-Message-State: AOJu0YwseAAKPXeUUW+F0kPEGFmjBMqkxwYXQFHPWhtRfUc1WUgp6/AD
	xY0GI2miITCswPDqSG/jbBoiQYU+NWtnlLmAp9yR/xUanqYUNUaqSplQKBG8YcMD3t4=
X-Gm-Gg: ASbGncs+ihRURc8B76plX9MAHrpgYsrOb3VqlCif+y6kwh2Pkip2NybaxfBS2LIIKNA
	YABfycSTUf12x8FQ4OMLDtyQlZEPrAglPqwEBv4cMd068gI+gs/UGR32YA4t6g9aq98AYEnUN9X
	4nUTqRBk4ZqmJ+6SICRL8J1CdVTpx/wtY9l7EG+4Z5V+kiBf6p175TVjUz04/eWhYum485W0Nim
	Uz4i2WaWmDvSRSJ8MmMb0COZjve3p6qtqoCxoOrmM4L4AGtFfUqmJTNzMH8D5gDxRnEYpL21z+N
	ylVEnQbw4YmBv4YNnrzIbVf4A5ja9p/SH69EwCcfBk/Aov2m8yCGe/+j6Ew9truKFUgDUkTEjhf
	elpOx8q4jUPaarytlEoMfTXQPVx5g1xV+EBpwZyFnpv7vFDK/Kx7fRNGOySx4F3ViylwLPEkKhu
	KH9ViR
X-Google-Smtp-Source: AGHT+IGwoXv9N8+tNudgKcCBOtAB/G2QWEcSJ7tMnIbD245sZlfvNJ9I1xX/MPofutEogENazBSdSg==
X-Received: by 2002:a05:6000:1a85:b0:427:f012:5943 with SMTP id ffacd0b85a97d-427f01259e0mr7681625f8f.17.1761051371929;
        Tue, 21 Oct 2025 05:56:11 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:8d4e:2f09:764b:8b5a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00b9fdfsm20142679f8f.40.2025.10.21.05.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 05:56:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 21 Oct 2025 13:56:09 +0100
Message-Id: <DDO0LYS7UTEW.3A9WGTAA5DKVO@linaro.org>
To: "Bjorn Andersson" <andersson@kernel.org>
Cc: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Linus Walleij"
 <linus.walleij@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-sound@vger.kernel.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: qcm2290: add LPASS LPI pin
 controller
From: "Alexey Klimov" <alexey.klimov@linaro.org>
X-Mailer: aerc 0.20.0
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
 <20251007-rb1_hdmi_audio-v2-3-821b6a705e4c@linaro.org>
 <b6223af9-2d9e-4ccd-b297-79f63167242b@oss.qualcomm.com>
 <DDEN5NSLDIHD.C1IELQW0VOG3@linaro.org>
 <zmi5grjg2znxddqzfsdsr35ad5olj3xgwwt6hvkiaynxzm5z33@gsgrdguj563n>
In-Reply-To: <zmi5grjg2znxddqzfsdsr35ad5olj3xgwwt6hvkiaynxzm5z33@gsgrdguj563n>

On Fri Oct 17, 2025 at 11:42 PM BST, Bjorn Andersson wrote:
> On Fri, Oct 10, 2025 at 01:29:38PM +0100, Alexey Klimov wrote:
>> On Tue Oct 7, 2025 at 1:39 PM BST, Konrad Dybcio wrote:
>> > On 10/7/25 4:03 AM, Alexey Klimov wrote:
>> >> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
>> >> controller device node required for audio subsystem on Qualcomm
>> >> QRB2210 RB1. QRB2210 is based on qcm2290 which is based on sm6115.
>> >>=20
>> >> While at this, also add description of lpi_i2s2 pins (active state)
>> >> required for audio playback via HDMI/I2S.
>> >>=20
>> >> Cc: Srinivas Kandagatla <srini@kernel.org>
>> >> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> >> ---
>> >
>> > [...]
>> >
>> >> +			lpi_i2s2_active: lpi-i2s2-active-state {
>> >> +				data-pins {
>> >> +					pins =3D "gpio12";
>> >> +					function =3D "i2s2_data";
>> >> +					bias-disable;
>> >> +					drive-strength =3D <8>;
>> >> +					output-high;
>> >
>> > I.. doubt output-high is what you want?
>>=20
>> Why? Or is it because of some in-kernel gpiod?
>>=20
>
> What does "output-high" mean for a non-gpio function?

This is not efficient. It will be more useful to go straight to
the point.

This description of pins was taken from Qualcomm downstream code
and the similar patch was applied (see provided URL in the prev email).

The same problem here and no response:
https://lore.kernel.org/linux-arm-msm/d8e202fb-f494-4b5e-bfb9-c94c1fd3af4d@=
linaro.org/

After looking at
https://lore.kernel.org/linux-arm-msm/39ebaf4e-e91f-4568-8de6-9fc1f805a1e4@=
oss.qualcomm.com/
I guess the output-high should removed at all (if it is the case) but it
will be more efficient to provide that as a feedback rather than vague
responses.

Back to your question -- does it matter here if it is gpio or non-gpio
function?

Best regards,
Alexey.


