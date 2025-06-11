Return-Path: <devicetree+bounces-184890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 927EFAD587D
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 16:21:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 047DB177E18
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 14:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900F328C017;
	Wed, 11 Jun 2025 14:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W1sgz+rH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC982951A0
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749651573; cv=none; b=IxRLaWl5Aq+Gxm6Uw0mFx5vCQs/ZeB/53rFoZpPP3uJFjSsaxtXRQuMdRiN6Z3KEe5k3F3RJeKEormy2E7ZDOD3vPYfETBpocaiRhylP3VT0Ngtwrt+atD34L0HRB3xwcMYLxanZrpgssYtAJBGSR33wb/T4TMUkuCYwa4qKdsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749651573; c=relaxed/simple;
	bh=UfnHdSKZ0T9IHQZh4HA/F4jJyg+5+9FOJsW1zZ6W8Mo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MzlVFhOxbtKEawKXqoRYH1FdB5l3uIHQZN65WBdOPpYrSnQMkVBDhNsvkkJNdlRJBktRANHGJ3pYL2WinO5Y1e74lNuwguaZ58yUsXec0biWLFbqhfrgE6PpRY0xkIevp6RqQcJq8hTPYZFfe2jt7s81wvtaFvOcNCm0eSecfrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W1sgz+rH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DCXT002338
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:19:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=874Q5YVFPtejmOnGeVJRP8KZ
	m5kEcEGmP2NS8rGVaww=; b=W1sgz+rH9iaGWziEFkvmzRbJOZ1/u+RfoZOJNjxC
	vLez+0c9NEeHtJclxnRVEXeGByYrf1UfJt5vO5oYxAPlQcwzm4930nv9G/ls7FXO
	sBL9Z8XJWt4sTSBODjMi59Ke8d9pI//8NMN+vlvWHZvvYdsCJNIrsK76XJ1HdQqs
	TINgf41whSBuPMl79Qr4BE8FEV7C/P70bCx3K0u85WiWkpqJ8mXXAP+DfsJX7NeR
	y6y/RIhbbzf6mMk1+i7+qyzmKm0Gf4jJ+Q4VB2CyPasVIDxutrCc3ikJAyb0A1DC
	d+YI6EGIWDX4r2aQCXfrFLMHiNiDfwHr7C8vNegGCHQ7Fw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dgxwfjx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:19:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d099c1779dso1178358885a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749651565; x=1750256365;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=874Q5YVFPtejmOnGeVJRP8KZm5kEcEGmP2NS8rGVaww=;
        b=cYWVv70Czoop7EPvR5Jc5mtQXjosZpP0mfMPcKE6ImBsbcGuazcPN3A7nEP6awM9wA
         3E2mWNsC66+M4PcP7rtnxndOz1UJGJmHzwi10InvFwXawx5jAGR2T72LIy/V9qVyAaWq
         fqSgy715UxGgv4tf+XJ30S7tE8x5iDbaYBTcNcRd2KVGPzMjRxMQC1xeqqJyY9yVLqdG
         UbOag2h1ihN1+ooKizHMyWk4jS7kTGBwfGfbykvU9oCppWt9ZITZrBoR3apCVpQLs82T
         9jeuD0jLxvcHsN4G6pcbBX3v7Vfy1FHMvDCtMad3cCl2t7z83BQhaE1R1SWImsveT/0D
         WRIg==
X-Forwarded-Encrypted: i=1; AJvYcCWikV4b8Mjs3RtcBWT/8V3+qPE3E8y7qdh2/LKAYMnLwIpFqMipfuXpi3LKc2UeITH3fTM659vXbaLV@vger.kernel.org
X-Gm-Message-State: AOJu0YwWCBgWMRVsvwgqoJbDesqI9mzQI/lQuuxFWqdsXf1lIk7YLi+c
	Mb1e0b+mcTBAVKeed48Owbb+ZLPBqDqCf7PqVg1znamTkTkmfveejtecq6oNHkEACDctwQ/lUCw
	1wplvpxk8eEAzAwXxse3F9y+LK8K/n/CfQEhgOSHQWzMIvsPbrtZzBD2/f5J0tk7d
X-Gm-Gg: ASbGnctsnKqQTsBGV80MXJP4H1g1PNDULEErola05SN+5SVrOva1bTfpF773729wo8o
	d8rYYpxqukgq/MekDJD6ABQHwtg+qL90BoCYoDe9OXZFti5ChT1oXlmPIb1Kad+QmzaSdx6lodh
	g1DCN/Lpil191W4D/aCxqwX+Sxa1aZ6x93IOv882E7G+EshWVs/9WK42xdmENfiDdzX057bTG8T
	V9xPtjN579fEzTfJwMmCdYU3A6vhLI4cwwDqj/j80Wy55zxFOsgBRYs6+VesvBb+rRqfjesF3UC
	w8ZSyx6z2DcdlQsKwuNqK0TkY1rcV4lpwPSJk7e79I9QtgN/NYUn6uPuxrS+5fs0a87c1Kznk/g
	9AmiF9PzTqFugeDSb9qd/nkFsAYmVeLqyLIk=
X-Received: by 2002:a05:620a:1d07:b0:7d3:96ba:78d9 with SMTP id af79cd13be357-7d3a95d7ebcmr462332185a.29.1749651564655;
        Wed, 11 Jun 2025 07:19:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAaOi73AYWlSbDOB5FoX5maZieuX6BK9CyazXK7gUyraDN4tNP1BHcDiW8mhiwHO8YmQIfKg==
X-Received: by 2002:a05:620a:1d07:b0:7d3:96ba:78d9 with SMTP id af79cd13be357-7d3a95d7ebcmr462328285a.29.1749651564172;
        Wed, 11 Jun 2025 07:19:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1cccad8sm18806571fa.80.2025.06.11.07.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 07:19:23 -0700 (PDT)
Date: Wed, 11 Jun 2025 17:19:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs615: Enable TSENS support
 for QCS615 SoC
Message-ID: <x2avlatyjo7sgcjubefexsfk6gerdbhx5dcug2kszk2hukcusm@srs5dwuc2m22>
References: <cover.1744955863.git.gkohli@qti.qualcomm.com>
 <1758b5c2d839d40a9cb1dd17c734f36c279ac81c.1744955863.git.gkohli@qti.qualcomm.com>
 <74b017c2-7144-4446-969c-8502fb2cb74b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74b017c2-7144-4446-969c-8502fb2cb74b@oss.qualcomm.com>
X-Proofpoint-GUID: MMe2zKR55kFmmSQ-PzpEGZIjkzvNC1cD
X-Authority-Analysis: v=2.4 cv=HMbDFptv c=1 sm=1 tr=0 ts=6849906d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=fHpipdgcYPiT0vFNL1EA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: MMe2zKR55kFmmSQ-PzpEGZIjkzvNC1cD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDExOSBTYWx0ZWRfX7YW7WjL+wkLG
 r0C4SWe3Ae0XYct6DEu/JWDMP9DEuxXCtu9rnuqe/2WyanpXD2YMlls727IIxjCTCW1zBXBabsI
 OxLucKwwuZpawVpBzLcdbin/I//tlZWKcV06O5yU6nJR0QIVQaey4x46aR6AZuqhEsOmJUS6m41
 YB7w5u4vmFpCNd4nc2kpAf9vktrCaru6ZnO2tYxGFbRpB3w7XI6yHDgS/oe44K207yF6h+UB7FG
 +jlA1SJLDXlsJit8+QxDxzMKFjV3haI5KrHP7qbNlX0k1idIpttIfDVqV5vlVh0uVcWsTW6fDVk
 dG+eC7ar7NVAP1I9H2MdYeOTgGryEBKlr5SUvQdh9inswEP/k4LThQCRwOWeqeFsn5PJ7tR3BLn
 Yn431l7eBv7VfJIF+eOOYtUpwKCFenh1myfSpAsdcZJL4tgL8LC0XvTIxViONoIuY/Vne82p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=719 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110119

On Wed, Jun 11, 2025 at 04:08:57PM +0200, Konrad Dybcio wrote:
> On 6/11/25 8:37 AM, Gaurav Kohli wrote:
> > Add TSENS and thermal devicetree node for QCS615 SoC.
> > 
> > Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> > ---
> 
> [...]
> 
> > +	thermal-zones {
> > +		aoss-thermal {
> > +			thermal-sensors = <&tsens0 0>;
> > +
> > +			trips {
> > +				trip-point0 {
> > +					temperature = <110000>;
> > +					hysteresis = <5000>;
> > +					type = "passive";
> 
> All of the passive trip points you added that aren't bound to any
> cooling devices should be critical instead (otherwise they're not
> doing anything)
> 
> otherwise, looks good

Don't we need cooling-maps for CPU thermal zones?

-- 
With best wishes
Dmitry

