Return-Path: <devicetree+bounces-213496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F75B45873
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCCCD7BFC21
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BED8A1D61BC;
	Fri,  5 Sep 2025 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KGfTKInG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EFA1C84A1
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757077640; cv=none; b=FP1isSyjLqbCvEekvo3Hhn+LeusqgchJYLdmthRo+dEWdABeEJ5xsIeAysW9K64SOvnRzlpcQs+sOmiKovB1VlepNdrU/Ip5d76F4ACRS9f0th5I3QiwzwcJPxRvpyUQDDcM0883HbeZGdnWWJO+vi56CqGBfGjk1GQT9rW4qxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757077640; c=relaxed/simple;
	bh=JsdLLPrUmGM8Tgv1FnyKp6BjjHIfVQSZbw506i21JtE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WKMcBi5QhQLnSWKhqiVhvmY1d1PmSsHCusLvihvOIUX9iUX4sNVNBG7WUc6eLOJgxG3J7q3G1qbWhVClDUeK5ZfnFYjrc5eR/kSDyaVDg2/pAubooBoCdAmOPOhD5JQGC5bpYQJL7mA4HZwtJws3YF5sm7/y6Uh3fWnijBP5X6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KGfTKInG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58574EAh008089
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 13:07:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KrQKZP3w0ewlZNuZWmqjmyoq
	dp+JRPUq5JvWfsJm8Eg=; b=KGfTKInGLH016v/bWWLBLY4d0AWU5cpjdf1TzVMT
	LlSQIhkrXp03YU/0z+2IQ+1BmyRxGELsUmBwhj9nwXtkIKjmGxJc7CWgFsDdusgx
	JX3DvgR/W0KhH9iwOqQLJ3UxkwEdMj1Tz6MBKVDTTBB1iTAQ97stY5Y/szaA8zI5
	kiaTdt5l9ITkt1eF5gTuiWSqEv2TOC3twYKNBQt2WJMqJZovXcXBKw++nNqA6qBS
	56AHOEsNm/PaEbjHIGMUCLaFovQJLwABBEmwpkIVMAi2Ba8E4uh7mQHVJBIpmQ01
	6KdhKYZUmoV1C90nxvpKB8BnjPxmYv5gpFq4YFdqS7SJkg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmju5cq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:07:17 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-329ccb59ef6so2502183a91.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:07:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757077636; x=1757682436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KrQKZP3w0ewlZNuZWmqjmyoqdp+JRPUq5JvWfsJm8Eg=;
        b=DSvUOG69SjOQGMpLjQvSxRem/E2r+iYVSivOCMtHV0vqp1SDwzUae7To2g5PG9jC78
         3F3NhRgBgZzxPyCRYp4Y/PBEOAxtbbbMlYbBVQRGwCSGCYqnREB+CRv1ZPFZRf+BI7ai
         FwPYelPT00vCTDEHfQEZLWUU2cLD/aghle42n+IYHP6cJTp0Jq0iLtUQvZxrT2kQXlFO
         ndBbMJhhINoueawrq9c/mvnDs2ohVLj2fUzOXsB3mvZn88we+oG8sq8p/x79NnVJgeki
         jvfj4FY3ltWKSzkfZ6jfP4w68N3TJYR67/x/TymbsqjxmUj8YsobhdfvJm0D8HVRbmYD
         NMWg==
X-Forwarded-Encrypted: i=1; AJvYcCWqVOYMKeaH+ZUXNhY1D8d6Pmw+mKP7cb/NM0G8VzfuNRBnGGxcbzBKMKeogrOqJijzn/nVIGVrnD6v@vger.kernel.org
X-Gm-Message-State: AOJu0YxlfsvcblhAYoWvA4idSEFuAUQ49iIAnewpu0sOk2GDoiuETqK2
	PAt0G0MFb9NwDVIHp0Z6wXtFnF480fWO5oXhyKLvNONCbstR25JRuaHj4Tign+D1KpWf04BN2PP
	ulaJ6/Xnl+A/k1k7Z5d1WSeiY1M7qYrT0o8nYnD9QyzqFcmVCcpUNJgmdp0WZgD6P
X-Gm-Gg: ASbGncsFhd7NLJQLRjskuXJUak9N3IyxIV8sfa1a2q2QZezIljwI1EiMpwCQAnWBShA
	lduZm8gCYVLvxVt9zbIhtNxpfQR3mi5rpJirybEF2v0WS1tMcPqhX7iRwgxfCazRNhNTpmwly27
	89ChrqQVfWivklPpO1OdrJUvJHdJJW0XE7UR+VJ9eW0vumkuxEoegnw7O2xSlINH1RW6IJSsfe0
	WYB+t0aLS6ZtnjquIDqd/02JHobXTtvymNceubAAnB8cVCmUS3pjPKCFlCWJTBmIGKqM8Xy3PG/
	AG+NA+XBbUwhnvPuPfySbKNm/uzKihYVgFtgk6cihLju9uuchPa0uoWeDeBkMH8ii8tH
X-Received: by 2002:a17:90b:384c:b0:329:e708:c88e with SMTP id 98e67ed59e1d1-329e708c9fdmr18453339a91.20.1757077636178;
        Fri, 05 Sep 2025 06:07:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOWdaNrn1TEaOULcrKSkZdESm8pCYoEw9CzGYfoVI1gFXNQjbHfv1K5YlHjOSkq90MCHN1Fg==
X-Received: by 2002:a17:90b:384c:b0:329:e708:c88e with SMTP id 98e67ed59e1d1-329e708c9fdmr18453243a91.20.1757077635494;
        Fri, 05 Sep 2025 06:07:15 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32bab2022afsm3689920a91.2.2025.09.05.06.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:07:14 -0700 (PDT)
Date: Fri, 5 Sep 2025 18:37:07 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 08/14] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
Message-ID: <aLrge0QLmApr881B@hu-wasimn-hyd.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
 <20250904-lemans-evk-bu-v3-8-8bbaac1f25e8@oss.qualcomm.com>
 <055bb10a-21a6-4486-ab0f-07be25712aa5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <055bb10a-21a6-4486-ab0f-07be25712aa5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68bae085 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CfLhDO45pqEqRx8ihX8A:9
 a=CjuIK1q_8ugA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: sSvIt6Eq01yKSsoW3aoaWrFFUw_cien0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfXyNTRjwwNfrNR
 0p4AFIZWqLckApspQG8TVKTv4HmidZcGnkWUfhXCJAuO7bKcRxIy/v8LmC9Uh33N7ZznSUorArK
 jWomAvrO7lrGufkOLLXNoYbViRkjOEY77VuJ/ImqmHwTm9caqNQUVLXmNQZOWCw9Epf4Hi1ezbW
 NINE/Gwv7qjAVT2ci3bNilT8imao3n5GbKWLOmgioEhN09vPgSqnf7K6A1/tt4ckqfUXtPU7Zf9
 NrdcOz61wlyW+SGeouqCvXvnekPmEKMHYSZIzg2qzXR7d8I3tFJ+JOxd9BwlsNrPk51mBq0PSVH
 cTC58I690nsc+/kQiKZr1NjFTQ1bOLnoGYC3HYzka3R1Y9MGgDegcLgwGMUOMr0UShfJdqNCv8A
 TvmOLxL3
X-Proofpoint-ORIG-GUID: sSvIt6Eq01yKSsoW3aoaWrFFUw_cien0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Fri, Sep 05, 2025 at 02:46:46PM +0200, Konrad Dybcio wrote:
> On 9/4/25 6:39 PM, Wasim Nazir wrote:
> > Enable remoteproc subsystems for supported DSPs such as Audio DSP,
> > Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
> > firmware.
> > 
> > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > index 17ba3ee99494..1ae3a2a0f6d9 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > @@ -425,6 +425,36 @@ &qupv3_id_2 {
> >  	status = "okay";
> >  };
> >  
> > +&remoteproc_adsp {
> > +	firmware-name = "qcom/sa8775p/adsp.mbn";
> 
> Are the firmwares compatible? The current upload seems to have
> been made with Ride boards in mind by +Dmitry
> 

Yes, these are compatible.

-- 
Regards,
Wasim

