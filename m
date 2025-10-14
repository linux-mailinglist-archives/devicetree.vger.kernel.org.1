Return-Path: <devicetree+bounces-226745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFDDBDAF4B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 20:36:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E414B4E1E2C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 18:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F76D2BE650;
	Tue, 14 Oct 2025 18:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n0mpjO1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052722BDC09
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 18:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760466945; cv=none; b=i9+i7N7zlkhREQR/UMBxiVYSwPDmOJSfYMjQoZR57uDvI7D9f4+MGwNG9I8x0pPvDv0tM1bjVq4QzBJL6qhwHRtulbHpY1jFRaRYwSfFtwwmbuxhnQIL1ph8Tyz/04v+fNDRAKhTdQxgSwbIDtvaoxX02L4JAGX28/N1zu/AWPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760466945; c=relaxed/simple;
	bh=88MwhoLBLl0h6gGQJ/l9piaAckp8mCR95svQBZRY0AU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z0MLesxXj20ws5KIMIJEvcdiEmSnvo9psa3wbt/FZwUG5mQaqxKGnocOfIGxecMIrGxJYL7dlFhC6T3ecT7TypHP7tCtRa5Bz4KyUWGPNwrPESQ/oBQvTfg9bqKtX9lOBELVkLJbnOtcqtkYnE/Q0KSNgbz2gJO3shw9qtqIcOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n0mpjO1K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EFDMFA005372
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 18:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JgyeBCAKXfxEVl9M5RNSJ9fG
	fb4hvj/8SPvA2yhEbrU=; b=n0mpjO1KKHOTDOS4Yf8/cnKMs4fBvLpkCuZ56ZrV
	pnrP8HuX3pN0YpoyWTbK4EdcU3IVziN5RT41XeBY9FlEtA5Hdk+RnnnRJJOacPr8
	eUY9aZupFsvNphTb6P9PpLkysRcRj4oFI10/+EE/0zQ5eMhqH356NqeoRNr5ZA3S
	1gdoDKjNSQeMGfM0YsE/1bKAljIECX32IvWbjMl1W+3ecgCYsaIEXEjJ2GLnl3Y5
	cgynbeiiNYeKw7KqyQgAux79yzbD0zgfc4vHY+jx8elR3/s9WbdELeIUnVsNINka
	VjsQNDV+6IAAuVD3TjesPQnomw41/IeJ9auKisQl+zw9Dg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbj1mq0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 18:35:42 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78e30eaca8eso417477956d6.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 11:35:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760466942; x=1761071742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JgyeBCAKXfxEVl9M5RNSJ9fGfb4hvj/8SPvA2yhEbrU=;
        b=I/ZrcFeSHuyjCrNNzFQx8M0I5IJuJ3vJOZ4ubhlcxi7QdVQ/RaZnWWlPGM9nR1ZIMi
         el0GXjzDpQ6TXzdGDmVU4B47nSaGLg19GibX4bUjN3KXWzzcL7+Iex4qk8RiF/OwXR8Z
         RQ1E/dM0oBXjBUmhcczvbQo6W1qrnHK9eYIaOCg2letT36u5c+yIOzQ6u844/6fbCAbY
         KXsSLmF0eMSEgyNMQhAq10Gc9qYjWk5zYxpqidghJAyeZdN+Nd6aAf+RbqSvWH6S3jLv
         ibqs3A89fmCaL9k0FGELqMMlo3RkdaFAI+zNfS/UcKwFI23SdtjtRnd8c2TY7+bu+KEs
         HWZg==
X-Forwarded-Encrypted: i=1; AJvYcCVJxAiAFCT5TQYcqpNLdmfWZHE8wQPCLBqUVBErT5+dmnVhARrOTHIPPGJ1LM3iuaQJB7Kr1R51+Ei8@vger.kernel.org
X-Gm-Message-State: AOJu0YzlDX1cC76763hdvlFD63uXJNaOopZhrUpI4KJ/+CdCDshDvs46
	gLzYLo1sOv/SQUdaDpFr4QxiQtyjoGeQx3J7Fd27tPEVHP8coPgv42VCv8oqnykXcsy9paBvpTL
	6f+Lo9nUzf7sEeYwnyAYyt3mIy47K7s6KeliiFGKniIZ81A5m5l9SDbJ6aTaQDyC5
X-Gm-Gg: ASbGncvp/IOd9/t8UCqWyhXsW9HqG4xrLPmVM0JBx0CBR443/tDBtSjm6Kmlub9W0zn
	6XYOzXGiv44FtBI/Jw4BxvyMAP8m2iYjSBA5aGuG1mD8f0YGvDjIJncuXY+ImOtw59cc5GZQlzo
	WwEXd/es0Sdz1z0rH0hhC+YfbhiCbsx28Q75dJI4ADlb5EQz+HmCiQLwduz4JKMkhbqz/ORtBl7
	1AK5lpijIMzCahVmdu3It6rtNNgcLas1qoGCjxkXM2cNrIsfxpJpWJ05Tt8zDocA8gN5CXtptz2
	69KXXebsFVoKxOEwa6d9dNkGSyk1wEcnc18rbiER+ndvPjqj4abdvHukfjh7TREaJPEmr3z9D/2
	93FsZvmpooE5chsmu4fNg2eHPSvfsbd15ioMwxPEJ+Y2kailMnvNB
X-Received: by 2002:ac8:5754:0:b0:4b5:f369:8e30 with SMTP id d75a77b69052e-4e71bd45691mr167116431cf.71.1760466941752;
        Tue, 14 Oct 2025 11:35:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHofj8LwYDeK6yXRXtAUxitNSZSVVk6QKkZX8yZloH/rMjOd5sZzIPxOGDAxCmCCVgx9cAzbw==
X-Received: by 2002:ac8:5754:0:b0:4b5:f369:8e30 with SMTP id d75a77b69052e-4e71bd45691mr167116061cf.71.1760466941284;
        Tue, 14 Oct 2025 11:35:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e2csm5477278e87.14.2025.10.14.11.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 11:35:40 -0700 (PDT)
Date: Tue, 14 Oct 2025 21:35:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>, joro@8bytes.org,
        will@kernel.org, saravanak@google.com, conor+dt@kernel.org,
        robh@kernel.org, mchehab@kernel.org, krzk+dt@kernel.org,
        abhinav.kumar@linux.dev, vikash.garodia@oss.qualcomm.com,
        dikshita.agarwal@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bjorn.andersson@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [RFC PATCH 0/3] Introduce iommu-map-masked for platform devices
Message-ID: <6gx74wxie4wcabq27wo5y7v36uuurez4jxlzanroepqazdlgtw@sdtv2ld47d3q>
References: <aec0f40a-8346-4194-8b18-1022fe3366bb@arm.com>
 <0d0560cc-9757-4c7b-8de4-170148d99481@oss.qualcomm.com>
 <ead7cf8b-fbc4-4242-a9da-b313dded1abc@arm.com>
 <nzqte4glwtpjs5bhkxz43yhdufelxvqvzmg5tepudxwetimir3@bvlw5csjizsh>
 <9d3eeb9f-b8ea-48e5-a1d9-0865f63ef991@arm.com>
 <fhb4woejzh3r6v5dxvdiopnsbuwstucfuuzbiymxg4wrxrjc7t@dt3z3utq6lwd>
 <8d88cd9d-16e8-43f9-8eb3-89862da1d0c1@arm.com>
 <hOs24ZavnUyKYyNwBWwRpYnrsefzBfp95yuy9zyp1ByxR9_3VacGX1Yntt8pCE4w3gllPwvevs1AZqghmwKoFg==@protonmail.internalid>
 <zcgn4xw2xghyna2eysavujbzbiydyki7p7upzzv7one5mdyjy6@sj7f75kc4vwu>
 <fb767586-a376-48eb-97b4-bf33061642b9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fb767586-a376-48eb-97b4-bf33061642b9@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX6I1GQzTw78Xr
 Xmf0Ms2QpMZc1pBMfm18wsYskgnz+stk6Cs3W3kkuCSkt1nysnUY75vHsykxPHsFg++NypVsJGn
 13ZGuMpOM1cigxs0lGXbSU93qBSWFe/2gziu3BT+nnflB2vASyQokqehF5IoDRgaGlKlYSCxw+1
 nYk6uLjGY8i9k40xon1WsZ+cajQWHoXjWHeYL7HrREXSvA5roIL2+FSgIBTX+WeToqtRw9KcvYj
 MYkwADa9f3ui8ujQN4rxUBXOWJijzGY+OliCXLxdgOpT+rXLV4LSVMVnstMuNxq5tHurpL8tUiT
 5ttRVAyvaoywsf1uWVoUWJ3TYLazQLVKGdna94dKFt+8L/hKVQEbYAOwvqZnE7qs7EleQXfrl0G
 jZmsYuMsR+Hxbqved09F/0FpC0ecsw==
X-Proofpoint-ORIG-GUID: lNVov0FTaU5JZpEba_YRdRvrn-fbEDo5
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ee97fe cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=hQP1gfvqEBNhzPyMEHAA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: lNVov0FTaU5JZpEba_YRdRvrn-fbEDo5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On Tue, Oct 14, 2025 at 04:07:37PM +0100, Bryan O'Donoghue wrote:
> On 13/10/2025 13:31, Dmitry Baryshkov wrote:
> > 
> > And from DT perspective compare:
> > 
> > 		fastrpc {
> > 			compatible = "qcom,fastrpc";
> > 			#address-cells = <1>;
> > 			#size-cells = <0>;
> > 
> > 			compute-cb@3 {
> > 				compatible = "qcom,fastrpc-compute-cb";
> > 				reg = <3>;
> > 				iommus = <&apps_smmu 0x1803 0x0>;
> > 			};
> > 
> > 			compute-cb@4 {
> > 				compatible = "qcom,fastrpc-compute-cb";
> > 				reg = <4>;
> > 				iommus = <&apps_smmu 0x1804 0x0>;
> > 			};
> > 
> > 			compute-cb@5 {
> > 				compatible = "qcom,fastrpc-compute-cb";
> > 				reg = <5>;
> > 				iommus = <&apps_smmu 0x1805 0x0>;
> > 			};
> > 		};
> 
> Sorry this is perfect.
> 
> Each function id can be associated with a device and a compat string
> associated with it.

So, which part of the hardware is described by the -cb device? What does
it mean _here_?

> There's no weirdness with iommu-map, you get a struct device for your SID
> and you associate the SID with the FUNCTION_ID you want.
> 
> In fact the FUNCTION_ID could conceivably be the reg. It could be stored in
> platform code.

-- 
With best wishes
Dmitry

