Return-Path: <devicetree+bounces-167206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3C7A89A6F
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:38:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 081E17AC3BD
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C4B289343;
	Tue, 15 Apr 2025 10:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XNM0dWHT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA92D27EC9A
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713435; cv=none; b=I94tgTXu4JtEM+O9DlO7ISKCmsJVpXcf7rq/ux5T8L6rg6HtTlJ7zw+IZFBpnPJMSBTrBGKzPvL2Z/K/6aoyOjqafA6trxsJ+7ChI28pSCyqEayql0eu3iq/H4d5nLlkdpp7/IBGy/52AgImsoDugCOFAUXw7SbPjvq2G0ysUvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713435; c=relaxed/simple;
	bh=+3lmL6oi2bASqh+SzBsmbskw2dAbEFAbMK1HUa1nNI8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P+Vj2AdPUjsCubBLUKPDQjc1/oyALcD/kTRaRSTFSB8qk4YnO2MgjWZ1CqOwpyIvAXiAAolQBla2/e63e70fXchVWI8N7+I1OGg8kxqNuoHGIXMM9Kt5XlcQcyq1MUS1F0xGkoHJaXKCVpYlfdDtvQj0gs7T5tamCwOQc0ImnZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XNM0dWHT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tJW8005878
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:37:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3qYSG9EAZOKsDcJ830qpQK8lVa3VINumKE9Aa+BZiDg=; b=XNM0dWHTPrc+wN7d
	LZaZ2M6qX4bImCWk5GJh8adE7V87AJUyeFz4EwEJp48LqjywU88VHfokdyuLzl7n
	cdQJGZ23nmJpnN76hRZGVUY2Qh6dTw11p+dI11KlVWhM+R+VoD9rWDNjRblFYvve
	5NJUAyTBJ/bfrVeU/xbl0ew1f0GhoV6ZT7ft6xd3DQzSmOGhi7LFOL1irtx3+2PS
	kq42sRgaptaSDqQ0N+SCCCj08H+8p6FQbSa58eatznNauAXpexB9F2GkTvKtaC8D
	nXvl+jeqPqxTpWiUet2BYry+b+3X2txAbYx8c5TK5HmxYJ/fnAZfmXMLfuhxID5m
	mqTqag==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj7w2p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:37:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e906c7cd2bso11716616d6.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713431; x=1745318231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3qYSG9EAZOKsDcJ830qpQK8lVa3VINumKE9Aa+BZiDg=;
        b=xT4+NXkF/95/dGst7mU4t1rbWgS1vKFEJpplpbFdGjNbtv1JnUiA5JZ7QtqNDxWjpP
         dQ8VHvbZCTkpixyLw98cfSeuArRwtJCPgSQ7f1NvylVIQ4GydW/y8zwY5zyjZBFxw8ox
         GcT9qKsaIWaIW4WVRYmxRzPpLR59kUeFkyiSVlLY0oAaAvNqEjHy01k6d9G4j/a9fsu9
         wotzzOtymuniV0P79cFSn4i/Tl9lReHkCulfAHBdjFQK+msN4v7wpsgEzmBEUnMKCNCr
         8IV9HoaIQvAeBjTl0dXl02mJQAikqhkG2X/gEwdge8nIiEdV5Nci1GaM1ZIgJfSDfQ8B
         psBg==
X-Forwarded-Encrypted: i=1; AJvYcCWlhYFFQLOwCCmbjdNFR1T/ZzhPsmI5EZkHNEM3MP7DnhXk/+U7wt26XTNKSMR0W1M2iV8C952CYH6F@vger.kernel.org
X-Gm-Message-State: AOJu0YzBOMnNpop5mO78PlQvtDvWCd4anvtauDLqW26yYQ3DhOazYdJm
	PT2+l6ZrhT6cK2lwROqCSpOlyGhWkNoDLlVmqR0ZA0nbfhsmeFOsOtRWQqySmVp9V4gkc3U2tp2
	o9B9zOZizc50tdfSV3k3KcgrC9uT2bZ5WejU4W71ZLYjAN2sCUgwz+hSQujZ9
X-Gm-Gg: ASbGnctOAANYt8D2udEcNI8qU9bIXqdokSvK7zoxreBC17T7KTFsFc4SdH8UZ1RVXQk
	Yo5vocYR3z3tu6Zumdh5nzmobZd9QhuSrozJea8Y5Low7WYuUJl9otiKQxtwVq0ntdCap5yw9tU
	rD81Y8nIJ2hZdxtPfqW4sHbZWYmKER3bZLL12zbfhRbmsHFryTjv08Cn92WLjn1WURtC8Eao1SE
	DR5JO+McstlRBnwNkgH2QodqXtTQXnP5259zYFVJ02TMCFPutYa0YzSBdDWJt2auctvgWAtnp+e
	VOeZLRjzNUHS3O40/rTYJM1er30ZWDmOR7cr42sSex6HawDknaqsDcf8v9tfzccjC0g=
X-Received: by 2002:a05:620a:3197:b0:7c5:8f37:1eb2 with SMTP id af79cd13be357-7c7af113d7bmr802860785a.9.1744713431225;
        Tue, 15 Apr 2025 03:37:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8r7n72G0daVWxWBawKKMJy1SmTAH2H+0oI9U77ipAoFv9U+PBQ74nw/0I7ScuZs5wwwwN0g==
X-Received: by 2002:a05:620a:3197:b0:7c5:8f37:1eb2 with SMTP id af79cd13be357-7c7af113d7bmr802859385a.9.1744713430864;
        Tue, 15 Apr 2025 03:37:10 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb424fsm1054699366b.120.2025.04.15.03.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:37:10 -0700 (PDT)
Message-ID: <117692dc-ff65-4ccb-8eed-70f713daf67f@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:37:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/20] arm64: dts: qcom: sa8775p: mark MDP interconnects
 as ALWAYS on
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-2-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-2-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fe36d8 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=ugsCTDTZwSmivG4p0MgA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: C5MEr5dCjq7V5g87PWepqIKsaCtzafhC
X-Proofpoint-ORIG-GUID: C5MEr5dCjq7V5g87PWepqIKsaCtzafhC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=666
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150074

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Change the tag for MDP interconnects to QCOM_ICC_TAG_ALWAYS, so that if
> CPUSS collapses, the display may stay on.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

