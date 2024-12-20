Return-Path: <devicetree+bounces-133065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DBC9F91F1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF0377A2819
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C2301C5CA1;
	Fri, 20 Dec 2024 12:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pRM7cEsl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DDC1C549D
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734696661; cv=none; b=ui/qdjvaNbK6AJuc6dBQeNc/eK62HQUVphwyziRlrraQ/pnlKQx6n2IKQyYoSMCPileLOm3lZEpSL4QDgPvxy34ScJn3DrHJ/0T2mmjDpAAVm5sH+onD49O30Wdz0+kf3p0B65FuenTMJl2R6vf7X7JYr3kW7bbn1598C18a1yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734696661; c=relaxed/simple;
	bh=ixsC8OUURgIZhAe8Mkq7/VLolocawMQe0qsbVbYNxo0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mIGS6hcYQiQfMIdAcBJx1u4bpHv6D5UYygzfaCmNorYMO/d5kXyWxl1uJbrjKslx58Pi8GInYkin6TfxKfb23L6lJg8vZFvloTVso6Dei1avoyF58wi4gZtfzOFQQnxe8Fdwef6lAtaOetEJH9Ip7nmScpAlfkqyXb2esAbHE94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pRM7cEsl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK4PwMD024806
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:10:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tR3RktHelgHkpqS43pQviEzDpPVdWgKiqsqXO164Q+Y=; b=pRM7cEslYzawNh5F
	ODyr0sFsvrItzJmKADhmTjujJ5iiW9NJVrZAbMGpfjIlncePIJtHcTLKom9jmK6I
	jNr/epzrE/EFoqUivdRg5k5Kj1B6SI7vLounccdqTaXNF31LRyOf0cm/gObsY277
	SaW28ZkfqudE8VqO8ETbveDsYGJ1u6pkMcQIy1lZ5t3W1TfIOnzlyRxSANyGEaUv
	W8/3poN4ZonP3g0skhyPAi8lsRsyWezPfFlciKb4sQ7/5us9P7wLG2loncsROKJC
	k5XOi/KSX4Rmg4fW3IoKNjOO4IZ+6qgfLCt2lugJFkmHqUgZoNsE8B410k1gHpiE
	uNcikQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n1hx15bx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:10:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d88fe63f21so4397726d6.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:10:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734696657; x=1735301457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tR3RktHelgHkpqS43pQviEzDpPVdWgKiqsqXO164Q+Y=;
        b=EVMMX/2epxvmLUE4wha8M/33M89cnF7ZN5v3mNjeQM+lAKNC81ry5pOb7wIM8mKcZj
         U04BYboymMpHXJF9tUVlt1u8JbKlwfqizf2YfnPeKXQi56UtVfUqmIRS8fwOPwNjcKVD
         dG+ysJL1fuovRSnFcQt2ZKvuzSgeCxCfL7QVJNlB/24xJPvLRDIpo0ET+PwjmcP4CCoz
         FV/K802aY3KvnOM1kdIJ3xZn2g2s6YuDkb64+3MGZpiFvWa+KXGlowb8iMYDhij7ArXr
         2+K3JGQhXgWRFMob3lmZKG56Qgw5AU9UDKjK63Etrckj+GgH+e4w5jGzN14o6ZOUnzOC
         RguQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMW4Pcty8TjchL/mwKPq+Ks44/K2CBO/fwNds5pKp3zp+ImfcxpyN6qg263NcB0MSbJsnyvEFwbT5w@vger.kernel.org
X-Gm-Message-State: AOJu0YzxfnU6V7G68EAZlWrm3JpP5Lun1eltLDmO/U+HsHaF4SumRNmK
	Tvet1xWX+XGcunPRf1QOJ/0kgGDKqc5L/nYDqWh2W0dZ6P1bs5ZGXuzGM7zCLU0TsP/bUIBbAA8
	QtGoHwD3aHQw4VvC8rYjWAdXc/uu8Fx3RXPC5b3Zueze364FGXqGVewu+qw7/DgOA4vWk
X-Gm-Gg: ASbGncuEJPi61XR+L7nOARvDSC2WRxB+su95Iol83cCYtOJpSZn/F8ufSiOA8oPPkd5
	pSZhNR757uxFqTS8nc084dO3jvsUOoDGVT0MffJvq23m9T02+9IIQlh9RNwNDOFWC2IAwaBbMNq
	soRJurIlZyhPmviR1KmuwyRMpuUAGkhLzlTTL329ulbWLoXlTksD1qwmxq6GHJLzBkLEsV/7yKl
	XIXG95/WT/Qm4tfWTrCWXAmKHExGa36p3BmBIHHJamfvuBDqWxY732Y5GX07Y/PbYdqFoGXPNbM
	V14LNuiYyxj71xhQhty306BMv8+qevbbOJc=
X-Received: by 2002:a05:620a:26a4:b0:7b8:5629:5d58 with SMTP id af79cd13be357-7b9ba743a88mr148180685a.4.1734696657549;
        Fri, 20 Dec 2024 04:10:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEp1Tme9VmNjTRC8n0yRS7LgoBf7/6a2YtTs9BUveVcRYh7GuIm5Nkh0GTzoPGQRv00zVEA0A==
X-Received: by 2002:a05:620a:26a4:b0:7b8:5629:5d58 with SMTP id af79cd13be357-7b9ba743a88mr148178985a.4.1734696657191;
        Fri, 20 Dec 2024 04:10:57 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830af1sm170563966b.14.2024.12.20.04.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 04:10:56 -0800 (PST)
Message-ID: <65d46d28-05d1-4c47-a1f2-7694552a743c@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 13:10:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add
 the EC
To: "Aiqun(Maria) Yu" <quic_aiquny@quicinc.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241219200821.8328-1-maccraft123mc@gmail.com>
 <20241219200821.8328-3-maccraft123mc@gmail.com>
 <d301a695-a5d8-4e76-862a-a6ea5c125617@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d301a695-a5d8-4e76-862a-a6ea5c125617@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cSuamcZjoSniit-S0-jbNoCKOykzKwet
X-Proofpoint-ORIG-GUID: cSuamcZjoSniit-S0-jbNoCKOykzKwet
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=997 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200100

On 20.12.2024 12:52 PM, Aiqun(Maria) Yu wrote:
> On 12/20/2024 4:08 AM, Maya Matuszczyk wrote:
>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> 
> Is the commit message missing for this patch?

Yeah

Maya, please add a short summary (some backstory about the EC, what
it does or so).

You'll probably be asked to do the same with the bindings commit, but
you can mostly repeat the same thing both here and there.

Konrad


