Return-Path: <devicetree+bounces-125147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB509DAD5A
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 19:49:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D054B2125F
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 18:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB738201030;
	Wed, 27 Nov 2024 18:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oiKJsSbH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46C320309
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 18:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732733364; cv=none; b=byk9Is5MNHZqxyEzuYRaLuwYBU+9pibik5nBlM/1vPeEuTZp4ETfrXLpXxGd9lHDGpn0O1/rjXMVBUlRyOk827gcc2meScH+qwEK62DgjFI30vJyPVJsN1SEPBdbYTm6rINmtRXsC56zc/L8NZRrXs8kjFjeD+oSPxc77172Ixg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732733364; c=relaxed/simple;
	bh=sjoyiG2Hp2mqoPO+fxRY3EiUOYbL8A159VrQnsMQDMc=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=e7sgcWyDn7DrWgjhZgHxjw8uc5X7EhAo968wHAU/nOSMIhB+61k8OK7AzrDCMRf+HQAqnDXXn/Q5x+RmWmkupiqYqh5kKdmJa+jNhLD5v5jrU9bl6TfEYGhYShfxRT+XE3g9rShD2unW65rzQziZIpaXg6W/BpOzbAoCnCoyFNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oiKJsSbH; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53df1d1b726so983432e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732733361; x=1733338161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sjoyiG2Hp2mqoPO+fxRY3EiUOYbL8A159VrQnsMQDMc=;
        b=oiKJsSbHk8orAOWZJnxuZrGBtiebLC9PpNlRs6R9lvwQC12I3y6LKCYDDJpIt3gk8c
         pqVo++P4mYR4w5KUAi4FivHHRr4ZT6yqQ4sbcenrESSA5mEQamh/0kz7Xc2DOTQ8KKUv
         bDEj6e1MZ/MGowLqpLb+3zCFywrW3V5XDSYEniEhX0yQdUDstKIyhOSaxkV3vVqGFQWJ
         VuLbapmhmbGmZrSHw2Jzp3uXqUkjDfWjtiTxwAmDLKHqwA9io63X2GR9rtGuVAgqdQn7
         Sqn1DxAHJdPxNorHEJT6peMPk8hAKasb/pu/jTKjwhWTxU4rd8VXBN9ey1uro/FIDh6l
         9TAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732733361; x=1733338161;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sjoyiG2Hp2mqoPO+fxRY3EiUOYbL8A159VrQnsMQDMc=;
        b=u/TivlbCv6EQVSYUiNuQrtg91+ZNFuXYWAHM6bJrBGXupE+JgiZMrLvg7qNcOCikWJ
         UsqqwofobmsqUdszT+eb+H+JkHPsbNRp35nH2RW4KwTZXiYUSrympIvdT4Ap1DupvT9P
         OmIV1rEoxDDwfNUrOzMzkyCsvDOBpYBrj6u6hVYM9RMptK/ulTDgdmY0qlaRK64Fodd8
         aBORn6ggilwvm+QpTm6aGDriZX8N2KFDgq5U/Nh+f3KjRDp2DU/8w7uYClaDLl0IADDW
         ZiaFFrhPsMToxCJ9E+YPvPzm2DukGzGG4733dM8zrtKNEvc4KG3Mpz3zqAMe826OuwAW
         OjQg==
X-Forwarded-Encrypted: i=1; AJvYcCU/D1yMywEiWAyI3lNYSHnCeMmy80hRpqN61jqghnc3xKpMI2HjQvjGs9aKikSytiCCfiGd1a3idH9W@vger.kernel.org
X-Gm-Message-State: AOJu0YyMDybhleHh+pXwWupiabhgC+VEMamnqZ1qdH+8txc7Lx3AL5Bh
	fFSdcphHNxnvYlI2tpGaVTwWVsPjQpFtYLpMAQLGV6kTGboKH/SScVbDu5pb1PU=
X-Gm-Gg: ASbGncvoMXzp62b0Y/ZTwqvVv0q0U3CEq8Ake34cJ1AhkxCBcSRLxEZkT1m/rcdgYYz
	lzOw98Da014AKmNYyqyDQPCyowp+6dNOht3pzi9Sg5yE8roAN+cXNYm4lKWW4vnkE/mZjZ1Axz5
	PycegnuK3ET8ZUoW4++n9UOU05w2BrsBnP1eYlNaQw6osoa7t0YxbKiXBiqcgP4tHJ7PfT9ZIEQ
	8UzVgIZdB7lNM5do3/MgbiYKPEGGjct2CJDOxxokS7wdmpRs9vwentqT/PeVRZnZcN5Tl9lkRmR
	bpJjbFEDe+Odvjs=
X-Google-Smtp-Source: AGHT+IEmUi+ANH8PnjVcprPLiJ6h5cts7vEPzcxELANUAmqnDFEgXsap5gI2kW5PmEmhDomAWBibaw==
X-Received: by 2002:a05:6512:3b25:b0:53d:ed0d:1d14 with SMTP id 2adb3069b0e04-53df00d1ae2mr3023434e87.16.1732733360922;
        Wed, 27 Nov 2024 10:49:20 -0800 (PST)
Received: from [127.0.0.1] (85-76-116-93-nat.elisa-mobile.fi. [85.76.116.93])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24812besm2308319e87.121.2024.11.27.10.49.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 10:49:19 -0800 (PST)
Date: Wed, 27 Nov 2024 20:49:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
CC: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
 Georgi Djakov <djakov@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Odelu Kukatla <quic_okukatla@quicinc.com>,
 Mike Tipton <quic_mdtipton@quicinc.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_V6_3/4=5D_dt-bindings=3A_interconnec?=
 =?US-ASCII?Q?t=3A_Add_generic_compatible_qcom=2Cepss-l3-perf?=
User-Agent: Thunderbird for Android
In-Reply-To: <0ba0f4af-5075-4bb1-a7f6-815ef95bbda7@kernel.org>
References: <20241125174511.45-1-quic_rlaggysh@quicinc.com> <20241125174511.45-4-quic_rlaggysh@quicinc.com> <20241127142304.GA3443205-robh@kernel.org> <zchtx32wtii2mzy2pp4lp4gdaim7w56kih7jcqes4tyhu24r3n@dagazlsdgdcv> <0ba0f4af-5075-4bb1-a7f6-815ef95bbda7@kernel.org>
Message-ID: <538761B6-5C8D-4600-AB9E-687F91B855FF@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 27 November 2024 20:27:27 EET, Krzysztof Kozlowski <krzk@kernel=2Eorg> w=
rote:
>On 27/11/2024 17:53, Dmitry Baryshkov wrote:
>> On Wed, Nov 27, 2024 at 08:23:04AM -0600, Rob Herring wrote:
>>> On Mon, Nov 25, 2024 at 05:45:10PM +0000, Raviteja Laggyshetty wrote:
>>>> EPSS instance on sc7280, sm8250 SoCs, use PERF_STATE register instead=
 of
>>>> REG_L3_VOTE to scale L3 clocks, hence adding a new generic compatible
>>>> "qcom,epss-l3-perf" for these targets=2E
>>>
>>> Is this a h/w difference from prior blocks or you just want to use B=
=20
>>> instead of A while the h/w has both A and B? The latter sounds like=20
>>> driver policy=2E
>>>
>>> It is also an ABI break for s/w that didn't understand=20
>>> qcom,epss-l3-perf=2E
>>=20
>> As the bindings keep old compatible strings in addition to the new
>> qcom,epss-l3-perf, where is the ABI break? Old SW will use old entries,
>> newer can use either of those=2E
>No, this change drops qcom,epss-l3 and adds new fallback=2E How old
>software can work in such case? It's broken=2E

Oh, I see=2E We had a platform-specific overrides for those two=2E Then I =
think we should completely drop the new qcom,epss-l3-perf idea and follow t=
he sm8250 / sc7280 example=2E This means compatible =3D "qcom,sa8775p-perf"=
, "qcom,epss-l3"=2E=20


>
>Best regards,
>Krzysztof


