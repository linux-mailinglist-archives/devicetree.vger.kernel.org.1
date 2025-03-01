Return-Path: <devicetree+bounces-152906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E893A4A8BC
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 06:16:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E221D3AC7C9
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 05:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5061199FBA;
	Sat,  1 Mar 2025 05:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k3caN278"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD17EC5
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 05:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740806157; cv=none; b=loiYAde06lvMWTEdyEXATTrGvKdUSqBXN5ztu/ANMYmaOyNJtPxpZdWaXd4J+Zzq378Ld+6rQVdfk4aaGBrhhScx6VYf7Mtg1SEUAtEh0jTkTat9/XqLYtLD4jz0peM7+ioLBVTaIVrf+GXusy/8o5vQH/neHYDYYrBjh5BJUOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740806157; c=relaxed/simple;
	bh=w3JPTo1X7xuDHLlZ8a/6rNzRq60vonQcCBdiCGgJoG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hWhg863Mn92pYTMnnOZUJCGu8hnmIFSR5JqFtiqGYyOaRpBq2w/e7Phyb6A1dRRVBZ0NbCvVawqSlPhG6fapnHTZA0ujnP6gtHnBRT1Bca5xinfQpm0QZsCFV6WEOxT0J6uABO9RVVhkYlPLzFbGeVoDUxzfN3gDbW75bhm9hqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k3caN278; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5214i3hB032622
	for <devicetree@vger.kernel.org>; Sat, 1 Mar 2025 05:15:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BQ7oIoj1Kqr5z8/bVwYBJwuROLD7SBJp1FOO5JjySAQ=; b=k3caN278fJqtyWJw
	/SbNTrIzDEX42EAMR7UDpohxyiVtiByi8MXHTehpLWHBl/dMGNXeCSIPNzccB0WN
	CgL4cOvrGdF9UwyWKTijOvPVl796APgmuHgelEdcauIyq3nnw5+sxYWg3z50PkSf
	Hi95ph3Yi8DRXR5Sh0PyZydtZShlBjNLCM5ZqlaRAWWWEfsAHydZ8W5LpvQu5Dbc
	cjqHs1u2Blz7215PHPxYddPk4EOMwXiK5n7EQVLZSAvNOYdPZ+0Znfzal2wXljGO
	C5bWe7uJChe7hWl2kgKhiwyuEeYKhvkp/rXG2tpq3U8DvshhxltrSQBko+edZoc8
	bdh/fQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453t99051e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 05:15:55 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2feda472a4aso451801a91.1
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 21:15:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740806154; x=1741410954;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQ7oIoj1Kqr5z8/bVwYBJwuROLD7SBJp1FOO5JjySAQ=;
        b=Ln04mYEjnepDozroUZTqLuuOHqtMxY93gnHJSuMrWQbWtCjI6a9d4tqNnOo3VvcItT
         KnxiN/F/lPAy2+1o8BlFf7iooKHtABGEnMHtzrJFkB/INOlCEcLiLvwL4azFIISxcex9
         +s3S+hNoKsJ6pSn/lNQFIzz5eSWZjravPLOI+km+ewqKplC1zEFpnu80PxdAiOEt1eoH
         qs5T3aU0hgHWn6v/1jp9fDCiDUJyGlNVPBKjsLokydFdOmfQQkKyOfjf/QSM6KFiF8v9
         OfdJVQ6vtutdwbe4gP19OaNFQ7nfRxMPsx6QUVeOm5Smt3tRzmn8kOK0IAY4y8HvJmH2
         taRg==
X-Forwarded-Encrypted: i=1; AJvYcCWBX/KDhHYUbCHzh8I1575+MV1VPkaMWK/Wl2BTWBHavkfdYS1wK09NLR2dl1g9KQ3YeTwsdBp1oyLB@vger.kernel.org
X-Gm-Message-State: AOJu0YykhggV9AozhGX+4AFw6WrYQ6bKlylvt7Xj64iBOKAc5jq4khbk
	Q5GTNwRQeqFYpsXUwKM3ab21YPcKZ+d0smx5TZ7Sd5E2TXGUHKbc0fNyfTWbtsphqIsfitlaVgL
	q6KdrMwkWOisvdPcWlCeZD95HZy3p7Px2OuT98uQU7mJnSsw9xjvdMATaq5hV
X-Gm-Gg: ASbGncvnIvxrAVPLJEhYCUezuMfHcU/x6kVo3ZdxU6XnaJO32pbWe7OWNXc4nJBkPGm
	PBI1ljV5r1C5vgOQsCVT6R8yvtZbwfQYWlqOVBxfCexnd8+Aocw5Y8BFTErWRr1LBUASxyB0Pvw
	TsZbvn49qDBybz28zQyBN2qQ46kGxRuGyFOg1VfPH8fky0cEMSSRKSd2BZVDJhYQKHYWx55FMyL
	eATpzxO3cxLSbtuvxkqDLX8na9n7oAamegAXbK8zfLs1+Tal57Uz7BoSlp+/CHE8GM+4kpel/R2
	5xjip+6QN6l9c7EWyRCWeq4JGer5SR7L6TyPQOOLVtx3urYy6Q3pyxCfF0ugeT8=
X-Received: by 2002:a17:90b:4ac8:b0:2ee:ed1c:e451 with SMTP id 98e67ed59e1d1-2febab70682mr10656993a91.15.1740806154541;
        Fri, 28 Feb 2025 21:15:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOxcKKcRuFeIE4LwnVNuO3M5Y/CqCenqjMe0/49M1rib5aLtbWxJGNDdDM518EtbC6COo0Fw==
X-Received: by 2002:a17:90b:4ac8:b0:2ee:ed1c:e451 with SMTP id 98e67ed59e1d1-2febab70682mr10656971a91.15.1740806154218;
        Fri, 28 Feb 2025 21:15:54 -0800 (PST)
Received: from [192.168.225.142] ([157.51.160.80])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fea696e39csm4719697a91.38.2025.02.28.21.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 21:15:53 -0800 (PST)
Message-ID: <88f8e029-72e6-06de-34a3-beed36a57451@oss.qualcomm.com>
Date: Sat, 1 Mar 2025 10:45:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v8 09/13] wifi: ath12k: Power up root PD
Content-Language: en-US
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
References: <20250228184214.337119-1-quic_rajkbhag@quicinc.com>
 <20250228184214.337119-10-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250228184214.337119-10-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fpuoT7gTUF16_ZsXppfCXD6O2929Hed1
X-Proofpoint-GUID: fpuoT7gTUF16_ZsXppfCXD6O2929Hed1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-01_01,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=760
 mlxscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503010037



On 3/1/2025 12:12 AM, Raj Kumar Bhagat wrote:
> From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> 
> Q6 processor acts as rootPD, other hardware like IPQ5332 which are
> attached to Q6 act as userPDs. WCSS driver handles loading and booting
> of rootPD, while the ath12k driver boots the userPD.
> Get the rproc handle from the DTS entry and boot the rootPD if it
> is not already powered on. Register to the rproc notifier to monitor
> the rproc state, this allows ath12k driver to know power up/down
> sequence of the rootPD. Power up the rootPD and wait for a power-up
> notification from the notifier callback before powering up the userPDs.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> Co-developed-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

