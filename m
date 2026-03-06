Return-Path: <devicetree+bounces-271953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AP63EqunqmlTVAEAu9opvQ
	(envelope-from <devicetree+bounces-271953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:08:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0F721E742
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F402D307267C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7294E35B14B;
	Fri,  6 Mar 2026 10:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lkVlokd8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PB+C6Y7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D29B35AC2B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772791467; cv=pass; b=kR3ANHbQG+YliIFrk/XsMzxrFN/oWvPY6Wmq7DiXKccGC6lonUu8MpVrdQzNTo3lxz4tY2dFIBR6+LKoT/z4leH/ekv9FIA7Psf/dZ3ixY+pc1qE3Gqryarh9twOQmgVFG3dGAaVs5eq9fbVLlFO93YCHogPn1UeuFfkomUBUTQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772791467; c=relaxed/simple;
	bh=V3pGW3Bx7Uo8ZJGztqx9Yv/hyZ+MU0sGXrjRPE/dgQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hCXSnu4Jl/VSAT1ucbDvqarC45GG1Uy6eiYsggD8Ki9kdn7rprhz4kYi70hZvSnY2ndKIcDGn5riONuOCsrDjMerTH0gxf1dSyPFcHhhzeXbna/7gH+FsxcxiNby87M+2sVlofieZUd5+Tc4jyNRAtLRVYZYk+kkNAT+dPLdAwE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lkVlokd8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PB+C6Y7h; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264awaX3220640
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 10:04:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zGDpuikJBFT+Jd7LrkMANUiA6NwhpoN6OuD3iIM3Vyk=; b=lkVlokd8am7WYYhW
	iUhFh171HpgUz27lfV/o5LaoCsb1ftgLG9J8JzGHOAe9jIuyvUSsXFVSsVjMLi7u
	huyclpt9irax/uEJwv9P8IIfao0VdMLnCFYY1YksvivLFEIzKLU7OEozS9PMLfhr
	jeN5lrvc/IKrKajlqRUbM2tN2fq+aqCUH4Jb2kOtbiPc8MB7vN5r0KJUpH8McIN6
	7hB1bDI3EujMntP1MC2EY1GPPn7t/MZwPKwydExUbwT9EQISfjECvW7FIc1I9wFu
	ctbuzHgcHre5jiT9PnSZRkg45D/G0e2G4y/YmoxUFEsgDOcmPuWxTHT6hB2OQN2/
	w8RFeg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25tq92-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 10:04:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a0684d05dso202997996d6.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:04:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772791464; cv=none;
        d=google.com; s=arc-20240605;
        b=Hwi7rwPok1GH6yBVNaA83xo6sUA+89Ns/ETmGJgd9Hw9YSkB1WL6Q04APv0DcPe/AR
         7r7ZueOOOLzjsR/jlCmsoR++tzd3OoFl2l3RCbzbNJPRlWXi2EHd03ePgwcuyj5LWt8K
         PD/NxlakWaJn4s7r3mEn9OFoJGJuy/db4l3XI+t63nRDBVPZhgT+roIke5M4qfqqqZgq
         r10r1wLnS+4SEFn/QxGOdlVex1/+s8NXCVy409LMXrI50+B/epPdPSIVWCc/h2pzNTZu
         0y09NqLMvb8pGDlu/TDfqXE6dvkEgN68roT+27mqdOeoJwAnRD4UB4nd19qSb9fdxsEh
         /Bqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zGDpuikJBFT+Jd7LrkMANUiA6NwhpoN6OuD3iIM3Vyk=;
        fh=quySVZuCxX8KxuAg80KUL+ehm1bUgaMMzdpvFdNZRzo=;
        b=OfagbHYYpSC+rBGiN+e8pKNexjJpzylti8gZSOmCTO0Kvlstj7wsElzZMFlY+YvXi1
         aj9NQpD8pNonzNlORodE7bvs9bOxzsKaV9OuZABJfsDsb4stAifBotk9sSB7lGoRLX8f
         IKIVw9lvFhmN30VBKdOj1HauAz06ryBGn9gY5B0CpoLlnKq/MCxYxRTjMfsAae1k5QOb
         wik8sVEgIGu+mxARLF1HjxeH8Sgtav7/43DYoHUVU7kb5C0hYpgYV8J9lD5AQZ8St7Mq
         4mpt033lhBJ8SYmlykvD6VxI6VtARDrKev/HEwRX3TAVtDO6Bc90r6hxllefhY7kZ5Oy
         0VtA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772791464; x=1773396264; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zGDpuikJBFT+Jd7LrkMANUiA6NwhpoN6OuD3iIM3Vyk=;
        b=PB+C6Y7hR7xNhUzbuw+aHZVf69YoqNTmFmER3P78iNH5l5SMvfWVmyaKXuIbXCBbb6
         n4r5BZZF4S7N8XYS2A9894qwa/11fC77Osnj+VrmOlgSajZAMRMZiW5oh1/V/m4Z7afd
         JbVwcbZYEtlx6iLS6z8qPIwVjbZOO5+YbjmfahJwWM9LBrwrNDZK5QYN+SGkTWV6fxY4
         qekIPDCitYzSI7FNo0hZ44RG4d8XhFsb4TEh3NsdClQ+pnSVvqVV52enJO2guBsH3C6Y
         igGkiH5e0fWBlDlrKAQCbAYXJMUmbnqwyzdFFoNjIWYSEepdU4gelEWhCiZZ9PsXzrsT
         9gvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772791464; x=1773396264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zGDpuikJBFT+Jd7LrkMANUiA6NwhpoN6OuD3iIM3Vyk=;
        b=Z2PTb6xSNxZ6GRqfitO0jBF8uJi4nhRnUvrjF+SYXWoksalTqdm8hGdW340nL/YVU8
         bAuX16bGTxqRNhfjs4M64V+m8ga2B0qlH6lhS9F777dSVcF4OA6bs2AEPqASi7cXntRE
         aXrSabLNoaqrfvjbtzT2aKgcM4JT2AzLTItyN+lavaCt0lQ8cCXpoVS0VaK+M2423wbo
         IaKSPkLGDC7+esCb5clZ0ZVzvpihnywX7r4fP3laPq1T0u/Tqi+4UQsZ6PgZJBfaj6uq
         UjN8Iv96F5UixtnWaBXVxXM3ozzvbVZT6U9y7c75qitLQ3zEaRUyRxvAHsG4VWOfBYYn
         Qjzg==
X-Forwarded-Encrypted: i=1; AJvYcCX+DyhQtEeEEgQE0yYmLdDl3uR7QBZ5jINTNr5SAvV/Q7jT1fdU6dydURnmsaLOhcDqzdN7XXMATHyX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzynvi1OXpuYKIKrJZr7xRsTYrgSqTC1PdVgj3TVWnifYxRlnVS
	qLuQyrU1s3rLmB63t5ix2Z5roSB6UUu4Np8TK1wyhuUCk0tb2dsV+qKCI2Q5yMj7LcUTA9NSxGy
	YhYWTTX1GrpPj20ZdhmawB4mT5TMfuAOBfaFtF/t3cPG5OLLSiggroTYB21AZJD2T9fpVJwDmU7
	fCwhmHfyaiKIDWDLusGTHCpDYHLufMk77rq+x1B3M=
X-Gm-Gg: ATEYQzxcomRhcIi5c4FPin9AxR6l4FeY1Y0PqvcPp63G7ukwpy79cqNDzrX2wO5DFgd
	PvXdzvVHVbamNj099SRmLj+gSZzqjFZQT6Qr+g1SUngdPzuMqmKU834BB/QzkYVno0BHhqJyf+Y
	CFKVY54rGalmcsukNSwnTrQ1yKwQsCCIUxBoACC9J7JaOji0J9LI9VB/YeEDCnqH4nt+W8oWN+9
	wHM13w=
X-Received: by 2002:ad4:5f4c:0:b0:890:7f85:81d1 with SMTP id 6a1803df08f44-89a24590d35mr81022966d6.13.1772791464574;
        Fri, 06 Mar 2026 02:04:24 -0800 (PST)
X-Received: by 2002:ad4:5f4c:0:b0:890:7f85:81d1 with SMTP id
 6a1803df08f44-89a24590d35mr81022646d6.13.1772791464141; Fri, 06 Mar 2026
 02:04:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
 <20260303082157.523847-2-swati.agarwal@oss.qualcomm.com> <dea48c89-6718-49b0-ac4e-840e596d0166@oss.qualcomm.com>
In-Reply-To: <dea48c89-6718-49b0-ac4e-840e596d0166@oss.qualcomm.com>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 15:34:12 +0530
X-Gm-Features: AaiRm53RQFZNVCtAzxk4NE75sY0jbJ2GHVt8wPzaKO0wNVXsoSIfAyAhY4g-ofo
Message-ID: <CAHz4bYvDizO8eOdsce3_c4LwxET0GSfvUF6B82eWtii2SAXSQQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: monaco-evk: Enable GPIO expander
 interrupt for Monaco EVK
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: p_NwpT-dX6o4j-dyEkLgOszcHDDLsCKw
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aaa6a9 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8 a=pUK3dxgOIw1TfiUeg4kA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5NSBTYWx0ZWRfXxRYKWejXh59R
 TsjO3gSMuM8t7z2XU4PqA8zGhVg6TiHqA0y+S9UBUM4F5TOo/DXbBsH0T5qdVCAubizx3YJnzJ0
 /JclGUAUJ2xUkKWPOzpDxGrCZUk+hqu837U2iJHmobFblRjOMna55hIREMhvgRx8YiHBf45ynqo
 i0qaBkb4DxqxVwW2GKhncwEKlc7GShJ5un/dZQWHeIxXxtefFRSxHjMm23ixQdSFs5Q2mCFpfzP
 HEV6rQdQRFJNuW07jLD0AoCGkL6Q2ofKsuOejgvT8X9EGHVzWCvM7wRyNaZy1c74wL9LRGtBSbZ
 wJG/hezQbhWtN8NIwQR4pBdAfGTEXWJ0BKG8gfaSAfo8ZZdSnqairZdBvPGf/r57Y0CRRwOCO7e
 zEsm31fbZNT+OO+JZTgX3JF1ZrzrtomkNiLrMS14ZmHd/PSoZ7z8elKyo3LY2W0BnpMVeKiXlZi
 JeD4QWrXONsF4pE+l1w==
X-Proofpoint-GUID: p_NwpT-dX6o4j-dyEkLgOszcHDDLsCKw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060095
X-Rspamd-Queue-Id: 9E0F721E742
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-271953-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 3:29=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 3/3/26 9:21 AM, Swati Agarwal wrote:
> > Enable PCA9538 expander as interrupt controller on Monaco EVK and confi=
gure
> > the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
> > internal pull-ups.
> >
> > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > ---
>
> [...]
>
> >  &tlmm {
> >
> > +
> Stray \n above
>
>         expander0_int: expander0-int-state {
> > +             pins =3D "gpio56";
>
> The TLMM entries are currently ordered by the pin index - please retain
> that.
Hi Konrad,
Do you want me to sort expander_int as per pin number and not as per
expander0_int and expander1_int.
For eg:- expander5-int-state(gpio3) followed by expander1_int(gpio16).

Regards,
Swati
>
> Otherwise, this looks good
>
> Konrad

