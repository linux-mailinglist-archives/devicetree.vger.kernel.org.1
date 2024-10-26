Return-Path: <devicetree+bounces-115950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8FD9B177D
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 13:38:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCDEF1C20F95
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 11:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B5A1D414B;
	Sat, 26 Oct 2024 11:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MDz3mP/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788131D3654
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 11:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729942726; cv=none; b=OHiee8mb3YJs9nSUELtFvGq2BucM1Az5uosdwHzC2TR5TcXuVB0Jh9E9wPB603H/FOB22XFrKKOWV6bFm2qFotlAabGpaGlOybLMSsIN+5BzNLDf9H0gbEZz8yys2YXa3r+W7TE6PMvCwLYWfWLvUxhzowx85SmvJ/Gu9X+EeZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729942726; c=relaxed/simple;
	bh=wxc+dIWaFDqYXJ2UOmZG5MwkG5ZYvvsWMsSRYr4sCqo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ni1XnuUQAkYlL4KMaJgWjEQEyC8dYHHNdritPFAzJQEMrxdbMQEP74UfcHyyzzQ4VnMtIjkegmoPY3366rjSVVtVWDUbp3hJy/x0KMfBeTZid5Ap4Mek470I/1MCYT7/2oYxx1wFaf49leHaaX8l1tYHWd42Yaog8nKkrZF/gj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MDz3mP/Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49Q4NlZK015443
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 11:38:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wxc+dIWaFDqYXJ2UOmZG5MwkG5ZYvvsWMsSRYr4sCqo=; b=MDz3mP/ZMt8WB/wA
	IcAO7pwBza5WgovDX3dJprlxB1WBXOdlPTAQL+bugHUXQHO1DzJOx3plmqFgF2/Q
	s4nN4CF6YY8HZIB60+OXGDQ11A+MGYSt/PWsAmJpye2ZZ2tS85KWDsda2TxRuBiZ
	J6zLWeF9baxcRvmA8kMnn7BbcgxG1lL9vHH5zlQ6L+9SpExDDt4R4EwFg08JcEJu
	oe0jv4nXQFZ3i1JGYJEDBbp+sBXu9r/eS8L03Pj7u4q/txn/yX+IPtKowVUnbAtK
	Lx59EVD2BQykqmceCas40qwhdXfaalHByj5wjrcea1NCz8jR+whdjXkIfMHTcQJv
	WRYixg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gqcqgx5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 11:38:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbf3f7273cso8363576d6.3
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 04:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729942722; x=1730547522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wxc+dIWaFDqYXJ2UOmZG5MwkG5ZYvvsWMsSRYr4sCqo=;
        b=o7ZgO+FIPvO8jDV3SRtHEZzVrx+tCo3XF6k9z1L+MqYuwDDwAAuZjmakHT8kFaG7me
         8EIfG3OBslS2wKmASkve5c2pXZz3f2uGHOEv8/9/Q6F2kD157ewlFPcr+cusLP+yeYTt
         9Lkug/xpPbhhpyZACjzHpgfOxURKSmwbGv1A+rX/R7JYsB/i1osQjkAk7SomFksZgUjg
         p6H1bgl/TkPQ/qw+DvADqY3GmkWlFHvHbDvTONEEvvdH/TPpJ23Xdn/ZqnUVtA+jlMgN
         vxCLjAEouqSq2t9sVmLXtA/B57c+KCOPrOk8NdELZJrJmQzFJFEZ79y5chHoWLqQgJiQ
         l43g==
X-Forwarded-Encrypted: i=1; AJvYcCW4JMDrgQw9WomG+0tcSWwM52tQJy04Pg7auLj0W0UDx7EsR6vf/2kmTre/UUNp6qGCxbUcXtw/Rhch@vger.kernel.org
X-Gm-Message-State: AOJu0YydVokrqfc9iuAmIH8AmkZzFZXY0Q33kqPShLD2x/vBKw6B3uiH
	8CWgBaZfpl/dM4Mpx5cZkEQFwZG5oHDv08Cd2dOh140O3/qqEpRnCbOVZwcewvFDlIsMMr+QW8T
	DUjDVDHTlQLnYu9OdU5CV/OkJ+2HDuxsrPV7UQmSadbi+XE0O0l+vTsq4Fasd
X-Received: by 2002:a05:6214:492:b0:6cb:1fad:82b2 with SMTP id 6a1803df08f44-6d18566505bmr16966036d6.3.1729942722384;
        Sat, 26 Oct 2024 04:38:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjV61HARupu7W70JLeA+UqwYOAVuXyIFMiS4jRVtOulAOXFcqwYl1WNINTuzhv44XyFwqZCg==
X-Received: by 2002:a05:6214:492:b0:6cb:1fad:82b2 with SMTP id 6a1803df08f44-6d18566505bmr16965886d6.3.1729942721904;
        Sat, 26 Oct 2024 04:38:41 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f2994ddsm164820666b.110.2024.10.26.04.38.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 04:38:41 -0700 (PDT)
Message-ID: <768a1c92-6e1d-4d6c-90f6-efe66f68dd0e@oss.qualcomm.com>
Date: Sat, 26 Oct 2024 13:38:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] arm: dts: qcom-ipq5018-linksys-jamaica: Include
 dts from arm64
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Karl Chan <exxxxkc@getgoogleoff.me>,
        Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
        Sricharan R <quic_srichara@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        linus.walleij@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <20241002232804.3867-1-exxxxkc@getgoogleoff.me>
 <20241002232804.3867-6-exxxxkc@getgoogleoff.me>
 <f2eck3tudqoqyylcknfvz77wj52fornxevp6po3y7sov7swikt@asez6wepyl6h>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f2eck3tudqoqyylcknfvz77wj52fornxevp6po3y7sov7swikt@asez6wepyl6h>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Cw_nYRnW1CKFo0XyX2MDunDKtZPwp5j5
X-Proofpoint-GUID: Cw_nYRnW1CKFo0XyX2MDunDKtZPwp5j5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 mlxscore=0
 mlxlogscore=656 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410260097

On 6.10.2024 10:14 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 03, 2024 at 07:28:04AM GMT, Karl Chan wrote:
>> Build the Linksys EA9350 V3 device trees from the arm64 tree together with the ARM32 include to allow booting this device on ARM32.

+ Kathiravan, Sricharan

Would you folks know anything about it? Do we have an open source
U-Boot release that could be sideloaded as a secondary bootloader to
kick it into 64-bit mode?

Konrad

