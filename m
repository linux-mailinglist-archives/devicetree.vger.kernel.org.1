Return-Path: <devicetree+bounces-254679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CD5D1AC13
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E466C301691E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7486039341B;
	Tue, 13 Jan 2026 17:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i+NBIslL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="joF2zFOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8D36A01E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326880; cv=none; b=t4/Zw8Jq3rSJKaVNE4iY4EmQj7VAFUBRbXsV3w0vj0EUWv0hnrG368JnnsXpjamlBmIRmL1rFDejEf4430eU4JdMUTUs8txGtZ2h08cFT6dWf6YEvbq11RL1QpeLuO4RHDqGijUUGDkcOoHiDXTA566sPp9jHKo9vSx4PAKuOZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326880; c=relaxed/simple;
	bh=ZRXrnPpJm8lDMow8lgpGslnYH2lnJUFefV24pVCZb1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=avL65+Y60gHzmxFElfD9IvzY4uXkiipcjYKGLqTqa2DvJmWFdOt6mTLW6Mx/Drx6kZer4Np0izbFY4+2/U7C8wynd4XMSORpb1LpsBiYPtBi6HxHPiXuGrJii0WIJI2O1Yf8V7OGQNIvPMTZUAti9iRrA0a66TDBDUYD93ewlCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i+NBIslL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=joF2zFOo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DC06Nr2865771
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:54:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T7UHyRu1oQnHRFZNo42cXrYA
	1H0xCZn6d1zjyPczYh4=; b=i+NBIslLzTHPua18ncagPctbMD61+Sp+FmG3kTS3
	fWrb4aWKTQVMdmV6APBZ4jtpEDrTsSwUGfq12Sgqofx0vyKTJ/JJgYDLtZkzu7k8
	Zws3FGTNyWtCuT8NZMHUuGoE0EyCBO5VdsWA6NoCZF6o2TVbF4IjBtohlsFmE2OH
	siZWNJRhs3fWlMaPQux3ixlwrE80rSD2+wlErjpCzq5Yz42pKMCOBpTnLe6bTN1U
	0A1s808V9lAwbupOarrEHt+LZgFJt2T5hOCjccCUyhwaQTtiO7ERDfNdlH7SmoK/
	y0GZf+epTZ0/ii9fBsolF0tUGFVYQfDpSf5/Wpo0JZ7eTA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjhagjb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:54:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b8738fb141so16407985a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768326877; x=1768931677; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T7UHyRu1oQnHRFZNo42cXrYA1H0xCZn6d1zjyPczYh4=;
        b=joF2zFOo40Juqs0Idj0gl9e5X96xaTJYwhLptsp/v/bqeTISjhuymd0URpe6b2m2t7
         Inqn15bYd4FiIdZtgr6mLQfamOpVueOUoXOQg94oWUu94jQhz+JebGFFO8IqJieK05V+
         /sCIl59XrnjpfTCS7TA/WAhyBRa+02hUWH1N5otyVvxtbh5JTnb5sIbXI7ZuMO70rOX/
         xTwA2Yf7wJT+AkzESNs02pDnF3q9Lzn+ElOreddAyChmR7TmKrF2VDWSSKY+aUAq1PF6
         vO6oLG0ldUrJ+s4XBtMUxBsodgxQxHH2G9rSfVJ3ur2e0vy1+FXroN9ZClKN0zrvlMME
         9dzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326877; x=1768931677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7UHyRu1oQnHRFZNo42cXrYA1H0xCZn6d1zjyPczYh4=;
        b=tx637esN0tHr6yFmV+4sbeMsMymNwpl0z92E4v46Zg7AfeqXVpQBJ9itICwcsft0Eq
         PmQHbZromXnVg2LEgvfotnmUOkoaNT681CJl6f7TLRy/hw0mZgeDrITU3u+5ROcMq4i3
         huXBoT0Z3CfMjPLQ2gldrUed0YwR64oBvYCCk+5bMMKYVYO0e6ir+1noCm+yBY3oJOsh
         uZBwm0EZLxxs4evEKeEpZJ82W3nJpsJ7SW+4rVE1ceV4a5DNvE28svIfuc3Yh+39Zlgt
         xhKQSllqy8MU7Akl7elPw+ghW1O0j+j+GQpVjxlIURRWSU/KSsGlFfVmyrAPm/1xNeQJ
         x4Vg==
X-Forwarded-Encrypted: i=1; AJvYcCWPF6HLdJRDiQIhCNwlD3MyV6QcL86jCP32Hl3ynswB/9jq0B/+jQeqiCZrZjgitYNX8b0Ch7Zb5oo3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0PlRuozfV3lUUcZAYd5sYq1T9oq0Q9S/mqq+WqvQaBgB6KlvP
	gp9OaU/Q5fMgta0upXUe0yJIsB4+J3N3v3gxoo856WBIxYbKkx2x0JJc+8bog6i7vMma2glLMzL
	g/guDbv2dXSrBDQa5PDaccK9w2wSgKguLmkPuWCuphGaO2iD1kTTQ41sUj4pG9Qo3
X-Gm-Gg: AY/fxX6whQxeg098pqT7Ald44yaN7umSMykN6mKgbsxHSTp9hrPKrhTl56RzriCx8X3
	02ovMJMWwWjNVjnuUyyYTqXaKeBssHFaSaztbShLq5t/Y5yax29IFgHS22ylfsbiERtnoB2YNqG
	8qJb9GgHUDcKtU5dCNWNIxVVhPCjRxI5lAt4CHuBHKxybDLocUgMPbYpxM7JaOZUaBea/Ov8gFl
	1uerthR4LQIc0cPmDWJphK+hbxN5/qVJaARMCd8qGschbDT3HxV7COxbVHDd4eaUpCS2jC9s70m
	C5uDPUrhq9K6gGpubXLtnW7l61/5vd2oSDLgd/8cxTr3eTQg01j3lSX8UbiZZsrz/3cheT045zd
	f7bH9Jrxh6KZqStj1cNN3BehMa7f6sGPXcKwMcimVkPgHYUiKxi1E4gQVp2x9bzg9wpVlmcaJGc
	RHovVloo0/l0CpnSfxhFnYLwE=
X-Received: by 2002:a05:620a:414d:b0:828:faae:b444 with SMTP id af79cd13be357-8c5208a50b8mr537520385a.20.1768326877342;
        Tue, 13 Jan 2026 09:54:37 -0800 (PST)
X-Received: by 2002:a05:620a:414d:b0:828:faae:b444 with SMTP id af79cd13be357-8c5208a50b8mr537516885a.20.1768326876869;
        Tue, 13 Jan 2026 09:54:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3831a754b99sm29452601fa.43.2026.01.13.09.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:54:36 -0800 (PST)
Date: Tue, 13 Jan 2026 19:54:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Enable download mode register
 write
Message-ID: <4ioz5tt4oye5relk7eryk54jtyfat4iglfwvlype4pdi6si5gv@pdrr7vehboyz>
References: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
 <433fc01b-0e59-49bf-afdc-a23e815cc563@oss.qualcomm.com>
 <cca646c3-5e74-47cf-9dfa-49a888db0414@oss.qualcomm.com>
 <20260113130428.n2kuo2d2tkoosws2@hu-mojha-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113130428.n2kuo2d2tkoosws2@hu-mojha-hyd.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE0OSBTYWx0ZWRfX4nlP46OEnZrV
 rbb3n/8exPi1Kxl0kMHdaRRfUX2PC3FrJ24hpvONUNZYpUM7OzChktgdourfFMY7tUNKY8o/VzF
 OlLVEf55geNyvW9zZT1z3IfozH5zCMkTGwjMutiCzlzzsO2uqHg15B6vePQMqeDG8wG4AQB6NOe
 gBXMPvUDdnt+0N1rFCGYuT+PJ1l/xXkI+PgeeCCbAbqF/sW/ClHRhKsWUD9LzAWuh/7oTcL3//j
 HmJIk8LrxEFBkfqB4jIbIpIkMlWgGVVp+4E3OPApDmJulGYCg19i7U5YmILVfxuU20M+q12lRGq
 UDitCmnoCrKyKEB3KUK+TK5zAa3eGgLXniLFszYcBeCthRMggH2UfE3Txxz/g2jhGocfzT58H8N
 Woild12JhZ+yvnoy7/P/Pdmv+4GPkKL/SJWHpmxvOSZdqEKSsIRUrCzmuFvKovgrLRqyTj9sagZ
 v25V39S8GIPSUsmGFtg==
X-Proofpoint-GUID: 4Cn43eNbGvkxxyU0rzlm609ZUJwW7Pe4
X-Proofpoint-ORIG-GUID: 4Cn43eNbGvkxxyU0rzlm609ZUJwW7Pe4
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=696686de cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vqBD4HcZ2upZQQZC_XYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130149

On Tue, Jan 13, 2026 at 06:34:28PM +0530, Mukesh Ojha wrote:
> On Tue, Jan 13, 2026 at 10:20:58AM +0100, Konrad Dybcio wrote:
> > On 1/13/26 10:16 AM, Konrad Dybcio wrote:
> > > On 1/12/26 4:17 PM, Mukesh Ojha wrote:
> > >> Enable download mode setting for sm8750 which can help collect
> > >> ramdump for this SoC.
> > >>
> > >> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > >> ---
> > > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > 
> > Actually no, we have a mess to undo..
> > 
> > There's already this node:
> > 
> > tcsrcc: clock-controller@f204008 {
> >         compatible = "qcom,sm8750-tcsr", "syscon";
> >         reg = <0x0 0x0f204008 0x0 0x3004>;
> > 
> >         clocks = <&rpmhcc RPMH_CXO_CLK>;
> > 
> >         #clock-cells = <1>;
> >         #reset-cells = <1>;
> > };
> > 
> > That's located at the rear end of TLMM (someone had a funny idea to
> > move registers around when designing this specific SoC)
> > 
> > Problem is, those registers aren't actually "TCSRCC", not even "TCSR"
> > Physically, they belong to the TLMM register window (which starts at
> > the base it promises under the TLMM node today and is 0xf0_0000-long.
> > 
> > What we should have done for a fairer representation is make TLMM a
> > clock provider on this specific platform
> > 
> > qcom,sm8750-tcsr binds the tcsrcc driver, so we can't describe the
> > actual TCSR (as in this patch).. we'll have to break something..
> > 
> 
> +               syscon: syscon@1fc0000 {
> +                       compatible = "syscon";

You can't have just a "syscon", you need a defining compat. 

> +                       reg = <0 0x01fc0000 0 0x30000>;
> +               };
> 
> 
> What about above ?
> 
> 
> > Konrad
> 
> -- 
> -Mukesh Ojha

-- 
With best wishes
Dmitry

