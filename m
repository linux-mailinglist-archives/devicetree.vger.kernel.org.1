Return-Path: <devicetree+bounces-199671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 961DEB11AA8
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5052B177E27
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 09:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37849275111;
	Fri, 25 Jul 2025 09:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ild5GXSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A91274FC8
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753434830; cv=none; b=qhhqA8ZSRZOgFCNkLhqmvFVhH9rFHBVlyqpu5Hxj7zS8V+1II86EYa39XZIZYk7Jk4TW3AXstgdOLo3g7Bbe4GB0tQJBpdoldyRFcV1+kjbv07sDOAahOvsPTPqciBRSeZo5IPU004KG6qM1ifuNHxrMP3rm+UAsfYox0km3i0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753434830; c=relaxed/simple;
	bh=PaBfkP9n62fPauaryWWVRFcxPJrOXO55ZQmLOGK6kpA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SMNd+tT+Aq+u7+7aoebfMa0fowzWDkRIcRfa9HwPzWzSG2rphpMcXm1b+ZyxK39/A1MM7HzLndXbM9xJBN3s2P3ZMR0afMuCdDK8Qe6gWk7zCIgXI69j0aa1boeNwnX673tCork2b1eAcwO5Szi7KBlsQiDEWDEYopBcqQryZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ild5GXSh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P97t9s026526
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:13:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bEV4DPbLykBJZVuPLhGCPh0I2ttNyDmYPVal2jJWRtc=; b=Ild5GXShfumqR5rM
	uStP62mpxylPBAdooPdL9Oz363aKSsFJOVXe7xs8qPBaDau+3rUeKABmKCdWSvAU
	hiciaj+hPTTjnA3GoyvkriGQ3Vw+DWi9ZjWebGIQYqfXqJ5/hzI7K9T0NOdFHoay
	MBJ4iQrtdBztmcd2OlTqt7lE9jUs21kCZS7cZ/pS3SGok66vYxdyGzcJHcuRVPpD
	wWksrLjhvmWg51Jk2MBydfKF74sWO64uX0/4hzpsZCGug5vo0jfvN70NUmuH+RKK
	Rbm1zddVbiDKvsHUFNitCpwoKD4Hx+hHcTSmEeCfOlSgxkMP78zB+VXIJudIIsZx
	r/eaeg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2u1gr4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:13:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4abc1e8bd11so2513691cf.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 02:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753434826; x=1754039626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bEV4DPbLykBJZVuPLhGCPh0I2ttNyDmYPVal2jJWRtc=;
        b=icBw7mW/wShjdkWs8eEwXU4h2IRYhzUSFokDHBEEuGeduR01O/yTsSr+0wMREJGVby
         BhPvn2xusBADZbWwmV8/1M6pUD4ZGTaSC5lsbI9lnssMKztSqb0EwptQ11YOr2moL+WJ
         9ID/rpEEAEwaWu49wnqRSuhFixGUQJwz83T8HfAySR8k0JtCc844vK61KjM3emwXeQ4W
         2UHPgAVf5ElhT/to8mi1rx4IjfNNY2JAy8D6XbXWjafu3O2tjvhFf1yfQfwVbNuJajRG
         1ZvlHXg9tRoTQfBJKqAugqL4blIE/U4ndz3VTg25oZrmhF6NsqRvo+aFAg28z4nVpkM7
         8lVg==
X-Forwarded-Encrypted: i=1; AJvYcCVLk64CBgEVdtpRHCAeKwGQo9qQ9eetnmQzp0wTN1SZ73NDghrLbi37xvoK9k0JsNGL2x2ygppRTjWQ@vger.kernel.org
X-Gm-Message-State: AOJu0YypRJJUjicVfwW/vZnIhv6FJ8uR3uE0840Oleky2QgCp6ka2PG0
	9sRhtdKIKaBYSsX/1LqT4Ju2kxwHxuygpY5Ljp1pzEz7mpG4T+0WT7ycL1wxkouIlqgqNH+BAUV
	U/sE7nb+MfS7hy8HXrm8qBpupVIFYWAo4msMI1cHGwemc6887cLn/q53kYQSBgU04
X-Gm-Gg: ASbGncsn5RtUd3CvhOug9uJR7GoVpVqkJk27VzXb5DZdOLCqTieXp7HpDU+GOSnHnS7
	IycJHAAsv2isS4qGoNLYvr5f72R6s/+Ff0a8y0+CgLS3mlvI8bfR0WgrMz0ztNJmOFrFYNrfFTv
	lydoV54ZOCbSlbRG9YCbvaM0+4pLkmv889LGSy/ePNmAKxrUujsTVDQycQmazD/G+H3b80BZckP
	TKZSW3YP8MT0EdUA7yJKhwv5in+UR0N9LWiBXZofzw2ou0EYF+oDoAzbRjrz1MOG/fYafBlzNn0
	S2DJ3EKpemxYoVcEExs3zHDRPRZ1xAvTtvCTpuJ1X+xrzdjWzRW8zvpV80ZeoT4UOKrUbzGZwKb
	LMSSXX22PzzXHb6e6Eg==
X-Received: by 2002:a05:620a:d87:b0:7e6:23df:a465 with SMTP id af79cd13be357-7e63be3ddecmr57812485a.2.1753434826300;
        Fri, 25 Jul 2025 02:13:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEExgv8ZCapXOzq8o1kxrwx1MV3NNUzeObfI4hzLnJrsbPQ9KAQEat9qeWt5LdoLPLNJ5W3vA==
X-Received: by 2002:a05:620a:d87:b0:7e6:23df:a465 with SMTP id af79cd13be357-7e63be3ddecmr57810685a.2.1753434825949;
        Fri, 25 Jul 2025 02:13:45 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-614cd3191b3sm1846833a12.46.2025.07.25.02.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 02:13:44 -0700 (PDT)
Message-ID: <510b1761-7eb2-4215-8910-67dc1676ecb0@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 11:13:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
 <20250724-hamoa_initial-v2-1-91b00c882d11@oss.qualcomm.com>
 <d49d2755-2967-4bb9-b789-8be5f138d4cd@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d49d2755-2967-4bb9-b789-8be5f138d4cd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA3OCBTYWx0ZWRfX2g139pntX3Fg
 VzRNyCWm5CJVu/lqdW381PwXrk30cgKd0mrtTrCN3Fkn9KluOozQyJc43hj9tEsN5zbfhV8+AM5
 oHjFTTyT/yM2PXDZfPLjtg7HNOPQ8Fu/n8gptmw73Lp9ACmj9dlqZh5WsBgL3EDx9K6/qn9r0Wl
 2Jl6jnRpyM0qj4Af6R4y7yNoJK8Butln/W5PmTx6mMi1n5GzmA9rmlDbh95uqdZBLEtxaxzteHJ
 9B0UulnuPbdXlKcbtPXeiMBIESdq6S9yKP9R8YaYgAHnOQhv/18Icszihk6d3VhFwonRcW3Lq1Q
 qV9D7yIJA5mMzzvTye2fCS5+8gi0yrhKe7OAW07FFcSTNlen8Rq8iTUZZWeSNzapoEYXfc47wvL
 9qoBoXIdWi+ZDxGURS+2KzB+Fkm/uKldhRwq1dV0FGTlLnHmtr49M9hig0it2m3a6HIaPjn4
X-Proofpoint-ORIG-GUID: Cpg8X0WyeegJFvFPCs-OBTfkSgMUe5RE
X-Authority-Analysis: v=2.4 cv=FcA3xI+6 c=1 sm=1 tr=0 ts=68834acb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=YlCazyIblZRc-Zwj5O0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: Cpg8X0WyeegJFvFPCs-OBTfkSgMUe5RE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=926 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250078

On 7/25/25 8:55 AM, Krzysztof Kozlowski wrote:
> On 24/07/2025 10:15, Yijie Yang wrote:
>> Document the device tree binding for a new board named "EVK" based on
>> the Qualcomm Hamoa-IoT platform.
> 
> What is hamoa-iot?

Marketing

> 
> Later patches claim this is a SoM, so explain here why you are not
> expecting it to be used outside of EVK (not following standard SoM rules
> like every other vendor)?

The SoM is unsurprisingly called... hamoa-iot-som.
EVK is the reference carrier board. The expectation is that more boards
will be added in the future, as the SoM is adopted by third parties.

Konrad

