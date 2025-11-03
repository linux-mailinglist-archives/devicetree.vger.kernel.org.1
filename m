Return-Path: <devicetree+bounces-234370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F585C2BAAB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5FD43B91EC
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A093081BB;
	Mon,  3 Nov 2025 12:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="UxFSrtPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D9A2DC77C
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762172859; cv=none; b=OjvwCBr9BxAqpJn653+S6hz3jrqT/9HDBgzPm8HU6lXxVQFiKfk9proCw+YHRLBHez41bnwo2Lur3BLFIIJgpNs84+F1CPJGBd83snDhY/zq6xLTanhqOpGPy7cM4hFl3UrbWtkrNXccfLHFAyjRRc6gSot/Qp5ypySrOsGsgEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762172859; c=relaxed/simple;
	bh=yaE3waDSHbugCSGkUwyAGQoN36hcWzHi1nzoJVJHs4Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=LqHg5LU4TDGeoFszlZYjo191nDql3uEoGixb9mzVXY9Ttyk17syYCxtstuzbQjH3YWsO2pnW6yEKjosGRLMfg4o5TJQycAHWcRelIfAk0P7kvUOjhMDTAk32tgLqJYdb0bNXB4T56scjc0l16pYVnGBiLH4y+tBJDwupSBChpmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=UxFSrtPC; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b3b27b50090so680740166b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1762172856; x=1762777656; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IoGEKixiOf6+YbSpHpvXgbHu1MiS0fbcnkKp3M0gywo=;
        b=UxFSrtPCRZaQCPRwxdSo0StEpyhByP8lFVh5QezkmgLTDerEbkDiptJ3fT6m7zxCzK
         +SNntZ/+EUssDvJYH7p+1YbyrR3XwIPqiEW2OmiCnnrGaaDjcrCHlnvEEqEbL2GGP4Xb
         VYmAu4unJod26yp+USib1mgLcxXa1zwJ9ymZmxNySAIIDLpN2YbZf/E/x25+J7aYaatu
         Syb3ezcve0bZ7F0FrP6XIw1momDtIxd3UOO08lRjUidVeC6HadchyelzLtzZYNSLJG8Y
         ZOPPqdZtNymtL3QMBPUcG/K/Pjlc+qHnii1aAUSqU/iXwUb0dHukHRYxqbnl/7a88Q2N
         08KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762172856; x=1762777656;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IoGEKixiOf6+YbSpHpvXgbHu1MiS0fbcnkKp3M0gywo=;
        b=ns2L6PtG81o9Q2WAbhjqIoQKUrKpbmrNsBLPle7aUroVh0294yGYoz5IiN4xPD7mPJ
         GhKkemo5K5W9faqX46NhuJSMTAqf2UOM1Al4+gs5/x6Rdoj5S3Ud5GrQ5NjgqASnPmao
         0cRBb0gJ0LihRAlaZjVP8B+UinSzG7+TSO14IiQFMfhnUGzw+37YfHnfV+HS23aPfdoe
         KbzeTN6i2I5LRQYHmkMiCKA83BBF1lNNgkFRm0x7Xlgy/kJWWPwyKND1aLDlxSIK28V2
         1vFJvgDeqH0gXPWTlT2ANLvqgXiy2+8zAwC0aN2TnPNFGYnrcxoeu7/SUYcugl1kuTg3
         JiNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHg/e+p8pT/GlTnnQ/AwQuskXbMKAfcbv821i4fGcm9w/Ip64JBNNK4Gu1jh2gyo4NN8IcJAc2k4SR@vger.kernel.org
X-Gm-Message-State: AOJu0YyzgYgDQZeSWmyKW+8wNttcUwDsgfnJyyjZW9/Bc/V3WUS2sKY/
	RLZW9cvAXGGkaZ6U0CTr17EZAl1odEfKl+LOPzIBXJ8Ts1UTU/EPl6CAkkqDkFc8q5Y=
X-Gm-Gg: ASbGncvTA4QOqiPRr5KNI5lRqifuqVpYeGtMpIQl+l0KZf7G/qf8cJt/4xX0DB1Vxvf
	s3+07VUDla4vfSfemOpuNGywLZCf5aO5NXy4dzdR0u/RGO2bDYgO0y2QMNeaE4+VM1W/Nlpv1Os
	wV4WXgyVmrsfunrjmVJHbnbRVbY+j0W+mou/kkMYr7lPPWo9SZt8qDrEZKaNv07qHfeCQ9mm5YY
	i86wIgsM41YavbCSG3Ixcs224aEpYlxdWLSsP7wxUjw5cCxzkn68l9NcwihcxKSpFNHXVRyd9NF
	Ofj2FyHn8n+rZj6xVpudUQYy0cKlqC3cuEPv6FILmSzTq08gFXbOfHG8otVvSZhuwPaTtWAtN2W
	9x+wV11Tc5ro7uqEDOwHm3zdn95+KSooeefsv28vVOOGHvbexPqkWwi3aShD5TxWKJ8mwr1vPma
	+qRuJlVkca88qSSy37HsXCgkRgX0aIHN2jOsVzZSRM/hHYLw==
X-Google-Smtp-Source: AGHT+IEDliw+6lMJHirYDXmx61WJGlCahIYt8y75zXE63Jfyn2/OoGc7w3DNRT31bKf1ipSgsYdjnQ==
X-Received: by 2002:a17:906:c10b:b0:b6d:8e29:8f67 with SMTP id a640c23a62f3a-b70701ae016mr1324652566b.26.1762172855980;
        Mon, 03 Nov 2025 04:27:35 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70a9fb80e2sm548025366b.69.2025.11.03.04.27.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 04:27:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 03 Nov 2025 13:27:35 +0100
Message-Id: <DDZ2560R89E4.2A538CLIBA9B2@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH v3 0/7] Various dt-bindings for Milos and The Fairphone
 (Gen. 6) addition
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Viresh Kumar" <viresh.kumar@linaro.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Herbert
 Xu" <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>,
 "Vinod Koul" <vkoul@kernel.org>, "Thomas Gleixner" <tglx@linutronix.de>,
 "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
 <c93afd94-9d94-42fb-a312-df6e26bb2bc8@oss.qualcomm.com>
 <DDZ1X799V2KV.269J9YL1AGCIF@fairphone.com>
 <0fd020e4-636a-4bb3-9c22-7a5b16e4d3c3@oss.qualcomm.com>
 <89d1eaba-557c-4df6-b65c-b2105ec20788@oss.qualcomm.com>
In-Reply-To: <89d1eaba-557c-4df6-b65c-b2105ec20788@oss.qualcomm.com>

On Mon Nov 3, 2025 at 1:24 PM CET, Konrad Dybcio wrote:
> On 11/3/25 1:23 PM, Konrad Dybcio wrote:
>> On 11/3/25 1:17 PM, Luca Weiss wrote:
>>> On Mon Nov 3, 2025 at 1:14 PM CET, Konrad Dybcio wrote:
>>>> On 9/5/25 12:40 PM, Luca Weiss wrote:
>>>>> Document various bits of the Milos SoC in the dt-bindings, which don'=
t
>>>>> really need any other changes.
>>>>>
>>>>> Then we can add the dtsi for the Milos SoC and finally add a dts for
>>>>> the newly announced The Fairphone (Gen. 6) smartphone.
>>>>>
>>>>> Dependencies:
>>>>> * The dt-bindings should not have any dependencies on any other patch=
es.
>>>>> * The qcom dts bits depend on most other Milos patchsets I have sent =
in
>>>>>   conjuction with this one. The exact ones are specified in the b4 de=
ps.
>>>>>
>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>> ---
>>>>
>>>> FWIW this looks good.. where are we with regards to the dependencies?
>>>>
>>>> Are we waiting for anything else than the PMIV0104 (as part of glymur/
>>>> kaanapali)?
>>>
>>> Hi,
>>>
>>> From my side, I'm not aware of any patches that have any unresolved
>>> comments, so I'm essentially just waiting for the correct maintainers t=
o
>>> pick up the variety of dt-bindings patches in this series, and the
>>> PMIV0104 and PM7550 series.
>>>
>>> Any advice to make this actually proceed would be appreciated since mos=
t
>>> have been waiting for quite a while.
>>=20
>> Apparently I misremembered, kaanapali actually uses PMH0101 and PMH0110
>> and PMH0104, whereas glymur uses pmh0101, pmcx0102, pmh0110 and pmh0104
>>=20
>> (it is not easy indeed)
>>=20
>> so it looks like PMIV0104 only showed up with your series.. and I'm not
>> opposed to it, let me leave some review tags there, and I suppose I'll
>> just ask you to rebase this series on next & make sure the bindings
>> checker is happy
>
> Well I apparently already left the review tags there.. please resend
> all of them (2 pmics + this one) as a single v4

Will this help with anything though? Most/all dt-bindings patches have
been unmodified since v2 and haven't been picked up since 13 July...

I can try if you really think it could help...

Regards
Luca

