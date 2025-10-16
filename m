Return-Path: <devicetree+bounces-227671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E19BE3562
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 14:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E37E63426B1
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D42E432C338;
	Thu, 16 Oct 2025 12:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pqSGRYDU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EA231196A
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 12:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760617365; cv=none; b=IXmxsS1KAbXumgqUjx6cePy4q11jLKwEoZNrecf31Y7slHFzlwC393ADgu08OKFe8Y/jNjyTZnjv8ByN35PlLROuJeB5n3mEyRyP/2MDXELq16nVCQVUGmv6bSCErIGh++wCqRxzX43a6bWuDeGBbTstnPJKHGW0rI2NTQavFfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760617365; c=relaxed/simple;
	bh=mL3AkCdFjfUQDFlySMvWUslbbK6AefBEqeQD4tfNbNs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pTRVV+wdxkBDM7r0l/ktcXxOpDo7S0lfu97DlgdesXPI+7JRnEGtw1MZXvhsV6hpVukVkQFe4AbH3oN1xjauSWzoKR9L5y9K2lfsKJCt0EdsdFmSEI0gU5S/zA8IHYWtlZuQVV+lvkbxWdmNUY7PqKGAgYjE+kD1P/fJAjxd/ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pqSGRYDU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7p5PR009231
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 12:22:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R9yQUnMu2HxE11HdeoAr8BU2ZwERrUip4hDHAbjMAn4=; b=pqSGRYDURFh5ETLu
	QxCj9Wj4Oj78wq12XoZq1sFMnC+NS0OROrZjGVGckFJd3k/60Zpi950reha6JZOd
	qWBYVZoD1lWOjW5GDkfCKi0P3Jk1GvNhWqk0mmH5XyjRwClsT3sF/OrzWn0GK4xv
	GUN6vmTBiLZ+qyCiUnhc4v6JLS9l+Uk1LIQI/T3NIK5F0XEwoXkh31GAyMeLsVG2
	jmPb5MduYt5pqujQzb7k83aoEgK0W2BcFX5ZI5j1wIinyBN7imPjw4SLKSNlopc+
	mwD/QMLg2W+Ip86t9vYkX7J5mWUrTZ7h/jKQvWGdo2HC/T0rYd6CufsEkiJSIpkM
	9hprBA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c83vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 12:22:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8635d475527so301394385a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760617362; x=1761222162;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R9yQUnMu2HxE11HdeoAr8BU2ZwERrUip4hDHAbjMAn4=;
        b=wnFpWUPoS47hfBSbplmOJJ4Hq1CznvPI5zvbk5CL8fOGKjq8Y2+7z6paMCjavGMfxG
         CCzsTljAGGDkzA5/UamQ2TSSeGW1c2oxY6cuFOZJUKthOK88mxC2yRXSl1b4SBO1lYj7
         Rbr+4/3eJ05hZMi2/uRNh+mPq+PX4kT4+g3EeMwfGnKJ1KpX7Nadl7WX9stHrkpPkt0P
         6Gp48I7/wNcjFnZQ7wkaDFRQVHi/mupN/57o32nQQ2hcEOZX2qb3+qbZ+AX1ggjWwrZE
         DsxFWvwkTbTZTOOgZ5XLA5fvrFclzaBhtUBaNP2P7JMRyoGMKN2CPBY8xMg9jrRiu6av
         yNUg==
X-Forwarded-Encrypted: i=1; AJvYcCVjUb0fgs6lPZOSex/lZXy97IISpxwcxrLxWiGnRjHwsp30YHUxu+iBS5G2jOn3nscKH5sVNmS5rBtt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy58EY5hY6zces19tv4Z8z4Mtv4JEq3oq5gqnZdCz9VhvlBwyHk
	6VBLklsTWs7rnkHozuakGUY9xHRi8+dCKJOr57aH5U4SNoZ4AlqSMOICbrnNORt5cM0fn2Tkkd9
	npXt6uDW0M54M6Z0c6LFRFMTFWw5sLZB5CG3SSMkhE61sibDw4WzMNwfQLYxhnxScO7Y3OUqJSn
	lD1i0SNIPMQU46a7r1dKCm6Zn20mES6oWhQI374/U=
X-Gm-Gg: ASbGncs0b3rNdHJn5uMAE9JUzbYY5NhiFgBe957Jgphdk8CMBZHvXl7f0pW/H4gKMEG
	mL+btsinbJdZFJ3V/4CI0ezOZIefT+2Rgi3P0/yTokhmtAJVPkqqJBRuKkwpyfOTKHCIOrcHRqw
	vq45BOUoHiXyc54t3fLG+Q0eRAip3iDV9lTdFKFwlgZJk5XU15ycJFpm+uqWaO+cw3eDpUKwCT4
	DAa2Y10SDqLLL3X
X-Received: by 2002:a05:620a:4502:b0:890:28c7:f669 with SMTP id af79cd13be357-89028c80073mr58576885a.30.1760617361801;
        Thu, 16 Oct 2025 05:22:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnZMb/cYhHwHiWYZwoXQy2OINpsvIKqNRNCU3Ket2voCC7bfHOUUrKU4B139SqJ5kxiGE/2fuG+XnMoA4Crq4=
X-Received: by 2002:a05:620a:4502:b0:890:28c7:f669 with SMTP id
 af79cd13be357-89028c80073mr58573185a.30.1760617361345; Thu, 16 Oct 2025
 05:22:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com>
 <9984bc23-05ef-4d46-aeb8-feb0a18e5762@kernel.org> <bc0caeb8-c99b-4bef-a69e-5ce433e6b890@oss.qualcomm.com>
 <c4fd6bfc-cc9a-4f37-99b3-f36466691a1e@linaro.org>
In-Reply-To: <c4fd6bfc-cc9a-4f37-99b3-f36466691a1e@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 14:22:30 +0200
X-Gm-Features: AS18NWDp6vazgiHxY7kgFcW2LE3xKj8UU2r34EGJpIgpnAkFsDnwm-UZKPSoRe4
Message-ID: <CAFEp6-2=GJL-gc+PSyAL4=prp_sXdZJS=Ewg5nP2kcp_Gu85Fw@mail.gmail.com>
Subject: Re: [PATCH] media: qcom: camss: Enable setting the rate to
 camnoc_rt_axi clock
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: F7PWzr8k7WkmBpdUBq1P1sODsXgDY9yJ
X-Proofpoint-ORIG-GUID: F7PWzr8k7WkmBpdUBq1P1sODsXgDY9yJ
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f0e393 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=p_FccyrFFb65Td8MQdgA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX/MNalABODlHZ
 wKqvPc3ExldzRkY7N0sqfHsA63Q3qXkEp4ELywsxWQ1gKJof4c3fQGVTfh7AD5BJtvGi7zciZlZ
 v9AUyt91tURkjSJ1NiixrwV3TqvHyIiYvgXPNIjImHaAJhTT8lURRXgEp4Omt+uRVXOcrmxOAcP
 Z2jTRdpukxCPjUYnQ99EyCYhWOVGV98Skcqqiy98VWjdOatrASB+UH9hI6MiUzimKm/dUZK0gOt
 WCDSgXCRPQuWKR5FTTUOjFWbLx6oLRZF3iBL4z0/MVVFiIsw/rakBCVB3lahAVZuKRj1mSirIJU
 2zQ48KKU/a70BHU2IXknJK+G/5DblZd/IQT/m4DAW2Nzg+o9b9W12LCfiJskFzVGp5zqIzqpHlW
 hQJ1+0ul3RiM4Ux4xMuBnrEkAh02+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On Thu, Oct 16, 2025 at 1:50=E2=80=AFPM Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
> >>>
> >>> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/=
media/platform/qcom/camss/camss-vfe.c
> >>> index ee08dbbddf88..09b29ba383f1 100644
> >>> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> >>> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> >>> @@ -914,7 +914,8 @@ static int vfe_match_clock_names(struct vfe_devic=
e *vfe,
> >>>     return (!strcmp(clock->name, vfe_name) ||
> >>>             !strcmp(clock->name, vfe_lite_name) ||
> >>>             !strcmp(clock->name, "vfe_lite") ||
> >>> -           !strcmp(clock->name, "camnoc_axi"));
> >>> +           !strcmp(clock->name, "camnoc_axi") ||
> >>> +           !strcmp(clock->name, "camnoc_rt_axi"));
> >>
> >> Just use camnoc_axi for both. Look at your bindings - why do you keep
> >> different names for same signal?
> >
> > I think the correct question to ask is:
> >
> > Is camnoc_axi going to represent the other (NRT) clock in this
> > setting?
> >
> > Konrad
>
> I'm - perhaps naively - assuming this clock really is required ... and
> that both will be needed concurrently.

AFAIU, the NRT clock is not in use for the capture part, and only
required for the offline processing engine (IPE, OPE), which will
likely be described as a separated node.

Regards,
Loic

