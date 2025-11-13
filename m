Return-Path: <devicetree+bounces-238146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 47105C57B48
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CAAC14E9375
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC0F221DB4;
	Thu, 13 Nov 2025 13:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AoXCpOsh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZVDKwEVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3285A1E51E1
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763040853; cv=none; b=IOZSNJKiSY05nAqe/+jQt7Fah0quM1zmj8kHa61nnkBRzL1Spw345+C/nMppBi1gKvec3VgUwejJdlVJPbDrsKiwEjCCSJyPZ7fOfkYrZsdQtercg5jVJ2anoXORgmvvdM9p9ANpyEdAH5lfV16/ttzdiBarrLJoJGwn/NILPgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763040853; c=relaxed/simple;
	bh=+IP1XudSJ38VP40JgyddsTiDM+XvNBXWL/m/zF2pMPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jhqmTbURX+hqtE05S9WAyWu2xxRMyIctL2nWgFf6gJQTdZcHq7tJtsAfDyJFARLuMys2nFPod/C05mNec5AJJaOjZshcB3QOY8zsFLVZ58WMY67Vtrrjqi6FhFRSfIXRXHqYZyCExbb7jwqKO7uecfHn7nxQRZvG0sN0ba3s7Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AoXCpOsh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZVDKwEVA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD8ceVK2962362
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:34:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KlFdoAYM8/VYA6GdFSWsSZk5wCZjObFXEKG3Wx/Bryk=; b=AoXCpOshHgJsGACk
	5F1dN7j2MoHce1jTJtQArpaZPZ4MTlZ6HHWccKnw4gKbc3XLPchPWL07hOce2H1/
	jDiy4M2lRMMZGXZ7sDUvpbBHZOWorVaEXgq/xwLud1IXwYQTOhExf9hOLg4yExyS
	h9Eh4BTTAWfq1PSfzWNp2Lmy78wRc2PyJmMT3UIm7W0kmXTdf33Xaq2A3hTUCwiw
	JV1o2HKgRqp8JMYtG7nXk7wOwO6JROBgBlLvBSZvCux0RvhTE7xWQBFnEW6dSYuY
	M21QQQO/9as1Wp9HjTv/11VgU0cDqqc6RicHCIN07Xnk96gYA2P5WSlMiHxFjfqL
	jTqTEg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwbpups1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:34:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed83a05863so2160881cf.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 05:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763040850; x=1763645650; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KlFdoAYM8/VYA6GdFSWsSZk5wCZjObFXEKG3Wx/Bryk=;
        b=ZVDKwEVAWQmhfCHe62RSLVq/JQZZ/YSGyIuH4pE35mjxXfbWSUpXgMWkh3YF6/56tS
         XjN0k2prdAwujWQtTmtktQrb6DX4YsuhOR54oOqtSWcVk7QKTvAkSBt9IMUdpmiCioyp
         NGNqo2Uh2dn0sJHJyDdgcAraLdAJZgAsZydrOUYop7nryyIr3G7C74cgg48XySwdysu/
         MWRyC7XUQMCPQlW4B6WI9YYWfxYWT/wk3YTVMwQayqKqKxTewvhzgQeZaGbtUctO12iw
         aRcvl3tICh/1JwcyWd5FGhE5jaIFB2ztzlAgRDNKXMqyqzA0CDYysqZYnjiXUsp/0N+h
         KFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763040850; x=1763645650;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KlFdoAYM8/VYA6GdFSWsSZk5wCZjObFXEKG3Wx/Bryk=;
        b=cCIza8iAMmooDE2HtCo8ENCCOODscq4hWR/hRvzvEUOEIyqV2kUg7bdWlYsL2Vmpi9
         LabO92hqaQFFoX1WqkwKQONzAuE2U8TEl4cXMjC0IXTV3cjCQhalGy/6E3M5tbGpgZZ+
         ucekw03c3ryXIJx2H2Imw1OQ3eAq9eVJcfUbOAs6+fW9lZi5GJsaSWxQPOXtA1NCf+bB
         PnlUH4r3PegxIdIsrtGSFjWFrx0vaO1aB7oFL1GpOSTGselycAZ7iCuAm0BqdLR1ZjXQ
         xS7d32meu8EbmA3x9oD+eT7tREuXBiW0VFI/czLmEMYgr7tKekuRIuLCXkCZe/yMyP9H
         fyxw==
X-Forwarded-Encrypted: i=1; AJvYcCWtHJ/2lGa1jYYMafamngwCwPVuPfkdNzV97YR/sKEMOClmITEbVbA8qFz/5RQcepXgdapJ41PhH62f@vger.kernel.org
X-Gm-Message-State: AOJu0YwWRgBRPnwHuG0sWfoYKwst140qNrT9r8ftFq+L0nhunBjcatj3
	e7CQ9WNIsDLn7ovqfEAWRHkQ7Tp4XVOdss5xcAhHJRp4a1rpwTFus+abMhxGtcnTX6Xv0O4e+Jv
	e+jFiAI6QlSjAHGJP37kt835sDW4PcblsvXywq7agRSadUiC278qPulYPc7W4u+qf
X-Gm-Gg: ASbGncvokpYiiWj8l27QxfUkBi871zrapeUk4Bz7w0SgWO4Wg6z7+R+Zy/C+5KugdGV
	nAs7IcSsanzpobLoLbPFVUKwMIdjRhtuqykPoiqFxb97xG/WgdBx5bwL5OL87h9U0p7M0c34c6W
	ft+/q8UilzJuAcfW7vK2jP/ndzQchmuVCLzvcvOzAonxZcHq/CM3ne7My5qSW2gVyICjPks2GZC
	mPPGnhjM/JmfmIGzU5XFdlyOlwoxMrBisNZ2//KhjMZo4rRZcZQVtGLSKN8qL228TuOxlHCvU8h
	hnkodDEWudBuotAdWmg9L7ovKqaXZFg/c0UND8c2WjKdH8d15hzmBammBtfBQm71TURNLEi4ItC
	syrVGp2HKAQTrGyvZMzJbOkmfwEeLh5mkQmsCClPi504RJbC+NlcKKJlv
X-Received: by 2002:a05:622a:148d:b0:4ed:b2b1:18c1 with SMTP id d75a77b69052e-4eddbc9bff9mr56111051cf.6.1763040850259;
        Thu, 13 Nov 2025 05:34:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPE0sRVrglN3s1Wc42f/OsKVhH+8tSWcqanaQmO/9xNP7f5H7iuIa/iIFmPGwOU/XlckjLYg==
X-Received: by 2002:a05:622a:148d:b0:4ed:b2b1:18c1 with SMTP id d75a77b69052e-4eddbc9bff9mr56109611cf.6.1763040846925;
        Thu, 13 Nov 2025 05:34:06 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a49806csm1453196a12.18.2025.11.13.05.34.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 05:34:06 -0800 (PST)
Message-ID: <f433a645-5af6-4813-ab76-687d1ce22b0c@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 14:34:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: interconnect: qcom-bwmon: Document Kaanapali
 BWMONs
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Amir Vajid <amir.vajid@oss.qualcomm.com>
References: <20250924-knp-bwmon-v1-1-56a9cdda7d72@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-bwmon-v1-1-56a9cdda7d72@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NvjcssdJ c=1 sm=1 tr=0 ts=6915de53 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mygda9kbUFeXYpHWPk8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: OcERr1xP0rrkRRP5nSYtrmf7d6-7oAxP
X-Proofpoint-ORIG-GUID: OcERr1xP0rrkRRP5nSYtrmf7d6-7oAxP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDEwMyBTYWx0ZWRfX7+7YKEcE4QG7
 qgzWtAd3HoPRnX9RzSNjC0TILQUb5NrxHPcKhUnqkjutpFCcczuHZZFNutxPc7MeOlDxHJ6Qcdl
 gGpdzqYwyt81hjU6YSJ8Td6YdfNLQLW4ubdQervf58eeKG7gGBH1aIi6dTEU1e+Za1hutwPi9kg
 WFheVVSAy19tBnRbnUIijVHEONJSrS2PX6/KziE3TQe5ctCVBxOlGDHyBnNT9pxl2KP9Y1w/1Xj
 E+wrO+M6Qt18QRiuoCPJReGgpZ2wof6E/m9eeNEWUGtbJndrdlaBUfUIEuM4K4PSaJlfUnuE04b
 1gF8f8V0DldU+KYH2bsGxsNJ3sjK04duTyCKM1qiWz7oKdnWQq5xBVJSWlAL7X+uOzZW7KLbUSz
 Mspa1SvPxkMXbQWDWDvhlAcAae6jAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_02,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130103

On 9/25/25 1:25 AM, Jingyi Wang wrote:
> From: Amir Vajid <amir.vajid@oss.qualcomm.com>
> 
> Document the Kaanapali BWMONs, which have one instance per
> cluster of BWMONv4.
> 
> Signed-off-by: Amir Vajid <amir.vajid@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

