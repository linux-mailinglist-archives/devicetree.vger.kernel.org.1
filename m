Return-Path: <devicetree+bounces-194112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E7BAFCB26
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81882565C45
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8402C2DD5EB;
	Tue,  8 Jul 2025 12:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gks4JNK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D992DCF54
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 12:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751979519; cv=none; b=JCUgLX0nDCJgvKqEXIki5n3AYzKxoyiUvoISnEotWfoLGaP5o+qkp4iCN/mYSaZ0513SUl6wVdBNxJOFRtrRKzttWaMIhHyfwjH9aZ2QWi2g27oa+p0ZAQLkMReAuZdZT79SURbpHBuA2nca1oyOgr8mfEr+TiA6z1Lvf6xqGQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751979519; c=relaxed/simple;
	bh=X9xJsNLRo/w3sPWkc2XRYMyZn6hmmfeGt6sJZVRGGFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d8BjYLQXAaaP8gNJ6G4m19t81hhmev24eQgTcEI4b/jh0jaM2fDQA1egZ9+50LhPqEHGj4OBnb3p+VtZvOC8Leblc0LQYIgyNz8VWTwRNaPMZYgALrLFztdoZ/HZvcAKfUzb7GJ7tzsTO/0O2w2RqfuCcAe3KFgCi8NzIbL88NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gks4JNK3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAaKr031698
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 12:58:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oBzyArkLyeQ1R18P8zwGvzvM/TDm2vLryo+5DG0mYeg=; b=gks4JNK3YSNajOAS
	xCne9Zv/Ld01rka4EShHEOoAHn2nDM9wZIPVZ9g/3EkzNECk+oxaXhoCTg7Ql0aS
	6tt0PnK3OhB8H36vL4OWHEML110y14HMJj6X5iOse3wSq8HRqCM/rCLXQn5d44Xv
	7PmmIltT0OCESInvJmdYGSo0Xynif7naLQH3hlt92J35Q9FoWhowO9ArBbxcNOMP
	eD0GQHrIKj3QTmK4fDnQinLGf0zWoHRJV67l0nJLSK1jXW0KciuR94YH9bEDtNIF
	8LFaKW2AKlYJTPTG0PqPLf3pIx4KrBf2KAyAWjgRKs3zgubn+toJaXWXuWukDaKs
	Nk2+4w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qmwj8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 12:58:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cfb7ee97c5so24062885a.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:58:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751979516; x=1752584316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oBzyArkLyeQ1R18P8zwGvzvM/TDm2vLryo+5DG0mYeg=;
        b=qlj5R3AMsgJ6+EgUlLt/jn1MkWmKy0EUhDhv8ixR3Z5Va+VRH0rGQXQpiJn+Vo77ob
         peDo0jla84YSm0iO3kY9AEHpJGO3uGlTNSt9MtnZX1sxH1UNpLrw+o//tEyybwU3Wmkh
         dvCD2N4tnEiqRdD6e5gHlBTpJEJrxKKhB2lohzi6K6BjDPGJOsEIEn8Rhm3rNRBScO9O
         H6ITyjD/6nAs//Uc3wXAkDqy7KsyucX1dX2sDs/DVGuGMNdpUkWetY/qKXm8cp9Z3o4T
         PNI+ppROBdB1SL5TUCy/KGLbhqlhj1B5G3kSl/NDCPQAJLk8M6wRlwiAGfw0qMPEPtrr
         r8Hg==
X-Gm-Message-State: AOJu0YyqJTSqlcJb72AIXa5S9HZtPsomp2tPPbmbapDtn48XOGWARNvB
	5CHWUbSkNsjjSqAF7O3GH2ptq0ATj15AcI+erct2eaakjVpWvVV/k+nRLCNxahjuMsT0vhfRSe3
	2+TYDGJhbEDum1a9QMOQn9gqaoRJCWYn6CrGJYJ1ccbS1I/ZgABn7RjQNT3ZWMUIr
X-Gm-Gg: ASbGncvSgOHogVlRVOUeYBipzz3DeMAf8LtuVD9OUQNVNup+gJXTnxMrCPeAkAzbZ1z
	7pGa0OoAbBx9Z2TG0ZaK4xIjjV0oUyOLKpjZoyfoH2mIi8JM5HKGRcqcfLXQPfghAGJe1airibL
	DukEwH7+xC89PYpq2EEAXGRkg2Rke+Sx/4WMmW+vz2KgZd+BXCXPneKiZGoLJGlQlmKP6bp5Frk
	hvYYAcEaqayYfxBeBx9b+Pj1gc3fReQJrVSYBxpSytPkd0AOR5EbrSGyx39AMLQ9Y2ZZCYPMua1
	L7m/Op1Tp5HK2SPG1oQS+NWEF9RwRw+9Oq3+0sFpXhGunmNkiuLXx5mMYIy2ejY7xyR2bCPgXyv
	vzlM=
X-Received: by 2002:a05:620a:31a1:b0:7d5:d01f:602 with SMTP id af79cd13be357-7d5ddca58dcmr862223185a.14.1751979515785;
        Tue, 08 Jul 2025 05:58:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOk1IWR6Dn6J7aqoS/O9lQAE2QdoBK6t1pNzfRDs42+DnDytk6BXjQsEkoWsK/g6hiFtoIbw==
X-Received: by 2002:a05:620a:31a1:b0:7d5:d01f:602 with SMTP id af79cd13be357-7d5ddca58dcmr862219585a.14.1751979515103;
        Tue, 08 Jul 2025 05:58:35 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae411a5429esm661638166b.16.2025.07.08.05.58.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 05:58:34 -0700 (PDT)
Message-ID: <5e31281c-552c-4268-933c-e130d7d5a7d0@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 14:58:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: qcs615: Enable TSENS support for
 QCS615 SoC
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250702082311.4123461-1-quic_gkohli@quicinc.com>
 <20250702082311.4123461-3-quic_gkohli@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702082311.4123461-3-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDEwOCBTYWx0ZWRfX5JtlKMP2FkNE
 lLZf6kJWh4HHju4hF7FokQfZUzB7kEuF0knjQ8rBovpY92ZUUb67dAXEAwCha2NyWzViUBTA3FS
 kf/HAJ6z+8rrjLR7RBetDRnn1Pc6IIckDSRS/Fjx6+9CWnsW/xPjY3HwTgbACwMRfAU2EK4V7W/
 H70b1ziXOv4zIwkVwGR+4urCbdl2sS3VQyi1Gs0Y2UoRdNrHgsBd5OXSBOHo+0BrvJCckdPY/n4
 Bkz7RpIXmqhW0OZQLMQ/mFyoAHud4I+4NalMZy1igVzpMMniPJmukAmte9KLpvelB1JwWd+xF+h
 A8TxRovPLDXzqqsYcNcJXU+43gqAnUHo8LoRxIg4mOk5Qasl68wXhZSKW9AjZCBJfwYRkzA+WEn
 OWHLpQIU1xnMlS17l3jr6f1W6evhDuwU4Re8V+lHiVJFc37r5GgT3dViVndRbY6vPR0485zi
X-Proofpoint-GUID: QA59t4xaeXXVoVXYwTqqwTiBUtB0wr6m
X-Proofpoint-ORIG-GUID: QA59t4xaeXXVoVXYwTqqwTiBUtB0wr6m
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686d15fd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=GSS0VzHe2Y3C4L18hMQA:9 a=QEXdDO2ut3YA:10 a=ttxTGWTNN9wA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=751 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080108

On 7/2/25 10:23 AM, Gaurav Kohli wrote:
> Add TSENS and thermal devicetree node for QCS615 SoC.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

