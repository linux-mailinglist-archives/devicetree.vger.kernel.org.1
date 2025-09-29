Return-Path: <devicetree+bounces-222396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7062BA8CE8
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 12:03:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F4983A3436
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6235D2F9D84;
	Mon, 29 Sep 2025 10:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mAmWDxN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B916B286894
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759140198; cv=none; b=gupDwy/6Aeeih8zjAtgf1Mr/ql5x61x7LReglWBzwJ4eVx8zdKjyx+cDbTElmqwRB1aCLXJMs1t/FjtkCo1KD6P9MaNqBhYzUzfs2L+9GVVHYa7YXMCXqLPpJjXc1y+9gvz0j1awJenOpYoYfjb7dIE1EQ/WjKI+P69Th8dF2qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759140198; c=relaxed/simple;
	bh=vb4zRbPoWCVNiJSGPFPQY1JkB5ZYsuOuCoh1Ay5Mp/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uW4ovR73QcZj80AN2Tk9fydzu5fnHAjWR9QHOczRhk6Ox8TLZEQFGCyGB3G85/nORhu5HlE1FQv10XprZWzme7AgJ2j/k9AlUdB25Zw8tJAz0DPIfRLXJuYe0AJVOBmJjuWXdv4jkbwp676ORy5SGWzkQ060cM5D3D+4u9QicJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mAmWDxN1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T9T8ts022438
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q2xu/IuB6UpN3J5TmykYO0LnsIFMlTlgxYPOo4VkD0U=; b=mAmWDxN1tYeIhC7z
	xKjhEN64GNh6L2NLd4hMn0em1lhLcq5UI3dctz/eCUrCRh192Znxno6NPuqjtWd6
	7WOgseRI8AOvihEq9xVPtE4s6TlBlMU51KaMSZUArH9h3TTNRIky4P4+rfIp8u7l
	86Ze1YE2591IKdLTo5L2oOpeaceSQYI9hmzooqd9Xd9r/aEuz5OhROyPl8t/lC7W
	wowZXVdogn/8qGbovfOdiKV+hwre54UtIvPkihwvr5GdXyZ+gg1DUMCUa6Wnse4l
	QButClLNZZeEuXskrQ4MRWcaaECSu3Xsiwk43+JDd0ZjTQFsNlUU8ByCndCUMcJt
	SGawDg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tmt2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:03:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4de35879e7dso66657001cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759140195; x=1759744995;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q2xu/IuB6UpN3J5TmykYO0LnsIFMlTlgxYPOo4VkD0U=;
        b=IKccgKt5uVlMmvK1SmmKSqPQE44cVGnhUOW5YONcecR71A7lmP7w4b361U4qm8hfug
         0yUW9gHJgGrIl/LMDm06AF4JHJ765mFrhHMqQK4rC5syBoe9QEQc264Se/30PxgquZCw
         GZrOjW0hfRfZdiY8d1SASz1oB7UMIJAEui9U8EY9Qj1XlSabziSKrpJfis05eJBYOgVz
         6fkMuU/WF5x+yFxlweLvWJBY9WQLTH5DmGBpkn3L5RYKpzmuD4g8WplRreTDcLey7bvL
         dZwRgYKZnsdwBe8LkStkCZKNCMPC22GQbLwqTAkoVvOCyC1E0jDRHVSibmJC1YFAs9OQ
         6fLw==
X-Forwarded-Encrypted: i=1; AJvYcCVs9FEa8o7no6CpHOPDQaBHxJIuyum5DEVc4l4Y/rSYdyu+vlPcbgC22HiwNbZR1jdrpQditEW8/Jrl@vger.kernel.org
X-Gm-Message-State: AOJu0YyN/0ryECzmYP369FfjgJjNIAXMY+4P8ivU/A+/TQkVk/WI355Q
	94sbM6d/pPoe0uXdP5LWJegcLCzOsFmO8VOO1TSTtLKQoGj2xAlqPj37jyr5pMLGg+ezK6oEuZj
	lArFYwIID+aM1fP+pd53AlAosX5TyL5bQ18DhJ85qktroyn7+ee5pazFfVqt02aAL
X-Gm-Gg: ASbGncv8DQLJVb84EMs+NOe3ecays7PBgGqSgQG0nh1xm1H+37uZz9SXHI6/bexkb7t
	xQAqzuURseYOQ7pd8DCi9d+jpjzjGYEtuWVApV1a1hKKwQ0hD/ZglCoe+i9o2n8pak+cx9bUf3e
	3bZmPwJ2t0hYAhBd+q1LRiScW0Fg3lETQbg1vzQHhLblYjuz4Qr4y5mBh7Z32+dqJ0MwvFftE2Z
	5zjUxAFmcVNoj7MSqadctfNWERGjqjcM/Om7vWQ2B8HCKKcCvZFIAWihG8dulUGQ2VWfrNX7D/6
	oEjbkqVa3t+rjiWO7U5iAJNUijIIqPmMWaSzRPgA4zAw30BHjmF2ufvaxe5m9G3G1roo9GRQ+Zz
	kyHIlAYfOPkgPj3MKjygnjnVCrb1On4mX3cJ8faYMBrKS+2wBEX4b
X-Received: by 2002:ac8:5716:0:b0:4b7:a62d:ef6f with SMTP id d75a77b69052e-4da4d314d23mr122888291cf.64.1759140194769;
        Mon, 29 Sep 2025 03:03:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2+q7FGGuMsvCVWTzqSjun2cAUChShlnzyln/aLfDIxQUWXJNULzrUScBN2u42qzJl7NWJ+A==
X-Received: by 2002:ac8:5716:0:b0:4b7:a62d:ef6f with SMTP id d75a77b69052e-4da4d314d23mr122887731cf.64.1759140194151;
        Mon, 29 Sep 2025 03:03:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313dd679csm4031856e87.56.2025.09.29.03.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 03:03:13 -0700 (PDT)
Date: Mon, 29 Sep 2025 13:03:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Krzysztof =?utf-8?Q?Koz=C5=82owski?= <k.kozlowski.k@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 2/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
Message-ID: <fdfzoemfxdz2p622hvixpaznh2n22hweit2e43plfu2kdd6kad@reulvi4vs5v4>
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
 <CAJKOXPc57_0pJ2ZWf2cKSKAcQMc3S_mHKQxJDzWH7t=mgim3CA@mail.gmail.com>
 <5820a9a9-4474-4c4d-905c-0efd9442e5e1@oss.qualcomm.com>
 <o6dzhmlicwiezmxlb5uqitx7e3pjpyuhbjqfumivbdkru42hvn@r4ksfa6m5nd2>
 <540b1de6-c959-4911-925f-8163f5fa5147@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <540b1de6-c959-4911-925f-8163f5fa5147@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX0jIc6JNIBNYC
 t6l9VruJuIMbkRGbRAVYqirKh2o2Nh/RdDMnx4/aDR3gUUM4jh6vfM0AzVnh1lrzMd1v4nhjwx9
 0Z3ORvJbT4HKJ5eJN9hcq4LfZjFqxlAxvmmorutBUZ7GfUcWjikIQnPcQsGOzgJVyXeFgiHlQYG
 I3xJk0jBS8FIRPa16xHggbDA100vMBZH1RSjN17ua+bMJh9ka+E5spEwb3hfak7mDrA0cxZAHTF
 VTS+pb+fA23Zz4El/3qbTq/DmwVuMKKLGnYGTe2DbelJ89BoAbmSWH6n0miiDGQw6LHpkX4HpUq
 XQP2D+lX16uO1nnKEPEiqNYPdPkuVuvqpBVvCZGMFh/CMi1jOBJ1dELy9Trnt4r2Ft/6bl98JbE
 b+RZoMx3JAGbwdMAEeV3erNl2l86Mg==
X-Proofpoint-GUID: vyWY4p29fUiE1EEjdZkT6pR93stBfoVC
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68da5963 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=I1Z6VqxiEuXI--SH4ZsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: vyWY4p29fUiE1EEjdZkT6pR93stBfoVC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_04,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

On Mon, Sep 29, 2025 at 05:41:10PM +0800, Jingyi Wang wrote:
> 
> 
> On 9/29/2025 5:34 PM, Dmitry Baryshkov wrote:
> > On Mon, Sep 29, 2025 at 02:20:54PM +0800, Jingyi Wang wrote:
> >>
> >>
> >> On 9/25/2025 9:48 AM, Krzysztof Kozłowski wrote:
> >>> On Thu, 25 Sept 2025 at 08:37, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
> >>>>
> >>>> Add remote processor PAS loader for Kaanapali CDSP processor, compatible
> >>>> with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
> >>>> interrupt.
> >>>>
> >>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>>> ---
> >>>>  .../bindings/remoteproc/qcom,sm8550-pas.yaml          | 19 +++++++++++++++++++
> >>>>  1 file changed, 19 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> >>>> index be9e2a0bc060..031fdf36a66c 100644
> >>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> >>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> >>>> @@ -35,6 +35,9 @@ properties:
> >>>>        - items:
> >>>>            - const: qcom,sm8750-cdsp-pas
> >>>>            - const: qcom,sm8650-cdsp-pas
> >>>> +      - items:
> >>>> +          - const: qcom,kaanapali-cdsp-pas
> >>>> +          - const: qcom,sm8550-cdsp-pas
> >>>
> >>>
> >>> This time maybe without HTML:
> >>>
> >>> This looks wrong. This is not compatible with SM8550.
> >>
> >> Could you point out what is the difference from your perspecetive?
> >> it is the same as SM8550 except for there is one more interrupt,
> >> which is also described in this patch.
> > 
> > I'd second Krzysztof here. Your description points out that it is _not_
> > compatible to SM8550.
> > 
> 
> Here is the binding for sm8750 cdsp. Fallback to sm8650 but describe the
> difference in interrupt:
> https://lore.kernel.org/all/20250221160036.159557-1-krzysztof.kozlowski@linaro.org/

Interesting. Let's wait for Krzysztof's response then.

-- 
With best wishes
Dmitry

