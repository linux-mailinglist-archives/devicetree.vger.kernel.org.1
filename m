Return-Path: <devicetree+bounces-217466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 303E7B57DBD
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E405F2A1D1F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464D231B80D;
	Mon, 15 Sep 2025 13:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oOeYD6WY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5D331AF3C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757943786; cv=none; b=eJxTKPzT0g0jxfAu1uM5bCd26Tr5HoKcrZhhsdjx8kf7CTJfpZPl/Zgvou1tpjpfVV+eWblD9++YD9XboxMTzmg8beGvPPafNUzk1HlaDcEDNCm1X+WprXLhZHKOUM2QGmS6oL2b9XaBrSzzX+kwhfBJolYsx509ssoOYOuSReI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757943786; c=relaxed/simple;
	bh=v+GoUr80T+Uq7qzt0nWDvFetOFhw/gwsgJSHNNUYMnw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e25nyyilaVdYQzGQ76NDOaIX+QaBBzZH/CCWafPNPkPGS5dqQtquolofDbWBVhR4MneBHKt/a3u51MRsc0hDWkjM4/qNadDN5wdg5GupOd3gSNB4IvkYX0zuTp6bQnwlpny9SqYqHV29TN8vHw89WDKcP8I4mWMbxcb7/N2bgX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oOeYD6WY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8Fh8I031687
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:43:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lD6LjevKuZSuVw1MwwNhO02UtoMPI94ONWJFlaUQpwA=; b=oOeYD6WYNtuIxRyn
	LU7Oy1yTx8wpxZkWRPLzdI8rNvfSahfXDaO3I67aEkOto4uqNGeE7aNXLWSCFK6j
	7C9jJrsnwJfQzPQ6WaWaQKT+Lnhbvs5oZHGoK2EB7SAdiCEi3kksO+qhEP5D4R+p
	GP7Q5kZutYzAxqbYWUl2soD3QTs/fD808BS74bnXY4Idtk0cJkFGt7koer2NzixD
	vd1S3maOYf4ks62t39FZHkESOjeshjCPk2ldrYEMT+0vXPrq+OfIusKF1UZpMtqK
	Tr9wk3I6sHGqTU62j5JyX4xE+8KlFb9FKvZpJJlRyp+I++gYT3V2VvoTPSOimEbi
	PlkLNA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma56ge-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:43:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b780683398so3416411cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757943783; x=1758548583;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lD6LjevKuZSuVw1MwwNhO02UtoMPI94ONWJFlaUQpwA=;
        b=McVYj8cwo/COKkIdjzX9RCFYZaJCxapssctS6IMliryGnnzxDLBXWN4fCbHEr21nuT
         cPl9doyCniGKs6L17A3h2x5zZ5yy9nHaDFaomJf0yjujXx/6WCBOarvLj5p2AW2sHgzX
         CpdPhvc7PIwm3q660J8mN6VM28/YN5h6GoQnTnk75wUn/JiIEFGJEypcEo+9XPLXaq51
         9pJWP5UftH5q1n2ZbGskXUZxAOn8k0IJK+FFOgtW/iXy/4tcBs7ZDTgQnwIlZzYgsNJg
         DpXwLBpmtLpIfD1AGfLie0pw9XUGD5ieMEXWohm9XFC1Og0HcOaVy3zEvIndrrLYgb08
         RKsw==
X-Forwarded-Encrypted: i=1; AJvYcCUF5Pu6z0U5Oh6nJohLaEEjyVQ2pQNNxc+RDG3/b0K4y3yVQNRYC/3JifiS3pGzyj78Q/GSjWzFUQb4@vger.kernel.org
X-Gm-Message-State: AOJu0YxpXL/86rUQO1aEfOHLzJZ6ICLjJ9lhNYdUTEv4aDC1xy41/fzY
	/DmqRKRUWkfprQRDA3H9oMwaeevU46yKC5oO75aOmj1QmZkw1C4p33Wyjr2e/xEDlDgcsJdgxKc
	U3zE3N4sTlSRWREqBSoVL+r58uK86ltmE200dWJ1V+Ov7eN+/lyJ6SiXW5UIcyYMA
X-Gm-Gg: ASbGncslxX5xMCqyc0Jtn4Gv/v2IWVr7EKOZZAGd3Z9aS1zjYyyWV0B7LIeszT/oiDU
	TmgcVtU4RVYLg+1KRFenGup/N+qzzhkzVH4XGx5wniRfWUP5ZqLCmGuydP+EJB4LcPBUiEJd/B0
	4WG0ARvBA46aas4YuLiRqeJpaQqgn1wEasZLK/Sj8SBv3N5BUpK4dxd9AFiYCwTAdQYBsmE9WnM
	2NSDZ1UGC048LvVjuB8aRUCi2uvME7j0ZjB/PLlOVvTJP3ZnOndwauPImu6rg9DN5jx1mljuwRF
	K0GaMpkhZ24ztNh0bFxj4JdJDoZdxVEOPc8kP78Q6cfd8zRZzSCXQe02pHPz5Dj1lkdxPhOUlcs
	IySimzBIVWXvmG1HrT8TGnA==
X-Received: by 2002:a05:622a:94:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b77d04cad4mr108187881cf.2.1757943782436;
        Mon, 15 Sep 2025 06:43:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGP3kdo769sVXIACSYekBoAYJrLURvAqBx9QIzbVx++xX3t2rsgq3d8IWcWVTyOaowCkgO/Ow==
X-Received: by 2002:a05:622a:94:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b77d04cad4mr108187601cf.2.1757943781920;
        Mon, 15 Sep 2025 06:43:01 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f35b41d2esm2595935a12.6.2025.09.15.06.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 06:43:01 -0700 (PDT)
Message-ID: <b8d9abc9-47e7-4398-b840-aff1bed96025@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 15:42:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8916: Add SDCC resets
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-3-a5c705df0c45@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250915-msm8916-resets-v1-3-a5c705df0c45@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX7vKidi2yRsAC
 bfVW4p66yMyB4iDUSTHxTq8QqUrbCuwBuNSvHHTRFrNnTZUZiqqOsCDV0YB5j30y5SX/fN4Jpju
 qc7F5HY2/kqavGdPg9Mr4WvmI4UsQ1Ko1Z5cB0qEBtKQjpjHxU9YBJEdR5KRupFVti4BRs5kT8L
 RM/9jddHnTOD04OOKsH3TL3lcan2/Wg/gH7xdCOn5XVVVo98+z5xjfb0i+9GTxKPG/LdD1BDbd2
 YnmSDPJeZkYSqWb8mKyGceD1LzA7yzXT4uoSssg8SCMM39DHuYPU0JZ8+S/f9+ZvHQcguQ7uOr9
 6CsuI5hDuKz5HrLgu3+xGIaaICw2WMf9KfsMkzAXWOZfc7k/y3XWrFHYOc+UHjoF/EP7O4KCh22
 J4uTo9sX
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c817e7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=63aoMBMVQsRI4Mpv6tMA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: pIZGGqQVyK503wGGFhp5FbdjN_o5h3i-
X-Proofpoint-GUID: pIZGGqQVyK503wGGFhp5FbdjN_o5h3i-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On 9/15/25 3:28 PM, Stephan Gerhold wrote:
> Add the missing resets for the two SDCC controllers to allow fully
> resetting previous hardware state from the bootloader.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

