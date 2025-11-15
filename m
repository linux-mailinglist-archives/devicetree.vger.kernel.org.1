Return-Path: <devicetree+bounces-238920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF686C5FBB6
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 974004E1C53
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 00:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078A063B9;
	Sat, 15 Nov 2025 00:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ATeRIamP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ev2RUkFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1453208
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 00:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763166060; cv=none; b=gvuXw7GeOjMXglQTidkPKrUePO9uEy9WVDMpVFE7i9itf1MODGkKLVqxy7sgd2mxfr/nuUOnGHEOyGdTuSgB2M8yjhm6xTOytwKx3AKP3+OVWZwZIX9L0HdA2lWErlIoijglLKdz62F1j7+oqhuci5SeUDuVh8hezFf7nyRIGEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763166060; c=relaxed/simple;
	bh=qGMme8u8wX8pGfAq93SN47rRB3hlWOacyKSDU6WEoEo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fIl3v2yfKuzu+jsmC8u97V/GjiQ1B+T7HnFagylohhUyE18/TTsCGdHQOiOFOczagPp9i5g89HT0kVbCbzowgtyGZp5huc8vcXLROc99BIt7E8d3cI1kKa6yasi2o8LhQ41LDAsIwlTwpqR8+ai6VR7VJvfdbj41MCZ5+/11Okw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ATeRIamP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ev2RUkFQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIPtD2438546
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 00:20:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gOgdIilgQ+nfRmYrWcdIS21m
	8eXNtlIyO1doFbjh13A=; b=ATeRIamPfyxIrCw1BKTUKL9WLZB9gLHQEvkj2Jq/
	/y9RFmy2GiAlw9frZjFMVR+SKc7m26geR+jstquk1rXwu9Z7/RQwhQ1gxmNarE19
	+IVcpVnHTsuG8Y4ykhMH6YeL65hVtllkEKNzd6Saa4ItFEaoRvFk651UtALLN1EB
	k23MCAIZSc0eJ03FSbr4e+THsgdIhTt60xUsk9tdpyFvDZBujuqsJk3JCeyrYeyQ
	gahj5jSnnbXAcFOb0vf2oG66S66wpXkw8rkYT8A4flAl4Qubzl5GAU/nZsu8tVr+
	uzMogE1m4tPKtlJJyUo6ymNyJmAIUeodvfcXsew6A9bowg==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae7cv19yg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 00:20:57 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-44da5f8ad64so6020298b6e.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 16:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763166056; x=1763770856; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gOgdIilgQ+nfRmYrWcdIS21m8eXNtlIyO1doFbjh13A=;
        b=ev2RUkFQ/0Io0BeWHzkI/fimbwgAeNRrDDqrviQmvzOwvfVTEg9CgcGcY2h7h7XV59
         jVDt9MdJVl8Qwn/Gy0xTRC5w8x4e+DTQXUtEvyvj84GGVNbbQFeYIIytxLybh1z+evBJ
         BXfpK7LDXnaSqKdslMeB15oxmp6adRoev092UqApFICZsTCVoRcXY/xOOkydnT5jAn5o
         NWTtHZi6W1hktqqzSQTnYNbIozGXMCF9AMRNmTNSGEafzm1Gtla4i0RWXNMZ8SQi22he
         04YDEw/g0Kwq1FtMBTboHtOqh0Iwb7dwZB8ym26dJrD42/XkL4efIpfuOfoFmE4NAvTz
         SUaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763166056; x=1763770856;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gOgdIilgQ+nfRmYrWcdIS21m8eXNtlIyO1doFbjh13A=;
        b=OIa69uMUNlN0ydraQtBQdw21eet20TLjvt9/JRSBW33Bkhw4DUOtDBUbFbDYOPrtRz
         q0N8y24rThiQT/SY0loT/M8VUKllOC2IP/B4AjvHwqKybOPzWSx6r4qZYHDK4+zJzB0H
         QTXoydL2fD9+oiuHF0RndROhQYJ0nDC43d/Yf0VjXNKMxCquHPQADXiobDwImXncLKly
         wX4/IDRh8Kj0sz06KVDEatQBqJRQrceecpHGYku20Kw5oQLwWd1Rg59QR5Fv1sQ8HUJg
         4yIBuVpNGSKRnbWD4NnbLvm8g8YGyZL67SqrTHUP/kePK4jf2bSrKIaLvGRWRexNXQYW
         Cq7g==
X-Forwarded-Encrypted: i=1; AJvYcCW68VXtss7ckSfyp/qCIj5N0UFJDjGEvCm+sgQ/l7QrIQUE/kLUX5FW1pYKwYE6RwLtgC4Fb8Gaq4s/@vger.kernel.org
X-Gm-Message-State: AOJu0YxbaBnKdS3HWCXCS2CrBF1LFSQiOCLeQ3sZ4d+m/WXqqSftCfVt
	1he+7SnqdAvxn8jV5RRUUU+K8nu8a5wzp5KuS8YS2eAgYYjIs21lk6zD0Qjj8EaflNUFePYp24h
	2CxwBgB3hTj4ZPiTYkDk12akEMbGVdevJ09CHEOY0u8+canCaw1m22rbME4xWIVqmZv1EXCyG+U
	wZOSQZpPogrLaMi3rneN6i0kf8kUXSIvZixRvZ72g=
X-Gm-Gg: ASbGnctlsID48QCthp2PuBI0OKDRuitkZEO4BQPEqCEhcuWgrMrAns0515VapCK2To1
	GY7iCiEiXH3EkV3Ea7bAloYnXdbyXxqHftb2b2icVlgATtHkBWx24SZgdLt+42SN2mcJbFa4lUi
	8SRePieS9qzT0l9c+dhfsxVxy/rBCwDhhPUH2dfb1wuXwTo/zkpkhUHODftJVyGoGl/CoZaLhoU
	1KYGIedpbhZPwo=
X-Received: by 2002:a17:902:e80a:b0:266:57f7:25f5 with SMTP id d9443c01a7336-2985a4ccc61mr111947425ad.7.1763165367415;
        Fri, 14 Nov 2025 16:09:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IERwjP64XzxGXqvqAWgezsPlvLeFT/ysTVFkaeqpGhW5zC2uwvYDq9eVbUobF4wmdU8sw4YCi/rbwUMPvccWTw=
X-Received: by 2002:a17:902:e80a:b0:266:57f7:25f5 with SMTP id
 d9443c01a7336-2985a4ccc61mr111947135ad.7.1763165366941; Fri, 14 Nov 2025
 16:09:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
 <20251111-db820c-pro-v1-2-6eece16c5c23@oss.qualcomm.com> <02a9d6eb-e480-431b-bd4c-a35cee170516@oss.qualcomm.com>
 <wf4h2lwyvgswtv4bgdfidj4vpvykwhu2gri4crvvtd644hf6nr@cnpqi5bmpvm5> <f4fbc949-415b-489e-b333-4c846d3ce8c7@oss.qualcomm.com>
In-Reply-To: <f4fbc949-415b-489e-b333-4c846d3ce8c7@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 15 Nov 2025 02:09:15 +0200
X-Gm-Features: AWmQ_bk9mnQo5Kc7evvML015uZK31NGNbAxtLZZH8kNPuTp0BpdfmxEUuYc37Ik
Message-ID: <CAO9ioeWpOArPm3M5hjR5PMbu4rkV1HHxQOZjOe5LwTKK7xMWJg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: add apq8096sg-db820c, AP8096SG
 variant of DB820c
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: 3ceH6qC6zjeFjXSawsLA4ma7XQPEBEK6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAwMSBTYWx0ZWRfX7xd72BPeVIrN
 0qKPwabG3P2BtrOTrtEei8g9hEG4LFUHraVo7CDVH/tVYJL4FqrsgkoHJIPzosnzt7CBddqAE+c
 29t8GCe7CldAq+DyB5GAn90GSVALUhiQbi3xSCMRyYZjD9EqNQeiUnLe0K7Ri33DAKhb86gdA4r
 Q7vWqRz3LdoeKPNsjk469HPKF3ENVjlgzekAePimtt/8rfetdBcmmqlqhViUYVz93EP+oQugOeD
 1AkLbuyD81rJAqIocUD/zFUiCavbZOzY6orLJ4v3Iq69Qt2lyiOMp/hYaf869Nd92JWys95vPSE
 yUAipjy7W6RobqHE3nFrIZ0Mwawl4y6M4QUdwH+1HvOG2QzyKO43JESgjBB2dOyq66i81FHHnqX
 UMIbTa1BUPISJKNtdrq5f3RpFbvU8g==
X-Authority-Analysis: v=2.4 cv=Y+z1cxeN c=1 sm=1 tr=0 ts=6917c769 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u3Kf3rDHAAAA:8 a=EUspDBNiAAAA:8
 a=w3SvXLNNHMlynSQcp30A:9 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
 a=EGheP1PGFffiXWuNiQ4X:22
X-Proofpoint-ORIG-GUID: 3ceH6qC6zjeFjXSawsLA4ma7XQPEBEK6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511150001

On Fri, 14 Nov 2025 at 23:31, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 11/13/25 9:32 PM, Dmitry Baryshkov wrote:
> > On Wed, Nov 12, 2025 at 10:44:49AM +0100, Konrad Dybcio wrote:
> >> On 11/11/25 5:02 PM, Dmitry Baryshkov wrote:
> >>> There has been a (rare) varint of Dragonboard 820c, utilizing Pro
> >>> version of the SoC, with the major difference being CPU and GPU clock
> >>> tables. Add a DT file representing this version of the board.
> >>
> >> So is the conclusion that both flavors were used?
> >
> > Yes. I have had a production unit with a non-SG flavour. Bjorn's lab
> > has a standard one too. All units in Collabora lab are Pro ones.
>
> Pro doesn't necessarily have to == SG, this seems to be sort of

My understanding was that APQ8096SG is modem-less MSM8996Pro.

> a "MSM8996Pro" and "QCM8996Pro" situation.

> I'm hoping that speedbin
> fuse values don't have different meanings for mobilePro and SG

At least downstream doesn't have separate bins for APQ versions.

>
> >> This product brief
> >>
> >> https://cdn.lantronix.com/wp-content/uploads/pdf/Open-Q_820_Development_Kit_Quick_Start_Guide.pdf
> >
> > This is a totally different board.
>
> Oh right sorry
>
> Konrad



-- 
With best wishes
Dmitry

