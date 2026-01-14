Return-Path: <devicetree+bounces-254903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1C7D1D9AA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78DE1302D921
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BA23876BA;
	Wed, 14 Jan 2026 09:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ilBhHczJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e/xRLYgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FEC8324B09
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383244; cv=none; b=R0zf8f51pl5W4vOPLZBAES8rPTdAmPUAcqTZmcoKxRoCGVKTaFfKvmD0GZ6JZTHEr0qC5Pb4fKCaDOb5IRpiKJqWqg5oiJH/Im7OV5QYaPsn+LWOCTcoyXCoQKz2HCaOQSOVL0x86l09is9V4cdANA8/6hkNGNCyDjQ9bIVFIcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383244; c=relaxed/simple;
	bh=lskpaMOVflSnNksHAhZznp+rYCA5OFUOv/tczxISuPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CdRPyb33ivWqfgtqyqj4eRyt1DRpZLyaHZiIp6rDomRmqsUDBzGufp7bBXaJ2MHC5Bm2cURiIuTHfKFpy1NycksG+HY8grslW0Eh2KkS1R0ccG4HYDsMPMmRPx77cZPpBUyal1MXbx3eBniltNYz93dtulms3D3bAxYtVpzl9G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ilBhHczJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e/xRLYgJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7jIAt2588001
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:34:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	30mGDZI96aGwmWtU6KYx4GGBJ5IuzYUxRp/LWAwWnyE=; b=ilBhHczJDjW5qFm2
	AUU3PVtrXjvO2YLCQDMpdf7rSCE6nwCv27oSc2dfb+7BcfHHbWEFgJ5aq/n+E3D3
	HmaLtyG98HvcJ0xucygl5e1FYo/5dcv7jjyAqw2FMXwHuJS2joorlYoRg78n28h8
	7Fgu4AiUpCRDAPquYlqp61ZGuw/F3jD80UxCMELFBBRQuNLRJUb1wKbnY3/QMTdc
	oOcKOKqMhejFnFyNP0DJywXpMqnV1YWO0LN2RKeTVVNLVwH66ki+R1jy35WhRrHX
	t5HLG4vmW4GXEstqXIYgMEGm1vJFa5FcGbx2RD6bcVRvFTGC2tCEMjkzx/BWxzwb
	p9wRaA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnymssw0g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:34:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2fdf3a190so153258685a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768383242; x=1768988042; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=30mGDZI96aGwmWtU6KYx4GGBJ5IuzYUxRp/LWAwWnyE=;
        b=e/xRLYgJBTTPk0u1K42rnwZQhe6y3LBgncvliUfuYNkiZ6tKHyN3NKBrkcNMBfV+XE
         SHXlsfo7isdY/QaCnWNKmLz5y0RMRVjX1qdFwqATjjCG4IXe0HJDbaaHTk/Dgt2hjeNM
         /o7ktFyK/JGg7h6EPAu6XaonnkNaR1SXXZDngOBFx6JwB3wFM8WbBztZVxJiHhvWCEy8
         qjjjP7MOoG4HDNZAU3YN/rf67kTWt6Mqx6vmu9rlD09VTevtJC5D9FKbnGBBOzLH4TFW
         biLpbstcjC0W0lVMSbXPjte7launcVq3JSJjtdZK4d+NqSDoFYFNlS3P0ZEg0xeTyhKE
         usVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768383242; x=1768988042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=30mGDZI96aGwmWtU6KYx4GGBJ5IuzYUxRp/LWAwWnyE=;
        b=I/kPSdVIaKNyvZA3FtEUPNdxQcb3RWD0GxNqLUyXOQqrS9+/H9URWQ2gV94BArFDgp
         4QEMUCBmMuFjtsVuD2T65igug0//nvZKwPU6v+CiuQlFeKrjuo7ttS+Z49CMXQCL0DH4
         aA0ELiCrSqpvz4HqrPMEUZKBurapWbJ3/qarHXs3blw1S5Kicncnqvj1pbXc961+rzvX
         eCtNPUaQRhl1SwhksmrH49mA7kUv/lXM8w8sLYLkLILneW7VrS/2izhrgxahd5rB8GTV
         /q+UYGTTCVDarSaxnduDtOiQXFMfKzKwRBYt6PmrKvGaJRp5od82oRNC5x/521ovFhno
         ikcA==
X-Forwarded-Encrypted: i=1; AJvYcCXVad7fdpUZl/uao7MxXdGqktSKhtYHlg00C23MQlvRYAU0YyETvAr+NbfsNAdNV8ixIDREFJqY5yQm@vger.kernel.org
X-Gm-Message-State: AOJu0YxSMxRk1UqdleHd3nW1reqgmQvEstRBZlrguk8gOY8af/ueworz
	zgPKlq3tAgwPizCs/pHrHlv5kzsq2FbNWaSZ7Q58HxLmocF1P432jDVpnYJdGymPXgb17Q90kFO
	Crraw1QPMX14We0LKIEsNpxZP+ILbMe43xyktcBCshhgxDgaBBmRoELh82iQX7ciJ
X-Gm-Gg: AY/fxX7JRXWlwu5TkZfTuWI6pPKQQWMok0z4gqlkA+O/QSV78xACbvnjq8+OFaEGUJ8
	48SasfMQm1fK+vpzx7A+KhY8vqgLmukWew6PSyUbj35Jmys1svpl7r0WGrvP78/8ormaHlQBplp
	lQJfSR4gZm8T3MYu9DwG4kakiNVN8vAF8QPxh2izyV8M58Dl3f5x8LHbaoSD/TaXHYl4gIMfn6c
	4TznEY/iVoKJ3cR81qoE3JHCg7F9hsDpXrRocj2j4seDVUeRF+i2M0giOcMmeaHI9o+/D/zbjHQ
	grfRFtvErfGQyA1IdalVGAn2VRJJSuW1dso66C4veHZJgQu5k/WO5JzRwj63Gtye6Ctt5DiD22I
	sR0r/dwbdrqiaBIP9J+Zrix5xVYTtB992FzNLw9BQICMaPBGwnK3eWforBdpR8va9oa0=
X-Received: by 2002:a05:620a:45a8:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c52f96e736mr215569185a.0.1768383241991;
        Wed, 14 Jan 2026 01:34:01 -0800 (PST)
X-Received: by 2002:a05:620a:45a8:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c52f96e736mr215567885a.0.1768383241499;
        Wed, 14 Jan 2026 01:34:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4cfe76sm2424951466b.40.2026.01.14.01.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:34:01 -0800 (PST)
Message-ID: <46637460-05de-4e94-ae5a-73470cc34821@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 10:33:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: agatti: enable FastRPC on the ADSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260113-agatti-fastrpc-v2-1-b66870213f89@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260113-agatti-fastrpc-v2-1-b66870213f89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA3NyBTYWx0ZWRfX/QqI9l+rXaa2
 V8eVUlc0uFEB+DZpudDgC3HkyflOvxHdrPFwkZq3JITrNxsYdKKSjVwDpVXkbA6S3/u4Ym33vMp
 bISuo1mwpxW9a1/wypCuSdYSja3nntzVODaCcs5O8eXly1elncdbK5iqxT8bFUyy/D6OF8VXZax
 gZWlIrcIJpNbyClLsa48VDx109mZ8aE7r8R63xpkEnvWJhwNJQS8qErhvrDLbo4mYT+YLwonltW
 MVOMaPZSjLRzoE60PBSYm12JhJKKBukU/MR5gsmdgsIBdF38h66za+LlHincVawcCOcXev3/jpR
 0599gMThpNQCi8aiw7IKu2ANdaTZKguiISpJczO+7iwLjLX3Mxa3XlsIzhRZI/Sc0ubz+jvmpoZ
 bXVYHK8cBV7UsR0VZHcHeQbQ/mHEyZ816VqeivVTNncmE2ciQgUyG2dE6O8RqMKtqMCfZqHSF9q
 1gKXU8xsnesIRoxxc0A==
X-Proofpoint-GUID: w2uHneF6fnJ3aTiIFfZmq-uobpvNqKUE
X-Proofpoint-ORIG-GUID: w2uHneF6fnJ3aTiIFfZmq-uobpvNqKUE
X-Authority-Analysis: v=2.4 cv=RuDI7SmK c=1 sm=1 tr=0 ts=6967630b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=39RDWWulZT2pG2_OeVMA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140077

On 1/13/26 5:41 PM, Dmitry Baryshkov wrote:
> On Agatti platform the ADSP provides FastRPC support. Add corresponding
> device node, in order to be able to utilize the DSP offload from the
> Linux side.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Changes in v2:
> - Add more FastRPC context banks (6, 7)
> - Link to v1: https://lore.kernel.org/r/20260113-agatti-fastrpc-v1-1-e210903ffcb1@oss.qualcomm.com
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


