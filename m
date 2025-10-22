Return-Path: <devicetree+bounces-229900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C64D4BFD7A6
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EECF6565AF8
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1663827703C;
	Wed, 22 Oct 2025 16:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lEv1KweE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB33635B133
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761151949; cv=none; b=MKQE9MjvTQtrB2iNU0a9TWYus03KlQrSiVT9PzUSOhp/zHRwEQbinsaZ6R0x7gBu/GqZgrAS6ys/5JsKOOjCrFOJdSutvUL9vkrecMBRqs1dW7RwfMdc6whsniNb76NEO+o4mv7CXCe/4KFTAzMZxQQXe2RgcGaK1rZi9fJQ+hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761151949; c=relaxed/simple;
	bh=k1lox5HCPqKeslKTFtUQDp54wxWlGvYzkemwVt7zj5A=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=H1VpB3q3hMd2LGIhKIHKlVVaFtXiQv+Iy0a+PtcV1FAvQHmFdMxONLkGvL875t18VydRKOakpWddWZLXo8TdfD6a2t6P2KxQZtjTYlBE12Z9yECHdG2cXpnlBDijo58M5T7azS2hZwKX9hrYArtG5hxjMv7e2XXYEkkyWz7TEwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lEv1KweE; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4283be7df63so2268925f8f.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761151945; x=1761756745; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37XacdJ9gFpbky/Uw+xLJQSiuMj+QNcWOMBwNotXM/U=;
        b=lEv1KweEBDKg9u7eYdVo0a1ZFQFmbcAZxo7jZ0qD0H7f3XM8YtOkhmwLLwT3U3VVbc
         UFZs3OhHe8ShNYy7060ykLAN+D4w8ttIf24L4/7wKYRSdyRrxi5tyfIkOEjZpbwdqAe7
         Lp3/wPxXPQLkpMO+GPSERkp/cMwNhHiEGIHhQ1qWLufeG5GJRSRR6J9kZe/wVvchy4zN
         LTvXYrvtHuu6Ozoa1seu+cF3fp60DIR+T+kyj/O7aWk4pz1ChGyOpGxOVZcDBssNVime
         juh8jDl+jAWm7GcZZAfYNAbPkSwxrQT9VWfM0Dqel4SU9TlcrDkaZw8YRJzpgIHKJGss
         1BDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761151945; x=1761756745;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=37XacdJ9gFpbky/Uw+xLJQSiuMj+QNcWOMBwNotXM/U=;
        b=IGfbtIwyAd7afIHIMFLvr00pcZI3bfQy+Wldc4Jl3g/ScT1cwbn1QwSxb4+dgGG9G0
         lpakLCzsB+UDHvQSWorDMV/PIvFZox38gR5E8fzgu2jPqzyKrIk8uMNCn6Rw5GUMLqKE
         krYgQ1h3zyiICerWaR54cahghQV92yeMuYxrpSjqWlnykpBxx8ldFf8cmRRkhq7VEzAO
         8YT7zTXAT+nAxUj6AaOBkQfk0Hcn8ZKfu0WEkIy8wPttU1R0Nx7HMdC6GnyLVMWJvtou
         ms2hKnNN9uFw3oJYPzqWoXY/ypM5E5pgW8FQ1YUhIjSh3gHrn5O+S3EkHgy6wwob68o7
         3BqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtgxXVDMMWnUCPW4b+0D/6UEKME6VtSrjlRp4CcH/gsYWj5UlPnMDhmdWzFZmPDs4oDuxEcqk2VKcF@vger.kernel.org
X-Gm-Message-State: AOJu0YxUFr2+tK//fi7qFVXtb0ueltOhfBD1hIjd5hQg4E0UWYdq0O93
	oXdEWmwJQ+3t+8UQW8Rg8STaEXbSXlVXGH6S0qQ2JjOpM3C07xR8TyQJjkRhSeiWH3CwZkyiZfG
	sGU43
X-Gm-Gg: ASbGncvmGc2IJiusViMElO8xtBk6tnTiVq8AVGsn59LwgjJn6+4gKFAuDBlhPOlfbNf
	pKH49wihDJNBgLGEbrfmc6SWEj2+uiOEXJif+uaY7ncaN2RdQoCoLRLx0sudgu551e4W8Y6Wc5a
	U+xbRMNTeVHs8P44YvSHySz6FektZRvjTuOPe4u/RArCQFZeICJRpCnlpUapaUOj1DvWFJ3Zdah
	pUytYwBQKFLflbpV8K+nxevSMJVaIWqu+cnQYfTtUY30wFTFuOoR6j4bWRly3uWmFLYN3GlD0mA
	O7vtY3KkQAOLyhjkQsV2nfjmOw1djCfraOZf6hdPQ2LRREv+NmqVnsQ9j6XdKuZIv4RbwV87LrE
	mEkVwcwHvSZWQliUUiXSm7kQhwB0ZGj0kHJePnDjk9YV0QNb0I1IqINwfjCTLKzdeuIXlN6/vT1
	8zkRSz785nPMnXbSU=
X-Google-Smtp-Source: AGHT+IGFOe7mdI2kEMdRKUAfbbhGpFj/a5aNDnUXnkpzyrx/acBYIYP5vLTNIADhuJOIFJaea5le2Q==
X-Received: by 2002:a05:6000:400a:b0:425:769e:515a with SMTP id ffacd0b85a97d-42704d9e8f7mr16851522f8f.42.1761151945204;
        Wed, 22 Oct 2025 09:52:25 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:11f4:2b3f:7c5a:5c10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ce3aesm26307158f8f.48.2025.10.22.09.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:52:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Oct 2025 17:52:23 +0100
Message-Id: <DDP09DUCGNDL.24UBAKUA640NO@linaro.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>, "Linus Walleij"
 <linus.walleij@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-sound@vger.kernel.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: qcm2290: add LPASS LPI pin
 controller
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.20.0
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
 <20251007-rb1_hdmi_audio-v2-3-821b6a705e4c@linaro.org>
 <b6223af9-2d9e-4ccd-b297-79f63167242b@oss.qualcomm.com>
 <DDEN5NSLDIHD.C1IELQW0VOG3@linaro.org>
 <zmi5grjg2znxddqzfsdsr35ad5olj3xgwwt6hvkiaynxzm5z33@gsgrdguj563n>
 <DDO0LYS7UTEW.3A9WGTAA5DKVO@linaro.org>
 <56vmqgrjy3je7omzirxnfxtuocebbj356iaew5thgkagi35464@hh34y7efssow>
 <450cac8b-598b-4f47-8bf0-43c805038e7c@oss.qualcomm.com>
In-Reply-To: <450cac8b-598b-4f47-8bf0-43c805038e7c@oss.qualcomm.com>

On Tue Oct 21, 2025 at 2:13 PM BST, Srinivas Kandagatla wrote:
>
>
> On 10/21/25 2:03 PM, Dmitry Baryshkov wrote:
>> On Tue, Oct 21, 2025 at 01:56:09PM +0100, Alexey Klimov wrote:
>>> On Fri Oct 17, 2025 at 11:42 PM BST, Bjorn Andersson wrote:
>>>> On Fri, Oct 10, 2025 at 01:29:38PM +0100, Alexey Klimov wrote:
>>>>> On Tue Oct 7, 2025 at 1:39 PM BST, Konrad Dybcio wrote:
>>>>>> On 10/7/25 4:03 AM, Alexey Klimov wrote:
>>>>>>> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
>>>>>>> controller device node required for audio subsystem on Qualcomm
>>>>>>> QRB2210 RB1. QRB2210 is based on qcm2290 which is based on sm6115.
>>>>>>>
>>>>>>> While at this, also add description of lpi_i2s2 pins (active state)
>>>>>>> required for audio playback via HDMI/I2S.
>>>>>>>
>>>>>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>>>> ---
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +			lpi_i2s2_active: lpi-i2s2-active-state {
>>>>>>> +				data-pins {
>>>>>>> +					pins =3D "gpio12";
>>>>>>> +					function =3D "i2s2_data";
>>>>>>> +					bias-disable;
>>>>>>> +					drive-strength =3D <8>;
>>>>>>> +					output-high;
>>>>>>
>>>>>> I.. doubt output-high is what you want?
>>>>>
>>>>> Why? Or is it because of some in-kernel gpiod?
>>>>>
>>>>
>>>> What does "output-high" mean for a non-gpio function?
>>>
>>> This is not efficient. It will be more useful to go straight to
>>> the point.
>>=20
>> It is efficient. It makes everybody think about it (and ask the same
>> question in future) instead of just depending on maintainers words.
>>=20
>>> This description of pins was taken from Qualcomm downstream code
>>> and the similar patch was applied (see provided URL in the prev email).
>>=20
>> And we all know that downstream can be buggy, incomplete, etc.
>>=20
>>> Back to your question -- does it matter here if it is gpio or non-gpio
>>> function?
>>=20
>> It does. The I2S data pin is supposed to be toggled in some way by a
>> certain IP core. What would it mean if we program output-high? Will the
>> pin still be toggled (by the function) or stay pulled up (because of the
>> output being programmed)?
> I2S lines are configured in push-pull mode which means that the lines
> are driven high and low actively, am not sure why output-high is needed
> an what it means here as these lines are actively driven by the controlle=
r.
>
> @Alexey, what issues do you see without this?
>
> Am not sure if pinctrl driver even cares about this if we are in alt mode=
.

No issues. Not sure why the problem (if it exists) wasn't reported or
fixed, say, for sm4250.

Thanks,
Alexey


