Return-Path: <devicetree+bounces-178089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC048ABA5C7
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 00:11:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93A693B236D
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 22:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1424A2309BE;
	Fri, 16 May 2025 22:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jnJN7jpz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D1322E3FF
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 22:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747433489; cv=none; b=mrLPtBeGp9kyykxChCFDXDHQIJXwpWhdPE51haTf4dRdtyzQTHRS4sneTCEwCGzx1pB0WgRP91LsUrwJXwsLi7xV3L3vglbFMceA/uV4hd+McTaUIjnUAicp/VNO00XRqAY4ZJqvNIvBa3iYnzdBMMOlB3twtD1NHqDuZ2k5Rfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747433489; c=relaxed/simple;
	bh=sx/nZ8ANqCHg1XZRS+aNuOi9Z1CoaOzMIuQZpulm7w8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cTblKu6uzblxKd+B7Jw82LkfjuWe1QcWyrm4FdJLegXe7vBn/wyoiSOmq235FCFmVLgXGKn/hhv25DquVHeWCqnTzRey9HsPiRIv5dZjKZoaHRxcXAw9jJq64m+91mg/O7b9noMgfdpU4UplUe/CGVLuOe4zidEmXGbK+2ufVBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jnJN7jpz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54GCTOTK021044
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 22:11:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nm/4NfT8gFS0Xa8OiBIX3tBr
	yuDvlEcD31Ih0TOw8JA=; b=jnJN7jpzu2HKvMfZ2SyV7OSu0TK5p9GKW7wh3xYm
	y0jH4ZNjc19cSoKZCXiogTyJ/IckYnbGwAhZumYnGNcfAkF6xaPI8XKUce3Mfp1C
	PUozfldrHfQVo72HZemGPjssD3owpczCUjy6jJooY0u4mm1stjDvYzZSEAFzfuHq
	AyHQl8uROQ77/t3aYEorFnGMOZddldV6ioeQUTOQizqI6GiOfJ1uCib4paxYGNrV
	K1qSzvr0gOVSaFAPrAaeOivbP690kPGUdk0JKol878+vXGRCOEf9gG7F5/egVOrV
	RklBJeYD5wvZ8tZZSzPYpwoMfoKNoSvhiYLkHwG+WaHQGA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbewb2rr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 22:11:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f6e57ffb40so59053916d6.1
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 15:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747433485; x=1748038285;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nm/4NfT8gFS0Xa8OiBIX3tBryuDvlEcD31Ih0TOw8JA=;
        b=ZdtacFyymR9iW7P+sbiMGSxBk4JJ0A0u8etVL3kBldHAnOyumdE5fj0KTt+ibRYpR2
         C9youmWc1Zk9XeCQ8RwKF7tuddvTAm1MD6IIUiPwmWRn90mph0KtJ1E8LvDA0AJIOjIH
         6ITk//mgcu1xjKXDm3hdaVRxjzXyYYi6PYEr3bqgKF8kYWoUSmrKTBAedynuQwcEkiUn
         mzsiL+PgJApMh8u00//STbgHY+ddbROruDvIHSdS5MErQAkqcYw1aLNA8jnI1FSVm5GW
         gKNqZmUOHQkUAB5EMwAdV5Oci1OJ1apmkaDyrLVNhhTdb2pT4t1Tf68OI8RfiYexpppc
         MAtA==
X-Forwarded-Encrypted: i=1; AJvYcCWeugJZmmfpcWQQnt3953uKOZCRH37cGcjY6h1hQk+dHfad7IqodlZWf0+5M19CP4vmjfj3ltojUT8f@vger.kernel.org
X-Gm-Message-State: AOJu0YwOc8DvqcRgwCN1CKpr4ARP8w1JYjZwm+br8Ux8yeKQ6y1g4ZY+
	MXEXelky26jZNIceXyCiFuQxWtqHRQ/iV09Gwsl4L4Zw+OsUSxH/DzTFHr/RsdTgXoIur7xQ05a
	G0znysRx0EH0IT+uHBJhVof4+Qpb1UG4gN0cTMHB1ZrECqi5lCG0YXb/cAQfrq+UQ
X-Gm-Gg: ASbGnctsgNp0J0u6Vu6WH8erCju0TvNNV0XOVj2BkRyi3/x6IlKvMh6MmVt6PPB8AQM
	mO/FXjTgpa1XQ3Dt9//kyWtAj0oW56nFJz1PAmu2N3SnWDGyD9JKjIBGC3/CdqzwQH95EIFO80w
	OU2Ct5HbFSAkYy5hh3KslIEeBau4znWQDXcu/RrvhgKeG6/ql1iDtxo8jIQC/EAumkfyG2z4MVN
	DToRgXw772QiCcuiN8OzEMwgsrAgSZswsBTlnQXQKhSfGTh4LUelrscWCUNPvPLVQUSvEVLen3R
	r+MzSj3Uf6z+Ib40aEM4CwZ9/RNBd6YdanDf6RCpsHWlnfJWbEYpB2zNgPxtKCV5IFybiUXDO78
	=
X-Received: by 2002:a05:6214:da5:b0:6f5:e0c:b203 with SMTP id 6a1803df08f44-6f8b2c59b60mr67813896d6.11.1747433485486;
        Fri, 16 May 2025 15:11:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEU6DgtmcjBL2iVwjhEQQMnBzBgU/+jxc+isjl2mVSHAPdsCVtuT0yhaLNg+VN9yVOb9Q7+Zg==
X-Received: by 2002:a05:6214:da5:b0:6f5:e0c:b203 with SMTP id 6a1803df08f44-6f8b2c59b60mr67813646d6.11.1747433485155;
        Fri, 16 May 2025 15:11:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e9cb4d69sm502623e87.21.2025.05.16.15.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 15:11:24 -0700 (PDT)
Date: Sat, 17 May 2025 01:11:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: qcs615: add ADSP and CDSP nodes
Message-ID: <thtk5vv2hpbnoapmt6j7nlgrcyedjzjbi3ntlyb3ll7atks46n@bp4isaoert67>
References: <20250516-add_qcs615_remoteproc_support-v3-0-ad12ceeafdd0@quicinc.com>
 <20250516-add_qcs615_remoteproc_support-v3-5-ad12ceeafdd0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250516-add_qcs615_remoteproc_support-v3-5-ad12ceeafdd0@quicinc.com>
X-Proofpoint-GUID: 9Ecdfuajc7CpdpKxTs5TTs8GB4JqYCRm
X-Proofpoint-ORIG-GUID: 9Ecdfuajc7CpdpKxTs5TTs8GB4JqYCRm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDIxNiBTYWx0ZWRfX8f699/sUOU8N
 kkwgcHSmIG1+Qhcj9G+Hr5aNyaYbERyGKCm0X8rq2hGyVRl8iC0g4eNw4EdYBfDl5nqNXQ0iINd
 rgBbLOD5JM4Us3ZsyoPxR7yUdw54/zDfXACXYmEWou4sJ2DyooHJPK7i1sUuA5hmdk9M88Kxx59
 A7O+DAM4eHpRO5sXfXZC1c3Uq6BXVwgHJm+jBrPz2K/zum4Qo2GV3IrC25ppkY+hkg8IshdNNhx
 hEKGnU3UjsQwxkdm1ltEWZt+mFg+b3WrP03Duk6v/3BCU1lmiqsVBo3PxGDmJDYpwYLGpP1kafs
 p15CzzJm92yiZvjnCh3pzIkAQsudNQ8Jqf3yNDiip7nBLspNUp/NyoVX0TzliiDB5pHrlGjCOLo
 qYlQoBc/E9P8ZfRum6AzWrbW5qNIi1v64SWnM5V0+Z1LUMLOqtPRRpRJsx9CdtBrAIX/Nm8b
X-Authority-Analysis: v=2.4 cv=LOFmQIW9 c=1 sm=1 tr=0 ts=6827b80e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=jONUQADHCp84k9KtN9AA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_07,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=560 impostorscore=0 bulkscore=0
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160216

On Fri, May 16, 2025 at 11:27:06AM +0800, Lijuan Gao wrote:
> Add nodes for remoteprocs: ADSP and CDSP for QCS615 SoC to enable proper
> remoteproc functionality.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 86 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)

Is the MPSS not present on the QCS615? It was a part of the SM6150
design.

-- 
With best wishes
Dmitry

