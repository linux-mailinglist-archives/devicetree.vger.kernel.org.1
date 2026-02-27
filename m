Return-Path: <devicetree+bounces-269061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LKuCQkyoWlPrAQAu9opvQ
	(envelope-from <devicetree+bounces-269061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:56:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B75CE1B2FE1
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D056730451C9
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016563E8C5E;
	Fri, 27 Feb 2026 05:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QX8yR5E1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OISKjQRq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9D13D9051
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 05:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772171781; cv=pass; b=iV6J2KxdgZqPJ2Hf9OR1TDzJyjEzu0gLjXQ2Y+6j6dM75Ptj6ePR0dIkoAs8HB+ddS79lYOCeamk3P6udLvkvMJMLvybnoPGGshy3AmrkXcVBYcQV+aKB8TC0Eha3RNWc9U9UrK+zSplbOsHXtybOvAJH3VxhIFMCjGirTp1pV0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772171781; c=relaxed/simple;
	bh=tPy+mJULvArVYy9ljettpeNSWWhaski8vyVWxysNbIw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZK/7TgvjA2rx5X1xW01tGFwqn4N37386FQqKSXfsrxtqWaSSmlTeBfNL6qWeLA0MR0F/A9ox++4mHSZ5lUXy9tuwthZwRcCtSNSElRuzbJaAIenBkAMUPq7u7pss5DRVa8q/B+81Of4Sf7u4g9RfrQgTNxxSdm9FmL+gJbDWHjQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QX8yR5E1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OISKjQRq; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R4GjRN2663610
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 05:56:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2HKahSZVL45qTnYxSZP+lUTurRww/HCTgif585aQvPo=; b=QX8yR5E11PNCtokq
	HpvauuMBqlP/UuvcCILHTKpf6pAEZSo9kNHdUvlr/0iwFG1/B+dAyHuXSxb6NvuN
	SKSMZeYROgww4aeHBuDiCdjkdheugU/a9Ebk9+YuCl73OCU9Na5wK4adpl9iT9f5
	Amm+U+MmelAwCW6fRXqddvBqJJTdl5Nrq5W8YFo9ePbSQwR1z/0AbTa95ufYS92p
	3OZevSg6LlBUVhF3O8eNfZpF2bEnz6n+N1pf3IXZo146cVnN+PaLUBMvsaMSuS20
	Z27LPjpC3QQQC+x6zeRQtt0yK5JQgXWFwe5cbt1S+S+MzplRZnf+C1nwdIpsCnFG
	+CgiDQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43r897r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 05:56:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso207507085a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:56:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772171778; cv=none;
        d=google.com; s=arc-20240605;
        b=O9AeJAtFAs0ycp4b+77jQN6kZYzKXCT2PdyV3ha2Gotz/ZOq2dgUeWH2RR1BlXhbkP
         w1gYDDyg2VZXcOfhTLgYZdYM1nMsekkUMWD9FQ+gSB361YTR4DqZNcZ9KQ12tjmrQi1R
         80sTWtchIEXMETSBrVMqDzFzRm8ubqewW4TGUZRuM5YgS1Nke3gsCKLF1FzxXzemArMR
         NskPdSHSWjNvL9yRuwLGugvjOTlbDStEZLf9XMSic3hjIFHkzNU1EWFg1TqwdlUiNBV/
         X2oOS6gLg4NHVPOi01123riFXsLnGaZMpQKbkqCX2AMNCGEvafVzzavT6Z3iFTuobg2J
         6UsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2HKahSZVL45qTnYxSZP+lUTurRww/HCTgif585aQvPo=;
        fh=lR7596mscC4f3SUg8ViJsW+p3TBQICt7XhzbWvzLuKU=;
        b=NFlj/TwKZX7ihFPSX5pdRjtA4cztx1OVBv0LsOJveYwpnUsnO7HpmDi6OYF00Roy3q
         lV53mncTrKp92SddgDWVVRI2HUK+EX4umtWbUH+M0AvPWWH7GXM11u/iSm7WBVVHAfiQ
         JGNEr9zbQj81UEzwqtGuod3aXXDB++wd0a/Qt+qeEt+jkbfKLflUgT11+W1X6+od9wwL
         WKs0zU7ACcZPjpEO2bYOD/qm9wXIvIRUm4QxrxTn8qIvK6AJgr8cjopQ8ltup1P8Xy6Z
         QKMa8FoTkFSJwFHetKAEw+zwNYbHu3d3M2jG0xcN22L+QbaP/NUiYDZt2vRpgBLaDuIa
         +SOA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772171778; x=1772776578; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2HKahSZVL45qTnYxSZP+lUTurRww/HCTgif585aQvPo=;
        b=OISKjQRqBZKD/wC4BCmrT2QKINV8WiKCzsITFwxxSiindrq1WIrHb88pMXX2NnfKVV
         wIE+9rG3+VvTDXIsY55ZVf0FSHEt4p7bwdTYjqmtLWIYC93cYBidWAP6RLN6T/DX/8Do
         j0Cs9pLPleRoTPdyjIxmD7ryLvXGTy9qHvVbRugJuaYAYoE14hCXKFpmrKy1oAY2OvdG
         MsXc6cJjpjc/+DwNraIEs7uEXZeDwj46zROGgJdWCZWt6IPG7euDPZQxZty9LMHM6R4p
         W5ShRzYnBBy8+MNx9sqGx7at18N8QmCimU1KojS0y6URNuX1dpAr9x7tVKBMrUk8n6ma
         Aq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772171778; x=1772776578;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2HKahSZVL45qTnYxSZP+lUTurRww/HCTgif585aQvPo=;
        b=HemiXRrQsF/KdAIt9S92uU+/jNbpRKYhgr5krw/TzEnue4oFT+wqYbpeC2GpQgawTa
         YMR331HlOVBLhoxv9yziOhX/YoYSOZiSzCveIeAVHaD7aOQs7xYKRfMa3DmbFMM5e3YL
         ZjvxMuf7nWmKoCMLTmtWtbey7h2fPgUegcOAW6rEZrgP14men8kNW148ipQ2IS9ECOEH
         O5Vd5ZYeF2NTUbs2dn4hA6wL/tGgikS04ZNysA0OMlqJWVejvGGIClAekwppv2vCoCEz
         QvcxZdjBCrQCc7+5jZ2NuRDxwMaNd77bBqdag/Hy1Efd80/nRRQE7/6mTCoZBHALG3ua
         EHSw==
X-Forwarded-Encrypted: i=1; AJvYcCU4xssu6+uUbi4JZefQRTLX9oWSKGkrOiKYWoy142wUKfv7aL/zMOILKPlZtZGsYYZEnJfhuWLm2Ee2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1PWz7mQNNqLX6A5GW5ENZ5uRAkrjUnO161eNyCr4Sowg2wrQ1
	oqQq9h4+xHjvyePrVrZKNeggovzvmGAiLduwCcLNqG48e/GDQE02CrBKOs3VTgpjAz6Ju94Po1F
	q8D/nozsfOXhuDV/9XOHWMRiOukMBCKajGbUmPaHCty0UJe5FG7qpABRcnFKGzjAQCociIke5wG
	KwCFTMt36aPhInbm7Hrb2W9kA4cHCE+3244Vg5UOo=
X-Gm-Gg: ATEYQzzzD2HhUv1OOSBO11nffnsxt56UZ8XNbg1gW++KiT3DdlAhINmtuRuacRuKbfx
	ZMrg0A3e60OB9L88u2R6KfoBd5BQqpf/2ibon/G3khdfcRrs3r/MnYt7lDMG69PFpWoF/yCqtsu
	g9i6RG1Y2maXPqXP3/nty0s72NBkJvRDs5mhp3hfkrzHIGuOJpqIo1uSsceb98iqq9GmbLjTM6C
	nZ3d+dP
X-Received: by 2002:a05:620a:4102:b0:8cb:3fb3:7bee with SMTP id af79cd13be357-8cbc8f159e9mr187399485a.51.1772171778535;
        Thu, 26 Feb 2026 21:56:18 -0800 (PST)
X-Received: by 2002:a05:620a:4102:b0:8cb:3fb3:7bee with SMTP id
 af79cd13be357-8cbc8f159e9mr187397885a.51.1772171778051; Thu, 26 Feb 2026
 21:56:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226060835.608239-1-swati.agarwal@oss.qualcomm.com>
 <20260226060835.608239-4-swati.agarwal@oss.qualcomm.com> <ogtehltf7onbtwnn7kvkjhjyfoh4zhjltgzq4gf3f3lwoyhkmt@le3lrprfdvgw>
In-Reply-To: <ogtehltf7onbtwnn7kvkjhjyfoh4zhjltgzq4gf3f3lwoyhkmt@le3lrprfdvgw>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 11:26:07 +0530
X-Gm-Features: AaiRm50cgygvA7tkrN4oukgDk8GfM53bqJdsvYR17D4fyhjsQ0DIwyI_r6h_9AA
Message-ID: <CAHz4bYuP6KnfEwvEucoE_50G1-CjhMHQXhxbK+jee1XyCKJDDg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: EOYHoaWdnckQaT1FG7TcvyQC2kOivZWF
X-Proofpoint-GUID: EOYHoaWdnckQaT1FG7TcvyQC2kOivZWF
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a13203 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8 a=efcO10-dwCdNlKEi1SAA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA0NyBTYWx0ZWRfXzKPpnLqwqaCt
 G/48iuimgbBT40FEE9JQkEgJdZDgfvcbmk0GhokqnHExtvazKONkPHv+P5U+hDyFHtLrAauH0nK
 srVhb0WGUs4VzHfC9OBOZ68O0D5CzJ6ltZNKXuSqcAA7cmaHed323cUhVG98CZBAOAGd6jsYpup
 ErRY9jfxCVW2HMtXPpBNW8O60dz/NdPBAL+rvp1ARSjDs7DEd1TFSSP09jvJ2NCWglAFhu7+KWP
 qXdBeRV8/KLwVVc/XH3m3Ut0Bo0zVOPKgMXj70F+voF17+HWnQgJScenNUsIlAYPIUCwxoBBHBF
 +//rgzuHYOSgQawHGcSyK9c7Ppsw5C6iMwR6SEwfIaqxjVNai1i/ukH4jlkYPQuNbwFaBlWxbFL
 HnJEEHUAZFn6tp4Ukg4nTj32n2pJemv+LRJtrOP0sqBeXziUdTtE8M/8z6Zakw7+4D8Q/7CUYs/
 ttDACBvEHjxH8XTcPRw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270047
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
	TAGGED_FROM(0.00)[bounces-269061-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B75CE1B2FE1
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 12:36=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Thu, Feb 26, 2026 at 11:38:35AM +0530, Swati Agarwal wrote:
> > Enable the tertiary usb controller connected to micro usb port in OTG m=
ode
> > on Lemans EVK platform.
> >
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
> >  1 file changed, 52 insertions(+)
> >
> > @@ -132,6 +151,15 @@ platform {
> >               };
> >       };
> >
> > +     usb2_vbus: regulator-usb2-vbus {
>
> What is the name (and the label) for the VBus regulator for the first
> connector? It's visible just under your chunk. Why your chunk doesn't
> use a similar name?
Hi Dmitry,

As per Bjorn previous comment on v2 patch, "use supply name as per
schematics" so that's the reason I followed that and created a label
as per regulator name.
For eg:- if the regulator name is vmmc_sdc then label vmmc_sdc:
regulator-vmmc-sdc.
In my case the regulator name in schematics is usb2_vbus, then the
label I used is usb2_vbus: regulator-usb2-vbus .

Regards,
Swati

