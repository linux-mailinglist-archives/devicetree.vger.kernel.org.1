Return-Path: <devicetree+bounces-133511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC2D9FAD5E
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:59:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3584C161FCE
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6471196434;
	Mon, 23 Dec 2024 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CX2LvCCA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51052188A0C
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951535; cv=none; b=haVAUoYVOL5SvEXR3X4a3AESX3s3EdhDVFw1u7vGIz95hQJn3tP2S9trcimrv2FsPQFnm5tx+3DVdlV+kDVhhsebrKWiWBR7Yh2QqMMOBTdbWfIV08oPHmuJXl16gr7rzOQ+hQXHEAi/VEWrdjfXX7cJdRXFSWyNNcwvWj8Wk5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951535; c=relaxed/simple;
	bh=e0dWjpJjQcWCbx/u+A6w6OHAbGzyogCIQYgZnzSQAGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L084ZOXfhljfWdfT12ryildX8Xpi6wKAx7tEbDPLQKl5WlYNzuYty6CACt6jY0x/6GNpJspVtAMVvR3vBYkH2goVUAx0Mjs+Zd6a/bcPG7B1C5GEn23Rl2ymbcnVJVJWE11yP3mEz9DSc/N9jOZJGl87ZoYSX9VT/ibBp20t1oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CX2LvCCA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN5rWEd018283
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:58:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oRzcPI1+TuTQC4gzrMMt9/un+Wkls1wYG08sSuxyaNk=; b=CX2LvCCAGPX5Th4h
	4SJKoSZ50o1cYLCy9dyoSBwe5ECyRinKt7sU7EKss/bBVbpKKEDhUMMFyPOPTYjU
	a/095fO9EEukT4FMgS0YFIluRaKKIwxvHNNC8MRIXRhefoNFkoiWoEgwYOXYFxTN
	v49GoivwSkUi53fcWFGPJ+dzepa7ZxgiEiqi+oGOhrnVnaydaOdCUPsD7z6GqS/v
	3Oal7AExlRwHBzRU/M2WLMU2kwYMD2z8ChFsm7PUpVzNCbFR97BoES/RDCyEJgAp
	Wf94wlSjJ4PXT7emEOYyUgHuH2AuxGXWqFsX7WhgJTMLCRuFb1/gphZg4wErzryU
	CS6jzQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q24591hx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:58:53 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a437e5feso9582381cf.0
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:58:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734951532; x=1735556332;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oRzcPI1+TuTQC4gzrMMt9/un+Wkls1wYG08sSuxyaNk=;
        b=HXFw39e1xbccP0gBV7F/pWe2pfCR9jCSJZFO1ojX8YQy90v5pccwm7mpTVunst0Wdq
         snffzw1uuS+AuCzpO4H/3njzpoDkd642ngzkOPMK1gAueqAmWuQ703CPQLoyqg/1Wqe4
         UxUhfVUrOj2cyeCpb0bJUOvHr3/w3Tw63VddqflfohFggmfgXbmhUL/GfshVjf/KvblG
         mDww2llJLmv8JM5klmDQ78dijmXmDtqv62npT+YRwO3RNSz9XBEcrM4XyNXCTnJ4Ub+W
         3KZ0TIi3hYEnT2lyOW9mO38P5LTcVUsCyrvSnqYs4GvlaTD3v4Yo3fxKxBBayZ2kIitE
         LS7w==
X-Forwarded-Encrypted: i=1; AJvYcCXLSmrymccm3oHhXckHwDguJy8O/NLF5BP4BxOTazlSPpyFwhAfYiAQCZozofCzPeEbo9BiqXCng49r@vger.kernel.org
X-Gm-Message-State: AOJu0Yws2pzoOLjOe1DcVTkiHGghhUSFaY1QlNK0PufqhtSl2TEff7pZ
	FlLEVe7WZGxGBIYCglPN3a5LulojLkQDAfdzPz6hPyJQPY8MPRBEfd/8Yd0UY04AKW9pnFizRet
	1HsPQ6eZUzKphJW1Om+0UbWMczSACgzutNNxPFzc4V2rqsAXsI/0lJjCZ5syD
X-Gm-Gg: ASbGncs+UuyFyQBNAtnSSNkc+wEAY9cPHnTEiD0f02SDoX1PzCyk+hRG1fVAVCxrW65
	8N9phNyq7+kWZAMH8L12F8poEIQNSbdswPpvogqJ2bMZ5kvU0ZbkedSmH/c3K5Y+lsNIqzOrFfR
	g30IW/f0TKXFCSwAtOTeTq1NmzgZG/ovzGylntkyFiy4ol34Ar4+xE3ivSFilS4xLbfAjb5Ekut
	ySPWxLy5YIN++ofkBFN+wOQhx+5+ur3CyvTCbwIikcdqwJ7Kb1MT2JRAFvgckbc4kFuAsP7Wut3
	Z8akSKZ8ehH/O3A3+CEjx/cxXK3pLLu0RFU=
X-Received: by 2002:a05:622a:1a03:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46a4a8bd016mr70563481cf.2.1734951532058;
        Mon, 23 Dec 2024 02:58:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdV+seDv2awHbdKF8xhNBkzYxOk4O2z39YSAHcn8Bj2t1saETjBiJ6SGjFFHH/E7HlLw3rjA==
X-Received: by 2002:a05:622a:1a03:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46a4a8bd016mr70563371cf.2.1734951531681;
        Mon, 23 Dec 2024 02:58:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80676f496sm4780829a12.34.2024.12.23.02.58.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 02:58:51 -0800 (PST)
Message-ID: <88cf612d-cc3d-4cfd-b6ba-49739d598e69@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 11:58:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com
References: <9957783a-3066-4dba-ae9e-d52618fef964@oss.qualcomm.com>
 <20241222052018.270053-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241222052018.270053-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: t7zlx4A6ZmkoPC_QoKxniXFV6Sa9zhja
X-Proofpoint-GUID: t7zlx4A6ZmkoPC_QoKxniXFV6Sa9zhja
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 mlxlogscore=844 priorityscore=1501 malwarescore=0 mlxscore=0 spamscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230098

On 22.12.2024 6:20 AM, Chukun Pan wrote:
> Hi,
>> I can't find anything to support that.
>>
>> Maybe Sricharan can help out here.
> 
> https://lore.kernel.org/lkml/4a11d946-3c32-42fd-959b-32e61cc61ab5@quicinc.com/
> Based on the instructions in the link above, is there anything else I need to do?

I think Kathiravan only wanted to make sure you have the latest bootloader.

Looking at the documentation, I don't see a 1.2 GHz frequency level for
this platform.

Konrad

