Return-Path: <devicetree+bounces-222171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3F6BA67F9
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 06:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 615801898C9A
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 04:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765BA22D7B5;
	Sun, 28 Sep 2025 04:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l8pDNWlJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018822222D8
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 04:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759034967; cv=none; b=hLo79bQnU6RC3ggnO03N1nySmNHMblkTLkVq75qERfSb0hITeYK1cH1TmIJ8fHf/UgwYf8GH71RBWzZ97WLZZK3cOPtYcNnuyrGpTxkny1gIfolngPYAVrDqARuHqtWXlZUxtYJDNsBJifODWfuWl+AL8AIW2ARK3bjZlFBLlJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759034967; c=relaxed/simple;
	bh=0/cALg/CUu77B5//afrOOTSS5oVPeVKNtLywwtIogKQ=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=BMZrAk6nSO1nlnHkSGDPZiLfvgX+IzasRx65vvMXnW8FjnQN4z/fvh6mCeyNdfFfmWvtVsaWDMGcO7Fc7p3stTHKAyr4H3BLp9i6qSBBxBoju14f60tLKbbflybVfr6tLpYmsToPn8ExKybJUNB5dHVvGlhYJdqPJleXopn3Qvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l8pDNWlJ; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3306eb96da1so2843244a91.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 21:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759034965; x=1759639765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MCjdjQn242Y3/+NeNWwaAVxKQkMZf3KJ9t0iHGGsdtI=;
        b=l8pDNWlJ/Q4uMPMJ9x7CMHQs7bl9D1Jm17jVEpTpz9nYH5IXs29THM8yxrD3d5buVH
         /uGZD0uGfMW9GQoC1Im8uMTcrl8eHd1DC5y04oj1vI8ZKzFQXpUycL+eqBLPVE1uddz3
         VlGtzOqUEISOg2JDMwCjqVBapIQPQ6M7jCLvQpjj+zXjr0jFD3AfeytQH5LkHEZgZ5n2
         9cZCQsz0wjEGC8Y+cLokVercOKMIeD+P7P39uglP/v6k2wQIR0ULbRtR55t0bedx9f/w
         XMdpG4tnjLuLknSXZlSd+xfS0QoQuWZ5D1c7fZYtbyG11+/6prl75FBoi7ridplnDX/C
         R2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759034965; x=1759639765;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MCjdjQn242Y3/+NeNWwaAVxKQkMZf3KJ9t0iHGGsdtI=;
        b=L47Wh1ZCfXXx2fjdP4oIX6hHumd7xJlXup7bf47+UK4988p1zWGwZzMorRfmHSnzCz
         0pA623jX945p/TyRgOYCcNmcMA5DpYHX/V0ql4kgc+6yilHbrdQwyTdftO7N7sklfoQ1
         lteFiAbXd3G2yqOHVtl/IUjvew/JBIiAeq75p35gU1WhO177Z4H+RXh/zaZlAuh5geD4
         lcmQ75VIBxSS5pSnR8j318NTj5b6WkOAUH+1m/fwEFfWm6GfQ+l4jInMQXggl53+WBG5
         awP/gXMxAqLIU/3+204o5ZqvxUkmqRntMBAr11jtma6xxiLQ6HivrZwi6A7fdlyRVFf3
         hbTA==
X-Forwarded-Encrypted: i=1; AJvYcCWTCDAGNGd1ysVT+wsPhm0wwvb9H/KMqJk25eXzmihLqFGzDwLpryNbRs4mIUNLkH4liTRv24nnhuLa@vger.kernel.org
X-Gm-Message-State: AOJu0YzJwmh8fs+yyWQ9mgGVSG8p051xSQxuP1iPnCNvW1TcuLlq+F7L
	pbusIZKDLswQIEiBITflbB1h24lKw8b2vZQrDg+dBeeJ1K1FiCxiSvys
X-Gm-Gg: ASbGnctFVm08RF64HqP20PjOZYzRPchR7cHCOq+FUnYLVTRLzlj7NWaBOM9sk4urs3d
	DYa3yho31eGEcPd0NhL86ZQcW+DExe45m49xnoUshzbyE8eQir65+/DM2PWntC+5IcNhJCd+Vnc
	+8bUpao8AhybhvtqGmvt8zd4Ptqas96uZ3qOjnk2OHLNXbUjGEG8VUu0aynVQkU2hyfJmeioYRc
	zMf/tmADLaXD0gQ8GPskaSrpBVTmbq6UF1ZA4bdUHEngr1AFZgp0bVgvT/6wM23IpmuKvjKQyqW
	8kJrT1AYZbjI7WlPBRQz0fDYrZ5Pz32eb0sVzjK4PmCRK/MiX24GmwLJ4WOgAtFRYjUPNIwgmOi
	XMcqrKXVkNPjczqsglAxxg8o8g5cr10KgH2TXJCEcbLAN
X-Google-Smtp-Source: AGHT+IHs5S4vCyfYNXJe8BarL/unwhfRqZBmxJoU0ifSgIkyPygD0xTD357dBlsVUNmTvVibBbdOTg==
X-Received: by 2002:a17:90b:1d86:b0:329:cb75:fef2 with SMTP id 98e67ed59e1d1-3342a272dc1mr13118071a91.3.1759034964944;
        Sat, 27 Sep 2025 21:49:24 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2804:18:113a:1c85:b8cb:8c96:f099:efc])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711a6sm9644063a91.6.2025.09.27.21.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 21:49:24 -0700 (PDT)
Date: Sun, 28 Sep 2025 01:49:17 -0300
From: =?ISO-8859-1?Q?Eric_Gon=E7alves?= <ghatto404@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH=5D_arm64=3A_dts=3A_qcom=3A_sm8250-?=
 =?US-ASCII?Q?samsung-common=3A_correct_reserved_pins?=
User-Agent: Thunderbird for Android
In-Reply-To: <aar5oq4xvlbpjmitnwzti5w7gitf7wxdas4bflx6eqh3r6srt7@iccpujd6xc4m>
References: <20250921135623.273662-1-ghatto404@gmail.com> <aar5oq4xvlbpjmitnwzti5w7gitf7wxdas4bflx6eqh3r6srt7@iccpujd6xc4m>
Message-ID: <51C6A39B-538B-483B-8E75-F86D1612EBAD@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On September 22, 2025 6:51:30 AM GMT-03:00, Dmitry Baryshkov <dmitry=2Ebar=
yshkov@oss=2Equalcomm=2Ecom> wrote:
>On Sun, Sep 21, 2025 at 01:56:23PM +0000, Eric Gon=C3=A7alves wrote:
>> The S20 series has additional reserved pins for the fingerprint sensor,
>> GPIO 20-23=2E Correct it by adding them into gpio-reserved-ranges=2E
>>=20
>> Signed-off-by: Eric Gon=C3=A7alves <ghatto404@gmail=2Ecom>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8250-samsung-common=2Edtsi | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common=2Edtsi b/ar=
ch/arm64/boot/dts/qcom/sm8250-samsung-common=2Edtsi
>> index 96662bf9e527=2E=2E1680be67e733 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common=2Edtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common=2Edtsi
>> @@ -159,7 +159,8 @@ &pon_resin {
>>  };
>> =20
>>  &tlmm {
>> -	gpio-reserved-ranges =3D <40 4>; /* I2C (Unused) */
>> +	gpio-reserved-ranges =3D <20 4>, /* SPI (Fingerprint scanner) */
>> +						   <40 4>; /* I2C (Unused) */
>
>Typically Tab size is 8 spaces, not 4=2E
I'll change that, thanks
>
>
>Also:
>
>Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung G=
alaxy S20 FE")
>
>
>>  };
>> =20
>>  &usb_1 {
>> --=20
>> 2=2E51=2E0
>>=20
>

