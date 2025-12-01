Return-Path: <devicetree+bounces-243400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39570C9772F
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF1303A7B60
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B45D30DD34;
	Mon,  1 Dec 2025 12:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XxbqVw/q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P1zU42xS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582130DEA5
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764593651; cv=none; b=TuF0NnTcqqVKdjoE3mM9G7X6kh1KgP+Ojb78agH4Xud9KB+RnLvmxZ9PQAOyk+Zw4RCShPPlYeMOpB2pnfUgjlMnZNCmXdT4gmA1u45aBUfQsuXw/CrCJaVlKf++hQutxxOk0536FWv2b4v7lw6mqTS8w/ERGciRverEco7aXyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764593651; c=relaxed/simple;
	bh=ZbJ6tqn35D3GtRNSD1GGZa8RNFE/FYoOFBNfcMcCCIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K8QRMM4HpiVjVHpu7g2px/J4uavO/J2OvX3HzAjVke4bofZTfjbIkLwlh65RJjANz+65MtJApvhQWMuonoHFsLjMim+6282Sg1SshG4ZUYGjPtSGqZrared5xBRWtfPdCdgednOQa6eQHzPD4kRVZScCDxoaUI58meFoJGbMg3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XxbqVw/q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P1zU42xS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1Ax85T343308
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 12:54:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K1Lg1T5TkeigOgGcrPwAQ2LY88GgtUvvjqRLdoD2NJs=; b=XxbqVw/qh7HdPTdR
	QsmPTMo060PG6+ucGvRE+pInHJzzEzSVeYmxvH5GtdJxmNBA108OU5Tt7B+MgJeC
	RIvTdGtaetS/Gt9HGrmKa0bAiXaMrhE/FqcvJoiQ8kcihY5I/yHPJPHwUDxTSXzb
	m5vpL+Ywkkw2WMdMTDk1l1vIOe+Ok33lOyxRho29RLUzJfy2UrVuu7BDC171ChLp
	lKhDMbrMOzQtOmPW77wdgy/YYMzDQAXlEiEU4RWpr6T+rEwJTSxzs7ZfxjsmyTNU
	CtpUI93ObHsiUUJfDiGT7pB3WfwHzsYrlQ3ynqnAhKs9t14Iihi4JwKWk94MWek+
	BNFOmg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as9re09em-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:54:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso18769331cf.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764593647; x=1765198447; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K1Lg1T5TkeigOgGcrPwAQ2LY88GgtUvvjqRLdoD2NJs=;
        b=P1zU42xSD/rdhgaiEzQ2OBGqMf5+fmSEUxL5S8EMqOAedyBniVtbbyzX3mFxzVREI+
         1UsOMSAauvVmWGgICehzmxaz1qpQRTERSuoL2CheAgfCQFs5cgq47auw5vKTniDQnAeZ
         GtOqo1IpNtiZ4JV+X93iQvXwDRflt7HUJF6Vie2cXiqDGOAHnQioEyfayLfszFWkAc1c
         c7neGU6h7Io1gFaukzirMWPrc8g9xixu0Tkxrs92fGI/GXb/OTS17hNKtwcu3kAaGmOL
         J/vx/87k6ll9vJyIotdYyEbe57QbppruFbpIiZfeW76yj/GIePEXvHJ1MWzSlrZ20oJP
         Yc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764593647; x=1765198447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K1Lg1T5TkeigOgGcrPwAQ2LY88GgtUvvjqRLdoD2NJs=;
        b=o6g+xgMO/ec8bAoAleBYHczFWJYJufeWCYuAf6cypmHJHxaQ2LEY9ZC35fXcqcXKr3
         72SpeFW571l+JHrCsWrYWUcmPZ4rvSUO+atfLLJ/FGR4JdSP1HIyzk4dIhGFk6znOQpd
         Ha8Kn+I+UMxYzgzq83lnuQzrurhPoxgQQLxpwfx10XRv12p4h6gkWD8+Xh3PYdXd8+A0
         l2M7sNROLgBjAR0FJgNAjMmVs5YLuhG+8bwZPysvBLMvkYjKUCNlCVhoElIvfwfX/f19
         PWLTMl6aFQEft8sHkviNjdge6+4Vf1YA1Uou11UXRP9pFHduqP0NL4j4GpOSAcxh+U9G
         B6pw==
X-Forwarded-Encrypted: i=1; AJvYcCV6VrqtKUdBcExdV3xh/MNNujr63nW2uK/prUBKBuCpuvLAy+USq+exLLC4KfSVkWC3ww2g/MlH7PgD@vger.kernel.org
X-Gm-Message-State: AOJu0YynJcGftpIeL1LmSqfp2VAlMs5WMTPjTITafcEEB5SSysPNmB33
	ng/APqtR8HSrS2OzrlfDugUgyEfV+vCzr4ywnhJ9FtNjC+6E7ss0W4EaTT9hOOhUThWItE8RNdH
	KVBLuAL1iNnOjY+EBZrH+ocuf+fomaI8GoEFXugxX8m4/XaVzL3gBHxJZYotMyblD
X-Gm-Gg: ASbGncthlc3xP/E2r6+M+slxsh5Hi052TTHTYPQd8exDZIJ/UdZuHJB1bkG8mnnVXgY
	mSOUgcw+Upz8TXbKWJ6mlhZgW2UhQF5hrzHhfvvpytOfjJxFz2VJSRTkPh3WQt/GDSdqyak4UfH
	lHLXl2dkDq6NHOrM2sGaE+rPLyjPbh6qBaIO4kaHgAh+97gnPGA2lxyj4YXcDiaqaX+i8UWX/AW
	ECVVjuIELdw3sZqJk3X7zeO5muxgNxCvS157PPjLrWbjkZEcLy3AnzuCTMCk8AK75FGRyyWVs6W
	IsVn2jvKgc6V9EHyyQw2zfXEtZLRa8NRVZBCb+x4rFcGfmS/gdVS0XyC+WW+PbWvAZ52vikLfsC
	FXnX0rGQIKC2yHgS83jRBdK24TzeRsci0q5Sd+ogrwy+MFEnAoLvVMgncQdt4Kq8LiDI=
X-Received: by 2002:a05:622a:1388:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ee589266dcmr381124981cf.9.1764593647347;
        Mon, 01 Dec 2025 04:54:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFtKNIMjAtfPJiJSALLHPPlhz/WfOC/htU+p+/2T+LFdCVsUBJkkNp3uVN2SgnHFv3VGVOWQ==
X-Received: by 2002:a05:622a:1388:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ee589266dcmr381124661cf.9.1764593646897;
        Mon, 01 Dec 2025 04:54:06 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a6eb53sm12238602a12.3.2025.12.01.04.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:54:06 -0800 (PST)
Message-ID: <0d98d501-85cd-4647-8d1f-126242c220a5@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:54:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/11] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
 <68a07e54-9f0e-4938-803b-64d6f0c31e5e@oss.qualcomm.com>
 <c95cc75a560d5773c298537f6078949d32d22007@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c95cc75a560d5773c298537f6078949d32d22007@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwNSBTYWx0ZWRfX5pVxXdcnA/kd
 /IY4XgPMPlibKGZvGkoMLPLVvYyla9H8vH8aW44HGi7qX2MBgs+87ba4PO9gikUayE1IeaPyJFd
 cjSOFlXsPcpdakiy5tFp2eqGxxC1xG4rCKKzDRt0/FwR0feajg2EcbaiRaawYlpBmhbuRjxLC9W
 ROV+8IO0x5lveBz1VJ9EzaUiPRbWqMcSkNq+/5Pij3dgiS8dllEoWCywCWER25LshmvQmxJxGHw
 OqS7q50iFQeApj89tzmCuXgJ2EDcd3v07DzoBJ44AXicxjZ3Y4FXuV9LdvFFqJcFqy9IBjGyiM1
 dihPdN7p+YGItAXzA4t59Q5jEnbmin/16cWbAz/8zlJPGdt4ynUkAiWwfWK6yEVx+xVLKyxfWup
 SZY/1Ki27kpt1kUtcdIEKuuuPMhrlw==
X-Authority-Analysis: v=2.4 cv=MNptWcZl c=1 sm=1 tr=0 ts=692d8fef cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=HRl11AMOGGhiExRDZPIA:9
 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: 78h9ogbTOQuLnNPSkneNOrSJToUcgyiG
X-Proofpoint-GUID: 78h9ogbTOQuLnNPSkneNOrSJToUcgyiG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010105

On 11/25/25 5:29 AM, Paul Sajna wrote:
> October 1, 2025 at 9:11 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:
> 
> 
>>
>> On 9/29/25 7:05 AM, Paul Sajna wrote:
>>
>>>
>>> This lets modem get a bit closer to working
>>>
>> What prevents it from working? Does it crash? Has rmtfs started?
>> Does `rmtfs -vP` print any warnings?
>>
>> Konrad
>>
> 
> <msg> [modem0] state changed (unknown -> locked)
> <wrn> [modem0] modem couldn't be initialized: Couldn't check unlock status: Couldn't get SIM lock status after 30 retries
> <msg> [modem0] state changed (locked -> failed)
> <wrn> [modem0] couldn't load SUPL server: Failed to receive indication with the current server settings
> <wrn> [modem0] couldn't load supported assistance data types: Failed to receive indication with the predicted orbits data source
> <wrn> [modem0] couldn't build device ids: Unknown device subsystem
> <wrn> [device qcom-soc] error initializing: Modem in failed state: sim-missing

IDK if it's super related, but some phones have additional mechanisms
for detecting (particulary the secondary) SIM - any chance yours is a
dual-SIM and you can try using the other slot?

Konrad

