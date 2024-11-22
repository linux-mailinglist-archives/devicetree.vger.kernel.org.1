Return-Path: <devicetree+bounces-123766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904D79D5E92
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 272C6281191
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979211D9595;
	Fri, 22 Nov 2024 12:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FTneeyND"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A47E4500E
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732277360; cv=none; b=WbKpiiHOx0EZLs7rw+3Juj9n5GaJ9rWv5zfVZQ7Xhssep75WpgsB9937UCp/hUw1h76MfX5C868lLh/+w/4RFpVI3NDwYGMOy5HIlulCR6/+dUkxtro3zNR3rut3i1F7bNrvopjPwDexuanYe47ob9/cT3+EzrCHvvYmzKSb5sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732277360; c=relaxed/simple;
	bh=f3I4gqxCEIx4XLDLokX5S8VXumoKTGDeUDBMTyPNel0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HX487Ubtcw5vebtvHBiwVfLj5nOS6aLXcvWezVQZPB/gjvvD+hVXW7SmNQXKoWe2Hcuigj3WLZOZ/CsyYj6ABovrYqF/v1o6gSoFOcfyoREfDI2xb8TgHmyJE2o8/+V24O81wcs4xsA1lRObRdC6NJvspucH48l4/qNvTrE5zSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FTneeyND; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM86MA7015290
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:09:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sgfQ5I0CQl8UfQ3flsk4bhkJPTEDMQpM6xgAt6l3YTk=; b=FTneeyNDQWEvHnxQ
	xz3fChARcBrFbrWPZBmXiIYv+ZWIzHoa7KjZD7bIG4sWL3ErgQbQEskXkUmCOJDn
	IMnKImaXWh+QBJNrycrxskgyl+zbFzAolx2N91lKSuzUehpOCRoy+ZtCmFSRN4DM
	86vbyv9vSNHTdSab4uhCPYmiSyDiWou+ry+/EZSehk8HhGGB5Bdm5cV2v30BFp1w
	M/t0QsvPJ4mBDl0dmdP2u/8MDc2BiBfLkL0tY0JUEj6b+bIOdGTx4sAriePn8wym
	7UulJlnP8sHvkLjOgnj3fxYsP7+wgcToPKwR+1Ib5ag/bGcx6Ki/r2GHZNe9oBuS
	a9FBFQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4320y9m37f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:09:18 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-460e81465f8so4620101cf.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 04:09:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732277357; x=1732882157;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sgfQ5I0CQl8UfQ3flsk4bhkJPTEDMQpM6xgAt6l3YTk=;
        b=cBLBEa84m8L+iS++Vz3u/o1fjiSwBXicHzAJ+Q/ZtI0MaTMcqJB4kNyuTcykX+XRs5
         9MbCS3CgO/Dwb8pnexjcsftt1qDlC4Km/4kQESVTH/fkN2i+LBEZqs8NOeGNy6Cq25yd
         OwdDHgqQSGa9e/SSldg6+NtNBlmaZbm8HbcswbT+srQOe7UbFrsV8009uSBTKNW8yGEQ
         b8DcZ7JWDUgpACo1c7LX5Nmam8K60+z6+BmeanUb3/ELmOg0QRBKciIXFLOeWGt23PbM
         JDe+dmcQKrlak39yu5+EyTTW0a0mQDXLOrOJnz1dqTgQu17hOKinx/y1lBgxQukHNiaj
         ikog==
X-Forwarded-Encrypted: i=1; AJvYcCVgSQTcDnJeC/+L29USvRJ9lJ1sNkStADfS7/+a2qqMkCOz8UaEyonWk0crxVG+H/cXhmMD2k+Wa2zK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy29L3O1HB/fxrBEd+hkYPgVeEYDR5kck+EdB0IPcxQP+qvoWkU
	jBNjlhRnbK25QX/XIq4GCJcJl1a8q1RZ9XZLxL5lcz4pDgBaBlZgc1HfBedvNZvBNmMFel1YKD6
	gSWqQNapvoN3NgIn77MhKOGIPursVtuK+J4YrUZb3uSdxS42wHUlMepIfEIAj
X-Gm-Gg: ASbGncvOU0poSte9PI5c4gjQktO8Tdn3EfBZou5vqnYI0venEl8RD6hpFD7Wd5oS8G7
	TGGl2KZZEtnSesmQ2T2lj3o0Tr2UidrDGOnOrxDhd4d8aiFotJ5WExw6/QKeoEhRi8EDU1714ya
	HD3clylDLMdDqhcRv0uPD97HGWyusNzMWV5VMq26a/5EhtoTsSBg5PFdP0HA4eZV4Ike1NpGm1Y
	8epXzk0aXbdAjgWK49oawyiiXhQ6P+DvpU2QGhQ21a8wKVYgTtAc+nZJHzYQAmoKnLVvvdrUEhv
	YCjl8lH9eG/K8+EodMjpY6SlG54GuA==
X-Received: by 2002:a05:620a:4393:b0:7ae:64d1:d31 with SMTP id af79cd13be357-7b51451a49amr145613185a.6.1732277356795;
        Fri, 22 Nov 2024 04:09:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIvmb/Y1Kc36T84MfAddlUEPXu02tmNhvl1dBN2N1NQHDvFihw8x5CC9BRGYVlS2+hubr+Lg==
X-Received: by 2002:a05:620a:4393:b0:7ae:64d1:d31 with SMTP id af79cd13be357-7b51451a49amr145611585a.6.1732277356421;
        Fri, 22 Nov 2024 04:09:16 -0800 (PST)
Received: from [192.168.212.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b5300e1sm91807966b.106.2024.11.22.04.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 04:09:15 -0800 (PST)
Message-ID: <7da6fa27-0967-4fd7-af75-0141fde79b3b@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 13:09:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] soc: qcom: llcc: Update configuration data for
 IPQ5424
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, conor@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241121051935.1055222-1-quic_varada@quicinc.com>
 <20241121051935.1055222-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241121051935.1055222-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MU6_eeqjQtVse0MOf9rKgeWISGkgS115
X-Proofpoint-ORIG-GUID: MU6_eeqjQtVse0MOf9rKgeWISGkgS115
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=907 spamscore=0 mlxscore=0 malwarescore=0 clxscore=1015
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220103

On 21.11.2024 6:19 AM, Varadarajan Narayanan wrote:
> The 'broadcast' register space is present only in chipsets that
> have multiple instances of LLCC IP. Since IPQ5424 has only one
> instance, both the LLCC and LLCC_BROADCAST points to the same
> register space.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

