Return-Path: <devicetree+bounces-206321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 315A2B2C0BB
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C99573AAFA0
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C003732A3F6;
	Tue, 19 Aug 2025 11:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="po0PNZHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2594732BF27
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755603622; cv=none; b=jp8Lhw0o/mympzgLkESuVt/UE3u8KP90Z0PfPG5nRM4yx9Y1mjbDJnlpwX2gqah0BMJuHHcAjh9PxGrBB6bbnlvs+9DyKLVkI+VQBzLK3KVrSftLjmd6o/7cC7AuvqkxdRErQOgfKaT67FWA/t+bGJzXLGmnDVs7tz+o3Mss4WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755603622; c=relaxed/simple;
	bh=zlUEJfpYmR4tX91EugAHvCUNzFBmNgD4zi112bP6hAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HV/MY8RMUkl9zfKf/Ascldb/P3gzjrqwh4+TK01z6dAPN1j85ok+8Z8Ho6R+0pl/a56aNfXRXd7ictTtou8onhr7y+gIP34KKUunHQnvysqOTk8Qmyvvp9IV/imi0IAOCrrUw/DaDPOtDaXvln0VLR5WR+xzFIkpowrYm1CSC+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=po0PNZHK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90WAf023322
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:40:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WUZCKijWjTUZrQrretf3iRXu
	z+Doo912w7iRSB+J4eI=; b=po0PNZHKBpmN24jA2AxvSrxpb1J7ZjMYLOJM87yR
	BryFWpsT0iAM3Vx8sOC2ZPGRRZ31x7ZNgroMgUzc7IgWCq1MBW0ZwxvAVBTjQ03d
	JOMHYwk/DhZBLs6v5huI267841cKfLejxg1l1sS4yWJAyKV58VVyffFpy2YGpduY
	7PAoLjWWpfTpyRMmuJXmyCWHGBktS052IvgGKyZDdqWnqAZSN6pZqiypK7XFdVZ+
	ow7hWTgtpQY3TfQjjdX6ECS5pPSWWiRl+PVCqUAmykzp9QNpvMCtbqU9wTai4fPe
	Yrm7xk/RBTKrVClh4TsG0wG4BlXgOVYYp365dBUsQzV1DQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m62vka2d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:40:20 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f57f950so112223836d6.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:40:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755603619; x=1756208419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WUZCKijWjTUZrQrretf3iRXuz+Doo912w7iRSB+J4eI=;
        b=i1Lu4mpHdp/6rbQht2AXGWxlUUl6zgTzM9dzAZ3LXNNJo6ufd6n3RUTLy9SerZMIJS
         1AHhGBopmpIeybebYjQ9sRZfj/w7650yBAmjA5eLvzHQ5EoOCSBtpxwaCFw06pZvRR/U
         8iQgapRQMlJIlcV1OEovCX6r5EWEmkqBbCfWXwBNn9BX9NYQc35tO1JUK6hA0X5/WWoi
         T2EXbbbb45o6QzmbgTfxRK3gs/TH4/g7QHMLwpPmyqKrbuPzg62EltYjMwp9nmAv4hbi
         AUoR916BtRmGeSRhah/Jv6Hi57L9Go7Mdnogf3bQpJMOs2hjwHcLT4MYenF/7zSKBlAU
         Y74g==
X-Forwarded-Encrypted: i=1; AJvYcCX4Or3mQoDuyWXf4a7h7cd8cZ91q9OnwUEasVtVVekeXqcbko7W01xgml7WHF+2WEPhBhbrBUafndfv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+UtcRdQ2mp1bxcwPgK8UeGDi35muQinLtBhH6OGccaWBbZbqD
	ZmVpOcBvW4HLJ0PNxVl0/Qg75fp88XYkMmAIDemAaYIbpwgqmj8x5j8pbG7EmYE10Q4102HicTS
	mUXIrSw19EHjtzRbCp9bJ/w/qU9Fyo8tUqwFpitNw431CVz1MLeuGKL8Z3TZ1gF/7
X-Gm-Gg: ASbGnctDGe0Of1dIYi8WIyI7qSwhPyM+A6NWhqs3hnSky8HmciUi+wDsDjweT87euhQ
	gVsiy5+RSFAOVvwT2lr4AW4t6HWmdQ81OKc+NT71AHDGQd52Tw+hHW+VGGb61ZLmqPkXOkorghL
	+XD7PXdvDUbgKGw27rxHh4r28i72P0rHzfvr9GHLVcHQPJryueIDEOc2JpS9Zr/zwsISso4z4C5
	m7cZuq6RFdkAAtTkXbc8wMHGIgNh12KJoFvEclvHW9g+1jpYht+qc+jIulNjFZwBtcSy6Z+zl/E
	R2emRmpaf0JZIiXxkGSkKcdh/ILHXn5NTjQqVg0anOKX1/WnAQ2/a09jsJTymYJqxS8cXc3VBh0
	+QhRnEBh0AlmSTpPxjJGmo7sADirSP2Wo0axx6F+8gv9iKjk+7Ssd
X-Received: by 2002:ad4:5f0b:0:b0:709:650b:914c with SMTP id 6a1803df08f44-70c35d30e23mr22234156d6.40.1755603619186;
        Tue, 19 Aug 2025 04:40:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoFttiRUeNCxJ8KFAt4cgTqEKpI9DjnbmEteHB0Sc6Ed6p67fuNf3H2ooC03R+rgzCqqtrhQ==
X-Received: by 2002:ad4:5f0b:0:b0:709:650b:914c with SMTP id 6a1803df08f44-70c35d30e23mr22233866d6.40.1755603618669;
        Tue, 19 Aug 2025 04:40:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cca16sm2088342e87.92.2025.08.19.04.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 04:40:17 -0700 (PDT)
Date: Tue, 19 Aug 2025 14:40:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615: Add OSM l3 interconnect
 provider node and CPU OPP tables to scale DDR/L3
Message-ID: <le3xcbnebjgkhzmy2xhicnn33prstewg2wymwc2nfjombxgg3z@ucsmlowzzd3n>
References: <20250819-talos-l3-icc-v3-0-04529e85dac7@oss.qualcomm.com>
 <20250819-talos-l3-icc-v3-2-04529e85dac7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819-talos-l3-icc-v3-2-04529e85dac7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDEzOSBTYWx0ZWRfXxPDAcp8GUX6A
 dNkh8rHay0pc1+HVueD0JSkmfZyQ5qH/HLZyLgDAWefLeBVvAOmr4uvG1+eQNSPsMqT2NjTFn/N
 EUyAORQjrN4XVoWQ7VxJx5IgHqotVFdB/E2OgIN7D7wycBhSaGsSjtbNXvsaBllnjz3MU+BFA9d
 PxhJhhJ2Jat+AMb1EJ9fedLadD2aBL+6ZuHzcFSQ0F4Y8eTFFJjzg0C7W6Ug7UpEj6H3n6Ot7Me
 SdoJ5aBOcYR6rIE6TuEK93QcGxD1YiHmm8ScgDhQH7A2ye/FQvvAUvC/rRb8fdFbnVuB2cuOW4Y
 LIcFakuzz2NPSfrhF0g7KC55PdeaqO4RDtqKpuwlU+xjwAVbKUmQ8GPSrcJ/PeQSWwB4lhBwOMo
 28aILjfg
X-Proofpoint-GUID: oukY1BUY3li1pztZrb8j32lK-TVwci-N
X-Authority-Analysis: v=2.4 cv=A4tsP7WG c=1 sm=1 tr=0 ts=68a462a4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=cd8PGyEpGUmkB33UepYA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: oukY1BUY3li1pztZrb8j32lK-TVwci-N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180139

On Tue, Aug 19, 2025 at 11:24:47AM +0000, Raviteja Laggyshetty wrote:
> Add Operation State Manager (OSM) L3 interconnect provide node and OPP
> tables required to scale DDR and L3 per freq-domain on QCS615 SoC.
> As QCS615 and SM8150 SoCs have same OSM hardware, added SM8150
> compatible as fallback for QCS615 OSM device node.
> 
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 148 +++++++++++++++++++++++++++++++++++
>  1 file changed, 148 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

