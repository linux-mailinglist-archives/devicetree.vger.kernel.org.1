Return-Path: <devicetree+bounces-184898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91181AD5938
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 16:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F8E13A25CB
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 14:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1819D2882DD;
	Wed, 11 Jun 2025 14:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kCdoJZ6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A322620E9
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749653282; cv=none; b=KIKvwAUTezXioCh714MMCSlhKRWOeM+YDWiUxOITzDtIF7NvgzYgXnS/bS3KzC53jSFMSehQwyHc/EdR6nesm6ppzhu2UPYLENPVG9tF33mZy5Ttp/4LyoZ3i3a8U8POFaLXe4r9j4gVz+UUibkv2Yd0Pzh5frxmPqONBKwW0DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749653282; c=relaxed/simple;
	bh=iz+OizN7XVthD9Q/2d9PTKzd9HNgXPy6LGiuaQnhNTU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PDncgrd5RG2o1iFlQUBNXAlYQyVpFXtqZC+At12rxpxMuGioQOg4q01plpDTOR6Y9khfMCvtPTEiJ5mwbYCmy1/eZsV+jKTMVaOs3C+blGynzfKT2uiZm+jXGjcP0QX3W2n0NAlMDH99g8NGFVsnn3Zjgd8dV67ACDxsxgWDBow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kCdoJZ6Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DDfX029232
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+MCsGgV4BA2JmOczR66eafPa7KFX2QbYF7q1cbtZlPw=; b=kCdoJZ6Qc9UbAJMs
	Gj8z79UTWrl3G05GkPEjVssNaashOFdweXr9KBdio7xSiOSdx5tJ+hBvNwwiMuO1
	GvP/XKMeKOMhUXP/2fMCRlY5+oECde+ijpInOyUkB93wGEKPMgOhFa3SJ8bQh++T
	swobWxtermoLQA7xmvUSJlhOp/988JZdYSVNw+VFRT76jRbsF3bxumrFBswwvMlg
	B/O9i/j7dd6XfsDsJ6zb9bqITVAP5yBHuu0/Jj4Edg79PsljOxn9hOmSdVLANx9S
	J38Yd5/YOWNraMj52pR9Kt6p7EW3WoTVejDuec6chHRcx3C+rvCCSDHwgh9TlZh9
	W1Psyw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn6d9yd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:47:59 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a517ff0ebdso1518971cf.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:47:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749653278; x=1750258078;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+MCsGgV4BA2JmOczR66eafPa7KFX2QbYF7q1cbtZlPw=;
        b=ZLUq+waj1tNE5O4ES37IekzzdRa34RapIkhYrPfC4nhq9s28DzXqbPNcxiKowlC+vA
         8x4qKFFJnGZ93Z6UAQ6HcIhrl4+6rcQGQtfjW5y99h9YH53wM39C2+59tquy8s6+EQIr
         rqA2Re6esl0Ey/4kCRGer26e19k7bK8qVYMEAliT5ELUTVyIYuejzg7jKSz7pqdh37W8
         teWGMOmlD5J2QEP5XnTCarQ6u0DcF23f4Wqo9MB9yUWOPuGTo5D/6oB5WiZUJgbX3+GI
         3y9RoQ+2T0nLwHsZ08kCQVUB2vw7tAUm9V6k6/XwfltItYGwIsC9tfnle6zyReQkQkDy
         eVsA==
X-Forwarded-Encrypted: i=1; AJvYcCW73mlU93zJfM2Z8g21WMrGdN4/g2o40ukNXa7HB9PhHEVpHeNuHAmPAu508GS1vCgzxQNnlX0PPfr4@vger.kernel.org
X-Gm-Message-State: AOJu0YxbrITJfKonkOPuudV1oIS+HMSGhvXnBtVi/SDYVPBEktrEK1Hn
	6ZVMKZXdgMatAA8rFfPOQlcmNTm02OFAZSV+Mi6mQ3k97s8EyBnh7yoanijBMBR693fkNss6DDR
	Sc1ULA8eziVmzfjdICGEg1u7kSkHH47WNtWe3CFu1TQdFQCllZpta0GNg0V8jCdny
X-Gm-Gg: ASbGncvN3wNAL/cqRLi3FCRXKySD46J+dit19wGWXdPU9aj+OCHSUf50jiautHnbqtg
	9sZcebaSwDHkXl+LBxwAPZdalGFClMB9twwPtDdvOfTzQqrmZ4iO1z6DhuSYQkxLLg1ThctQw3Q
	QjDA/fPR9MrXxCOKF4VvLn1nRRuFqgajGVJayEP/cMV0h6OUPKUlTtFbkmL5LbUgYzVVTiua1Go
	KiPQTBCJYvNpc0JE2Kn4glnc3IhzKcEKEKil9cOjT9PfLLDNswVGNQWuPwtto8oXa05HXESa+SB
	Spajo6r4EuA6tevcdnDgvjcTfpzhM/dtQHSGp2Z4mX4m1vzbjOW/bLr4OJEfiqbDbgVdxde60Gp
	HYzs=
X-Received: by 2002:a05:622a:11d3:b0:494:b869:ac06 with SMTP id d75a77b69052e-4a713bb11cfmr21318921cf.6.1749653278338;
        Wed, 11 Jun 2025 07:47:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEanE3mTJ72DEP0t2zfEf2C9EcYW5djouOXP46mq+RKNfmpPdg/k6AyZH23Z6+cCZkAPNaJDw==
X-Received: by 2002:a05:622a:11d3:b0:494:b869:ac06 with SMTP id d75a77b69052e-4a713bb11cfmr21318761cf.6.1749653277863;
        Wed, 11 Jun 2025 07:47:57 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607783c051dsm7772513a12.41.2025.06.11.07.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 07:47:57 -0700 (PDT)
Message-ID: <4a8df547-e625-4dbf-9c6e-44a3f793e602@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 16:47:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs615: Enable TSENS support for
 QCS615 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <cover.1744955863.git.gkohli@qti.qualcomm.com>
 <1758b5c2d839d40a9cb1dd17c734f36c279ac81c.1744955863.git.gkohli@qti.qualcomm.com>
 <74b017c2-7144-4446-969c-8502fb2cb74b@oss.qualcomm.com>
 <x2avlatyjo7sgcjubefexsfk6gerdbhx5dcug2kszk2hukcusm@srs5dwuc2m22>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <x2avlatyjo7sgcjubefexsfk6gerdbhx5dcug2kszk2hukcusm@srs5dwuc2m22>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEyMiBTYWx0ZWRfX84uJgAgbpdAx
 54xkxp7pOem9y/gUwzswn/yu3FUK9X6gXLqAH52pEOJtHK1xp/lE+Tcq0yWyR7+Rc9mf6jJj3/l
 zbWIXciLcc7s7ey7Mzgy5NfAMoGqGt7YSgByeFwV4dqnc1/9OydTiCE44IeTSZczX5X4YeBfYpm
 V8ePg9CmPma4Wtnb24XcmZhzzEFwMmt384prJgmtTPZYHgH5gW39bCEoSumZGTR5aeYOB/cc23f
 bilva4CrDqcqVf7lO4zFDBa2yBrx5zLszRvv1k9uL413xoAMTujS4+/KGrmwCU4aKzh7TnjNI+o
 l3zIbsKKRf7NiBbR3UkJ9uz+fmh5Zs6SCqJhavCj6mkBibTpnq5k+8r3UpIIQI495ZJpyz1uDxn
 KHELj8KYlGzSa3O6tGxeqOI1dzS+5l1JydDvX5Thq2Vs+80fmbA3fMNVa7uqe7UTm4Fc7Zgr
X-Proofpoint-GUID: G8Niu4skPz2WUzAKuWYOlTdpD_ZGEn04
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=6849971f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=btjPz7YbEsIzDNlJI7MA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: G8Niu4skPz2WUzAKuWYOlTdpD_ZGEn04
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=720 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110122

On 6/11/25 4:19 PM, Dmitry Baryshkov wrote:
> On Wed, Jun 11, 2025 at 04:08:57PM +0200, Konrad Dybcio wrote:
>> On 6/11/25 8:37 AM, Gaurav Kohli wrote:
>>> Add TSENS and thermal devicetree node for QCS615 SoC.
>>>
>>> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +	thermal-zones {
>>> +		aoss-thermal {
>>> +			thermal-sensors = <&tsens0 0>;
>>> +
>>> +			trips {
>>> +				trip-point0 {
>>> +					temperature = <110000>;
>>> +					hysteresis = <5000>;
>>> +					type = "passive";
>>
>> All of the passive trip points you added that aren't bound to any
>> cooling devices should be critical instead (otherwise they're not
>> doing anything)
>>
>> otherwise, looks good
> 
> Don't we need cooling-maps for CPU thermal zones?

no, we have lmh

Konrad

