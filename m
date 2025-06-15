Return-Path: <devicetree+bounces-186012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FE3ADA1BF
	for <lists+devicetree@lfdr.de>; Sun, 15 Jun 2025 14:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E82416D78C
	for <lists+devicetree@lfdr.de>; Sun, 15 Jun 2025 12:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25968202C40;
	Sun, 15 Jun 2025 12:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Unl8oteI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82779EEB1
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749990865; cv=none; b=cH2djV7/t4//VppTCxVzOn5PDYa4OTcfHW5New9S9LlNRrrK70OOGXJOZtn5DnaB2xo4wfMDJqUHf51cj0hxlwd8JaZLWehG7let3DhFpbhCvLHC44GT1eiuVJCO4Td34GwArCW/sk1zT5u6OqF9bOgXfoVPNtrFH+S2+nrjtJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749990865; c=relaxed/simple;
	bh=+YtpauqlidocOfZ9u9XcCreAbzVU0bnliyjUiSwMjIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p2tRcdwKdapAJsDv0kDT3qvdDGoFMFz9Uxn3tusI0si7hrKGEq2Sy2nuyMImaVL9KLAor0M6Nf2uy4vyekWtjdt2+iCHSUzG4QUrPD4GyuXc1LoV8aRD75XOob3/3wb0ULS5PtY0S93bOBiUX5VpF8IOnSDLdXCcgwSV5NmLQbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Unl8oteI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55F9MXdr016831
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 12:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F8bqEQD1F/6c4ZJFOITRv4Jy
	xZh/ptkdnehZ2r849SQ=; b=Unl8oteI+YK1i2Dn26OFxn9sJAbKVvqQERVCSRIE
	ESoLPfQralPIHdeHXlNMuXCVgr6l1Bh9PaP8OmYmZOCQfATAzn4KM5FhG1yHQ5nn
	U++S7lMJIuAIVWsW1F3Yn4K5Oko7JHiNpDThWE2Jm5VTWqkdfE0cjug4WFrcy5GB
	fwO+Sm4/GIyo+VY21TELxL3V//flKs0nW8S5AwWiPJo3yK6mS/cYL676PNZBsw7K
	SnJZxSv8irAdeDFDi0cr5XAgSlwNK2x8j1a6At9nDviX9u+xoF8e7+zDek7L0pb+
	6UQVKv2033AWdGG7crRlS0ZmX5uMVm2FKCPBBttGdQ6Vqg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791f71vfr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 12:34:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb1be925fbso63339526d6.1
        for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 05:34:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749990860; x=1750595660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8bqEQD1F/6c4ZJFOITRv4JyxZh/ptkdnehZ2r849SQ=;
        b=o0EvCMWvU9NphCCKVLi3mzSg4kr+hoT/WviA96iwVrFGhmxZkrDnAJgDQ928LFR4QO
         LBTKukfK0AVWELCuoc2qWC2Cyzwc6nY/NExxmrZnqCUYoeOYu/Gj8LMqAjiEx2rGhL0P
         cbLQ/tVYVQdaqlEAhj1wen98FwwOYoTbMXN2Xpr6S+TqKcOZHIIRAQhWFxx08Iu09PTl
         60XNl64tOj9IZ/hqw3xJiIixuaNflZ5q9ZYffTo6rOgYviycq9L0PwbUHAnQH/kWLQkP
         SCnDTkFdqrwWi1kz46GywDNW9QmEVltof0f5mCHWJOrXGaCJxsmFoupylbcSlLtK2Q49
         xEvg==
X-Forwarded-Encrypted: i=1; AJvYcCV2/C175JPLgdFJrVPaLAKgt67T6MNF4sTYN9q2BwZhjXLt8Hmdpz19Z1NIJ20pNC0EXK0D7iV4OPHU@vger.kernel.org
X-Gm-Message-State: AOJu0YxeJQlt3VFpdTRq8X99cknoxGvJ11N2W+h1HPLVpkQzQ0NY6jCz
	jTIawp5gMcW7BcVLVgVaunVSJnSJHfeSa3W+gvQyxxHGDiQY4JToUNw0RNkycKgzPVFfmMRnqR6
	I6tPvIEFf/hRVaZOd0E7vQL9KmRMjDXkYYPegQ+vLwSIX0cqevf9bnjlWhQT0LbfU
X-Gm-Gg: ASbGncsYtHeAKBOJCCxD1yJoccr7WZ2mOtg9YQYRDrKHAlU+q553/ySIM4s3cseF24r
	ucq2cfjbHJ+H62ZJnpmaycg63keiq/pRmX6r7Jn5I/1WxrFtfpiHjipX70/J0zVzVPESENTbnUi
	xdh3QtRjQV4Wb3rKSgOF1Spqf02hFKN8L60HLh8ErlFwgmtM5IUp3qvklNzCLDPQZWAm6ncqe0m
	CzVt5bMnLXx8CnQTSOJCafLRHqx7AUMnpe9RGYsD6+bKpLCiyllmc8TL9j5vWH6KtTDg7jL8ole
	1QTR/R8dc8RvxDEb/WqVFUaN1emh2F8A/53GfP3QnRcUZAtwRe8h9NoatjKy2+4kzLJufg0v08O
	QUPnvIlY6tcofAwJfqL1ggFmH4kknSNWtQs8=
X-Received: by 2002:a05:6214:2022:b0:6e8:fbb7:675b with SMTP id 6a1803df08f44-6fb477a609cmr120657486d6.32.1749990860189;
        Sun, 15 Jun 2025 05:34:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmsSLFYPiqh/8XNvtHVegWLMnEXtNYwQKFxdbRklLNtZ7glTt0XkybvDqsKlbaPwa0t/OwoA==
X-Received: by 2002:a05:6214:2022:b0:6e8:fbb7:675b with SMTP id 6a1803df08f44-6fb477a609cmr120656996d6.32.1749990859774;
        Sun, 15 Jun 2025 05:34:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1c1316sm1168339e87.158.2025.06.15.05.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 05:34:17 -0700 (PDT)
Date: Sun, 15 Jun 2025 15:34:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Mahadevan <quic_mahap@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: rename bus clock to follow
 the bindings
Message-ID: <jvld427airqpexaiglxe5hbt2svidbqkg3kvc3ysrwmqquwmi7@kif7otpk24zh>
References: <20250602-sa8775p-fix-dts-v1-1-f9f6271b33a3@oss.qualcomm.com>
 <74f7053c-10d6-4aca-a87a-0ac7f55c2f1f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74f7053c-10d6-4aca-a87a-0ac7f55c2f1f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE1MDA5MyBTYWx0ZWRfX+knyHXAnXOJz
 iX4mmsK7LCz0ZI6g7abbmkneBDoYmAJkmLXwgjGIwplYgY/eEplbLMzVR0IcMZ1vM8AwMwuByS5
 Yd24PehWNDojCtkRh87aiaWFp+pSwzr8KuJQZKPpbhttpU9iWW9xzVelmbZKwF1iz4i6kKe4Q7N
 48udDZ4n5M5IbHGDP2wgZQMJ6Ht2Aehpk/I/Q0O0ShoSXjZBuBRGzHqjOmcbL8M1wtEqNCgahSV
 cjmhKiHMZxBT3OEY7DkgxcYfOzg68qku+qj3hM0s8C/O8U9vS6lMXDvzUsRpgg0Ysa4bNxt+n3L
 oMUaVhLOR0iHCGE/C46QlaxYSeT4Xi02hPtDUlhhlqURq48wu0QXh8Hbxp+lv3VCfVu3qOnMqVF
 FmM5nOEqLEogDCkrKuXby5zeZQBycK78LCTqmrQ/fgSqMILnASV/6oiIjrJ9JIPiU3KydtWv
X-Proofpoint-GUID: wA9Jbp588Jbrgnj-aEbpmK3lzLAqpk52
X-Proofpoint-ORIG-GUID: wA9Jbp588Jbrgnj-aEbpmK3lzLAqpk52
X-Authority-Analysis: v=2.4 cv=FrIF/3rq c=1 sm=1 tr=0 ts=684ebdce cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=CrcwQKUZSO7BFsxUzq0A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-15_06,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=958 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506150093

On Sat, Jun 14, 2025 at 10:10:59PM +0200, Konrad Dybcio wrote:
> On 6/2/25 9:23 AM, Dmitry Baryshkov wrote:
> > DT bindings for the DPU SA8775P declare the first clock to be "nrt_bus",
> > not just "bus". Fix the DT file accordingly.
> > 
> > Fixes: 2f39d2d46c73 ("arm64: dts: qcom: sa8775p: add display dt nodes for MDSS0 and DPU")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > index 45f536633f6449e6ce6bb0109b5446968921f684..7eac6919b2992a3512df1e042af22d0cbad04853 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > @@ -4122,7 +4122,7 @@ mdss0_mdp: display-controller@ae01000 {
> >  					 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
> >  					 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>,
> >  					 <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> > -				clock-names = "bus",
> > +				clock-names = "nrt_bus",
> 
> Is it the "nrt" clock though, and not "rt"?
> 
> There used to be a split for non-/real-time use cases, but
> I have little idea about the specifics.

I think this matches the SM8550 / SM8650. SM8550 provides a good
example, because it lists both "bus" and "nrt_bus" clocks:

                                clocks = <&gcc GCC_DISP_AHB_CLK>,
                                         <&gcc GCC_DISP_HF_AXI_CLK>,
					 [...]
                                clock-names = "bus",
                                              "nrt_bus",

So, I think, let's fix the clock name here to follow the the schema and
other pltforms.

-- 
With best wishes
Dmitry

