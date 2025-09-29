Return-Path: <devicetree+bounces-222375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 783C5BA876C
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1CAC189D01D
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59B327F012;
	Mon, 29 Sep 2025 08:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cD0sNuFV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259A827C150
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 08:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759136037; cv=none; b=UmfYVow638NfL7dbPInxOROsq4T8C2dDr9geo0l8Rv4xRYZF3qScRQ5QMsqPYE1QGgNKBYYmBt8sSfQNXdjyhhF8gqZd9ky5ycjtXjtFq9qbasa0LtQHrxPHHRyd499OLHk0X6j5PLWCTLrvR24Dm7XiJgVE67bkgs0gpTYoKIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759136037; c=relaxed/simple;
	bh=R7BdmZgGTbdZfx8EcUuOrDncdMcGmRVH+JIXn1G/oLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pc6UZoLmACvpeus04e9GimhE2c60s5v7A8dgQfvpZ8ie0W7I84mMdtx40MNHqOHnUlxyPwGBmGX2x19OzDcOuo+sxG4DjuTUAJBLVFFXlX7rum3fg1BrMKWi9XbNM0qTFlkiTLniL2bJP1j+pYXR+nXkKxxBkdbImG3epPcO2fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cD0sNuFV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T0Agfq016746
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 08:53:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R7BdmZgGTbdZfx8EcUuOrDncdMcGmRVH+JIXn1G/oLY=; b=cD0sNuFVC2Q5FHs9
	BMnBlwSDxTWRi9aCZfSzPKvDpgCeHs49SO1uh86bOF8hVGPzPVd3vHWERnMGVrtj
	TsTbpFeENNbE9ZECfBhRbrQ3mAytjl9446q5uW5dXACcgFVfRg7ZX7+s5+IDEIQi
	9OX68idSS9P7chbxX2TooLkGPpAFsBgJt42lKD7MWiVEIYU4mKFrDiTK5xOqMEmG
	T76GK9OcN/S76OM+s2s8f25b2rqrQheTPntzl6+0bKf/Ka66M5bNacHcb/bIhE7R
	S1lqBMDlbeZRLe9sK9j7SdFEWIfufXU709SwpPZirJHo2EytxlIB8FLrHRtgyKT0
	RgBZkQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mcmsnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 08:53:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4de53348322so108314321cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 01:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759136034; x=1759740834;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R7BdmZgGTbdZfx8EcUuOrDncdMcGmRVH+JIXn1G/oLY=;
        b=wiYWaAlS+L5PubEQdPYzLH50puQN+ytdnpK7D1ArAL2uM3KoT0EcKSNpwkOdkqv2rN
         hTauS+dp1MVm+JdHtqkAWViLhhNrXtf/hT1i3H3qO/f26sKpP1r3cCadZ8ot36lepm+2
         gaQ0WkfDLvZy0V84YGzam+Aa93qgfuJkKd0iXR2aUv4w6cM2vJ1pz2LmH14kK88g+MXz
         JaXTlLQJqobyVqj/ly+kMeLj1tVPgc23sporT9f7oILovYiQcmCFrMR76S88WGZZqLMZ
         55uCF6ayeOfjmFmWv4SBl+GCKbKe0VoogXF04Kwetd1T5tRSZp8InqvYi6RezjYeUOpE
         pqWg==
X-Forwarded-Encrypted: i=1; AJvYcCUOkI2I7WzazIXUW4EX6MlRRvhmRUujywETY5H3Q1qOEnKIYyBB1fdE5dxfBGHKduOhzv4aRVKZegsa@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx7BOWXxxaTT3kyoqo7ISz86cq1HjA/MAbBwWEQbr/pklAWRmm
	ck/JdXFMxGfPfxYPuMsXCJF2ZY7ZVnEFg+VCZT+LiH1gd5J6SADAiprHYpjcMeX+fHUGJndHIUn
	ztb04W2R52eZhl08uxAAYi3Wg4UYqmh7mvZTT0Z9K1fn6jBdOimozsCWnnG9w2MIADcZ+mOHqPK
	8ru617rQvytHLHtUPsQzCOnbN1t/5oxuM4J2x0r8M=
X-Gm-Gg: ASbGnctsIS/4JXiWUaxFnFKtcLRwR/yEIR+Vq7Bd96ni++Z91moLvJ7ixsh6gZX+9Bi
	xm+KXK13JC0zmAjuThEQhHNcg0PvRguJVSVJYZG7YHiB3UiB4hgub89EUbjvyWVO8IT+x8PPB8F
	yujGrLBHt7RaX3ud/bAqPGM2V0dhJIVZ99Pa6SytUB/t4r6CSMoEFkb/A=
X-Received: by 2002:a05:6214:411:b0:7d0:341f:148a with SMTP id 6a1803df08f44-7fc3aa707a8mr169289046d6.33.1759136033940;
        Mon, 29 Sep 2025 01:53:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEE7+++gueAWVbcIWzNugbC5NemFua/qTKa7w8VJdZEmfCrc0HAv3aQj1V7qkKv/arj7Jri3xWs8memUSFsccU=
X-Received: by 2002:a05:6214:411:b0:7d0:341f:148a with SMTP id
 6a1803df08f44-7fc3aa707a8mr169288896d6.33.1759136033411; Mon, 29 Sep 2025
 01:53:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <20250926073421.17408-2-loic.poulain@oss.qualcomm.com> <0bfc50c3-2df7-4e7c-a6b7-99b8e56a65ea@linaro.org>
In-Reply-To: <0bfc50c3-2df7-4e7c-a6b7-99b8e56a65ea@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 10:53:42 +0200
X-Gm-Features: AS18NWDWFNifGO0pEvmy4HvdAyPW7WJ3Wi0YNtbMTnTSHZCFCSZ5-ItZzCp9W10
Message-ID: <CAFEp6-0nja15oSEhm=ZjJb1g2MgM8Vv+fPdDgyghFNestf_t4A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] media: i2c: ov9282: Fix reset-gpio logical state
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68da4923 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=y2W2zGIOAgzQDGN_av8A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: QWRY7Kdj8uhTn-lDNC8UAnc1Lfh4qpmd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX/4E7iOystb73
 pb6HEmcVP9LXKrPfMeyd3cjXVU46pL0yKGNeShYiSWJvHXB9Q9qWpFR8p/qxJOmhmUGeAHt6cwJ
 pv2FxtD+LjUTD0RoBrn2xMRqFNeZ2fUx6aoe3SH/bIfgEZ2aun6YZj5jtCspkVoruKl/X2r5Xu8
 0RmetV4/2Uxyaw0Noe3u7AvG78CqLGT3dqRnLwMtAQxr1ZuWIa1G20Cm1PdWZhW+oe5R62tIOkp
 Y28qYQJd/+b2tWGzdxDPzWG4NhQWZWVZFjp+shWP60vBgGfSyveYw4B1qgwJUfbz/oCNNPFzKqZ
 dNA+HBdMDeblk7w2lfHPILFuFWI321B3ZhsXYh+DVOEYn0JSN+AEtGn01LUPHaxxkaZmNnj4psT
 GSU7YkTUBaTH9v3G1VfaTyemNpXVPA==
X-Proofpoint-GUID: QWRY7Kdj8uhTn-lDNC8UAnc1Lfh4qpmd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_03,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004

On Mon, Sep 29, 2025 at 10:46=E2=80=AFAM Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
>
> On 9/26/25 10:34, Loic Poulain wrote:
> > Ensure reset state is low in the power-on state and high in the
> > power-off state (assert reset). Note that the polarity is abstracted
> > by the GPIO subsystem, so the logic level reflects the intended reset
> > behavior.
> >
> > This breaks backward compatibility for any downstream dts using the
> > wrong polarity.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>
> I kindly ask you to specify the intended behaviour in the documentation
> Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml

Sure, I will add this in V3.

Thanks,
Loic

