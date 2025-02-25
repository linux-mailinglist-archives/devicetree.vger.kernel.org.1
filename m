Return-Path: <devicetree+bounces-150980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EB8A440D1
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 14:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A026B7A466C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86EED269830;
	Tue, 25 Feb 2025 13:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WtvwuQgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227A7207DE0
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740490248; cv=none; b=qIFNMP7YPBjrzlYGLczJnt5gMd2b4vHIyyxgiOJROZ38F2M1tE6HqRJtJshy2IszKHHdfbSc/C80ob/eAkWG2vdMd6YDg2gtv1K8tysY0zAKvlFjQNo622M6sxbNWMdlSrvSK4B4C57GghUbcYbrKH6+zC+iUZ0Yifps6rTaK3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740490248; c=relaxed/simple;
	bh=wuAI4vGUijPnTtk+36Nugk8Q7ab8WJXds5NIWN/WtzI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F8NdFuM+Jh8aUOgn2Tdq6Q1Xsac1N8JrEU4TLO9kTvT4YR5iQvwX4UShcEV5YLiO2AIncNy/LZGmv8RUQ4CwyENFTd1lHOwFgbCCY7sgICX97OzQHBfrFxgqkpj9zWu4yrXl1TKH4uXoYbHnvpnQ0Mu4UA8DNPAFnts/55RyWkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WtvwuQgZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51PCaxlZ012384
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:30:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bc2n7N6LrsSsfLdU3/CSzOVYKaVednS4e8P74t418mI=; b=WtvwuQgZGtD64t41
	mgEe4Tqxw7EW+UyAISwxO0LXyEOLQG5xtf+9F6+xkYBeY6idvcooff0a3abOENmt
	deyGZ+hdIInNWPx8bljVYuJnRx+kk6nn504F2cYtB48X60cxeo4XMOtZLA+Ttm1I
	R6JaLz84dpH4ANeZzgOdr4JSpWNQZj7XSsuJuQaFoavAQWx1przf6Er+h4v8Q5wK
	Sre9sEx0JwQN4t2S0Hmi1WgsvOOu/w+os5RYn0ZIoFz05jCJ5s54odgy1gN6uXXD
	UH2PkyYp0BiVCXwrpRIdxm2oOWqUhh0nuZMpmR5Xj0v78O6oTEm+sLeTNJ3pXu0p
	S76wjQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451e19848j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:30:46 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e422f1ceadso8825136d6.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 05:30:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740490245; x=1741095045;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bc2n7N6LrsSsfLdU3/CSzOVYKaVednS4e8P74t418mI=;
        b=ryi5mLTiH0Eq0xX98znt0/YJBR++oApMNRiEp74EqHuKLIpR34/y8JEV6elqXCN0L2
         4q3bEnJvBGvt5jn7mFtK3kpsxhWurUS7xBNnYiMnKhm3MFRC7YfeAOw34ru+/inqtM1p
         FfAPt5k8l3iQcwtq+trJZqPl+MvinxjfMrWGbokgC6Mc/20t1sI89StwK7V5Hafobiwk
         weDjPuc2zjqAfEiOPzNsAEbiJXx57D8F3U69caa+Pm4b0iIaSbkFjnlMdH7QHBkF0OL+
         4giW6v0SLQHuPb1sKZkWl78pPX1YhAe+NHvSsX8c+PaVg15zm/slE8klIV0WguWjN05P
         LYjw==
X-Forwarded-Encrypted: i=1; AJvYcCXZggETVQf6/+YOZ8iFWV1v74WZ4PQxomadAUr9dMZ/G6yDO2U+Wpdi3HOrJqEntF1Kf0hHt/GdyAPm@vger.kernel.org
X-Gm-Message-State: AOJu0YwoofijUItI/poNw5E4h+wsN6TXsxE+JJTgaqRUNB2aYafHzS/7
	ZLrngxDkMh/rg3xlrsUCQCOdX7Zx/BNzjy6oamoy+9Num8eNezgp0nnBJZoGuTv3mm4bWnIEFde
	6xPg0yCoTBVLx7eP7zo1OMmSkKdi0vRWKb61/+fegR95bnjghLwTFz+72tR8B
X-Gm-Gg: ASbGncvIXxLWfgdrYtf2kGvJPU2ofo/ovjCO+vXc+J3S+8HqRXYwvXjRNUtIPm+jV/C
	yVwGrsvTmS2F/V2/ml+IROI0sf9Z5YODn1w/VaGCnhx9SDaBX5qm4ynN/PALPKIz+Gs43HvFUD8
	w1KeMiHSFBGA9hRppIJ62m+san94Qe0w2AtoVpD7ZpB6R1YGK36udAtdHi2rsR7xA5mgmdslej0
	vHKHSHKF6ZKaXKXdC/a1CleeXB3JxIEg1EGciOf2O7OMq0Piwbj1RUE8qZ8IOfPAgTAl2LQml/N
	IeZFRLl+yXaoeVp3Lne16ojzk1C95i2QQowqlXns7lAmEjaB1IsDYuupZREfyIMF2TBNdA==
X-Received: by 2002:a05:6214:c4b:b0:6e4:3caf:c9aa with SMTP id 6a1803df08f44-6e6ae80129amr87622456d6.3.1740490244844;
        Tue, 25 Feb 2025 05:30:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHlvs30Bcej2ehUoX5uYBPU/0u/U41vnUBagzU9ehas+iea8IpGY9brXOMrEMFxTREYhyjkBg==
X-Received: by 2002:a05:6214:c4b:b0:6e4:3caf:c9aa with SMTP id 6a1803df08f44-6e6ae80129amr87621916d6.3.1740490243814;
        Tue, 25 Feb 2025 05:30:43 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed2054d7esm141970366b.136.2025.02.25.05.30.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 05:30:43 -0800 (PST)
Message-ID: <b81fb350-f680-4e50-8cab-89c93f733bfc@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 14:30:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sm8650: add OSM L3 node
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250211-topic-sm8650-ddr-bw-scaling-v2-0-a0c950540e68@linaro.org>
 <20250211-topic-sm8650-ddr-bw-scaling-v2-1-a0c950540e68@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250211-topic-sm8650-ddr-bw-scaling-v2-1-a0c950540e68@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QuKOAhw96ogB8PDCX3ISz2h8sZZ6HI5v
X-Proofpoint-ORIG-GUID: QuKOAhw96ogB8PDCX3ISz2h8sZZ6HI5v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=768 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250092

On 11.02.2025 1:56 PM, Neil Armstrong wrote:
> Add the OSC L3 Cache controller node.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

