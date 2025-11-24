Return-Path: <devicetree+bounces-241573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2BC7FEEF
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:36:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51A7B3A8F4A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883392F4A00;
	Mon, 24 Nov 2025 10:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kwo72kz9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eIYuQF5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356EB2F7AAE
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980517; cv=none; b=Hy+ADsKHlRa+6nT2onAcjYDqbOusO6a/pyZ1ZD2mYk5DtTwpVjzMZCXciKY/bke2vasZffDGrZabt2ttdETsZ/w5D6fXluXjTMIZfeMWDJeJCKS+pQpR87NNeDwaCB7EPwasmi8UDsOtMozHWD3JVOI9E8oiafmjMhVPkZCobKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980517; c=relaxed/simple;
	bh=at92ZbCGmI3vEj27GSTaPHM5IlHoNF9eXny3vduPEx8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RnxWjtKX10+48CnSvzWW0tIZ04+jHNPwRZ07OzKeWftpDwakkPXGOd64BifMO+11x4BwGIQq+PZdkpfYHT4pHYPoxCM7xmoIuxlD0tqEvrD9nn0gNUYGLUlAVK90v/Hft4iwgCay8CAwTODVxOtFnFdXbMkdunK/G4oBnl1Whwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kwo72kz9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eIYuQF5B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8BsUW2760131
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NRFeD8t+m+x2iC15q1pzZmoSqtUFKv7ocqYR/UNGr7w=; b=Kwo72kz9q/Rq9/Ql
	i7Ri+eHlmO+d29WoORWWqFdNcyrfq/CMxV6f1rsU0k4uVCOrgLe6LuAyQwo5b8lb
	4EZZGQD5HhVz1bQnXacZf9OdB+z1YzRzOxY+tMwZQ0h1tY+Fa+v/HuzQ9gP3+c65
	WAFYp95yJ+gCMRNsbwXkj4aPNmTasgiQ61T8Y0jTZMns9AQmoNBG5nTxRCwNyeUZ
	ytfd07uOnfBS7iz9SCeI8lqetcr++PrCtpx4fDlUAmS9/8sud9OLIo1oyi0Q2pTp
	0lHBP2vTfYSsFze9LY0USxC6hCaI9mgYRsSzyWRHJb8p545g+rxiADqnWnyvDbPU
	jFs12A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6ffcnes-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:35:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so15239301cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980513; x=1764585313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NRFeD8t+m+x2iC15q1pzZmoSqtUFKv7ocqYR/UNGr7w=;
        b=eIYuQF5BvVsYJANsSpavIql6wXOLiL1HkBY5pNOsw86EVQi2TCmJAi7p0E1fo5thhu
         3u8QFGA7cs1Tqt3nwXPwKsX8P3H2PFIN2+o/6ge6QMFvM+aFeEzLu71l4d1gaTytUWuZ
         Pcjy79KhChvX7dEbTEqol7NaAm5fPuAtfO/G5P7kv+wOdaV1hJ3c5uZgxAqkO8sznIo0
         gocqtuVYsl1XhMV+Oaq+P3ghWdM1O3qust6M6RfE/mPilnjIjgNRV9+ZhVfW9e2HyNUX
         cfIpS46GBwRcco5YJPvl8ZbG+p/wSfWuRliizpGfRrdK1ZKnXbniQHqGaCu2a5izmcgd
         RK5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980513; x=1764585313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NRFeD8t+m+x2iC15q1pzZmoSqtUFKv7ocqYR/UNGr7w=;
        b=ip3hzBmeFDWSyfA6MYhVvTnnO+tdSKRhgaIIPFTzD3tjPjrY5yEBc6Qn1FiBLUyR7R
         C2tq0/64x6WjRdCiKf/Th8g9gf1jlYdnv4kdaG/jbhucZUwU1ZdPdrJ9S9nzmRPBeC7j
         dMY1ut9BXBPnCrh365WUVFaJ90JnBvwCBo4RYoy0IQe7rFvAOSafKoCkCeT9vQz3lyck
         cJ9uraE2Vaf8hdRPWvXky2PeO8uq/ZIrFuKAvNnPqi+zsNMn9SFlX95CGxbjXO0PJOaH
         L1WAMVrXWCKzilL07QBOAGhEAXFwmFoIpGyks0Lg78vWKjCVgVCH/fEHjuOw/bkH6Xrm
         ZJpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMwWJQFeRR+1XULb+S8F/mIW6xEM4nNz9l8r6EUD+RWV/7gj1kt+OjK1O1+3CIG0kpHYYYq7EPBPX9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu2iK1+CuxP+B4eSfcT3cFK8eK50be+21H0we2yWXzgEnQjpKF
	i7wxC+C4mon7RR3Yq5ctUbXdDpVN/97X3opwgowwKMwVvwDrP/GRlh9zaolIXNdqsDYRSPhP4gj
	xESC19pRYKoafgykEik56UlwlB/BdNUoAnUq1//V7oCQNl70KwXINidG+VW3+h/Kv
X-Gm-Gg: ASbGnct92wIaX/P5UNVVz/2c4CH2B7JObs7Pv/gofb3qPN60O+HcDgo+Wd5/SpLmFJB
	0SYw8wJK8KLYp4kJEShBW3GEU2ZP3L014tYPvj0CU9i1IyFdsUZo+jY6Oc9R8HBSAh6aciC9sM5
	sxUsRc/8jsvy/hpO+jt29Gvl6gwSkLHjhh37lu8guigCnWLKUH2uDTqJsWo0b/a1d9X723jXkOg
	tSEUseIiK9LCLlYpaYtjFY2OW44Zc3pWmYQRqwN4/Fmbt7FuMiqXiL/Vn/VL4tFk0BbjcWmYvf1
	HBV/cLlDbPh+h2lPTA8/MM0Sa+P2KdiClUOejHJzJkN3J/uhkVY1jHLiby5hiHxb9hoYWd8SzVy
	FB75Q/ysSVCzlLXXO7iYuEQUJH/yMxJ+61PfpvoOLpyYQ7pF83DYfRo8MfVTbbTA8AAY=
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr115453301cf.2.1763980513621;
        Mon, 24 Nov 2025 02:35:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGuDK7vWd39/xHwYTW86tNKmCUXJcUWqvNNTswV3jiprJ6NlaIWNWvKECsDQvJD5yVjRIVuQ==
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr115453091cf.2.1763980513270;
        Mon, 24 Nov 2025 02:35:13 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645977dsm11813254a12.30.2025.11.24.02.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:35:12 -0800 (PST)
Message-ID: <2ebc0c92-a0cc-4b10-8d8b-cb019ec0b292@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:35:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcs8300-ride: add additional SerDes
 PHY regulator
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-5-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-5-73ae8f9cbe2a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Wsy_j26MC5Bw-UWHa-qGc7dg4RDrImxA
X-Proofpoint-ORIG-GUID: Wsy_j26MC5Bw-UWHa-qGc7dg4RDrImxA
X-Authority-Analysis: v=2.4 cv=OsxCCi/t c=1 sm=1 tr=0 ts=692434e2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mAYSrJZFqx11qOWNMfMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX9cQYyUAhGKPM
 +BWHRDdcTZtABHpHeJODXcnf+P0wATuTnXwcv9zeiJHibHD92kdpqk87vMP77rwyqEnC5j8GcnL
 JHU+Edw2/p2ujbZgYXBo7RfxxrWtL6oSX3oJE2pW2K40pneeDVD6wJL/I6EIrDEodU9JYghAWaz
 6z9v6eiGLo/N9L7u6tfZP1/JeHHfUSSeTnpxrZXWbkXG3y3o5kYgb88os3XlsKxYB7cljZTcD13
 MWP4nfXxpwqNA2B70w+vfZDPQGaXM9+c2EW6469JOcjQN1VSFfT2Swn0OHCFllGs+hdoGiSuYQh
 3TLcnfzRSf+NxIbol8thkmwV6qqWmI5BTN7f51rZ+0ELgd8LTmeA1uDbGLIZXcuLgdx+i9yLysP
 XAix83+7PqKla/NUgpk0Lkz4EvMPLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> Add the additional 0.9V regulator for the Qualcomm SerDes PHY.
> 
> Fixes: 787cb3b4c434 ("arm64: dts: qcom: qcs8300-ride: enable ethernet0")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

