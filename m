Return-Path: <devicetree+bounces-193684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C8BAFB522
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 15:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A4B13A751F
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 13:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B68E2BCF4A;
	Mon,  7 Jul 2025 13:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="EFGTtkZP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0819B192B7D
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 13:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751896201; cv=none; b=b+Zlv6ge2bqYNIctOMh2Q1CRMY81DsQ7w2vtNUBdAbSO7tLMEm/GVjO+Ga9I3+drPDU8Ks+ZAIwoO9tpUfbwLzcTXlEfhOR+YqW/FgWr67K1I34SD9ZxCGQpeW5sCyxzJYaiBnwlcz0iN25reju4jDIOfY02/jsS/JzklTXW0HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751896201; c=relaxed/simple;
	bh=4luD94zEk/hzW29upK2TZa2T7UiavJ6bCdqdzulQjJM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=TJPbSdSiCmL+S7GrtBqUKT7VF3thLDsUEkg0FMjfH2amYda02/Pa8NCGMF860bKxQ0ycCFU6rcRhqPs5xiNn+8Ndfxi+trhEW5RujaQ8qUGORKWG5hEm/5IhELeBEsu7KDBhhnkksjViONDn1SDiKbh/HV3U+vt0Rxyevcqk+ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=EFGTtkZP; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae0bc7aa21bso664900166b.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 06:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751896196; x=1752500996; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0zyQsmDxtSSwWfwFyswcoFXsE5e1vPtKLX9bKtkWsis=;
        b=EFGTtkZPoDGNBenLlDebPipNIHoJAV4LY59Kj4OGN+LN005+ffaPDhF6TlqwP+mq6E
         hXSdDcVu5BM2rSDtMuhwh/oKAbMtKWkLE/Yf851nhAgVyieNo6BkP8v83arMW6jyUgdu
         Rf/ROko7f5++Zsz8z/9eVJo1fNugTrt7BHf9991Fvzb+JuAcTsjREFGys784yMxeZp+t
         Bsp7u4I4Ewt4VpE+ACiU5YENRZ3zmRQgNccmkaYxokyMBoLRAG3o4AoBMJoof/JwQH74
         d67cXli1+q6DXRUcs4ilC5hlhQKpQrrCBclSlxHQytAJbYP9FfcoRrj13orZ1RMZJpZp
         1cWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751896196; x=1752500996;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0zyQsmDxtSSwWfwFyswcoFXsE5e1vPtKLX9bKtkWsis=;
        b=ekNHF4eHIhf2yLMQ9tLvcQgpmDfPY/nW+3gH97KeW7Jg9jbl6UA2irUIVvN/PkGXVw
         WriN3RBg7v0z35Cnjh7cPSJe8Qe0h9+nCtuYISM5KKPNN62CzIKP7NI8ahBoSdqQ128s
         VqeYdbCuFK70pA1g8MQHG6Su7R5zudTFOLCC0AnoomHQiQiSKAgGjpi8YZs0Q1FcADkM
         e0W3mVUAtuRt6HQVtFcGYnPaV1meCgEqP6y/CC6yp0pcXILkZs6e4m+MKwwa0fdZd3Dl
         yyEEjHvtJGbDiOpYXWrbkX+dT2RpH1n0NgF0rLCaBve5fj/XgPGqSHDs95ps9/i19YJB
         7NoA==
X-Forwarded-Encrypted: i=1; AJvYcCVOZ5Db8jtz0EVLbkAe5HTq6vQEMHKKxn6hBsGOdLw1AhG1ryZEB/iMWhPL+U52e8y8KNvr8OziJ9HP@vger.kernel.org
X-Gm-Message-State: AOJu0YxOHd8iaZr6rufde/r50DEL2MYCl8c5lPzi/67/iQk8t9NaumyL
	RWcvEzBNBpb0rY4QNRrhwqTC1zG8U3X//SEpEbRDEIfFvciCBD4wc/i7Cj1cJDT/e+Q=
X-Gm-Gg: ASbGncsy+2Fd2lztzBD70uwjMjhmJTf7oEGT9I5QxXC0Zsu1UekIhjmjsF2ByZvxBrk
	TYSP7mVfT0IvAkEVy76PA1DMSVnpusPHNp7SHdXdG6nbmSXxIcoxNIMV34kbQqK1VYsMfU32WaC
	9eJvETWZnC+KDLe1Jhk4sghXvhnzSju3LcPpOWqZQQ35LUnHx1UxKIdHDcORDLu6KNxi1pm0IN6
	3LedcUpwyU3/FIO+pMmVcibV0kNGf9zT1OHRMi8gCz66YPqOxpQmc38tGZEaYL/74v+BBIpgG+1
	eBngujGD6Ty6a1ReJwUKGYnhIKb2dcOOCHPPb9hnCpnfusvARoIH3qf/98FZY6dJ9RwEPDFRJPX
	NCqGiyeuxNDu8uwZc1+2oPcJIUxZEOLs=
X-Google-Smtp-Source: AGHT+IGS6AceJdvZjybPrOvkELUyoLgdZjzLvFcMOFta4Q1dd6p+klkTcLpeNvXPfTL15dUroYXivA==
X-Received: by 2002:a17:906:6a05:b0:ae0:e065:de05 with SMTP id a640c23a62f3a-ae3fe5966c4mr1393350066b.3.1751896195957;
        Mon, 07 Jul 2025 06:49:55 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60ff11c3e83sm4012090a12.66.2025.07.07.06.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 06:49:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 07 Jul 2025 15:49:55 +0200
Message-Id: <DB5VDDKCAQQG.LDCMHXAZN17S@fairphone.com>
Subject: Re: [PATCH v2 2/2] pmdomain: qcom: rpmhpd: Add Milos power domains
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Casey Connolly" <casey.connolly@linaro.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Ulf Hansson" <ulf.hansson@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
 <20250707-sm7635-rpmhpd-v2-2-b4aa37acb065@fairphone.com>
 <06760125-4800-4068-8936-dddf27c28d17@linaro.org>
In-Reply-To: <06760125-4800-4068-8936-dddf27c28d17@linaro.org>

Hi Casey,

On Mon Jul 7, 2025 at 3:23 PM CEST, Casey Connolly wrote:
>
>
> On 7/7/25 12:18, Luca Weiss wrote:
>> Add the power domains exposed by RPMH in the Qualcomm Milos platform.
>
> \o/ codenames!
>
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>   drivers/pmdomain/qcom/rpmhpd.c | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
>>=20
>> diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmh=
pd.c
>> index 078323b85b5648e33dd89e08cf31bdc5ab76d553..e09552a469264f28952fc46c=
3ab8c125e87310da 100644
>> --- a/drivers/pmdomain/qcom/rpmhpd.c
>> +++ b/drivers/pmdomain/qcom/rpmhpd.c
>> @@ -217,6 +217,24 @@ static struct rpmhpd gmxc =3D {
>>   	.res_name =3D "gmxc.lvl",
>>   };
>>  =20
>> +/* Milos RPMH powerdomains */
>
> I can't find any public docs telling us which SoC is Milos (the only=20
> relevant result is Bjorn's email asking you to use that name instead of=
=20
> SM7635). So for the sake of future generations could you reference both=
=20
> names in a comment somewhere? Or even the commit message would be enough=
=20
> tbh.

I don't know the full list of model numbers for Milos. I assume it's
SM7635, SM6650, SM6650P, QCM6690 and QCS6690 based on the info I could
fine, but such info is hard to get. So this is not a definite list that
all those are actually Milos, or that this is the full list of Milos
chipsets.

> Off-topic here, but maybe it would be a good idea to add some Qualcomm=20
> platform docs to the kernel with a table of all the publicly known names=
=20
> for each SoC? This would also be really helpful even ignoring codenames=
=20
> just to know that SM8550 is Snapdragon 8 Gen 2 for example.

So far my source for this has been the postmarketOS wiki, and this
Google Doc, but the latter hasn't been updated for new chips since a
year or so, and is also probably not very complete:
https://docs.google.com/spreadsheets/d/1WrKHLj_oSoiykhSc6xqXAkT3nlD2hq-fzUP=
SGiq3Kbc/edit?gid=3D1270863184#gid=3D1270863184

And I've got some notes locally for a couple that I regularly need.

But I'd love a more central place that isn't specific to postmarketOS
for example. Not sure where though?

Regards
Luca

>
> Kind regards,
> Casey (she/they)
>
>> +static struct rpmhpd *milos_rpmhpds[] =3D {
>> +	[RPMHPD_CX] =3D &cx,
>> +	[RPMHPD_CX_AO] =3D &cx_ao,
>> +	[RPMHPD_EBI] =3D &ebi,
>> +	[RPMHPD_GFX] =3D &gfx,
>> +	[RPMHPD_LCX] =3D &lcx,
>> +	[RPMHPD_LMX] =3D &lmx,
>> +	[RPMHPD_MSS] =3D &mss,
>> +	[RPMHPD_MX] =3D &mx,
>> +	[RPMHPD_MX_AO] =3D &mx_ao,
>> +};
>> +
>> +static const struct rpmhpd_desc milos_desc =3D {
>> +	.rpmhpds =3D milos_rpmhpds,
>> +	.num_pds =3D ARRAY_SIZE(milos_rpmhpds),
>> +};
>> +
>>   /* SA8540P RPMH powerdomains */
>>   static struct rpmhpd *sa8540p_rpmhpds[] =3D {
>>   	[SC8280XP_CX] =3D &cx,
>> @@ -723,6 +741,7 @@ static const struct rpmhpd_desc qcs615_desc =3D {
>>   };
>>  =20
>>   static const struct of_device_id rpmhpd_match_table[] =3D {
>> +	{ .compatible =3D "qcom,milos-rpmhpd", .data =3D &milos_desc },
>>   	{ .compatible =3D "qcom,qcs615-rpmhpd", .data =3D &qcs615_desc },
>>   	{ .compatible =3D "qcom,qcs8300-rpmhpd", .data =3D &qcs8300_desc },
>>   	{ .compatible =3D "qcom,qdu1000-rpmhpd", .data =3D &qdu1000_desc },
>>=20


