Return-Path: <devicetree+bounces-171504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA49A9EDB4
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 12:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF7B71894C75
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3268525F79A;
	Mon, 28 Apr 2025 10:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RpjNWBCQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B9C39ACC
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745835447; cv=none; b=jewRoNX9grusz54IQim1IMWh9d1xB3Q2o98U/QvBxuU5p/ORDrqWnLUH/Q2KjxMXrCdlMKGWt/4IySJ6ZdsirjTBh6jgn+WVu1IJr7Ku5BBCuvh8cQcU0HmqTZr1jXEPS+W5YeOVze0gu7sJUd/cHURN5spoD0PHdGmXK+UQ9bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745835447; c=relaxed/simple;
	bh=y1hiKClkkEJlEYkzZmsa+w8bv94l15Lipgs60J8J1mc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K52K1U44yKJwAnuM9g261olD/xRaJDUxXeLt8Xc9TFBgdG13Jn6YA7lbEtZx0gJT9+Ouhd65DGYxGc8F4Lo3tKJP13rNvHNUBvAMdsalHnwdEIu343+AY4Js3vyz7VRKOVQjVpzzQvzIQMeQ31kc9mpTd2Fba8pV4ci+0cFZmf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RpjNWBCQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SADUeu003631
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:17:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Pxtv8aSr8lPsn9szEAcL96+
	tyHoCynhCC+imycmD8E=; b=RpjNWBCQghFnkVznLenbzGQ7FGNRi4epvrMeyjVF
	nEr/tyfianNYxVaNMuotOAp/T8tX6J3Y94/rNtdLETf3cR4mU+2P3H4ZQG6x1KVc
	eQS/tEFyEnZyj8NHPvptz274q7rNSLw6hkz+1reFFHCXEH+pFbf4/MCySR7kdaud
	M8I+GUhLM7IJrSDyYT4gAykLYuYJZUV8gAjyNqku27Bv+YNQrFEdmCowpKE1YXQA
	B3AtMGkLgPb4pdh02QvKM/sdDqStEkVr+4uwIFMum+E1b1+dDYXNBe6sI2l6GRVK
	XLiFcNcOgnLd1D8RZ4ymS9nMS1Qdp+qdC9rF3h19Dainhg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qv9grjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:17:22 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-309c6e43a9aso7017743a91.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 03:17:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745835441; x=1746440241;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Pxtv8aSr8lPsn9szEAcL96+tyHoCynhCC+imycmD8E=;
        b=tvyf1/ssAzPoZtzRff0O25+Qs1UuEzQPt9BVOic2FjUi4SACeMpszHIUrItRwmainn
         oAYLrn6jnMHpHjSN/235hIuPfyfUVRol7sWW4fl+cSSYa0AMrUo77DBagMC1saxtxH0Y
         f4RqLrJLHfnMqYtIEShSqfkurftCWmzQkLdxZiD6l9it9gkEsg/vhOpNlmbYWUsr1+0J
         Hn30Y7yyw6C3YVOKti1kaYltKos0bHH9tHVUFbzsSBpdoeqEQxmchtj0ql1rnw6cJ5RJ
         qMFTniw8YKaWrQPu+YnnAYIhrtTxK55rLZFVsUeqc1fPdUMOeD4KPoXTH8zmGKoqSpjJ
         fd7w==
X-Forwarded-Encrypted: i=1; AJvYcCUTg9EGIiiyC4bIAcL6tZ31NMYZSlQi0T0bmMm2qexu8q/JoLg+e+QZkTGj4TeKxFwg+S1T1ZSOaps0@vger.kernel.org
X-Gm-Message-State: AOJu0YzDNxr+86Br3LAXCJRmrcxuG/MwM1TcgOxIqw2hmi+Zib2ujqRA
	Hb7FZKn+htp8NeDKhRgnzskAI9Xybonguzf7/T/gYbDK8vYzmQSJ0vLzMO860YUjI3IoJlkhDur
	KVhOHpzSciHSMDbQYk6cmTXVYpIPd8GiDT2gCtzWhJL72T0TtsKsUYURaVnamcJH/PwwSQgf8E3
	i+w2Yaks3XyF4sT1GDi6J8k8vFvGAWRNKQ8Ds=
X-Gm-Gg: ASbGncuGbhK3FjcPUwe5nyJ6Tb7f9cfcyLM6ERbLUFswqEGb6zox21jtTSW05gZRA9r
	X8QZxaGNJ6stKFt1wRyzuPLUlphvegkmtvkunJJfT1+xc79Q8PxUmNPoMR+KY7W259MNd5VHCXd
	aqIjVDlKkWaWqz6fZUgQRpWwAO
X-Received: by 2002:a17:90b:2247:b0:2fe:baa3:b8bc with SMTP id 98e67ed59e1d1-30a013b0fe9mr10022798a91.23.1745835441423;
        Mon, 28 Apr 2025 03:17:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIaELZcY1AshO25NA0l+ttmZJfXNfsi/nEo/9o06JBJB434i2TbdXrkARPRYRTyvmK6A6cuZ9Wjsgk5Ys7NMc=
X-Received: by 2002:a17:90b:2247:b0:2fe:baa3:b8bc with SMTP id
 98e67ed59e1d1-30a013b0fe9mr10022761a91.23.1745835441054; Mon, 28 Apr 2025
 03:17:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
 <20250425-fix-nexus-4-v3-6-da4e39e86d41@oss.qualcomm.com> <3094b6e7-0de9-43a3-9678-4b1844aa600c@arm.com>
In-Reply-To: <3094b6e7-0de9-43a3-9678-4b1844aa600c@arm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 13:17:09 +0300
X-Gm-Features: ATxdqUEUcpx2-hktcO21OhqmqQqXyNUMMYDgeGivjswWKla-vpUY9os7A0P_Tug
Message-ID: <CAO9ioeXhFOn=YPt0+zA_C1WRcXQJheLo-nkVDUk0+87+0YM=NA@mail.gmail.com>
Subject: Re: [PATCH v3 06/11] dt-bindings: arm: arm,coresight-static-replicator:
 add optional clocks
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Authority-Analysis: v=2.4 cv=AO34vM+d c=1 sm=1 tr=0 ts=680f55b2 cx=c_pps a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=m05Zng2Y9WU2dLnq8PUA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: chiG2hIjSWIRkXg_mnRdvv8NpHet_I33
X-Proofpoint-ORIG-GUID: chiG2hIjSWIRkXg_mnRdvv8NpHet_I33
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDA4NSBTYWx0ZWRfXxO10st4RD6/k LYvnAGPY1ziPyu9MfC647obx12cx6sYWV/36QSF2PksN1C1jGsVCyM8azrWnRNRnO1LZuavUdiC 7E+NZ996L9r6RHNCc/9eB0DYPvy4CNWiN9orMBGnOjIe5Rp8io/GrdvD2FpZ0Ai5rDYYPZCNrCl
 px/hQLmYcnd89FMEUIzO9dAgggrwtfHj/089W5c1RJvZDU6G8KGJnrrVX3iAmlqmzjA8txxnzyH NZ0ANphuw/EZfas5K5xjMhTlDRaHXKqrbcFZOXnfraEyGeVxwoA1zOLpwFprMpEXwljy6fXQvZa rSd2C+s1OK5gd4rx7hSrxwJxsERKAwnT+0JqVhz3mTVBK7OsShEWSy5R+NNfEFMGf7rUASeuH2F
 TKQ4ZsWKZnWDyCpb7+/Y6yomdG0JrrnMM6iqaCBfj82c/GvK7n8Q0OEx5B1HDEsuZXW0Bhec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280085

On Mon, 28 Apr 2025 at 12:06, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Dmitry
>
> On 25/04/2025 18:47, Dmitry Baryshkov wrote:
> > As most other CoreSight devices the replicator can use either of the
> > optional clocks. Document those optional clocks in the schema.
> > Additionally document the one-off case of Zynq-7000 platforms which uses
> > apb_pclk and two additional debug clocks.
>
> What is the plan for merging this series ? I am happy to pick this patch
> via coresight tree.

Please pick up coresight-related patch. Each of the maintainers is
expected to pick relevant parts.

>
> >
> > Fixes: 3c15fddf3121 ("dt-bindings: arm: Convert CoreSight bindings to DT schema")
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
> Otherwise,
>
>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>
> Suzuki
>
>
>
> > ---
> >   .../bindings/arm/arm,coresight-static-replicator.yaml       | 13 +++++++++++++
> >   1 file changed, 13 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml
> > index a6f793ea03b6c193fc0ff72a45e0249a63a2ba3c..0c1017affbad2f03892b250ad864d9a5dc8d02f1 100644
> > --- a/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml
> > +++ b/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml
> > @@ -30,6 +30,19 @@ properties:
> >     power-domains:
> >       maxItems: 1
> >
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 3
> > +
> > +  clock-names:
> > +    oneOf:
> > +      - items:
> > +          - enum: [apb_pclk, atclk]
> > +      - items: # Zynq-700
> > +          - const: apb_pclk
> > +          - const: dbg_trc
> > +          - const: dbg_apb
> > +
> >     in-ports:
> >       $ref: /schemas/graph.yaml#/properties/ports
> >       additionalProperties: false
> >
>


-- 
With best wishes
Dmitry

