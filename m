Return-Path: <devicetree+bounces-221854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B77C9BA3846
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66EDE32667A
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B69299A94;
	Fri, 26 Sep 2025 11:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XI+/tKbG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410632773DB
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758887057; cv=none; b=D9P8ez1taSwTMRpcqe6aNExteBWAej1tbWrEqslfU8eTr8EmcCOPMDnBjk8Z0YtlLXpiOazMG6tzuY4hDChuOtluOXUqL2oReCD9rKvoz0EKYhTlxV748bJ3fUn0kHDOLfpu+PNN9vT3famkAQqinv0aWJUN2/X+A2in3lmujgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758887057; c=relaxed/simple;
	bh=GzNoxw3QHFN9Jy6yA0tYzF4CAq5XgTljFmNprpaPjYM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GkfJuE4BdhDQxJQRt6G0DQXMrSCeodb87OSSL9i3F4n1PAywR3f19rHNSf12Dr6TIP9Ibr4Xr8LcQKYoNnzwBACHd0C/xjd2E+VTTCQdkmPatJ7088u6r8bI68NZpVA9VVG6Wu2UJxWeHiHCfu9VPJqS26+4++dmrhdkU3qF0Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XI+/tKbG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q9jqxu024186
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:44:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GO5/qjL9gup48kS4ZY8HeZ4gTiSMhzKkkdJq/GGpOkE=; b=XI+/tKbGDd5Un8t1
	Bp31FyP+Dm4Hg9Uut20jaKpDxdPgUvqmWnrFH6aQh0WIHgcLwqwn+rz06u+F4dxK
	72RUgdpKjoUAJix8KtWIstENZtlgIxcGTq8TvaiBY0143Mq/IgSbaHtfyrBhorBZ
	ou5P2+S3v5rhSrwHJOPQ5+vGCr+H0nHfLxpKMAcgpyj246g4TKtZw4ijt+soFKO7
	ofquTePXuyc7R9hgQZ/ZTyvHu4ESHhTn25S8ib590sKeeYGIvMmpkt+Sae2lfxHI
	Xu8jj58Wl8B7Eh8MAgWMwOuydiOBheA14CAT4W2G2XFCpUF+Ms6xweZkpCUz2Zgd
	QAh1fg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49drfwgb49-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:44:15 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4dc37a99897so3615761cf.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:44:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758887054; x=1759491854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GO5/qjL9gup48kS4ZY8HeZ4gTiSMhzKkkdJq/GGpOkE=;
        b=NUXbQ7oU5fSsYNBkqpfUdDNLaMKBZc4dduzb0TWJ1ddQD/4vnx2QogNlVndVWoU2Pe
         DP0vc2RN5cejzidMlmAQDjxlmmQ16BstooH1wV1lGq7VYOCUsYbGn+P895fqIvBT1WIt
         DDQg4zYEK485Ny3G5o5A2OywxnJTgRuPwhBe12g4aSy14f9wqKfBTusVcDyaZno/SuAi
         ZoWEqC6XH+JXHKPhOsjjvo+Tm63kaA8IQhEOBVvhqB2CT2ek2059D7oU8MQE/Zq8eKtB
         qyWC3WYmRR+a3swYM4C96V3cFoOnh1Hmruqqh03DmUdpaFqlzv2cX+xSs96Bj0jlfIO0
         Xyow==
X-Forwarded-Encrypted: i=1; AJvYcCUKR82ul+y7iIQt1l7UplA+WXA98OFpkUK30O/tDW3wLRTxphBYUGrTwbl2Ht8NuR90UJNeFkHzhCM3@vger.kernel.org
X-Gm-Message-State: AOJu0YxnkJX2+0HIFVyj6KOOH0HyoGLjeJyAGZg8OBc0GNEPetTr/tfV
	4f1hwH/ItChuTjUFvM0gS+uMVQq829KTPUW3GVcO9XKNy25qBMlq6SskzGxMQMgIxUXUphT5YfW
	hjHuVcyCBC+41hZVpSAh5qAn/TFly7HOSWj62GwgfRZodUmXugrYxloobwMTiIx5f
X-Gm-Gg: ASbGncsr2SX1pWH/Bx9/9RRukDjGw0AnaXzIEZ4jYpqpPqztjVvbMp06epQJ/EOPmgD
	Pmg3DcLGGCyGo/j00gdz7ruwj2JRyaNEGyeaL9Y5shLBHlilqzsPbBAAHRX1VN8qyHlt/URECrf
	SrytC80yicP/BywJOjFkNlEDPp0LteiztdK3rnpKmQ1mp7eB/TJWCSjoroflb1kbFDHDYNwmvF4
	x6R5j9/RdhcP4tlb+wmJtWfC2/HW/+7aroRpSe8YM6xvNkk1k1lYBZ69Wzi/bdts5oN2Ca6+wnE
	zlaM0NJ/uiqIZ2pmQHsz31f68MjDyNvhyBM4rSfzlZRnps9brU5X7FPciXO+jwbtxxCT+c603Of
	E7HIK3cVTPcwpmJeuulceZQ==
X-Received: by 2002:a05:622a:11c7:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4da47c0d937mr52987061cf.2.1758887053796;
        Fri, 26 Sep 2025 04:44:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFz2XpJ8zkYTrM3z+ihZ+zL55IFpqfrK3wxvNiZMDU7ItXJekbmq6vrYvuyQSWMMfHjzIgsig==
X-Received: by 2002:a05:622a:11c7:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4da47c0d937mr52986921cf.2.1758887053288;
        Fri, 26 Sep 2025 04:44:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f6904sm345662566b.66.2025.09.26.04.44.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:44:12 -0700 (PDT)
Message-ID: <95ca9b61-ffbc-4996-b68b-e550e9ee5fe8@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:44:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <ejcchgc3isc5f6tmiqbxqihmk5efmbcyhv3ehuoerb5ulkd5an@g7a2wc422l6n>
 <60c65d7c-1564-40a1-830b-1c9931776fb7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <60c65d7c-1564-40a1-830b-1c9931776fb7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: B0r3BXC5eHe9myJudatfzPaBfJIckR6L
X-Authority-Analysis: v=2.4 cv=JKA2csKb c=1 sm=1 tr=0 ts=68d67c8f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=oYxpnEykKrceSWoAYDAA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: B0r3BXC5eHe9myJudatfzPaBfJIckR6L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDA4OSBTYWx0ZWRfXwBhl6sDU/Aw5
 BzbncS9p9DDOcswF0Lv3RfxoC6cdaOlsE0vrOBaEZdFkc+DYv+cVpH1cebTajEYcaP9urCAknd0
 hQtqu1Pg2H9aG8raEERTXr99ndM7E61xwpyOKxl51VpGmhxSwRXXgDbjdChl28x/NOJF0ioZNMm
 XlXDmpjwEAXguE+AMk5hCHpLWopCKYi/ZOafrWRLpIBiwtEWGFtCo3iuqhjekoy+idZKhsfZm13
 0MU/B2Qqi+IHIgtRyjfCOF1CdkHpE2Y7Jt0VSe0TLtKHUupFzwYuUFSc++GgdjmdY1uzTeUnSMB
 a+A2fcvQrxL2MLw2D3+mXjKMsL6SMc+sdOnAvsCqmNLtbvtuwkD8qyACfHR5Y5nX26a5p4XEkHF
 Dtv9/yOM2pq87axIs3F6iTkKuif+Cg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509260089

On 9/26/25 11:11 AM, Ronak Raheja wrote:
> 
> On 9/24/2025 7:09 PM, Dmitry Baryshkov wrote:
>> On Wed, Sep 24, 2025 at 05:17:31PM -0700, Jingyi Wang wrote:
>>> Enable more features on Kaanapali MTP boards including PMIC peripherals,
>>> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
>>>
>>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
>>> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
>>> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
>>>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
> 
> [...]
> 
>>> +&usb_1 {
>>> +	dr_mode = "peripheral";
>>
>> Is it really peripheral-only?
>>
> 
> For this initial submission, we haven't yet defined the USB role detection
> infrastructure, so it didn't make sense to include dual-role now. The
> controller supports it, but without the connector bindings and role switch
> implementation, it would be non-functional.

I see an internal patch adding pmic-glink.. and I see no reason this
wasn't brought together with this version

Konrad

