Return-Path: <devicetree+bounces-195058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A10B004BB
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 16:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B51B51892825
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 14:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 863A1271A71;
	Thu, 10 Jul 2025 14:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bD0dek8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E7B27147D
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 14:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752156420; cv=none; b=EBxu9NlL/YjkwU84za77efGVymskLNlyo/mseLXlrAECZnlNsRPAZ9ve6x+ixicLatyZNBHfkqSF4COpaj6AmVZOd9RACgTDpzpkOOojFAwcSOCf0GvXj73a4Ft1elW06PjkycVlp2L5ms+Zg5MAc8pFzCi7OTyxiRKf/XdJRUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752156420; c=relaxed/simple;
	bh=IZGXzFJaVfJR/vczPBT0kteEqHv0Jbw4nJMYEV8Redo=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=OujKfirIbLY9HArCBbPGbKaaXOTLIE9DMJZfLkMWget/k9YOl6fUnrizCD7iPowxgj6Lx3FjvokquLxIEvn6Z70VVS6De0PWhUEv61y8oXjG8Vn5X8N+M1SqjazomOAUgJU0TUisUZ30joE6ilkyXasKi7ou43lZ0P441JS87w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bD0dek8k; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-606b58241c9so1574085a12.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752156417; x=1752761217; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZGXzFJaVfJR/vczPBT0kteEqHv0Jbw4nJMYEV8Redo=;
        b=bD0dek8kywxcRelmsez9ougT6VjaHJCXNjIjcasasHHihoxT+irXC5mFlzsKUZCvub
         oLuwInQ6gz/elJVaVeGH2pP34rcM/7TW/OzKguV1M9PpajP/BkXIWo+4SDHCEBDSgBLm
         t5JMcBFh5ZU1kuXIVBeXbJZ508eCKPAp/EPXGXtzltnRkWGEP/XsQZ4FNeb8BIqkhVfI
         KzrXduu3jQQLAsVODg8p0bSndsHPzMt2pU3JRbPphQoWwjM0s89RL5ncTJMsSs1OdUi7
         VxRXp6YON6aXaU9oD2pP5EP3W8L0AWl7hP7x+I/xW0BxKa0UjS6WLAsS9VTzgT9JzUEL
         kP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752156417; x=1752761217;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IZGXzFJaVfJR/vczPBT0kteEqHv0Jbw4nJMYEV8Redo=;
        b=eXont0nggqkiiKLNKObbABaEoT7aQUKqZOhJLVIUHO8wHWsJLGY/ukPg2LZcFduZbO
         CH9OJonZsrqoHF6PsDPxfFcsI6OwuScJzM7HcIJ6x4dHfIgnEeexAulfocrd6wCpGF6J
         YSUlhmGKp9L6GC1+nEATczOQGBRN2wiyU8NQM4TKREwSe8FcfeYpjTkpeqR9tx/cFVMG
         jnfvdYbbdXk9joVVkOVMiXr6fgtYf3seO7HEBLggBhvYNKmMGU0xSYBDRB6fLSZiJjl6
         Oab/5eJ0gFg2wa183Jrn2ggRS4O1RwcPjqRpnpFctsh9QK/Ugsr5+1YaP4vgklquTXgL
         g63g==
X-Forwarded-Encrypted: i=1; AJvYcCWGkH8svUfJiuxe8XX2Yqd+QaMAYIgYj/PR44fetPvA7QilYn+rTK+jeKdYyOrnDubWlYWuPpPpw+Zj@vger.kernel.org
X-Gm-Message-State: AOJu0YyG3YYKQPyR8X7WCM5ogSVUMRFRbdm8s/KwB4B85A7J9GdRsSKr
	0DjIRtO7sCzfkYsMTqlKi9wwzqiY7UTrAL1rAjBVKaFWnJUCvQ19UtUzgJndmHDWqQE=
X-Gm-Gg: ASbGncue27wCUgFY3oWX86sfmCHC5TdFPe6AGHW9W6XbXhr7HNjAtdSsHPu3wz0trTn
	82vwjzs2EVGaXn0C/ME2TPGZtx20KSYiJP4UPZANoQHOYcxrNcGsNdILRnKoG1sNGS7VUzH4Jk1
	qMZns1rqXq4lCcDDrxZ5UdQM8NcBS03OsPv/2KTGAITCDOL2hQMTqMny6+VmFqYuU1AvoGCFyG8
	sY+eL7RaqxY7yT0PGovShWXl7Qex+nA+P47Hw2t8ZokOyFKh4CvJDvRn76/mdnC+uxhKrjDByBX
	kPXXIbpWr+zNBpaFfhdWn+XmKtBKNTxELk3Mmet+5doByR7MfNPr7nPZMTILfsLh/7FqrPDIhuO
	UeshS1Y9W1GAVbAHNIwqWgPNbbEXq2hPoEx74tW8xLw==
X-Google-Smtp-Source: AGHT+IHKeoz2isCeKmIGCw2CDCJFP7TDvu8Z7c8Wf56Df9oBng3/2fa7dXzek5kSvq5pDH1kTeDYXA==
X-Received: by 2002:a17:906:f596:b0:ad8:87ae:3f66 with SMTP id a640c23a62f3a-ae6e7104093mr286278366b.60.1752156415964;
        Thu, 10 Jul 2025 07:06:55 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82635aasm135489666b.84.2025.07.10.07.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 07:06:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 10 Jul 2025 16:06:55 +0200
Message-Id: <DB8FM0YYS9UL.JP6OVNZAXWBP@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 4/4] regulator: qcom-rpmh: add support for pm7550
 regulators
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com> <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com> <bc27209a-e0f8-40bf-979f-3d747c501ae8@oss.qualcomm.com> <23ae6ddb-682a-4c4a-bd63-f0a1adb6f4f8@oss.qualcomm.com> <DB7I7D3P01FF.3T5WRSTJIWLVK@fairphone.com> <c1a48230-c4f5-4c04-a53a-449bd90b1fd8@oss.qualcomm.com>
In-Reply-To: <c1a48230-c4f5-4c04-a53a-449bd90b1fd8@oss.qualcomm.com>

On Thu Jul 10, 2025 at 3:03 PM CEST, Konrad Dybcio wrote:
> On 7/9/25 1:56 PM, Luca Weiss wrote:
>> On Wed Jun 25, 2025 at 4:20 PM CEST, Konrad Dybcio wrote:
>>> On 6/25/25 4:10 PM, Konrad Dybcio wrote:
>>>> On 6/25/25 11:18 AM, Luca Weiss wrote:
>>>>> Add RPMH regulators exposed by Qualcomm Technologies, Inc. PM7550 PMI=
C.
>>>>> It has 6 FTS525 (FT-SMPS) and 23 LDOs with 3 different types.
>>>>> L1-L11 are LDO515 LV NMOS, L12-L13 are LDO515 MV PMOS, L14-L23 are
>>>>> LDO512 MV PMOS.
>>>>>
>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>> ---
>>>>
>>>> FWIW everything you said in the commit message is correct, but I'm not
>>>> 100% sure how to map these LDO types to the existing definitions
>>>
>>> OK so found another page (also made sure that the supply maps are
>>> indeed OK)
>>>
>>> SMPS is OK
>>> L1-L11 is OK
>>> L14-23 is OK
>>>
>>> L12/13 -> pmic5_pldo515_mv
>>=20
>> Based on what are you saying that?
>>=20
>> Based on 80-62408-1 Rev. AG for the LDO515, the Output voltage range for
>> MV PMOS is "programmable range 1.504-3.544" which matches "pmic5_pldo".
>>=20
>> But yes, in the table next to it, it's saying 1.8-3.3V, which matches
>> "pmic5_pldo515_mv".
>>=20
>> If you're sure, I can update it but the datasheet is a bit confusing.
>> Let me know!
>
> I was looking at the same datasheet as you and took into account both
> the LDO type from e.g. Table 3-12 and the output ranges from Table 3-24

But why, looking at table 3-24, is there a mismatch between that text
"programmable range 1.504-3.544" and the table on the right saying
min 1.8 and max 3.3V?

Programmable range sounds more like what we'd want? No clue...

>
> Konrad


