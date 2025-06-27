Return-Path: <devicetree+bounces-190361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD01AEB87B
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:07:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA37E564286
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA082D8DC5;
	Fri, 27 Jun 2025 13:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYEXqRg9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F75B2D6600
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751029671; cv=none; b=VaLG1sp0FMD+PvsmJSZ751cb+qrL89EPv/kvv0YWDSXVcz7cSx43deM6I5+i8nlMTWrYaIGNToloaasrbg8y45zbEECR9E36QCnigKvDwvR8lU3jXjZv8JIHcRTg9Jbhojwsx6sedAx4Ax2IsPbvgANnqdmt2MoqVGu9U9Ym4GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751029671; c=relaxed/simple;
	bh=1HjGPrePx9BzLMqlBHVXd9mgOpoGcPi8zMxkRoCatQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oyq04vuIcHmZ8z1qDSDZNnC6SZPgJryyEMH0PddafMcXTRDa1wyGldHWT/LkmJHPlnlo5qGXiNyP/UKQRmrXBr7MK8MkuYilu1ugJjtec9GAxaOIsYObMddQEC4G5vjRT+uou8mMyYFdQrxbEmAl0Ly/VpOaILq4dwxxhPmDvts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYEXqRg9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RC2MNx017801
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:07:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7B1mI43rlLj5MdjG05K+u9+5onCyxbic4JTto3iPdEs=; b=QYEXqRg927Z++bbO
	xOCZk4H+CYaAZfC1X5xqjlQBv9UQcCADerV5UxGLUsiceRYSggfkg1oqN2qqFpyt
	VhvuW9uy//eGFducA8i9ay091SDCyMibcRcli9g1RWkCkdEdUc9R/w92t2OnihzQ
	x3bBe1T+oCzakmBASiwvuTOjCZQW/WYKomBVs9tmv5gIn1afwjCwgCtPTzzYdP3b
	IzppQ4jdnnQNIWj50/yZ31JK0qi4tMIATnnTZy0zl7PZ7McnAmzXSpNVCWX4qT6/
	dFfXnG5r0LM2EaOfZprDvb4uJq2J1ovAFFnrZQ9/eRNlZt6dLXVoHNH9IoOWH70V
	PUFnMg==
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfx580t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:07:49 +0000 (GMT)
Received: by mail-io1-f70.google.com with SMTP id ca18e2360f4ac-86cf753423cso187509139f.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:07:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751029668; x=1751634468;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7B1mI43rlLj5MdjG05K+u9+5onCyxbic4JTto3iPdEs=;
        b=OY0iIntZUFZ/4nIiXqiwaCeDsfu01j55ah5eQCRDp5xKeBQA+nRuEsm7V05MIBrD4q
         cFVkOcWqkIKr+OJFFIjUB+KbZe4QSQ9Iz8GD9if5wXW5x9tmv9fH3Rz2TRoQILSxK2LT
         imY+Kx5/p2a6vADz2R8hKUSG6Tk1cf5Ta+cYMLqcWXkEvywehoLLgIZzzpkrYtscwCXk
         jMq/rWfSMxatqT826B4eoCvEWSh1awmcUc1gT8GzWWHqOqO3CNErSY3gQGxI9+RG5zEJ
         1vIjz44/ypV+Dansla1XmL725jT7XmSB876MqPRV0tr3yibIbf7rbi76cwDpKNLknBlG
         Qq5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW/k6+loQoyO/IFsX0WDqMsnMCjbRfX6HHlEQjThvuYmXkILpAHCHmfaF5BI2iEdrCR9ApZcL1NQb0k@vger.kernel.org
X-Gm-Message-State: AOJu0YxApEpMG6S7+xY4oEqgxedj5fgIBuzVt1MRmwFlseqjYdQe3zfN
	yEm4yKjX71YsImbOM+KakM+pY0Gf+lIokQnlKGU08HTn6FCpZLP8GuzkEnNIu2/phl54NrD9pX+
	ehVsV3sW+YmJsYquUuyQAuwnUrfdlNmd5JyEgBvHW3i3iiJlz2hptdwgVMigynsiX
X-Gm-Gg: ASbGncv8YLNdV7ybDWpXkdt0efWULsKeirbXIv6iFoQVUyQJOqAXJdElb5Tm2h09BHf
	6bat3/BdeVYZ/u90KnK7opfrmGqjYPx4VpJzgKjZom35UrIiQyqKkVbMlC99ZH28gjBrG/NJNUC
	70Y+1xO3q3EncAvqr0z4BMWA3vmkV8gX57BrWfvwcvwv53j/D54cVPuZG7oUhuBTT4NrVLbeHes
	lfDmErZNhDiwt3APTZeuvuIk9hk/hK6R/MxpVAokaMpFmw2Xm5a2JeTotH7gfR70d2fMgiE0O9R
	7TQjV2D98G/o7+ZsVM9q1Fxz/0L5bJGlVC957yTDcKZ7Pe5mdgdTU42jl0VsDSU5b/WALq95+aZ
	m/seZR6YD49uc4BVzeH07meold3Vgc/NW0do=
X-Received: by 2002:a05:6e02:1c23:b0:3dd:ceb0:f603 with SMTP id e9e14a558f8ab-3df4ab6aa68mr36335035ab.2.1751029668094;
        Fri, 27 Jun 2025 06:07:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1Fcg6f7qKMNrYzUxfeKnTHHm5N3qcjPX4yV/7MeF8kJhFcrBQH1magZpQ6jw8N55D4Fh7hw==
X-Received: by 2002:a05:6e02:1c23:b0:3dd:ceb0:f603 with SMTP id e9e14a558f8ab-3df4ab6aa68mr36334625ab.2.1751029667636;
        Fri, 27 Jun 2025 06:07:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2ecf63fsm5663921fa.74.2025.06.27.06.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:07:46 -0700 (PDT)
Date: Fri, 27 Jun 2025 16:07:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add PMXR2230 PMIC
Message-ID: <x6jo5xpvqlehij3rybcq26xehmeuzju2mgarnp3panag5hy3ao@fmtu7tgc3p4n>
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
 <20250625-sm7635-pmxr2230-v1-3-25aa94305f31@fairphone.com>
 <bced42f0-bc9a-47e6-bbdf-c49657d2e18b@oss.qualcomm.com>
 <DAXBXDDJAXDE.2V71E3E8F3GIH@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DAXBXDDJAXDE.2V71E3E8F3GIH@fairphone.com>
X-Proofpoint-GUID: AS1Q4GimaiOz5m0v7WQc3BAkFaeiI2gE
X-Proofpoint-ORIG-GUID: AS1Q4GimaiOz5m0v7WQc3BAkFaeiI2gE
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685e97a5 cx=c_pps
 a=x6q9Wowz3da5qcMoR2tSzg==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=h56Vx8HxoSJ7g-UfYxsA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=TsFzuV67ciA61D7d30EA:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwOCBTYWx0ZWRfXyRsdYhcCoXGh
 t7SdO3vDhTE2p6npsXI/u1EX+Hs5iuHTFS9EqqiY22j8ZcgrcHA+4U3lrkwbQVkfbKBvyW9RQsq
 NzWJbr4+1gqoR/wZPwIssHOg1iRd+/JFou/cuZI3YSaX4Wg1ttCcyl1s/q079ehpcLs5MaMKNpp
 U5uTQQC3OS0dchHI4rmiZ87i1XLTR9WyKgSlh1Y/GyzF7JV6fGjOEmK832cJV0Y7DDVI8DVUAvQ
 sOTIO+oyNDt2G28ku3dz0zK9X0VkhU/vobdGiu4IDZGw6k0iHLB3YHse7uzqZ+fWslTcIhUtUAn
 0Phn79j4VPf45hWuWD0JZkydLQu9v96U7i7mom7cmuwDoto4qdUMCgYKsLkzPD4YDgUP7GITmJb
 gfYkhOrNm4+zr5rvuQ3CluWhbwunvQWHRxjnzpAALMfqK0pZJax09KTWLpwoAOY2Ff1E4fxf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270108

On Fri, Jun 27, 2025 at 02:54:20PM +0200, Luca Weiss wrote:
> On Wed Jun 25, 2025 at 3:20 PM CEST, Konrad Dybcio wrote:
> > On 6/25/25 11:18 AM, Luca Weiss wrote:
> >> Add a dts for the PMIC used e.g. with SM7635 devices.
> >> 
> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/pmxr2230.dtsi | 63 ++++++++++++++++++++++++++++++++++
> >>  1 file changed, 63 insertions(+)
> >> 
> >> diff --git a/arch/arm64/boot/dts/qcom/pmxr2230.dtsi b/arch/arm64/boot/dts/qcom/pmxr2230.dtsi
> >> new file mode 100644
> >> index 0000000000000000000000000000000000000000..a7650f3230c01422b76ef78e897e5e7ae2f20cc6
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/qcom/pmxr2230.dtsi
> >> @@ -0,0 +1,63 @@
> >> +// SPDX-License-Identifier: BSD-3-Clause
> >> +/*
> >> + * Copyright (c) 2025, Luca Weiss <luca.weiss@fairphone.com>
> >> + */
> >> +
> >> +#include <dt-bindings/interrupt-controller/irq.h>
> >> +#include <dt-bindings/spmi/spmi.h>
> >> +
> >> +/ {
> >> +	thermal-zones {
> >> +		pmxr2230_thermal: pmxr2230-thermal {
> >> +			polling-delay-passive = <100>;
> >> +
> >> +			thermal-sensors = <&pmxr2230_temp_alarm>;
> >> +
> >> +			trips {
> >> +				pmxr2230_trip0: trip0 {
> >> +					temperature = <95000>;
> >> +					hysteresis = <0>;
> >> +					type = "passive";
> >> +				};
> >> +
> >> +				pmxr2230_crit: pmxr2230-crit {
> >
> > This name is "meh", please change to tripN
> >
> >> +					temperature = <115000>;
> >
> > Unless there's some actual electrical/physical SKU differences,
> > downstream lists 145C as critical for a PMIC carrying the same
> > name
> 
> [    0.085990] spmi-temp-alarm c400000.spmi:pmic@1:temp-alarm@a00: No ADC is configured and critical temperature 145000 mC is above the maximum stage 2 threshold of 125000 mC! Configuring stage 2 shutdown at 125000 mC.
> 
> Same for the PMIV0104:
> 
> [    0.086556] spmi-temp-alarm c400000.spmi:pmic@7:temp-alarm@a00: No ADC is configured and critical temperature 145000 mC is above the maximum stage 2 threshold of 125000 mC! Configuring stage 2 shutdown at 125000 mC.
> 
> What shall I do?

I'd say, use 125°C or 124°C.

> 
> Regards
> Luca
> 
> 
> >
> > with that:
> >
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >
> > Konrad
> 

-- 
With best wishes
Dmitry

