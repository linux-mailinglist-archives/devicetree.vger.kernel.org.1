Return-Path: <devicetree+bounces-246988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE2BCC4AB5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C02230336B3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C563359FA6;
	Tue, 16 Dec 2025 12:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cU/5bLfZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N9clgNYe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A835A359FA3
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886707; cv=none; b=qEtcgQa78o30muaK4jANRvjfLT5qn05sZFp/K21KFuDvPo2r9F0IHiWtXqEkCC7dM+eubNigSrGOdsw19ZXoWKdsvc1Og4/hg+TPvbeSvLX5EpV8C9CORlNLdRceTI6m/jZnAElSOtuOQmpmoRt0qCP5Namqtg0zaqUDDaLfyXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886707; c=relaxed/simple;
	bh=Wv7WyBrmIKVjc5YjY8/RSHmaVQ2Lige3hw7dw312PkE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p800DeA9iW2Nh4RHhznjiviVN9BGsfmLwHV0woL4g3YADGjsm0YtkjV93Ekx06JN611OiUQRS+hDqCjIgEwwxTd7NUf5qTXXSrPbVzIODPFhtR3fz/NjIRZGPqVLQ2pz1kaa6DNFa38RmfI4HSazqykPtJXzVsmzSjjwMDoLfRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cU/5bLfZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N9clgNYe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGC2Gg22810368
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:05:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fk1danRm6AAivCgBRvzM6gL6OuxDEjXorHKkmSWVB/Q=; b=cU/5bLfZLGbH4h0Q
	proSuwOTFYXp4WMh47H+pbo+1pRhCHwJAxTdM6thPvl/uXa5znlQe8ioBdtmLDJh
	bEav2b2AWtFPymmsQ9c5dMF2Q02BpeAJG2Jw3fiPpr+a1W4hFB2PRRzuoInBVE/z
	VUrZR8DCCFCe66u2Wrq6kK1J7fG2W0rhckByjjojfVjzfcQjDc8QcFdC5cK/J7hL
	9/kgXOqGkCFm3VpQrKl2Mgg7A5Vxnz5DX/S0OKZL9bqeEMyKO61ODnytPqhW/aNM
	RDLK9/v9bCu6n4nPzc03GDvqwLaLffsmmNrHgc6JMXHe8k4YOpUGIVLCYXomRrJe
	gDvzqA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b32gas81m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:05:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f34c24e2cbso948431cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765886704; x=1766491504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fk1danRm6AAivCgBRvzM6gL6OuxDEjXorHKkmSWVB/Q=;
        b=N9clgNYeiAYesZXmrqVBD0kqrpO5wRuKYycABGTTnW/ratVXtbFFOBsl6lMphEc71/
         0Ge6lzBvDJVDRhMNvDCgpZ51WHQMYNut7G92E5UONNXgU0Fwp7XIodkXy2CcU5cBDuyp
         EBCRXeU8P536JEMXzFr84sjtw8fmVMILku8GFiwh2G9VAaW4iIbLqU6xlidjujCVLouY
         f4C92xb3h4AIAOwjzhA/qci/bYTOA23iLKTKEJNsd72HRL7Z2P69kH5NqnxHpJOZm3rB
         Ow6ggnomjbvIDty4jh1te12UkWMD57VhvuR3eceB7UkqADowVn6vh7zohVI/tMt4p3dn
         +3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765886704; x=1766491504;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fk1danRm6AAivCgBRvzM6gL6OuxDEjXorHKkmSWVB/Q=;
        b=ZnDCuhtn2iiTEPbK/iOnn7OsXDJaYZboIfvkvNqBAbvNeLkeYll09n+Ef7XYXlADGY
         aOyX8fwWmcCwyFMQqIwKKgCQwnIE69UKq7tnDKdFpHYh4jBHupf+YyGlAHZKlX+OiTU9
         U97W6xBlGlWTxpmt3iHsYr9QxN9PjzLFhYrt5CvtV/POKl0xf36aDugcKnOVQe1DGB8r
         9gWn9IAH57RgGbeII2yoSQN71Td9wFyzDGPp4aDgBdjWBa1iw3eZIu61kys7MxumLvte
         lNV1iIH6UC4LM1EBrehhatZxoNLX8HEIagiP97MVWQCbb76VZSJgFgkzE4crgydkXOm1
         faEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx1WpYpnh6WkbcCq7Hl8gFlZ21FoCYSUlN35C1cS2ryt0VgSWXpyq+YD2URsYfAwEbaZ+xUTYQyCEd@vger.kernel.org
X-Gm-Message-State: AOJu0YyCf/QOQpNOF2jGzmpqhFf/C0xOYapLAfV6+WvwN5MlZXSK0pFU
	EMWTrmxGQXGv84TSZkNHJUxHUDAuvpofLDQIkREceb97crDjEP442EFUkaymJF5WKWYOCW61Uu2
	Wjlsys5S2Xl7FAklJ/D6id8Vtc73t3gH9bo8U9qqwmdrQz1L78T3ybWnBseiMzrS4
X-Gm-Gg: AY/fxX6yeNdaZ9HNUzHC0JhIt4FpAFVuwCcDcCDb/AwF2hI2WjyAxfXlBbbbZJPqdQ4
	NP1my/RvLciYafTpOB/m2XlTKCU0NRNgsG32gW2EnH6wPoGNXlxnU9RDDB3UEMc0fl5pBVu0vlv
	RibrmwkA4LXr/amm1fKFCSOOYI07WYd5Ch/jXgL0wOsd/pXoTGed1kwhsU22LZuKozMdyBDCzju
	xU06X5y3IwV3BpYEgqk1ID3J2MnhH5zrGyixq/npxv7BYvaJlLFPUh4uFGHMC3NRjTl+DBTt7cS
	CCNoiS9O91B0350bVyuWf9VvBEc2JjEXK6dIzLJrEhBfMOxzQyoJdw21dOaQ1gUuU9aYgnKrzlj
	ciZXVadCOLK4IJcw01kigRWpchEvF95adGTqPftbrp1m5dn1ezq9mGCd9qkmAzSgxZQ==
X-Received: by 2002:a05:622a:1347:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f1d047bbb4mr152183871cf.1.1765886703810;
        Tue, 16 Dec 2025 04:05:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF67a55RjSmzhw/JfkX0RQVSFoe5J6TaORkP8AEqX6Rc4f++xuyIUsnv7VvxBZKkfZU9PWxHw==
X-Received: by 2002:a05:622a:1347:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f1d047bbb4mr152183491cf.1.1765886703394;
        Tue, 16 Dec 2025 04:05:03 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64982040cfbsm15825612a12.7.2025.12.16.04.05.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:05:02 -0800 (PST)
Message-ID: <584ecd2b-47b2-43fa-a15a-934fb515d8eb@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:05:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8150-hdk,mtp: specify ZAP
 firmware name
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251213-zap-names-v1-0-c889af173911@oss.qualcomm.com>
 <20251213-zap-names-v1-1-c889af173911@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251213-zap-names-v1-1-c889af173911@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vcb6/Vp9 c=1 sm=1 tr=0 ts=69414af1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wPDdPnR0QRQf7uGA_pwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 3INr2i_mxHKpJtNM27nDvQ-KBUQfgVfa
X-Proofpoint-ORIG-GUID: 3INr2i_mxHKpJtNM27nDvQ-KBUQfgVfa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMiBTYWx0ZWRfX+dafDxe72Gpf
 32g7DEm7dZpZqZRijcwCpKzqwDsraK/YdoMQKk0+clKlGvJWkpyjAZhQnzYhqWqho+gY2PKLW5X
 DJWSSZ92KV3d3EMWdS/NqmTpf4c6GB8Qq5guGCFCdzHruBvEF1H+g2hEg3n6Upg1Yd64KDWsGNA
 BM7HyRJwQdxK2xuFgi4u/NAHppkEnxzK+M/NRNEGE7rq8g9WuWTQMjhiHXv1pZra4ZdpKCKNMcA
 dcTGii4Gn6d9q7Rc+MhyD1UaSpkwifCvPcRxPbQmJ//Qv+Bk+pr5dtl7MZVd6Wh7nL+DJ1wCAOM
 l6qZERDSt3vC70P10SlSDli19iyjY2b0LK7TJ65zqOmLUAfD2+8GVGPJABlsxG/nqphRXWG+xkx
 ExOTN2nNPUxlsh/rbnkUWwvrS4d3nQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160102

On 12/13/25 10:28 AM, Dmitry Baryshkov wrote:
> The DT file has GPU node enabled, but doesn't specify the file name of
> the ZAP firmware, which means using a default file name. Specify the
> name to the ZAP shader firmware, pointing to the file in the
> linux-firmware repo.
> 
> Fixes: f30ac26def18 ("arm64: dts: qcom: add sm8150 GPU nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

