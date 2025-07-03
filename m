Return-Path: <devicetree+bounces-192679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DACAF7488
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BD2B3BC6AC
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6392571B2;
	Thu,  3 Jul 2025 12:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hdD0oNuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A2278F20
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751546882; cv=none; b=YjoabOWQgX2LH0ineKN1q+Y/AxJU/ivPxUHZLiav14YPEuaLemwwbcQRLTNVwkLRkAewnW5HZAaLINCeM1GLrnATlsVL8OjnM4LBDGCjI+OPSbxlM4mXXgWRXNTGg+HJ/VvWixaY1LpQmH3/vSg44Y2RhsAQC5mmbFo7D8Ijy6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751546882; c=relaxed/simple;
	bh=BYSgqPMWSqws0dE3RECbmqxtjHxktPw8T34WNBTAzO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d/wu0dnZQclN7Mfz4CYeObEqkU8QEcexivHhPYidW2T6tQM2ErRyXKWR2UVlI0gKaH01cE+4eXNaV2thIUYwTlMV1Uw+gyq7qQ2SjGe1mvsowYX94KaC6m51g+4HWgimueRIzI3YPRkrgNP2G9OZ7fMCgc5NYvSsv0bP2lE1U2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hdD0oNuL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5636bnXD008005
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 12:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l+aS6ZTI1Pe+36r1Nb/3WOL9JZ9jQNaAFbIEsCvpPlk=; b=hdD0oNuLPyQbHKad
	+NvDp7dVxLQGLwkvTnL2MolY4D5Jy4R/IahhfhFsyWCNgJoYOvTcZKfaP8A+jD5x
	Y6HveFvbSMt0/hLooQyvcD/tAuxGkKhguO5hB9rDVWYIRZ2EuvS0UGi7Ma3FWp8P
	85wbcR9bvD5HB+TPn8zrrwMBlin4OJz1PyMUZES6Cr4SDmuYRbtGUWzBIQYFBiwA
	yrGdMJKpmoTuuFx8AwVcwKyFKTZyPkxBqOgdfC1er80CC5AkfekrB2tNue6BJ+4j
	sswuB7ulTGyL7Gy4Q5EyLBcLtoqx3HDA25MrK5XWFQNbN6FllqzgShnRORfiH95G
	obEmGw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47napw2qf9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 12:48:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d21080c26fso133997985a.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751546879; x=1752151679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l+aS6ZTI1Pe+36r1Nb/3WOL9JZ9jQNaAFbIEsCvpPlk=;
        b=EDvg//8FEWZZ/EqVafCQJuPgSc+vlbcmtMSxWy8AaO02uLfqCAm6oKOJ/anW8v+m/k
         MLxI38HhKVPBr0vb54AobuyME3j7WmKQUs9s4ZSb6nf4WDp50vAGM9y/WbZCYDHe41Eh
         NBVOzbfAHVO2q8M0+0YlWxSe5BZQlPjGQ/AYh8C8Itydny9XXGz019OwEpXW+XdX50zH
         GrXPxw+W16Qu0DGBTTKd1BjvYL+/PGMONFyEr6sMKBmjGKRfopHnyXJk4qNSvWw9WzBL
         biaJlaTWzpKbYSlWAWSN4k5bQ2yU6ZXPPypl96ASxewD0wrzXoTYI8b83NB/cbG8aeXL
         wf4g==
X-Forwarded-Encrypted: i=1; AJvYcCVjha3I78g960ItbCOgiXmckCNCgFK+Ylt1owBC1THDc4+v4ILQ5he1l0aDi7Y9/Bmx2j5ZS2FtjiU5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Tgz9mOIoddHIFVpSOIUvp8nC2Eu7ofgEdIp7xxAOrmmknRZT
	xPzIqWffQ8J2TtwPbL7IaiNRBHnRY7PmGj1ht984Ir7yoXvNT5Sjrx0Djhtw8OnlNgqfO2NXcIv
	vLRlroztBscl8hakWINg9C8sZkGAAp28XHGOtoNGX9hE2/hVJdaHM36W2YGFuiqZv
X-Gm-Gg: ASbGncv77mlOLIzymxVreni9qEtvb9dcB3D2hVrq19hdPHCslezHTYRPuyELDH4LcU3
	U895bu3NY3W0kyMvRuXs034ri6KS33M4oBY0hIykgdr4oMmdayLBOyVbVo/Y/nQJXR8fXhgYIO/
	SUkiEnzgwDLLPGOmVM+0r34yakqrqlv/2XQYxVdR33SQGb4Gua2OmnXYRBqFhli3yxHXocYI7m8
	fdIwXqWoytjXPgLJG8npdGq16dfGIPbfjjdYJfDhEmjP8c33p4+TixQrcS07yJYU7xU+APGy6ar
	YOfxh3q5UhXVLzYyOVBFm/hQSzG0GmRLN2e3ISFPbcinu3dUoFcXlQ2CvvWAXuUQeubfB0RN2tz
	Q+CEq/QR5
X-Received: by 2002:a05:620a:31a8:b0:7d4:4372:c4aa with SMTP id af79cd13be357-7d5c4735193mr412013885a.8.1751546878993;
        Thu, 03 Jul 2025 05:47:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0/eK/DxumW8pE3KvS0NJ2lDX/WeN9meK7j1zTOfG3RdMslCa3fSmCPgMrEa9zMAGA9A5MhQ==
X-Received: by 2002:a05:620a:31a8:b0:7d4:4372:c4aa with SMTP id af79cd13be357-7d5c4735193mr412012185a.8.1751546878497;
        Thu, 03 Jul 2025 05:47:58 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae362cbf19asm1158218266b.128.2025.07.03.05.47.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 05:47:57 -0700 (PDT)
Message-ID: <e6227bbe-3949-4bbb-b01c-9ac97abcd91b@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 14:47:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/3] arm64: dts: qcom: Add eMMC support for qcs8300
To: Sayali Lokhande <quic_sayalil@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc-owner@vger.kernel.org
References: <20250702085927.10370-1-quic_sayalil@quicinc.com>
 <20250702085927.10370-3-quic_sayalil@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702085927.10370-3-quic_sayalil@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dIKmmPZb c=1 sm=1 tr=0 ts=68667c00 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MtGlpxXrABCotuZjxh4A:9 a=QEXdDO2ut3YA:10 a=I8LdOwYyl7IA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDEwNCBTYWx0ZWRfXz/gvw8U0Irlf
 mJ9Tvx+eG8bO6sfSKaViZgBOyU1JZyIghkH2WC1B3Vg+tS9i7hfqhZX6EJtkBvPKm0GsQ+Ryih3
 bX8amXF9JhuP/WPmc+VzJ9vgjcR2ijKFqOK1cHaf73MX85D3oUnbEongRTp29TeI7zS12iKX4iF
 X5tS6jIbU+r7kW4Blfc/JUNQA5OZBviMq6XQKfzYT3EpwhSDiGosTiIv/zK81A6EucmYZH9NJ1N
 zUnPEZmbqUOcR6zb2pkt+htCfbKdcJrP4aYcBcuV24pMCGUsvDKzEgaqAP/1VJRIUIat0cgsQAB
 50GOEVljW0jlcWAUCyd25EZ837YJQFu6rlCSCx759gSDiUXiNfY6MTP/DTsOAEeSs2UNJ6r8KF2
 THTrRfUeT756Yv5OVypCOI0mlIrNtMJf5zPRkV7qF4bun9Q+gtiaHbOHmDRKhenVRJjLwEfi
X-Proofpoint-GUID: mWXfF0BIpZjtzJmm6ro9UPFlQVVDWILF
X-Proofpoint-ORIG-GUID: mWXfF0BIpZjtzJmm6ro9UPFlQVVDWILF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=725 phishscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030104



On 02-Jul-25 10:59, Sayali Lokhande wrote:
> Add eMMC support for qcs8300 board.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

