Return-Path: <devicetree+bounces-127978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB97A9E6E04
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 13:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F051162438
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFDD20100D;
	Fri,  6 Dec 2024 12:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oap3SO36"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2542C1FC11F
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 12:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487700; cv=none; b=I5k41fcvUkam0Ktucf3vNVhzBuS52ifwxlC3zNinNID0oCgKDi2VzQ3RJOv53i0efs0NiKL1eDZrZq5yLj7sWHWhhISTkjm9N8ITl4HVrQ7mlPB4pXtNXx2Db0udafL+0+bis8Bc0warzxRaFCyP8rLhNyplOmvh8I553wlqCxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487700; c=relaxed/simple;
	bh=69qXwDohScIWAfOVSletqrNr7qyRi4Q8ER4mXTXso78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j9WRIiNzsaxFVHevuxcEdhMwJ8bxC5k93IWhLmF8u+G4JuMlzTqhs2lskPllJJJPigLrXpNWFluf5EvJdROphqLR+4EkyIvw6nMB29y4CgpGmBCUQ3CJ724BG9JDueaZAwhMc8EEohniuQQZlxojAV8C2JnVKRT/f/Jo5bPsuKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oap3SO36; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B67TCtK003680
	for <devicetree@vger.kernel.org>; Fri, 6 Dec 2024 12:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5OKC0p2yYzG/HSgY9TWkAGbxInJSraSIIykvrnmj30I=; b=Oap3SO36aA4Bmimg
	qevVSJjCqQQTEUcGqcUyOEzB/MJuptREbOcmAN6RHC0k/00TGx1uG7vBUyGotksR
	7iSY2PYclrQ/78NrrQqnWSQjYblGrRNfysHHoHM/pwvPH/bICbAt9knU0gSmsC1B
	Ulx/oZojWyFzXoqzC3a2++ETIWGtKd048uNVT6HBLvWqjy5lbr34R83qCRGQYma2
	qYOXE0LmsyxQ9z4bk4OhfibHxNSehyjftnzPJxoClDKMgu2uM3qZl8YWYfPVDaOI
	BdVuMmcL2Q0eN7bCREcql9/1+VlxLhJ7FG851dEF7mO5zSRKJbqwdqeqmIlSL7GH
	uCtR8A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbqm3hg4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 12:21:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-21527bcb6c0so1105425ad.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 04:21:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733487697; x=1734092497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5OKC0p2yYzG/HSgY9TWkAGbxInJSraSIIykvrnmj30I=;
        b=NnV7txlSMbj21ylCJd4BSOyfjX3qvn7zwoYK5VoY+M2xKAIhbvRM1wChxDAIk4iHFZ
         PIERXNhhYiR1iM3kdV1suicdEZi36UCYmqwipwxtn4UAEmUw2UIdbPK2W0eSEjXHEkEV
         v1ZjZUXrwuitM8hdEyTa+dhqf/O4CctxYUzTruQIpLJWefQaixVjvTVAS4ANTkdlwCYh
         ixEoV+xYUaISRkJyhX1oLhdhvqqyuNnyWeau+cXb10+WpUl+S+RHZKKBKEaJTVj9mpyv
         jmzDEyyuJ2vEcwcPoXgms6ancxyzzTqsJufEeYmkkE3wNufgYzMTq9YB3SoKsIauvTxt
         k/RQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMqyCrwPX6k3J4hNagQJp4DVt6qModCO9n6Nc43AS2ta41VtQWKqPwMTYvB+wUS88dF1OmJOotnbXa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5jce4MFXsNk6uNIMuerWHVm7SnDuBXEaDAVXPVy5cGM4/OwA+
	rkH2N1Sr/9eqSlPvbk1IGLtiSVS9dXXJydPnHr5b2M0+k7ksbkynml6NjGXKXNs2ZobRLATJ2Oe
	Fm1Xq115PniFSaQMV1NAJpc+5xbNyAm4anhis9z4dKsZD9DjHR6G1GaLk467g94XfHidD
X-Gm-Gg: ASbGncv/iOKari9+yu/J/J3kgd1V60USy+1Z6QvZOU+JflBpC1oOn+Ca6fUmOlbG5qR
	BcjYzw4wjtcR1J4cXcw6GplwAoi3KsdmXUJWdqdH3HPRSeNiBex/Wg8THWDjKSzh5audCV/R374
	q3VIrJ4V9E9CoNicvn9J0z+u34gCLVHq+gXWg91k9C3rD1PDT9BCI4wfqbAR95oV0QQMsGir2Re
	SYZBaIOOpZO6cp+YGOLAK+9ud1Rs+0oPQS7loPGjyaiza46hFJo5QjNm7JZ1HU3tiA7r6redKB1
	74qYSo/IDTjpBrlfd7qvArQSG5PQ9cc=
X-Received: by 2002:a17:902:f707:b0:215:b5c7:2c52 with SMTP id d9443c01a7336-21614d98afbmr15365405ad.6.1733487697383;
        Fri, 06 Dec 2024 04:21:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFP4i0WvzvqwHWvWzwD583pgEuYU7s1i/4a3MUxHVC4hDHUnMnNWl+iRwgty6HfmN9rqe918g==
X-Received: by 2002:a05:620a:40d1:b0:7b3:2107:2eef with SMTP id af79cd13be357-7b6bcbb4a89mr152022585a.16.1733487326129;
        Fri, 06 Dec 2024 04:15:26 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c798fbasm2096012a12.59.2024.12.06.04.15.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 04:15:25 -0800 (PST)
Message-ID: <f948da90-91d0-43e2-aa3c-27e15e1cc7a3@oss.qualcomm.com>
Date: Fri, 6 Dec 2024 13:15:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Add capacity and DPC
 properties
To: Jingyi Wang <quic_jingyw@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: quic_anshar@quicinc.com, quic_tengfan@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241206-qcs8300_dpc-v1-1-af2e8e6d3da9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206-qcs8300_dpc-v1-1-af2e8e6d3da9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: OSjvxa0eW4rMhpvbcGHcZSqVx8iQfQw3
X-Proofpoint-ORIG-GUID: OSjvxa0eW4rMhpvbcGHcZSqVx8iQfQw3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=841 spamscore=0 adultscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 impostorscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060093

On 6.12.2024 7:41 AM, Jingyi Wang wrote:
> The "capacity-dmips-mhz" and "dynamic-power-coefficient" are used to
> build Energy Model which in turn is used by EAS to take placement
> decisions. So add it to QCS8300 SoC.
> 
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---

I'm willing to believe these numbers for a78c vs a55

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


