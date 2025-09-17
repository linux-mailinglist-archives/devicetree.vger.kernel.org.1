Return-Path: <devicetree+bounces-218402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B149BB7F70F
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:41:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 780877BEC14
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A80328973;
	Wed, 17 Sep 2025 13:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T1F1gnen"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87619328961
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116340; cv=none; b=JwQPIzrn4q/wtEAEh8SZOV4W+i0SdmDKmRBi8TuacKdSXkt4F3T2XRXrZSAl5/lQ2xUeVwL69GS2N6ic905YGX8liFmP69h4DsD72mEtn/auQb2XY4pLBnHMxE6kdk67Zt2I99i+rtbzmlNUP04mqKBvPWAtjb9iHHH/gBELg48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116340; c=relaxed/simple;
	bh=wmnaUoeLg54xR4kD8RVtS7d/+a4+fnfXhWXtZ54xcWE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t8SfURZD8Gj1omI92b3VbS81NN7F40skwc+BCuX++7aTY/Yu0hFWhe72G9XHpGSfVebDDUndhM+oM3jBqEc1MzWZYvkE5ns2IFf4xMqPQ46dpx0UrWIusD/VFOtXgwpwjyIvGt1URZh2azbf0oHjrRRo/6lic0zDRRa2cjZDs5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T1F1gnen; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XXug026796
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4FR8amwe27Ylu/pUP+vY72tN0Ut6/tbsNkz8y6d1L3c=; b=T1F1gnen/pG2HG6Z
	EKF3zowmzP0ugVBn1c2uzcxqi8lff66lKgjVIFJK62pTeSOPXR90ohiYIl6/Hnxj
	yQHrtzv24MnltrHmmpmYy/pSB8+DHtYbrVKAVMVlT9zt092i5DERdRZmsqSsoqVZ
	XhgsB/ro8WrCGujQ9XtCl4pkzky+GWJ5MBclBZpxGRo8QBEH3mN4I4ovwfR/vKk6
	jWYdXgt42FziZhR+GsBq+mNaaaLa78R/MlIa0ZIt671PwvBdHccuWCn5+nD2cxj1
	Ohjegv5Cro7+P7obqgaa2vuCHfwaJPZwrUZXUibOcz3aIbBXYx7PsGaITJ4ooCyF
	T2qpbA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxt2hn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b79d7413eeso6498171cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:38:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116336; x=1758721136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4FR8amwe27Ylu/pUP+vY72tN0Ut6/tbsNkz8y6d1L3c=;
        b=MLmvIIuZCUcJCkBA+08uJGdMGyz25FhcKAr9J/Ew5Egio4Jh/Lf6qXfTeuJJ39joao
         MB6zrBtVDwyNRyHw7k7f8wyLCa3/5sSjvxyNYxlvtuXddRlXrdeGsxzvNnwacUQ6CF9r
         NKbAIle7kcT6VpTjoBENCVRqe9xd9h9PLQBM7kTh4gWxx40kZw6YP4JbXCo9gLbriD65
         Dw+kGbsFuEQrC9vJWYN8KknbPvREg52hBqD7VZV6bC4vfz67yTNfCc2c2RasqHbg74rB
         V8rLTZgHSHXj0k9u2yvXzol8ML4SXC9C1xzG4yTy8yXiq8lYNOn826znZP8EbAsNz5yr
         OTiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoxNeZ6wrtGZNM23sliP9XuI8P9NBF76Di00Du6Bz56WFBviYMexDofuY6Nk8Y0tgd2Pq+zLEMLLyH@vger.kernel.org
X-Gm-Message-State: AOJu0YwyqOPaRSt5nbbPGwOc7FLkmJImrJ69S7upwaNNy0FoCpNAgTS3
	9xFp3KaXgfC6gZPAGDYQYjXBkIv7kS8r1McvL+iYFrPbxTOueP78gDnXGdkrtZkUqlidsmFxxAx
	zQZlbT0IkAGGgtHiQPYiRcYrevyU/38x0TOT/ZGClFPBlnk4iulYcO0xz+tdEGt6i
X-Gm-Gg: ASbGncvAaifrI5cyDEE2A/TNE/s8mRgXvdblq9vme0qfJm9hob/JcGOY/F2NgjLE5T1
	KY08vBROoxtDEd0yS+/xYdgCxrh4Ayc0XtemoRf19J3frP/zvCqbFBPY+B0r4rYj+2pLkXTo8bI
	hPHPKPTt5wymbWGXS7ue/ECQjAkMpCCyPQW+7C1l2dAGd8GPH7fuDHHspshwYC8gJNl7fhqdgYY
	2bx/zlHfG+agh31S6rtMsyZttr4/5VDu/6d4zC6vnrVaocAk2VsASVMg/fJ8MM+BfHSJANn1rld
	muv92iruu7BHBlBUCXcZtOC5CYS73jjs8oHEdmZgBuAnxZQ4FZPduyigOfDxOKiD0UTxDvj1/9x
	MNRcIeJ0LknmQb+3Ad6BBDQ==
X-Received: by 2002:a05:622a:34e:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4ba6a201826mr17337431cf.9.1758116336290;
        Wed, 17 Sep 2025 06:38:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmQ7zvxYEQCcz1LV/ubwUUWJATtIDKSxIlQFAS7llfXEprD3GrYMvTESV9fbgINseDhj8YWw==
X-Received: by 2002:a05:622a:34e:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4ba6a201826mr17337101cf.9.1758116335644;
        Wed, 17 Sep 2025 06:38:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3128506sm1379313066b.28.2025.09.17.06.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:38:54 -0700 (PDT)
Message-ID: <324327b3-7773-4abe-9628-c191685ea646@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:38:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] arm64: dts: qcom: sdm845-lg-common: Sort nodes
 and properties
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-1-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-1-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: evxqJWGBfNrfkPZ7c76ch99ht3imPgB3
X-Authority-Analysis: v=2.4 cv=bIMWIO+Z c=1 sm=1 tr=0 ts=68cab9f1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8
 a=EUspDBNiAAAA:8 a=JkoFm2tBDPzt1COVDkcA:9 a=QEXdDO2ut3YA:10 a=5XHQ0vS7sDUA:10
 a=IQdlk4_VRkkA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX03QGcXX5sPtM
 8WzODJbw4lTRJLeZ9L2hYpWoJBXm+IkHDnI3VYmqU7TYYijPhN6/pFrPc8AiNC9r0U0eg8RcJDH
 GO4AV3AGxhCWLjViDT6cKm5IdCevIWzRGVxapPq8F4JYID98fetE4dJdSGvxbwjDPXIgFy7omSr
 tfpfWXewRMJWHgleUnx4uQ0Kw/djBUouOGf6m8ApWkCstZcU//wJjZSVwcpuxFemt/0FJXd9zhD
 9jPrO8F7wEKBAtcpfxHdwOBjMpL4Nui+0QEL3McSbsFR0jFWHa3IiMLNhd4GQLfRaU6Lfbc4q5g
 OOzE0+y11WQqytvWUzl+pUwkQzYJpeEDJdc6rpbrLYx+j8UO5B6qp7dUntynVOkzIlyx/hA4iQw
 MUi54qf3
X-Proofpoint-ORIG-GUID: evxqJWGBfNrfkPZ7c76ch99ht3imPgB3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 3:09 AM, Paul Sajna wrote:
> in accordance with:
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

