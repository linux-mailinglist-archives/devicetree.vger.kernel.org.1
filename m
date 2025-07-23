Return-Path: <devicetree+bounces-199005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62685B0EFFB
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84518583914
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4BF2BEFFB;
	Wed, 23 Jul 2025 10:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zv1I/PdE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03832BD5AE
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753267030; cv=none; b=oxO7yH1noFMQ7pPI6HJMjGSlMj98ETzREjxA/uP02gLnSUWzT/sORpSOXKWUA+B8nwTNsn/D/GyAI2G5tStm5bBM48qXBv1NbRCkJZayrGD+5OasiQc1GHbH3yxqMZgwshrogOeOfSgxJLX7sim+P2lUuengWxG7CVCPA3aQx2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753267030; c=relaxed/simple;
	bh=VZ6H2QqhGifjHQ2Cq+ZjqLjogniGh02DxOQCdfNC8IE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gXnTAJuE7MsgTIQZ9Yg7Au9tqZ29m1zadumxPDyjH5E5f0SRSAAhnbVqeU6pKRzElugzqX4bSgTjlaeuNnZSTuoixgVMDY72sfj//Lk16zjqUxtQTStApyNNFmKfl+kXV6iOC8EZk+OndDqFt3tXApykLs0njS1Uc6v2VHTMgY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zv1I/PdE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9jbDs007921
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c3WPPm6RUB+edcD+yYLNUyD+huQyOSescoQcJtylh1s=; b=Zv1I/PdEDk7aA0q1
	FINhBwRDh/LayvL4SnyhTB1So+vWOL9HgMkPjtiXjvs/t2RB381UOUPA8GnQhXgr
	e/lmqLi/vYAJ/QEPYJxC+dgTdZkgumz9Bq9ngpqx1juCssJU7Ytf1lULXSppiEZm
	tQan85pPIEBaSjYz5YKB/OHnINwMaYDpE3QdhlCAEj5Sgu3K71Gq+ZMs7vAF3ECs
	TvhsNaKcnyTcS/Tcv9f6WQwuXb92QhTj79ippoeK5A97ev1SYuYo/yMyAHdXnTQH
	YTPQkwsugld8ascrp3XdK8WUMt+p3Iy7dw4L9+ehX8IN72yoxlEkwwOg0lI0grGP
	T9wC2g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3htug8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7de3c682919so95411685a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753267026; x=1753871826;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c3WPPm6RUB+edcD+yYLNUyD+huQyOSescoQcJtylh1s=;
        b=t2WDE0QQlBFdUWI62nZsN0uIOdsUszB901Ke2QEcmb6BZZn3EIJaP5ie0K53StfDw0
         so1LvqF7QBeJaStktCs9pl1qyauTEmzQuM/LXycj6aF3DsFkZwLeQA5qd5OZrJzZ+0eq
         FdVbHzcQwF9bIObOLnp3LR5H4Z3EL9qsThPIg095/bEtdBxVOa977s9eITsmMm3eI2D0
         HltJSnfrGtfWCOhMTAdAtRlXJ56oaHUroSlXe/DkVjKefsLT9TCybFQt28R6Xw4wmYiw
         rWddIrsGD42083OrTOadLr0giu0rjBWuLdHrZXk0zkB0EsJqHiqYfkpYjn5qh9roFXyz
         nKEg==
X-Forwarded-Encrypted: i=1; AJvYcCU5fyu8ZSzBJjdESXR5Ks7PB29jfVM9rpLOMbF11THAyhHEMkCA2ztiPLcx1uB0SfmtHU5xo7KTuiGt@vger.kernel.org
X-Gm-Message-State: AOJu0YyGmFWFITGSr4yQpjp95af01HwCpYyRHjSmUVWMUlA9dPb7EHfc
	pbTem6mfIQQdVvT0cnt17WwzsFphcRjofdn+SbJkXqLBe1thsO8FVpwkutpftC0h0I3KZyJWq9E
	9PMneR0qSscwIZtNEla2XPGS3cwl/SkgvTqAmCuPw6u11s3NqQYLDcN77soSeI/JOzV7aSkel
X-Gm-Gg: ASbGncvprQH0Kwtk0/xFPbBUgnCUbZiPGAjgQYUpVyGWYv1D+dNHmjc4z7QJzOPcdcO
	K0az6StcJEFrOpkUyyR6rJy9E8XquEmPOiQmwdN+N1YkDE2hKW+ACXPw3ScFh3Dq/mF25HYyQDI
	bNCp3Ib4OLPZXcNEaby6FVWsTi1RvMDcEE5FCyf2VhXTM45lQdVB6sHX+KnXivCUT70kKJu8Rwy
	MJzCaiZK+vPuvlQKsolFj3Ew4bMdIEVjkr1gjioqhSKVemk/FPH5tC7J6BahBApDLjUDMAx9BXa
	BzbSKkgpYoUC2HbkTqVSe3eyLesf2IVFxEHSOHuCxlO2JEtEDBLXRVck56kxmz0medDgGokSA+T
	CMUqxc7cmNUIFTzhFQg==
X-Received: by 2002:a05:620a:2609:b0:7e3:3996:f491 with SMTP id af79cd13be357-7e62a0a57c4mr134094685a.1.1753267026387;
        Wed, 23 Jul 2025 03:37:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf4hV1cEmi4SrXNUuipDGElpSF5X/2irJs3VnwL9DVxlwxrsZDYzctE6f2Vdwwz4dC9NujMg==
X-Received: by 2002:a05:620a:2609:b0:7e3:3996:f491 with SMTP id af79cd13be357-7e62a0a57c4mr134093185a.1.1753267025970;
        Wed, 23 Jul 2025 03:37:05 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7d89cdsm1029598966b.62.2025.07.23.03.37.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 03:37:05 -0700 (PDT)
Message-ID: <2182b484-9ccc-4ebf-89f4-519646958413@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 12:37:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/4] mmc: sdhci-msm: Add Device tree parsing logic for
 DLL settings
To: Ram Prakash Gupta <quic_rampraka@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_cang@quicinc.com,
        quic_nguyenb@quicinc.com, quic_bhaskarv@quicinc.com,
        quic_mapa@quicinc.com, quic_narepall@quicinc.com,
        quic_nitirawa@quicinc.com, quic_sartgarg@quicinc.com
References: <20250122094707.24859-1-quic_sachgupt@quicinc.com>
 <20250122094707.24859-4-quic_sachgupt@quicinc.com>
 <6xvsnmbnnvpmlgvmi42pt4d3ugkrxhrgrkp56szqhgh2foxe72@z4ildfxufq7j>
 <c6ca33b2-f8c5-66e7-bb3b-dd595ed040c5@quicinc.com>
 <d0af754d-8deb-041f-8e34-1c1214fccb09@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d0af754d-8deb-041f-8e34-1c1214fccb09@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6880bb53 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=OTpidQhUJuL9SOIRPhwA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA4OSBTYWx0ZWRfX7z1SDhiRpdSS
 nzZtqtEIy4WcQR7aPqfJ3yTkUjnSas8OZjpV1u3v5v3eGE3KkgKHaWq/Nx6czatLNsr2LgV5OTI
 ZK7QTIl0BcgSp3CXMljat00tRnM6qBSoyr6W4GY+csi6nbXbRQREbr/BID3UwK+9MNKMlEZ4ZYp
 NjYGjKx7KbnSOY+mdJ4pE18BhneaWFqoFJv1lkYUYMmTDbkreO/l378QSkH5oBkP+Jwa5cXu7rE
 3YclTQb1kOCpddciTmyMTzJAa8XKT6pk/XZSzPVwrEa/SOo1bbNJ10aMW5LHNWYW31d+DPz24rB
 4SkVASzfnz/vZKFyJLxlx/M1mXmyMIkC7+/yDcrfAvBiECmZcOgP2DZEKfv31lsQODtGyQa8jpK
 o9Yh4BhaEY52QhBvXZgiSEjFe/HlLVg+TU7LtFjW4kE/RQndjaDoWzjIoWDsjUtbUeyVOs+N
X-Proofpoint-GUID: VgbhgGEnd1Iep-NZfOehZfmgWXBDCYN9
X-Proofpoint-ORIG-GUID: VgbhgGEnd1Iep-NZfOehZfmgWXBDCYN9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230089

On 7/23/25 12:14 PM, Ram Prakash Gupta wrote:
> 
> On 6/10/2025 5:47 PM, Ram Prakash Gupta wrote:
>> Hi Dmitry,
>>
>> As updated in [PATCH V3 2/2] of this series, I have started now to continue
>> this work. Will address your comment next.
>>
>> Thanks,
>> Ram

[...]

>>> And the pointer to dll_table is lost, lingering for the driver lifetime.
>>> Please drop the devm_ part and kfree() it once it is not used anymore.
> 
> ok, I ll allocate memory using kzalloc in function  sdhci_msm_dt_get_array
>  and kfree() after copying data in this function.

You can use __free() nowadays (see e.g. drivers/soc/qcom/mdt_loader.c :
mdt_load_split_segment), which will dispose of the memory when it goes
out of scope, limiting the need to clean it up every error path
separately

Konrad

