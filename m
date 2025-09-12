Return-Path: <devicetree+bounces-216284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C23B4B5440C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0715A687484
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B0012D0C8C;
	Fri, 12 Sep 2025 07:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z3YDGEpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951762C11C2
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757662697; cv=none; b=SFnaZfArDKGHAiddg1A3IJMlLMdC++9vhv0UDMOdKtHH72d/Q2ee6BiKLGsAJRYU9ELsXKzK5AFjc0cVxMnQBLYJ0mgCpkz3HO+3udUi0H5pEZsXX3Rbic1ICJccTnn3nHHf4AR9WwBeIps/vjKXl8LAGASIM9xqJES//fsu7ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757662697; c=relaxed/simple;
	bh=PxSU16uE+Ej2HzCtdrXRq8+sKeMpJU7IORy3bAXH488=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kBmgbFhm/1MBZZFb22XOiwBZWKUReivOwNnl4AMNbeMYiqW8ejIRqDgIFD81vFB8o6f0jr6wnawJT3Z6zLe61i17iMLqHZ791rVIACW05AT4LPGuxKEuKK8vrADpGcaTbioVMKFgk6a2pPVqyytJKJ7/ncv7jnXVKsYyK08Mlww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z3YDGEpv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BMl4KN018851
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:38:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6LFu0Fh4zfdsz13Tuo1my+OP1x2vo1Q+dpLEWcRgmcg=; b=Z3YDGEpve9wTTVnP
	3c1zqQnKAXKzqGNZXSnJ693OYIyrVZp8NPFtvdrcKyuPALjtGKxx5tBPCkVrMswT
	SzEevKd08SRnmGYzjsP4APYJ1JpbEn03YSQugATr/BB3Dg4K4P0PkzEOLwnrPNXK
	KeHmKQR3pGalKL/a3xA1gADA0CQqQ8MkWDc/XUQ2O1hUuwoBTzRKzlJe3hzCTaM9
	BazOSeb+tChzsZWuDUkW79RPBo97/3T2djMJROXX4EYpHvUmMJzv/qy8YOhxnnpp
	DSFb/bEDvPT4Vhu5HMdmWm6wS9dloeGzGpU+o2MsAaC1GLYjq0TLqyFpageF2cEm
	6bh+Ww==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphvd3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:38:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24458345f5dso20624015ad.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:38:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757662693; x=1758267493;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6LFu0Fh4zfdsz13Tuo1my+OP1x2vo1Q+dpLEWcRgmcg=;
        b=pzwqYnpORAoqK2YxvRphZC1nhEWMDaVXhKVaTfDuo48QZt+igxIqWwsEixK4OPOvd4
         Hts9buKyhiUSnqiw3i3y6vQ2s+xDil5hKkcotLQrhukb45aUnFFuqCGAo3rzZh/PJ/V9
         seZgDDP7wGLOef2CjwMsVJ46lfctTPxcaE5wKTp8w19ABu7xKHEeYjqeSpJDYmE0Y55g
         p4P2o73M++tur8CTiuY8E9AyCxynxHDrsFNG7AiKaEXK+vmX51Sbf1U2wSChP4u3aliq
         Guca1cIcLdlGg+g1A4E4MCKGV8CKiLWQNVxtzkJ6jpns7Wu+EWF1DtTiea7Y3e11mzGN
         bg7g==
X-Forwarded-Encrypted: i=1; AJvYcCX78xi3z/q1v4BDqIvuMxeYq5UGd0FwahYOl7Htb279q+6aFvgAisgC25Bq9pBXB56Bdz5VwyPcfYEE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx+IhqMmHF1OiDc1rbWNp7sviDZdUCsaLGTNXv4deRlV3/osz+
	TWibdfB99NsqoQvpRyRzX3qmEEaRX50rwZ2WAimleObPrPpqN0Bi6Z6hhI2y2MiRtOs4iKgsQLy
	QHqnPskRBhNDoJ820bJPVbk4KAUA176zhaE2rTZbsJDaXGIXQjZEDmoFmr73e01hn
X-Gm-Gg: ASbGnctcn1j3/uHv5QNAIpV967vP/0B2Cn06jrSvs1mcliZ2hsoHQMn13DiFmyR7obA
	kOhviUP8pcBq/MK37j4IumiELtIYxLCSh+g3pabMGrA2vhp+2ikuaUfSk932Yz9GxhmY324cKfx
	Vj6a/Zc0IOMPi6YL6v+oLKp8aGesc4qqvhVlc6OxxWEBzhvJfMWvYMXJAgrk8FaY1HwFK032fR3
	Y82v6oAiRTKHKqznxw5zhRi/7+LYSGhPgJuAt9zxPOrpCfA905KBYlkPBTUMJ1z5/DbfJBzecDI
	Py4dAMZ4Ct4t1f5Vg71GoOPcK89pUu9WsrWK/wG35LgNgdOgLpaGYQGIrM30XuYAiXh0cTsnuPk
	opQ==
X-Received: by 2002:a17:902:cece:b0:248:f653:538f with SMTP id d9443c01a7336-25d25193c98mr24576175ad.27.1757662692857;
        Fri, 12 Sep 2025 00:38:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8mnmJxdmy5GnWW3mwOkJg1f+1p4sXZ2EfwMYb/qI4p3TOyTx6eLJBt84nq1qMYnMbR5hhtQ==
X-Received: by 2002:a17:902:cece:b0:248:f653:538f with SMTP id d9443c01a7336-25d25193c98mr24575825ad.27.1757662692288;
        Fri, 12 Sep 2025 00:38:12 -0700 (PDT)
Received: from [10.218.21.68] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c36cc5890sm41341715ad.4.2025.09.12.00.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 00:38:11 -0700 (PDT)
Message-ID: <b8a3211b-6d85-4949-9de1-54614dd8d769@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 13:08:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCS8300 sound
 card
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
References: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250905142647.2566951-2-mohammad.rafi.shaik@oss.qualcomm.com>
 <43090acb-ea36-4015-b14f-78d44d789d42@kernel.org>
 <a9507045-b900-49ee-8841-0f8fd30816ba@kernel.org>
 <abc66798-dc91-4860-b0b4-de39a58b5745@oss.qualcomm.com>
 <a8dcffa4-c578-46d7-8fdf-cd4f5a29a2a6@kernel.org>
 <4c6e7e6b-2ef4-4ea8-8bf2-26c7aa8c94b8@oss.qualcomm.com>
 <ad8fbd0c-4e94-4edd-abb3-84ee9563fac3@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <ad8fbd0c-4e94-4edd-abb3-84ee9563fac3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c3cde6 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=d966o2na1F7DTwhL2BsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: yoH9HTPtHtniMpGYCIOiNtyWWV_WNEv4
X-Proofpoint-ORIG-GUID: yoH9HTPtHtniMpGYCIOiNtyWWV_WNEv4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfX8Ij4OYS0Swxq
 aJ++3lPSust4T442upyCcVYTjn2YFZXUmQ7VO23TeTmIZbmf8TA5hO2nk10MhL8TzkxS0piY+UG
 +Fwh/DLp5PTa3p2tukEEM3JpFKDfvsrnLV/irUQ/9wcbvbVFcxP0Cgq5sV2Eih9e1vEKFQLqphy
 HrSMhLjQqFDdlduy8kNaPhcnKbCyoQZtQB8mNg11xfIX07tv2DT/IGAEEIaAh7clf/Lmu/1IkYM
 8x93XKqd5X8s7Eoi1WigtHv76fsFIcICC5bhX4xIRmkfJBpncpkJb9J2y+nXG3FGQHq/YFRZvol
 gXQwpuhr4MkKtLaqp/WEUvhO/0SKF0DDvsDtUElkGcgGc2emeLiCjcAFGaCONLVXZ21zaIwUVha
 Js1PHyjx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_02,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040



On 9/10/2025 4:54 PM, Krzysztof Kozlowski wrote:
> On 10/09/2025 13:17, Mohammad Rafi Shaik wrote:
>>>
>>> So this is the same hardware? Then no, we do not rename compatibles.
>>>
>>
>> Agree, the existing compatible is discontinued naming convention,
>> will remove existing qcs8275 and go with qcs8300.
>>
> 
> That would be a rename, so again "no, we do not rename compatibles".
> 
> You are stuck with qcs8275.
> 
ACK,

will drop the Renaming compatible string change.

Instead of renaming the compatible string, will go with the existing 
compatible and fix the driver match data by updating the driver name. 
This approach allows us to continue using the same compatible as 
"qcs8275-sndcard".

will update the driver match data name to QCS8300 to load the correct 
sound topology and ALSA UCM configuration files, which are added under 
the actual SoC QCS8300 directory in linux-firmware.

Thanks & regards,
Rafi.

> Best regards,
> Krzysztof


