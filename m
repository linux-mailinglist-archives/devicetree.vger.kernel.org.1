Return-Path: <devicetree+bounces-154013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F34A4E96D
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 232678C7CF5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310D4255231;
	Tue,  4 Mar 2025 16:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CYCxbjOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBA0204C0C
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741106495; cv=none; b=kt/oH+3WmecE5AJvo7snE8MUHsb1A88/keFzhymb6rX7RvtDRmdFcdxGb1rwr3i3AOXpu1iKOdyo0SdUg3UGwl458FpVDvKwtTIdMUsYZtTYgM53+CFpinpzFSbD2fo9mgf00utbITeQT7p6AzoTnlgv6WIp0vvHkHe46im2szQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741106495; c=relaxed/simple;
	bh=ffThSbYQesCsr5BdSh0lmlwxJuRduHy19rXFVPc7B+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f9jKcDmJci9Uch8zb21XcXGk0QAc4Dmag2aUCBdBOxO79HpXB8v2x3naSSJhOxEHvUCmHDi4cILS/FvbeIZdoHegz2mJoC64UAkVdYBCzaa561hCfhNZ7Qbz+ekKm+t+/7sBrzbW/SA0X42QpxUZOLaJeBO8CbzForYlg+PdCF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CYCxbjOt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524AT4Md021256
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 16:41:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Aweo2aVYPK68EM8Nsal2jdoc4Zn3ezHG6xAKnUyHqJU=; b=CYCxbjOtLrNjzUq6
	ZRHZL7OodaIbFoCVNd72utSpRZnzo16Y+klL9VIBMLbNc7fZpBOcvefuHjdEGYfl
	9NaxEvVFKLWFQIRzpmU6n+wd8fmDEC+BUvgmC0CqVQte2rFUHcx7oew/zWrDYUlN
	CHP995YgliwP4CVwpzrVXw0MnuW+y3B8zOrEFk2GzOBPn+v+ERszd/PlrlnZDRWg
	2e0Iqyq0WnJi169XuStO9wBKOnKcklTdWoDUPlF88b0uTNxmHpVuBOA2ITMKXG41
	n6gtkA+tx/m+TxLVqlCrXzbQJFAyJcKn9KTOATuF9DJzzCVHDPM4PZ3u6cvqvYZ/
	U56d+Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6ttfy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 16:41:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e892c72145so14072906d6.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:41:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741106491; x=1741711291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Aweo2aVYPK68EM8Nsal2jdoc4Zn3ezHG6xAKnUyHqJU=;
        b=TrZTgoX6QkssPfD0fFUliD8bKDTU13JpQuIX2k2gP2yfwojb+f9qQ9zYhmFm/D+0xt
         vZoiaZY1SnG/yRKq2Y3yJXirfPf6kourH0pxzPFzhz1yV5DChr4J09MbgiuqI0iXX//V
         +zRJWPyc/WF+zR9C7cXp1QswC6nwtkPrGWKJWJM3C8HgD6TPCj4gTCY9wMGNKbEuoCwl
         8FY7Sh5wIQs873vFxwIQbmorjV1qDtxJYR2MLr6bJpc2wANenl1o3KO/3SaLRq1dp6Ar
         f3Aa7liBg2PenV2MXqS2SFj2tkfebRO3jQ/9pnpiPuRjEGTHz5aBLsJzMiuC4myfhmDP
         06tg==
X-Forwarded-Encrypted: i=1; AJvYcCUvEIR5lI/u9kZlOKMkInEGHORDAWjV9gOeB8SlSRBxtrQO+jaeNz+VZ34qgpWaJMwhBkciXKJOIqJv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3hSugBGyk2p/psPiXbLkBZOGrj4sTEy/9gOn47CCKlSzZGyj2
	73ln6YJsGje+LKkGs97zkJcKUH+kO01BM9D5wkUA5Z7uJw5PNlYWK0SaYUO2HmkX6aEugudgVCd
	tD4dSXcEob/x3wYbaw9qH3WMb9pOX8OWKGGbOacPEjT4h8sS0uKUA68927RQF
X-Gm-Gg: ASbGncsMRIWB8vlabFnsyx3Pj14AfAy02SIyf3KXVXlyrtHHuSJxQqDQx0WjboRC6ok
	mAPhFbDx19x7U0xLoPNOmQepPFfDDXuOThqp2gTQKSB3IpwR01M073bhPOaFSCrNvwhFkPJR19i
	iMgKhWhQavBzI7aw2uSIq+jLITx1pOqaBEjts84HkFb7Y6+JyU+2w0quW+MMgbmBFQK1HHH0Pnr
	QMGhV0DycIn+GqsD4ksbtuWbTxbd/sE/CymaJsTA47+JDOJxtZvPiy8gqcSkBlluNqbiSeWSj9I
	IfQyxUqU2AsXugE8BsQ26X3gzJe4ITFt4bMuIUQXssxaPKulnUBO2xz6lLvgitNL1iDfYA==
X-Received: by 2002:ad4:5f0a:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e8a0d05d81mr86128646d6.4.1741106491381;
        Tue, 04 Mar 2025 08:41:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1Cz9Nh6swuZbgLPf/pRvOeYz9E1GRDU9wKVJ0wtg4BkA6pMrkakuUP21/Z1WqbGOiSQ7Lyw==
X-Received: by 2002:ad4:5f0a:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e8a0d05d81mr86128426d6.4.1741106491049;
        Tue, 04 Mar 2025 08:41:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c74c714sm975253166b.124.2025.03.04.08.41.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:41:30 -0800 (PST)
Message-ID: <d4d658a3-e276-4e0f-ae71-5efd077e8a12@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 17:41:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: qcom: sc8280xp: Add Venus
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-7-279c7ea55493@linaro.org>
 <77475c23-c173-4512-b257-d7b01fa2054d@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <77475c23-c173-4512-b257-d7b01fa2054d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: p_NmDTq501qn606OiUs3U6NYzkHL5VOQ
X-Proofpoint-ORIG-GUID: p_NmDTq501qn606OiUs3U6NYzkHL5VOQ
X-Authority-Analysis: v=2.4 cv=Sf4NduRu c=1 sm=1 tr=0 ts=67c72d3c cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=iUC3nf1AerQT-j-K12QA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 phishscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 mlxlogscore=810
 mlxscore=0 adultscore=0 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2502100000 definitions=main-2503040134

On 4.03.2025 3:02 PM, Krzysztof Kozlowski wrote:
> On 04/03/2025 14:07, Bryan O'Donoghue wrote:
>> From: Konrad Dybcio <konradybcio@kernel.org>
>>
>> Add the required nodes to enable Venus on sc8280xp.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> 
> SoB and From do not match.

.mailmap breaks this

I previously worked around this by kicking the relevant entries from the
file, but that in turn broke base-commit in the cover letter

Konrad

