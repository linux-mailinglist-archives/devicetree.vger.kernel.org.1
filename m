Return-Path: <devicetree+bounces-198925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0455B0EC56
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 09:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2644561154
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 07:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FD29277CB4;
	Wed, 23 Jul 2025 07:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="S6Gj6Muf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41552E3702
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753257015; cv=none; b=u3FQMwwxoA26W2AhjjA7UGgKGXtuIHMoBd37UyiFi4yNihf0jhBNdwlrXddMV3SlWe7Qqd6wvo0o+cdKdenAeFWYqUPnyByt66WYLFbiHFG1k9bVGJ+ZldLUY0MdC+c2kHHdbBdQ1j2YE0VHMneDQetE9qZg0+JICYNIDq/wqgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753257015; c=relaxed/simple;
	bh=s2qj4W5nR9VUDrxKDMTXYV/rhF67N9Fs+yw/DNr1OSo=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=CJxyZN+tnMNAJMfYoMFSfzhy3Sehcu/klF6X6fkNJdInaLPUevv3+jQrMEz1HrZrZuKPhM/Aw+1YMosJw/wWMxjexH2lPXELe/vIOsz3zEr2ySuwR3B8/kWhow329p7nQi38zPwKEVWm3ke772gxAUae8ojgyHVk+s5NWvjXbg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=S6Gj6Muf; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-612b34ef0c2so10996763a12.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 00:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753257012; x=1753861812; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXbXFwg+K/BsGGE3U/llO+SOTqkjirp29B31EDd6IJk=;
        b=S6Gj6MufZogpDpLD6OLyGKZX/hTJuAUAJNpsUDAc8SjitpcO7ixApOaV/R6FMUvHST
         xdEfFa7EWx7RzmWJUSUvk25MKqph6eFmU9HuZeaBTdJ19+3/e0h6eG4SWwCJDdGEvMUx
         waiirmurZmFKL0axF8ccNzWmfgeLCuYXpB6SyuMDtEPR2EgE4mWn42dIOnV8V8+AA3ub
         Up3HcipiK5+uiprTVbJma/b4cYsc6QpfGyX2lg9nmOPWc2SY6HLSl660UM8rlVCHTRaL
         NkYe6ttE+iAidnzJLsHG3rTmravT3xMAgeW2ngDEOlGiCHvsVnGcqhHfW4Gy2+jlBaB0
         SoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753257012; x=1753861812;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yXbXFwg+K/BsGGE3U/llO+SOTqkjirp29B31EDd6IJk=;
        b=QRJ1fQUDqdFab65asODqqHmN4YphflTT8F96dlsjDblkb69nCdI7pOMh0EEo4gEdMa
         CA8fHx6mFyPTogHqi+ZOobui8UtF7EF95mQhx4VvbL18DDblKw2kfmLN3llD65Mu6Y60
         /siHCkgMTqyg+zNPRCywul2zpDPTaQpQ+8H+MhN1FRiDXI8heDWwt0sKPWWRIHSZUPLB
         edoZE+iNQepd2zd6yAWA2F/EUXfUjh2WwVNv+euaIhIEBZr8QPtLTjn75bxZs1S5LWm3
         a0oHqNka4+/Ato1uy/ttfvWFPELjIBNGjQ5PLPlObIq5PIpXwdZz5Y2p6IX7uGCkYAO7
         Vlsg==
X-Forwarded-Encrypted: i=1; AJvYcCXdLy4lnGh7L/7xFcQCIAWWib8ZY5pDlxWJNB0syMZnYNnxDnMCA5iUU6+P0MPvQmUUPLAfEw6zwiLd@vger.kernel.org
X-Gm-Message-State: AOJu0YxrEmhypUq8PSGZoOFReccZwTdkB9YMiikqNsqXe2ADzHLs2weL
	4hlroE2Hu4bit8c/zlQPI7f/mfQvGOeyRhsdxdWq/JtUpxF3m2sdmT2ffus7qvuAsnw=
X-Gm-Gg: ASbGncsPRC71lHLDHCdGpK58fEo9VS23zpbLzRzSm1BGWS7QDIBELWsM95TtDl6KWiE
	eShMzE8qYP4qQnGXPlaPT5GF1JgeLoiz/qYoZEuN0v7gKl++ylZEWBzKLIWPWPEmWTCGmOaOfiy
	mfgJ96ezbUUemqDVKu5NhPZl4lI0csSuJ3rgpxYbaP/iMsqYaFyHcZnf2QjzEjJnaMeHN3YU10O
	4br+/dfrE4rccNgCpoqnZkVzsR97B7g926iD7Gi9b0zJ6GkGAPkihl7+MjRWKM2znjRUSlfsp66
	IueW/NLi2i5knce/pJJVBIfpkyUVefPnSkTnoIT+KbfEc8SVKBSIsYe3dRhZxjXkDO8TwrJO/fP
	mn3zChsB88tzY9rBffJumitZXQB8VY1WpCdFzxbWiF9j0aFqWLElMRZFFYuAC1TAuYHk=
X-Google-Smtp-Source: AGHT+IHwBbnn1eUxlgv795d4NlYs1iTsVyOVnuelCygX33CjO30R0OB3cx1QUaH2Utrn1rESZ1YrZQ==
X-Received: by 2002:a17:907:986:b0:ad8:9e80:6bc3 with SMTP id a640c23a62f3a-af2f66c2165mr184740066b.1.1753257011912;
        Wed, 23 Jul 2025 00:50:11 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca2ee01sm1007709266b.81.2025.07.23.00.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 00:50:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 23 Jul 2025 09:50:10 +0200
Message-Id: <DBJ9QNML12CU.1RONWUJAZHQK7@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Georgi Djakov"
 <djakov@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] interconnect: qcom: Add Milos interconnect
 provider driver
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250709-sm7635-icc-v3-0-c446203c3b3a@fairphone.com>
 <20250709-sm7635-icc-v3-2-c446203c3b3a@fairphone.com>
 <d8955532-9a3b-451f-b5c7-549cee7d749e@kernel.org>
 <DBHKBSK14XHM.E3ZUQMEJKEOJ@fairphone.com>
In-Reply-To: <DBHKBSK14XHM.E3ZUQMEJKEOJ@fairphone.com>

Hi Georgi,

On Mon Jul 21, 2025 at 9:42 AM CEST, Luca Weiss wrote:
> Hi Georgi,
>
> On Mon Jul 21, 2025 at 9:36 AM CEST, Georgi Djakov wrote:
>> Hi Luca,
>>
>> On 7/9/25 4:14 PM, Luca Weiss wrote:
>>> Add driver for the Qualcomm interconnect buses found in Milos based
>>> platforms. The topology consists of several NoCs that are controlled by
>>> a remote processor that collects the aggregated bandwidth for each
>>> master-slave pairs.
>>>=20
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>   drivers/interconnect/qcom/Kconfig  |    9 +
>>>   drivers/interconnect/qcom/Makefile |    2 +
>>>   drivers/interconnect/qcom/milos.c  | 1837 +++++++++++++++++++++++++++=
+++++++++
>>>   3 files changed, 1848 insertions(+)
>>>=20
>> [..]
>>> +
>>> +static struct qcom_icc_node qhm_qup1 =3D {
>>> +	.name =3D "qhm_qup1",
>>> +	.channels =3D 1,
>>> +	.buswidth =3D 4,
>>> +	.qosbox =3D &qhm_qup1_qos,
>>> +	.link_nodes =3D { &qns_a1noc_snoc, NULL },
>>> +};
>>
>> It's very nice that you switched to the dynamic IDs, but please use the
>> current style of links (like in v1), as the the NULL terminated lists
>> are not merged yet. All the rest looks good!
>
> Is what's in todays linux-next a good base? Or what branch should I base
> this on? But correct, I currently have v2 of dynamic ID patches in the
> base for this.
>
> Also If I send the next revision by e.g. Wednesday can it still go into
> 6.17? Just wondering how quick I need to work on this.

In case you didn't receive my message on IRC, your icc-milos branch plus
the following patch works fine:
https://public.lucaweiss.eu/tmp/0001-fixup-interconnect-qcom-Add-Milos-inte=
rconnect-provi.patch

One num_nodes was wrong, and alloc_dyn_id needs to still be set without
the extra patches from the mailing list.

Regards
Luca

>
> Regards
> Luca
>
>>
>> Thanks,
>> Georgi


