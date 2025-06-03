Return-Path: <devicetree+bounces-182483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7621EACC79E
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C597A1894F58
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 13:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FEC230BD4;
	Tue,  3 Jun 2025 13:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o152PGGX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8A15CDF1
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 13:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956920; cv=none; b=s28QRTzkjdV52Uu6yM7IbtBLTYpKxWpDBMfIIXBYmeJfLPrU3uK2F6LA17IDZzN0W3EPeAmCZejSUWiKdbpA1xZEmRLMEmC/bz87Uw159lVZqeXurSvU/hCffEJEE5c3gkWL7wPl/Ta80kJyVLuep5N46K1gRE36/5khebsdXyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956920; c=relaxed/simple;
	bh=JYe6k00hY3KhqKNWZZYfrcga6wMeu5mCl8qy/F3JZ/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IOu1xIEbYxRfLRlKc5zua8q/cM5w3ViNb+WMZw9sEOs1y4Tuv82GgKMUapYQwaD8RrPsB8u4EUrf85naYb11okdy4qEu7ap+rchxxHIUX1whSjjUhmSUQO8Ap7ei5YEWpdtN6Nzv3rIdbHlTT69Jn/0/bTxGjh4aQzEWVPw/X9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o152PGGX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JM8J013606
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 13:21:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1/QCS45DMhIwg/CzFK0EOT/Et0qY2IoNb/r6dL3eUVU=; b=o152PGGXC3Ybpcrb
	qPGaW/9vi7py8OlNRmkJrupgdfDC8HBpMkzVCOR+XS6/rPU1jfXeRkpu5QjR5lmd
	oofVEmjIKEIM1bmOdq17Uc6iF/JdoM2F5QeVrl5fvOJd2mv/yXnqx9YDJSYTtK55
	oBPGBPqWW3Hy39U7rqWYdSDm8xTtwQ9EqSgyAPT1TQoZcrF3IwbsZHM3ldj32V6n
	RcCFc6++9VvEQ1f6BhUtb8fBlnqAYWgwDE3KafGYzPprftuiJlxmD9n8fs1UdPAE
	ixjRcNCmlryZaRGLnsIhGA0hFeLpAeYV/r9al6EYOkqJ0X4/H6IrNjomgc5wVKxk
	9WUNSw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8njnmv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 13:21:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5750ca8b2so724536685a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:21:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956917; x=1749561717;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1/QCS45DMhIwg/CzFK0EOT/Et0qY2IoNb/r6dL3eUVU=;
        b=qOqU5VQYGG1iMaT/7v5evQUguQuyUeQ2Xhl4ikepZzq7YHAdapRW1FrEFatKCVcYu7
         n2jimVH2CF++BNl7dALerrhXsDukONeIAWQ2aGGMBjGfPs6J93/DdmCECljrSC2uyhr6
         cwwwbtAFiDiHNscBJKqE2bDY3DOpV4yPuda1he0BQ7Cl6u6yE9k6W5Vh/tamgE8+PxMR
         qLdkhJz6iizLnvJrgQ6OOdz6wa9OK8gzlSuaeW7oqnLpeMlqwteEeYxr4bdT1nJK1auL
         8wKEqCPTNeLscc64EZq6oAdok+GMQ12NfYcc4tCARrTDazf6QBB36/RFRVN+xvNHmS0P
         WEkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWC9XwQN9hJ/Ma2kQWVyoKP9B8XAQwh1H1rJWfgSxQGjiAVYF9t9H3IFP4nCHhO05Ak8fhUo/I7dGPB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5LjFSbjJBKk+h12VGgafO9F+1/Qsk/nbooAYeDRofdUFjaLle
	pHfbN/xxt9uvFxw8FTwoqhay/GzTnJuoAtCDgrMPbeUgNPE2HYHw0GyvvtLswaxpHK7NcX2m58b
	pq5Q1XH8WFOUSLmpH4AkJVZI8NIVcvhJDw7NWFaULdj9VGf0VjHEPsa+gvMBwzPGb
X-Gm-Gg: ASbGncvSFG3BGL/X695KLWkw42OYMCkXufCD2tkJuu0V8kFEjsdBhjWgo6xpuBJ4K6n
	IVWq78Q1EQFVJtGnmoFsyVZtdeBudaskU1i3xrKD5/ra75QqVmcsT6aXx9AqyGYQy2kE2gTby9L
	V5Ci+g4LKLKxoj0z/ujfEwUH7cetFWRZML0r3R0S7vPdv+yU9LNVGQiKB5Ru7ZWIcyrGkzwAJKi
	MlPL66mEgBrXrsueBx+DlRxA4cphmGMDDyZBCn1OcoCw+z7GVPJKcu+YO96ey/BS9TBDskdruyz
	REVBNexvTZrjUXrkqxWs9Ks7qe92gFE58lyNvoRmE/pQFxE7ZtArzTeZhn+0J4kZwdNVtYzRXTh
	2aR24Vxg1jQ==
X-Received: by 2002:a05:620a:600d:b0:7cf:4d0:32ca with SMTP id af79cd13be357-7d0a1f9817cmr2666075085a.7.1748956916998;
        Tue, 03 Jun 2025 06:21:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG61Q5Fuf4lCs/bjxvDWw40qTbdRGjOr1Yrj23L146uOkG+6rBGInFbVy3+zf7+2f5RoMF6Mg==
X-Received: by 2002:a05:620a:600d:b0:7cf:4d0:32ca with SMTP id af79cd13be357-7d0a1f9817cmr2666069885a.7.1748956916431;
        Tue, 03 Jun 2025 06:21:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553510a7905sm409284e87.134.2025.06.03.06.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:21:55 -0700 (PDT)
Date: Tue, 3 Jun 2025 16:21:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: qcs615: add venus node to
 devicetree
Message-ID: <d6udpwmocodvlsm5ljqz7zbyonj2yahtlzmm2jjjveqrm2hmkz@andh5j4jgixr>
References: <20250527-add-venus-for-qcs615-v7-0-cca26e2768e3@quicinc.com>
 <20250527-add-venus-for-qcs615-v7-2-cca26e2768e3@quicinc.com>
 <429b4c99-b312-4015-8678-0371eac86de4@oss.qualcomm.com>
 <6a9e7daf-c0df-42db-b02d-96d9893afcde@quicinc.com>
 <idc4476ibh4geraklzpas5536jnwvbp6xhjjaajcdcwxicorrf@myh7kyz77rxy>
 <43e1f8db-5ab1-44ce-97c8-50910704788f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <43e1f8db-5ab1-44ce-97c8-50910704788f@quicinc.com>
X-Proofpoint-GUID: UG2T49IsYNl3bwee6Nfe5CMCy7koCtQi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDExNSBTYWx0ZWRfXwEvPj2DNwrWU
 MUjZXkKRWp3L+iCSz5dXVVSmjOITFAsUiuaq1B7L0nfTOP0PYxUtnrtDN3l2NpGPJfPRCipHkKP
 DQ8t9e/4iW64cd+sN0uL5XK1hkjD1DuAv7ObiNSuVDOnA4qFVz/Q5vSg4ltd3IUw8X1kzs2KwXz
 EPZ+QPqCBSOSZ+gznIyS8Rmzqwh18ZAhSPE33djBmfWcGahoC1r+pxxmvRGrVRwZn50tqR5icU6
 l7pAuta4YJgC2kmqu49FxESrjL+xfZeukritmf0pInLFz9UttgmaevB8eprizp70Aycnm6PFCzq
 Y9dCQtM7co95bsvkPdCAUh6v2APAoc+ahujqYyEzzUFXKOjzGDlPqZgf3P1GKaOab96s/+hwgU7
 tz7J7W+3jjaDT//lSAnoEYNw+lZEJYiyBXvsRqpFREz7tL5s55c2+EDSZp77bepe7uGCJJsu
X-Proofpoint-ORIG-GUID: UG2T49IsYNl3bwee6Nfe5CMCy7koCtQi
X-Authority-Analysis: v=2.4 cv=UphjN/wB c=1 sm=1 tr=0 ts=683ef6f6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=amOMt7fZymVLnIenHDcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=824 clxscore=1015 malwarescore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030115

On Thu, May 29, 2025 at 10:29:46AM +0800, Renjiang Han wrote:
> 
> On 5/28/2025 7:04 PM, Dmitry Baryshkov wrote:
> > On Wed, May 28, 2025 at 05:13:06PM +0800, Renjiang Han wrote:
> > > On 5/27/2025 9:57 PM, Konrad Dybcio wrote:
> > > > On 5/27/25 5:32 AM, Renjiang Han wrote:
> > > > > Add the venus node to the devicetree for the qcs615 platform to enable
> > > > > video functionality. The qcs615 platform currently lacks video
> > > > > functionality due to the absence of the venus node. Fallback to sc7180 due
> > > > > to the same video core.
> > > > > 
> > > > > Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> > > > > ---
> > > > [...]
> > > > 
> > > > > +			interconnect-names = "video-mem",
> > > > > +					     "cpu-cfg";
> > > > > +
> > > > > +			iommus = <&apps_smmu 0xe40 0x20>;
> > > > fwiw docs mention 0xe60 0x20 (which result in the exact same resulting sid)
> > > OK. Will update it with next version.
> > How would you update this?
> Thanks for your comments. I'll update it like this.
> iommus = <&apps_smmu 0xe60 0x20>;
> 
> This 0xe40 SID was based on a previous project. However, after rechecking
> the documentation yesterday and confirming with colleagues, the correct
> SID value should be 0xe60. I’ve also validated it on local device, it
> works as expected. The reason 0xe40 seemed to work earlier is due to the
> mask value being 0x20, which causes the effective SID derived from 0xe40
> to be the same as 0xe60.

Using 0xe60 would be counterintuitive, as we have a non-zero masked bits
in the base value. It should be either <0xe60 0x0> or <0xe40 0x20>.

-- 
With best wishes
Dmitry

