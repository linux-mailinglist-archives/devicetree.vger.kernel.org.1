Return-Path: <devicetree+bounces-189000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3763AE6507
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:32:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68FFB4026B4
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 12:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B0E290D85;
	Tue, 24 Jun 2025 12:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QzPbs2eQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22FE27D77B
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750768197; cv=none; b=bXxhVGkxzvkmxkbHU80ULWDOv7sSGWcNNXx3yLenp3hF9Y2paZyNcQPFnWyg01TYIfjnnRYFzHYPgGUngbYk+p5LgaerUeK5lHCzOl2HVPZ1jt14y5Ai0pNzdnnKo2JHdeWjBpoI8UyW0ZaoueeMY4/R1UjdBn+n9NSTB2Nt4Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750768197; c=relaxed/simple;
	bh=0hX16wRB6R/CkbiIPff+ySvhOhI7/tVpEaAh2GEXg2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QPqjqAQUHaTDhVqzHMSEkEwq/PyAniR3eDcKdPdJimXbJoCtEKPtYUmLt44ALj2ubKhGLvrvI036OXFVepOdA2Xnx2En0GCOyZLASLf5K3+nQin07FuVypGreCiSAhlw498wwWb+43OISfq1TGfEFdYSiKaLVGMHBwXo7eCgXKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QzPbs2eQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8mkU8013999
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:29:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EczobUY8gqhl205jiI0S5ucvxF158i19VACTDqYqsuY=; b=QzPbs2eQNcJKWikT
	niyYMkLdgelq91vI/gR+9cCGKktMsIbg9Z5a/OV5EMqpkUS1IRD6cZ1l87IIdHXO
	j07BucpbXdCo8fPQFmxC/UuGEhVhp70TyhTD1loAw8JsrDnFjXwhsElP7AuS+ZWp
	xhjk4cuJd6bXeX4X6GwthmSN1WAKq/HR4ip/yIUAS2SEcNe7CCnERWnwUe4tTFB1
	15A0hVY9L9kSPv9DmVjzf1enqPLeZphmdzhlKEkKpFEpySGLWW+EmbSmuxMGQ19b
	kM2QvK9TxjtV529THr0socdu0+nBPqfNXCFyC9jy0eKgrZa49NEC/GS+tZaGxrxk
	Yn0m2A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5n6gu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:29:54 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabbaa1937so10278166d6.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 05:29:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750768193; x=1751372993;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EczobUY8gqhl205jiI0S5ucvxF158i19VACTDqYqsuY=;
        b=SvlSeuZ3Jxfe3EYuUkUgYGy4kW9Jzh3Rc5e/y5YxrhttfkCI8YRrFnTxfy8O5WsvnB
         VIjZ8wYRckZ1ULinooieNQ9bihXETdbfYvwnubELRo7Dueyg+h1GOfQFdtb1sbaUJgDz
         2Qj3aDK4YBngQt5oL8ZGC93Irul6URoL051T4AkBgH/wGh2fdrbX9auRSY1cvEkt+n/h
         7fKE1NaLSYFlTvIwLPcWL8Frcdbs41kvnl7phCfkzQ13Ie2OmMoBpaPw6cWK+3hzfoGB
         eQaNQOb0AMMk5Rsif5dK5wswoiFRmhZEA84u1WhjoK1iNsAu+JuwzT/5MJBse2haROZf
         t0JQ==
X-Gm-Message-State: AOJu0Yz90yXW4GwHb5oD43BDLyNY+iDpLtLSWo30ex5A3UAe9LIoKCEj
	OI4MucKLIUXzkMK3d/lDfy8ZyOYOv4ugZ75ZNdONVpdoFmHSBEANOo4sg0qO+mgxGBpnYPUbyKa
	nx563wy0DPSEJxsEACdmNpYxgXm4ChPS6Z4gaZ5m8FYglIlwpY/NzgzV306RsXXba
X-Gm-Gg: ASbGncub9U3eE//GS9h+wJQI1SABCM0cJabGzlCIRm+aKqSDYx2knPUNITJodjXSZt0
	XI6J4x4mOVHCD+ksE4pEibwFd1mF4hzOa3xddEzYzShqo9aaI+5AWwLQ9/g/ihP1kgBwBhhSnLP
	nX/W4oxQpoxLkCrHUeRgLP0JlDEz9gK/8km1rhW8qbPwv89mZe5hBJUNUILf0lrR70SgwJ+ER2n
	i5heCJ3YJaOO3Lvh+H1u8xAlvznPYdL5/FSJ29zJ+Ms8hFe2KInJq26Z/NiaBmTU1HJs6dEpyx9
	1/k7kaYZ5mUh/HQQ9yhbX82fjcHXds3oYPoRYuhID+htz3vLbuA8yDf2MBuguaVLmmUl7QOWYXa
	o6OA=
X-Received: by 2002:a05:620a:1a84:b0:7c0:c42a:707d with SMTP id af79cd13be357-7d3f993a910mr848031885a.15.1750768193468;
        Tue, 24 Jun 2025 05:29:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAsRWb4D/ij0+5bsZKJQi19Idj7A4icHhoOH2B8P1pQy97MMUcTrNQnVuF5a6HlIArz9h5ug==
X-Received: by 2002:a05:620a:1a84:b0:7c0:c42a:707d with SMTP id af79cd13be357-7d3f993a910mr848030285a.15.1750768192993;
        Tue, 24 Jun 2025 05:29:52 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae08598b7a8sm439944466b.184.2025.06.24.05.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 05:29:52 -0700 (PDT)
Message-ID: <02c7f90d-73af-4a34-bfb5-476aa87a9431@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:29:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615: Enable TSENS support for
 QCS615 SoC
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250624064945.764245-1-quic_gkohli@quicinc.com>
 <20250624064945.764245-3-quic_gkohli@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624064945.764245-3-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8kdNMVUZZLdiZKAAPnfb7OdiemkbVchz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEwNSBTYWx0ZWRfX0ixEIGcOoSKe
 Pbj4VXNd999szBtOEuDq47Tkb+omeDeZTf5CF22I5tTEzBCVZDW0v+GN/Ag2KpH8TIVB0XJDP07
 Du34HfPrHq10D+fnVNcmEbssv7V2+snFoxljaF2l2dPsI3yMXa3NI9Bodzm/AfJEK8+rRKvK1wJ
 UjJaoYmt67laOKJNKxuKGs1Ncn4VF1/lM5L24Pg3G3GXzL47AIxIIX1zHrydf3QnfU1zc2Yxt2R
 dOiFVb0l7T1WRirgtTUyxw4ByKtW+Q4lHM5ehhuckWLttBTY0F27te2w0M/bEGHDmo/KFTUp6it
 MZMX9puTFg7LFfbaJefbJuWKBoOfGwq1zjsaZsh8ZcuNWA/2u4tOQg4TmUsPdHtQ82rA62KrLGx
 Xuc6NwKMBgdCgrD2JGDhWnQ+DIqh6nhc444zOvVVJr0c+JLzN/XN2lowuK5YyEq7mIjC8ak8
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685a9a42 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=yCzbmmpcYXQpYh9mHnQA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 8kdNMVUZZLdiZKAAPnfb7OdiemkbVchz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_04,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=675 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240105

On 6/24/25 8:49 AM, Gaurav Kohli wrote:
> Add TSENS and thermal devicetree node for QCS615 SoC.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi

It seems you've made hand-edits to the patch, which make it impossible
to apply..

Konrad

