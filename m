Return-Path: <devicetree+bounces-212094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2985FB41C86
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF8213A9675
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B767E2F3C14;
	Wed,  3 Sep 2025 11:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gfhIxdYS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A532F39BE
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756897314; cv=none; b=sxFit+7fUY/lcJpPSxD9mKbgxaH957L+p1hqOfsNFhErwBELZrTHsFeCOk2Mrx/jN2AXT35jXo7q7uC+sJplWQYEsLVg+4c0Tl/K5aKt/J0UrGZapalWKD7UWWU2uQ6e8OVO9DHli3p19InrwJ55Ya78fB5iB3XUzf7hFaLYZYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756897314; c=relaxed/simple;
	bh=7+79JLZEdYdW7EsjOhd3wHHBOMun7TICIG2s/RhNN5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S6kQhYE/yF3w4ZDsA714WETROqdBWPCJW29sQ24OsqAzcHUb+6KFR9ej5eSF07Ul3R5E9aaWq65QhsaoMzb1+ebQC3HNb/FLZ2EOUwad/t5NzrHtbsdYVgF0J0wbxc/eIaaWg02D8a0A2XX7PJigS/M5AJZCtTcl3rfFaa3Mwi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gfhIxdYS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583AIpJr025291
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:01:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qLaUOnzcULpuGK96TIq7/Q8T
	lONrYTUZzrvCBlNYoKY=; b=gfhIxdYSD9hWSM17gi+nZEvE52tAge7mklgZUiSY
	RLVdZzhQsHPS09GiP+kqkYxKLgAeirHepKwknoqHGs5nje3t9V4akj8L3kjmLHHB
	7023mAAhkSjr3xJltUO9uF2//Jaluaco1C4GIgcqWWgR/vJHWYvKC8ueBBqHhEDT
	GTjUhGFhKbTUVn/Xfkqp0y3m6x7bgCpnpDWPvGE1ox7Q68dHuu3iWKNr8nwp2uyY
	xKWPHR+6MMOOtqQrFlchmtcUuaUnhguJ3XfORaVQWFi6iDmlm4nivcLEYoFgk4Ql
	ZDASV69+YBO/fTtnqKaJ1h+CbAhW8MJ+GDgzDoWWE+u8Nw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv3gug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:01:51 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7455da61e81so1099729a34.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:01:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756897311; x=1757502111;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLaUOnzcULpuGK96TIq7/Q8TlONrYTUZzrvCBlNYoKY=;
        b=IHXuV7WIsJmRkLKdD4ZL3gRaJIdZK0H0poLLbJGtU27BPyCNRNBBQLi6jdoUS4HKYb
         KDmUg3Qd89njDhgRsjJgZl2ZXJycgJsIfC2RJvqflHKcQorE6YbUUOq3sLFUSGRlufyr
         8IIl8Ib7hIr+Aql08OX9eN1PdTT6Ol1K1deKFGw6Q9vBIfzmvl03+Suj0mxpL5nqWko/
         8txxwNlvhN5xNs0XMZOmwlJctRGAFYcwF0I+8p5F4uws9Mo374vOAsgiX1chyu3qhiNw
         R1iJj0WjiTDaQSz6uhHBn4aMdKtM1LSDkosWCVTx/ZBbkHgbb/47LvHhurqtYZMyJv+O
         FquQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpEg89GC0aRQqJW6dxRvbUIZayof5sKSO61FvykF2YAda00z9ITyUJUkoI5tlaQY4Qkol3vUdF4D80@vger.kernel.org
X-Gm-Message-State: AOJu0YxOu6IcXxlx4ZOKCCFGY2TKW2F5GcsK9h4aBPFEg7Cdnl8yj8ej
	6wsJL+pqjzVULYYdLU+sfjH1SXRM6gwRoA5jevHJBGP21pkr4dUhGPJeM2OtCHJ8rSmnya4q1az
	AiqnHioSaFgd31RNo2Z9SM3/BVMsc0SQByMFJtFKxr7gCBTARcaidOWu/c7DREb3F
X-Gm-Gg: ASbGncsB0LGJ1a2fqoPEuX0CvP0gHQaHTHo1fFcDTW41GOtpntlYbAruHkOWWL7hxHR
	nqKVJhp+kET7jTrZizuu6iVBfnNxDaDxcWRARbuFuvMY6A+aBpZp919Hs0lcW92lRW+DfMpfgPv
	UeqzrqzgFVcgu1j7/W9c7Q2MTedHC6bO+7UQncVVfX1oXysjZRbL5vkqf59C6t+htDhsN33whTf
	PXRp5xjHrzBhj5H6OesA7C6cekMDiP6dVlW3DpkOnH6eQ2MxDTtD/g0YclgZJW5SymLxtwbIFbO
	TENh8R4Uw52EJvqng+jd8M3i+jukJhkKlG+lbIXDehYcfuhtpQRTcAaqpBMzO3YiXEoVv1J73Hw
	hxjeQUxftQulQjC6HfCHLlF3jeE6CZSG9nwyZ+UsRJCcMO68CfnRn
X-Received: by 2002:a05:6830:6d2e:b0:744:f112:e537 with SMTP id 46e09a7af769-74569ec96f4mr9524795a34.30.1756897310753;
        Wed, 03 Sep 2025 04:01:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdiePyT62civ6LFTn3goLcy8YW+L9JeKgsjo9tX5PgEGNj1cvGwn1XZZFaj5wacomXsnH2IA==
X-Received: by 2002:a05:6830:6d2e:b0:744:f112:e537 with SMTP id 46e09a7af769-74569ec96f4mr9524761a34.30.1756897310292;
        Wed, 03 Sep 2025 04:01:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad52b4dsm434598e87.152.2025.09.03.04.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:01:49 -0700 (PDT)
Date: Wed, 3 Sep 2025 14:01:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rajendra.nayak@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
Message-ID: <d35s5ldfswavajxkj7cg3erd75s2pcyv725iblyfya4mk4ds4g@hekhirg4fz65>
References: <20250813065533.3959018-1-pankaj.patil@oss.qualcomm.com>
 <20250813065533.3959018-2-pankaj.patil@oss.qualcomm.com>
 <bdfb09a2-0053-4a07-85d6-5e15b8bc126a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bdfb09a2-0053-4a07-85d6-5e15b8bc126a@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX1xqEFnTI/KT+
 s3PIeKno+HQrZTeamAWf9tXYQsJy7DNy2skDt5+JgFjqWUzTYLaT1mSS2uYPgUxqGRRMeneJtdM
 6vTMnbk5jmsdofAECdeKaiSH8vLm80WS/hL5c+StZmvRhzkW9TiO6PP5ZpzyTc3rKyXxARATFnw
 iqt7T05MLbRbuKnMNjukdd/I2rUmzMhdv5vjCcXxB4rRCdNNYl4ArVpFxSk+Y9xrSQQZ2hwlCBP
 VaQ6sb4GvGYbI7ktxXo66Mbl7QQXPxDsCQnNpEx3AWHz1CKYa2ONnmlktciUdfnvrwsJhhxcSMT
 BtbrBC16IOibIrH6FMBLu+nxXn93UEh6y13kcXFDzwnYbKkroh/FCuu7WvmmQ0M+ePdm7vbnApB
 aPzw/MGF
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b8201f cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=FCd5T-TvBLVYlDZUGUwA:9
 a=CjuIK1q_8ugA:10 a=EyFUmsFV_t8cxB2kMr4A:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: w26kRFnFxJx7Dwq7ylMUMgDsqJubm_b-
X-Proofpoint-GUID: w26kRFnFxJx7Dwq7ylMUMgDsqJubm_b-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

On Wed, Sep 03, 2025 at 12:08:27PM +0200, Krzysztof Kozlowski wrote:
> On 13/08/2025 08:55, Pankaj Patil wrote:
> > Add DeviceTree binding for Glymur SoC TLMM block
> 
> A nit, subject: drop second/last, redundant "bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> > 
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> > Changes in v5:
> > Rebased on top of v6.17-rc1
> 
> 
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,glymur-tlmm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  gpio-reserved-ranges:
> > +    minItems: 1
> > +    maxItems: 119
> 
> 124, I guess
> 
> 
> > +
> > +  gpio-line-names:
> > +    maxItems: 250
> > +
> > +patternProperties:
> > +  "-state$":
> > +    oneOf:
> > +      - $ref: "#/$defs/qcom-glymur-tlmm-state"
> > +      - patternProperties:
> > +          "-pins$":
> > +            $ref: "#/$defs/qcom-glymur-tlmm-state"
> > +        additionalProperties: false
> > +
> > +$defs:
> > +  qcom-glymur-tlmm-state:
> > +    type: object
> > +    description:
> > +      Pinctrl node's client devices use subnodes for desired pin configuration.
> > +      Client device subnodes use below standard properties.
> > +    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      pins:
> > +        description:
> > +          List of gpio pins affected by the properties specified in this
> > +          subnode.
> > +        items:
> > +          oneOf:
> > +            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9])$"

If it's up to 124, then this pattern is incorrect.

> > +            - enum: [ ufs_reset, sdc2_clk, sdc2_cmd, sdc2_data ]
> > +        minItems: 1
> > +        maxItems: 36
> > +

-- 
With best wishes
Dmitry

