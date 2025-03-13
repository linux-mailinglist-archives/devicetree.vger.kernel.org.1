Return-Path: <devicetree+bounces-157098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99379A5ED58
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 08:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6ECF3A8F4E
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 07:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240DE260A4B;
	Thu, 13 Mar 2025 07:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aTbTcFc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB0525FA39
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 07:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741852333; cv=none; b=OVIB25p2hpoLHOX6YGQhQWSFHcbk7B/bJsBAwm5g5kveUgsj8UbaiC53Tq9s6w+LWdVHVVTs+iLgNBxOHBHbcAgrn9iL7Ql9ZFC8aeTm4sFDMS8mFv/avYvr4QiDZo+4Sq+KaRBajuAQRMvn+pQNSXxxPR+do5jtJ/aujpYgVLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741852333; c=relaxed/simple;
	bh=Fsrf7QgC862sGCWItFW6TJdYnI/pP94I9U5QzB4uQZE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=oWAaVoQnhxLXtbKrHA7qqpUhWyFaleN+iouIA3T6ybiECB4JKA8CWLhxKWDYxJK9J5LJJwDIWRo62tZyanEf9fusjoamTLmvdVxasHMlJ21jhWg3j2+8eseC3s5BxdZHxnTsdZxq0LSxTEeqC9Dw4/HkZt5woT3bvcR26+75/bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=aTbTcFc8; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aaecf50578eso114111766b.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 00:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1741852328; x=1742457128; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fsrf7QgC862sGCWItFW6TJdYnI/pP94I9U5QzB4uQZE=;
        b=aTbTcFc816ZG97krLmM4SvJkPtrastjW5YjyPQHTKPgnObvH6eRqsK6eEIZYnDrblQ
         q7RPGZ/kUECU56A2I1Ty1pmpPVMMeDf8wOvvkdFBGC8PtWvuhB5zPtFgGjMtOdPtT2Kf
         k//c/gFAmsOFTeDDYPfa84ohq1BbO4CxEN0EWvsfCL4ruOUuTWP7HHtu/b2h4saC29Ez
         MxnVtz9eLjBhGGR11fYmLmtY2gLJM5DLxNDg1VLGkKL+YTSZVKH5pffPkJ+2jtWJgmGT
         w4Ope8JK4WCw1e48OeNss/fPrviWjwsErKw1+nqi1q7CMzBQFk1BWepdqi9ytig+eSSd
         krdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741852328; x=1742457128;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fsrf7QgC862sGCWItFW6TJdYnI/pP94I9U5QzB4uQZE=;
        b=r9QU9rIM4EFqVDnFTMkjwzUJW9ijT7dZWokRBkwBxHefiH8ScFCp7pis8WYAXE9sP8
         gVwWppKYnI5zcYK8jVtKjxCZcxHwWc2p6acsnxEh3N++ouJp5LcyXzEXyeiliXw6O2tY
         5z0VUaFYlSxPhHkI9l9i5RnBm5PnaNkrVJdLYkkRLXG0wTY1lUTtLLBBBUzZSh0bT6Th
         g1Aog/iLcCZkK5+bXqit3XmVdEw2lEeDcUD7BqqtTaS06YJIkEmx1l236YkAdO6qb4YC
         L6A/wGYi4L3bEk1vnE3d/Vfsn/CpjLJKDmEQlkH5iBq5U/sHqcii8eabFOjNHo40+3G3
         nQ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWAD0/CHbOtVPwhiUYSO7AdBmNfyIQhNoiqI7M/dup4vG2Sw2kikK4seM9IZZvwlW5Tyd6UpHQMQ0jj@vger.kernel.org
X-Gm-Message-State: AOJu0YxmNoHJYDM6xb0rYPN6TArJuDqrsmNU1oEyXgu+biG5euitmyOX
	uoQqCsm6MAyrLYpChUzjeoZEsFuYLWPsjomIKXYo4DSGHnMdve9I5Uvi9sYIZgY=
X-Gm-Gg: ASbGnctZZ/ARfm599Lfpszu9NvnA0H+3dSCQhwXMrBPCydBSlEcRf8LK4HNwXpUf1zg
	QtgVWFPeGuhDb192QXb13qxaOYts5tsHnsjYpynrOryDB2SIBIYFYwJfkMkl0RHPrx49GIXfAmq
	kvXBKfDx65HRyMDC5Ujk+zrFW2m/8ti6hlnPJfzIU5sl1mt6A8Rx8X3jAIXX9/fPc13+2kglE7g
	4B5U6vPRERooBMr4RiJplSLnyh95z3Y0ppO3E6QzfKF1WKKoG5AKXhuJG2uGUvTmvN+Md0T+JWg
	K/D/v5yqwjIZdAmr9+MiFxL7rFY8B5FgbY6igs3xnPoam+NDpMLRA09oxjcHhebsgM+hUE+K01I
	HVfjrgcbPZFlbGA==
X-Google-Smtp-Source: AGHT+IHP8wNISZ67+M/6826xmvZWrQscMDK+8//hmYHwzIUECiMDJMX5zRuB3mlpe6FMpvHer7zRWg==
X-Received: by 2002:a17:907:2ce5:b0:ac2:b87f:2859 with SMTP id a640c23a62f3a-ac2b87f2a72mr1415546866b.55.1741852327837;
        Thu, 13 Mar 2025 00:52:07 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149ce8efsm49276366b.102.2025.03.13.00.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 00:52:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 13 Mar 2025 08:52:06 +0100
Message-Id: <D8EZ47Z557OX.37FDVYA5AHET0@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Jagadeesh
 Kona" <quic_jkona@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Taniya Das" <quic_tdas@quicinc.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@linaro.org>, "Vladimir Zapolskiy"
 <vladimir.zapolskiy@linaro.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
 <3210a484-b9c3-4399-bee1-9f5bbc90034c@linaro.org>
 <CAA8EJprP9Z181VDCT=xfyrBipzgiB0tfb8M_XZ4H=yOrvEnB0w@mail.gmail.com>
 <f41061a2-cf45-4588-8df7-22270c936ee2@quicinc.com>
In-Reply-To: <f41061a2-cf45-4588-8df7-22270c936ee2@quicinc.com>

Hi Taniya,

On Thu Mar 13, 2025 at 5:39 AM CET, Taniya Das wrote:
>
>
> On 3/4/2025 2:10 PM, Dmitry Baryshkov wrote:
>> On Tue, 4 Mar 2025 at 09:37, Vladimir Zapolskiy
>> <vladimir.zapolskiy@linaro.org> wrote:
>>>
>>> On 3/4/25 01:53, Dmitry Baryshkov wrote:
>>>> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote:
>>>>> SM8550 Camera Clock Controller shall enable both MXC and MMCX power
>>>>> domains.
>>>>
>>>> Are those really required to access the registers of the cammcc? Or is
>>>> one of those (MXC?) required to setup PLLs? Also, is this applicable
>>>> only to sm8550 or to other similar clock controllers?
>>>
>>> Due to the described problem I experience a fatal CPU stall on SM8550-Q=
RD,
>>> not on any SM8450 or SM8650 powered board for instance, however it does
>>> not exclude an option that the problem has to be fixed for other clock
>>> controllers, but it's Qualcomm to confirm any other touched platforms,
>>=20
>> Please work with Taniya to identify used power domains.
>>=20
>
> CAMCC requires both MMCX and MXC to be functional.

Could you check whether any clock controllers on SM6350/SM7225 (Bitra)
need multiple power domains, or in general which clock controller uses
which power domain.

That SoC has camcc, dispcc, gcc, gpucc, npucc and videocc.

That'd be highly appreciated since I've been hitting weird issues there
that could be explained by some missing power domains.

Regards
Luca

>
>>> for instance x1e80100-camcc has it resolved right at the beginning.
>>>
>>> To my understanding here 'required-opps' shall also be generalized, so
>>> the done copy from x1e80100-camcc was improper, and the latter dt-bindi=
ng
>>> should be fixed.
>>=20
>> Yes
>>=20
>
> required-opps is not mandatory for MXC as we ensure that MxC would never
> hit retention.
>
> https://lore.kernel.org/r/20240625-avoid_mxc_retention-v2-1-af9c2f549a5f@=
quicinc.com
>
>
>>=20
>>=20


