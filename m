Return-Path: <devicetree+bounces-260898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BkxOJ5me2l2EQIAu9opvQ
	(envelope-from <devicetree+bounces-260898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:54:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A4B0A08
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C04513004D25
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14246340295;
	Thu, 29 Jan 2026 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GYsHGx4k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MDOuN/P4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C4E2D7DC0
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769694874; cv=pass; b=Hn8A2iVDxS90h5LgEH7fzjJfEMS4FDhy9Za4Ijmlp0p4WARatJhRD3GiZrL5UhbLJPkr9tbd9khzN3LXFZ4DwUyYtqdM82BloXpRf5tLjxZg7bKrg2BbVfTzDB+n8o/y+8vOk0l3+WjwsQ7aoWG/mqcncM93KcbI/51GTmsTE1o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769694874; c=relaxed/simple;
	bh=x2kcQCjLWvSwWoGbTSYAJLl1+G4WgE16Ma+wcFoZtYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B3imV7qYh0JfOBj0Pl/xpsJgv3aPLb9cJExAlURy5juo3YkYCVxNZCJ1DZdx4+Cs6ZlXs8uquqcDuRtWii0W9BIe7Dff+F5eRH4JDI6ZERQ+UMQRu8wZNH6pDwvm1uCbJq12Z3Ht9pT4BNEf5ck/+areMQ31PONYp7vzC/pAOvE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GYsHGx4k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MDOuN/P4; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAVfl22033505
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:54:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UdkNENK4MfeAhXOjhlnGRinrez69eCWQy+/BgYxeifM=; b=GYsHGx4kx+/nF6jA
	VdNBL4kyaeNiH6PSJsEvVUZRJUXCy43UudeZ7yaZRLaV0suT8IC5lG9BSUf5ykVa
	RC8Zhe30RTdogxeZpXijMvevG0tLLG/vMdRh1vMgZ7XZ+E7vbiAi3LBdJ71ir9Vy
	ZKiHBNHqNnT0aSLafme9+/n3joWzsjbKBTDIUrIWV5fIKly20blCnNA0i5iqfb2z
	+fg251jwE2Iah+W/j85Ce2IwWTFkTMzlPZtDC5dR4LNN23J4IeumBPUxv8KInTYi
	9vUivSzqJcNKkl+QrnG9AgpluvnNncCWBC7a7P2L1I+4602d1r/GO+CXPRy0OsT3
	JiGerA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byna7ktf1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:54:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c5296c7e57so412846585a.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:54:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769694864; cv=none;
        d=google.com; s=arc-20240605;
        b=iDb+Z0vnbbUXwxOksskilfQuda0lYj1OGoJocu711B78dp6BiJz4Pg92M5B7h02v/m
         hncsSd3arosfeiDy5snpnmHwsk/wBrvNeqxII36JA+kKBq8LVGT99mcN/w7HztXmnI8a
         Cb+UGJIWUihVjkdzM78n9FnWFzKqnDQbHpTSIgQraheDqJBY6Fndkd1eq2Z9yXhTimWM
         5pLlmQARbTEIhzg37geyAfvygJgPdXKFt1ljFYoKQp2I/w0/4v6/2XWB6ohRN1B8tmrx
         J5mauhUbBBzEd+suyU+cGRR+luG61dJ5s8ueFOyrnWb56FA8L/tEyiW0gdw/Y/JvFiBh
         eLcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UdkNENK4MfeAhXOjhlnGRinrez69eCWQy+/BgYxeifM=;
        fh=CXD7hts0EomvG3jc6kCSTF27iRkDQ0apOixKKKKLJ9Y=;
        b=aOXSC83ByrczyoB3lMeAJg7dlNmv3JIUHF/T1qvifl4HaN0drGbkKpRmJkExQ81NBh
         ZvthShFZORSxQGByDUu6cVigqULbN1/BhZHAJQnJb2OEJtUsGM5WPfGmKop5TazVqGda
         8eLr2iFG4/CcoLTAlzECOUuwOenF7cNSKuCrhdIAjdeWFS7NL05mmVW1rrb3OLgyGEgR
         nIREI1qiNX099zpGw/2iIlTgqsggf+bUcmGTpOw2g8lMw//TrhMDHLsSCriqimymEoD4
         lHSuRIL8mGjBG5XldX6M8NigJ/LFkBXp6+SbogY68JcCW6cByhAboTDDnj48pY0ggI6z
         w0yw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769694864; x=1770299664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdkNENK4MfeAhXOjhlnGRinrez69eCWQy+/BgYxeifM=;
        b=MDOuN/P4o68vafCUtR3Q8pyQCj+jOQgDUXh7Raa1CbXV8u6QJfgUyYpUbXikYZ+RRv
         yJBN2GrNwP2TbIIH/6dasIo8ulROD258HQtiX5MDJTzQWdFTFBUEUK3DKlUeCBSN755v
         vDrWbyquF6ijyJ0c2o6m0O5pKnodtyrbXx8bjtGrlW91PdOI+Sc+ZDmYGtWZpjNlPL7x
         n2nszrqaWbKBqQoAZgQVaS4IJ/W1aplGZoO48J0/kEZcqdCtYDWn1KOmO9j5ArsLKLnT
         WrTjsPB5KI8pipS//ysjbG9WG/u0fB3x4HJQdWvPbwvZCo9LiuRyNGot/PbSQU4sLMLN
         Y1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769694864; x=1770299664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UdkNENK4MfeAhXOjhlnGRinrez69eCWQy+/BgYxeifM=;
        b=DcN8ZcwKc+/d7glCHbQEuFKQ+CwjJoD7E3cKaKEMFsk7+VsISa2QDTspc44V5sAqtP
         CY39z18WvpwXGpGJCdjVhF58u3H0oat+pZzf20u0U7yBq7KzM9wG6NnZGrweQL5yhGPW
         YJIfXl/mo73PjjUn++FGJEUa5zj2F5VKtbLlslz5IFWzqoSBptObYQi3Bgz0WRrqP+0L
         SaESKB/D5vQusEUiKosaVfxaprrnhEdMguC/6u8lrBjkJ5e0TdnNHYyCOWut/EBbVtA/
         8uXmTHLnIreKSpp/xFeugqPsstP2HeJPtXC4Yn1CDHOxdxBxg8QS+Tojvgtv4dPm1XpD
         WHPg==
X-Forwarded-Encrypted: i=1; AJvYcCV86cZ+jHNKELv6olGMq/gc2MwTc8fn9LCcpWmE2U9KI/sZcQse7tloV5BuhKT5Ux/8dImFcvEifD5T@vger.kernel.org
X-Gm-Message-State: AOJu0YzsCJvZn9RuB5lrA2xSkJYao65V/wXxcgY54LElcJ4g4HzTVLy+
	WmsPJdrvxiGQ+raCvfj2OYIUCr+cqIkZ9oObdrA3vY5QZYgwVhgdr0WHl9ZKEUBxGk6DyUFcom9
	c6kkMSnM038cqe3GY7ZueLIhQTh3T9UwTB0J4tbCjP2JXZ5+SWyZ4tBClxULAUI+Pn1AJexr/O5
	w11qcHZ+bc3x4oNxSHx43A2RbN5CQE16hn4NWuzu/PEz6K2vXxvk2N/7w=
X-Gm-Gg: AZuq6aL5ZBJdr/25ryRyxQ9HwqnTQAUpMgRodReETsF06mbVzcQIvEbQ/8M9h86XGjm
	zDforxn5NllEWPVjLQJcrpA9DVgszZilHULQbhJRDKx84Y6ztsLWQpQ68NpIBOA3f9xrh7MPrLw
	zs5YNGuJ1jTCJUPVZwpDgEyRj0SgYlpnIidwqRUS7U/M7Z5lsWjWWFS2F61qc3jFp4kdPIwdB//
	dxxpzlkfPM+9GSSYUHp9LUwtKlb
X-Received: by 2002:a05:620a:4508:b0:8b1:ed55:e4f0 with SMTP id af79cd13be357-8c70b8918f8mr1267906285a.39.1769694864589;
        Thu, 29 Jan 2026 05:54:24 -0800 (PST)
X-Received: by 2002:ac8:5ad3:0:b0:501:1796:b10e with SMTP id
 d75a77b69052e-5032f76d867mr118480341cf.12.1769694535419; Thu, 29 Jan 2026
 05:48:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
 <20260116214354.256878-3-loic.poulain@oss.qualcomm.com> <0ca0920a-aebb-4072-a098-48c4c9938c26@oss.qualcomm.com>
In-Reply-To: <0ca0920a-aebb-4072-a098-48c4c9938c26@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 14:48:43 +0100
X-Gm-Features: AZwV_QjKKzAWXurh-8bT8DC1CHu5nxjU1-Fo42l7MZ4s-C1C7gmIX6rlnFipR1E
Message-ID: <CAFEp6-3T1=+fZ1x3ADPpu_9P5d+bx3w0XdPzip6OBiWuk32KzA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable SDHC1 for eMMC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: CzTQgxyMmJ8sSkLhHuzITSEB-lZXQonj
X-Authority-Analysis: v=2.4 cv=J72nLQnS c=1 sm=1 tr=0 ts=697b6697 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=nKmlwK7UcfY3cOHo8XsA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: CzTQgxyMmJ8sSkLhHuzITSEB-lZXQonj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA5NCBTYWx0ZWRfXwjPAtanu6OFY
 XENUYN1DNKvtM+B2RCz2DMY1W39OXCOz+gT6zFGv3z2YtQkbpmDmgVQOC9TYJHsxO2TGTeanbtV
 0srWZ2C5vzSgWZ5zWjf9CGzcJCogY+74Ml0Th0tlPxY8as0fzyShvVcZTQyIkkUqSfE+3zFL6lH
 RoaHVe5wGo+xR0iofYFzG8LR+L5TAdpE9Hj9h5k3Z0RApFc7pKCotzdFKpxcXpVL/vyk/kO+xiF
 33WB4zZPkhGkch50VBN6eFuWKuGFsxcJDTC9+k7TGbLiMzViKcu98maBJqzY0pKIUfMWlgT6D0P
 EHJqweM1Ed8ZU7Do9QPm7Pz4XqY2e2u0ik8v3BZMdj1iyxLsD5R1PPDQwfguPtsBpEDEPk1iixk
 CkJe/nSc04zRuxW13juxrDutGh+EZv4T9uWUOIiYZLyJNBT92Uh8yWzbgOI3P8EzuQyuxXyOeYh
 7EzeurrkYeyD8BxL1Yg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260898-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim]
X-Rspamd-Queue-Id: 706A4B0A08
X-Rspamd-Action: no action

Hi Konrad,

On Tue, Jan 27, 2026 at 1:00=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 1/16/26 10:43 PM, Loic Poulain wrote:
> > Monaco EVK has onboard eMMC, that can be used either as primary
> > boot storage or as secondary storage when booting from UFS.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/=
dts/qcom/monaco-evk.dts
> > index bb35893da73d..c272d7db80e2 100644
> > --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > @@ -76,6 +76,15 @@ platform {
> >                       };
> >               };
> >       };
> > +
> > +     /* This comes from a PMIC handled within the SAIL domain */
> > +     vreg_s2s: vreg-s2s {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vreg_s2s";
> > +
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
>
> Is that the case for both SAIL- and SAIL-free SKUs?

To my knowledge, there is no Monaco=E2=80=91based SKU that can start withou=
t
SAIL. Monaco depends on SAIL for proper initialization, even if it is
not subsequently used.

Regards,
Loic

