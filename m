Return-Path: <devicetree+bounces-115830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6E69B0CA6
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:08:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12733B25E5E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09C120EA2C;
	Fri, 25 Oct 2024 18:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MjOpwMyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514AB20D4FC
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729879621; cv=none; b=dJxq4oH64oBOc2vOZ1ksEFS00OD2yZty917ElEcpZH16G44SHYCVd1YW2Xk9x3i7FhLFKlH2T3YMMo6pEw20xHD0HMTtggWtdSeCQ6jFBVoXTyK/1G27IATEWL3rvU3oa8i/yE7Hwp64C23zee//G+Kp2nIXhA5G/abRjdbM1Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729879621; c=relaxed/simple;
	bh=O45/uWkitsqf5zqNB8GoVJ4NSW/gRSVWnY7ij0UaX+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NATJt9K6helOwHoOzXSoMIjNmDLBpNW7uG6r9jQuKIFN31NIsDGhqsK+74b1O13ITP1p+e/JkBnGGnVg6jJoYVtIEwoXA+n8hvnwHwc/hNbt6DgxM6/9m63py01pJDVISeLEyaY7lbbt+Bi50/y5yqPZMcxPnGcs7MvQDan/fxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MjOpwMyN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PBh88U018075
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:06:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qtys+UwYQJDee0TDK9sL0lOsRfu/ry38lObN7fPTrtc=; b=MjOpwMyNoFf/Uqfd
	hKFNYqtNDvck2NsOE4H3+AfDUMwVqLv1CzcFi6wELusO8JyTHacUfQLuZu4IoXrX
	yD7ZU/LNAUKFtwOYxo5PetgZvm2ockU+tfWYxS60rP1PQKGtRPwgpuF3QVQ0k07z
	boMdPGRRs8V3km8nAmYRGQ2MCyEa/PUGx1uuTbbP2dNgITzr1zcDhtUgX87qyarF
	e9Aj/ALSUQrji0CNiVj7l1KcsVhKMVNAUUdEiCO7HVjMcP69YWGSZU754CJcEswQ
	A9RqFkFASjn5Ha2G7Hz+kF8lR2kj5jxA6oqZJ5+6gRnqzKe8r8Mny2Y4SCUiwGyh
	cY03sg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wj3h9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:06:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cc290898adso4598336d6.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:06:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729879616; x=1730484416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qtys+UwYQJDee0TDK9sL0lOsRfu/ry38lObN7fPTrtc=;
        b=pvGq+0jUufFKOWYB94oaYITIZ6A/DLrRVuGNlPq5ddj9Id1ackLv3y4sgxcqjiQf0s
         gm7BAEfs9jal9pHA9Sw79GmxKlskCfyEIFXuwag7c9FA7YwlGQX6bad7gd9SzDypW98r
         /BI8XBzb98tznnpQSGHAs3rfFmNqUoFWistS6gyDMrE/YQZzPpt5dehuGY7tcchLb09T
         AOKALY0v/nqagyXNTf6IU4eBbXVgFVZAKplk/Z0bDypcwlDuPddMmdhC0071BmjuSOMW
         QnK3qAoTEXzqmgYNXGQrq+g6c81OVkvl72LnhQciPyEH0YPZZtYHfXsGQNt0nsOqLJZZ
         5LXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU84IYtyTWLknYpiMZixyvjW4TrF4v6xFJxz9532G/0IODmoPDxs8ch8RMxDzlYfdjLaCQi9qEIWCtA@vger.kernel.org
X-Gm-Message-State: AOJu0YzfU+mV5kR6Uxeo09VI6BqlSInsZ4VQ1ErMHzoWiWWZfbVWrkG8
	f5nV9QU3Akn+72O7lZmRJJ9HgaRQehTP0jo6ek70pTmSrW322LPfRq8spKDkY2F4ZkUcj9FuCqc
	csT8TYMUfzpACtYM7k7cM9GWtvDa8og/QsdZnzOQkF9T4BlUxZHbPZ6EDtDjV
X-Received: by 2002:ad4:5aa8:0:b0:6cb:fabd:b12 with SMTP id 6a1803df08f44-6d18558937fmr2649296d6.0.1729879616387;
        Fri, 25 Oct 2024 11:06:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXtOtSHJj19wEDf56FplPgcbGEqvuB1SyqztSMsgdQ4IgkRD+q5ALsO0BouBg7l63pOs+L2g==
X-Received: by 2002:ad4:5aa8:0:b0:6cb:fabd:b12 with SMTP id 6a1803df08f44-6d18558937fmr2649136d6.0.1729879616114;
        Fri, 25 Oct 2024 11:06:56 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb62c0c8csm846667a12.42.2024.10.25.11.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:06:55 -0700 (PDT)
Message-ID: <165dbf35-ce82-4020-a93d-4170217da32e@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:06:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sdm845-db845c-navigation-mezzanine:
 Convert mezzanine riser to dtso
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Depeng Shao <quic_depengs@quicinc.com>,
        Vikram Sharma <quic_vikramsa@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
 <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-2-cdff2f1a5792@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-2-cdff2f1a5792@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Q3XevSqQu07hH9igHqM3C8HkWtMFsvSS
X-Proofpoint-ORIG-GUID: Q3XevSqQu07hH9igHqM3C8HkWtMFsvSS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 mlxscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=827 suspectscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250138

On 25.10.2024 5:43 PM, Bryan O'Donoghue wrote:
> Convert the navigation / camera mezzanine from its own dts to a dtso. A
> small amount of additional includes / address / cell size change needs to
> be applied to convert.
> 
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # rb3
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

