Return-Path: <devicetree+bounces-250154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC633CE68C1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F334D3008EB0
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5308230BB8C;
	Mon, 29 Dec 2025 11:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QeO20t9+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E07WhPzP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017112F3600
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767008135; cv=none; b=P1ZHg90o1tnwGBaJZgt2bFlteT/4QVx3+7UzIFzXain4gOECR7E7DVzOm7qzsWop+PWs5DupsMqBJ+nOqz4VibjOz40dcgUhF//VGbRkTCesYrbp2F6TQQjsHUs0wvT7bnON/D72/v8979si6Z8XxBr0WWfdRcl3Scr/C7k7YcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767008135; c=relaxed/simple;
	bh=xt/rDgSFffMfSGBdV7txSj+UEiHqltVogbdnuXlssbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=trvPvsxB5R3ylC9AJRifNYVjhqo4l3fr3xGT97cPONqWgl3Vvxr/h+nORGVuwQc5pYq4QRZdTI5Aej7bM/qeJSeZgYVnOM/7j65nt66juX2M9zAIchZYT/67hFA8CYq954wtZ+X7kpXX/l3mZ0OuNWeZ7RweIx/12o9/kEcBhvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QeO20t9+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E07WhPzP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BT9sk0Z1447718
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:35:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6IKokE3C3IMD7jrMhwamF/WgPUFvb/9N1ZvQisTxM2A=; b=QeO20t9+pTYkno1g
	T4s2W9EHGmDKPb3X7TGLXH8day3B+1bJo54jmMMUZmuRLRBnPx/PkBvg7Pv/M0xZ
	wTUUp7PkLhjODwxUKOSyxotr6oD3WzgPx/jzq9/yN+Zapvo5jomjH/D084PgXTf3
	qIPFJERiakju3n0bEQQN0O8LVcjzmFmg272Z22+/HDGyrViOCLw502Kn1DxnUZtO
	nlMFhUwOKBjT+Cx5R6UUgTog0UX30xhMt6h7TMA7dUCQp3vdRuzS7V580pTm+/um
	Rv/6JvffB3/gcyAnQmRVm6/wsX4gkK9ZnNEzeaopIS33htqVUIxqdeOwMgoEbY9n
	3qMYig==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bavrj2nt3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:35:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso30021221cf.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767008117; x=1767612917; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6IKokE3C3IMD7jrMhwamF/WgPUFvb/9N1ZvQisTxM2A=;
        b=E07WhPzPxWbnlBzZGJYKiPQsexx0YP0WWdKPZizwdjwrS9SXgMiMO4QCyrkxbaLliP
         qeie3wWlxqjy0oX1lUOWyhZjrGJatv0/bUAL+/Fpxoti+IjI6lPV7jEBzvf4wQhcJCMl
         El6YQMC8W0o+vrbYpzLm3zeONuipUk0Fl9yh5HszF5C5GxrlkQ5V0uogxQgnkvX23s4Q
         TLtLHDJG+mABqIrIcO5W5QqqlXNnCqTCK/VW8wmWhWrncr2aPeOfVIIsewB2sZL7oYDG
         4u2+zDlysTiK2MQnGPeyZ2kxp6a9t8bAqpnQOAJXo8iEXlqH4WBDW56nMynPYpbx4F30
         eWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767008117; x=1767612917;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IKokE3C3IMD7jrMhwamF/WgPUFvb/9N1ZvQisTxM2A=;
        b=BfqJhPDb3tw8hqZHR6TnBj1qZTVwQVD0Dn+b3eX5IJ+u8Cc6kmKTlJx5CytsBiQi4E
         VznRbPLtiK+pKWwMVvb4n/9K/cu2Nk+cr9B1hJQcPSL2WmO7f8rRd4hYY+Sk+4yWadmS
         uSwuqXw+rrn6F1XZcUaPHjRxVtcZi/bxd/uxMnytXuzrRXPsw8ZsjKlFGY7GkscrLYIL
         MCC3rsPLEMEBXjZeThKndI/JBnwHLcKZmco5QN4qheGFsHgTs+3m4n2l776TBrpaK08j
         nzyua0XKOwY/t6N30M9+4rk0zU/SySB8x3GVwhNMuAT9hQGY80jniKP5juyZxIl+fNKq
         VXNA==
X-Forwarded-Encrypted: i=1; AJvYcCX3YRiw8jBhTLqbt1zkT7uP5W2WW6tYzq6oAExnumPX2CxyB9cNz8xYScKD9UGpkM3MmbTrJrFK8izP@vger.kernel.org
X-Gm-Message-State: AOJu0YzX95dS9Mo3GJG7B0kB9+MP7flT3VPfSM/uA3WVkFt0/ZbME88O
	QTjNrLn0pd2CLn7pSGB1Q1ZOA+fqbCBM/pbYm4CV6Vf2wzCqgxiuJfd7OhOs0vwO512xiRfvZFH
	1L6nim6Wovr1bGhmAzh1anImUtatzo7mLhgDqUql3FQutaeum40P/VU9+zgaH79ad
X-Gm-Gg: AY/fxX5lOG509r3OXqrXyyq8urUJ8zm/2wUSjj/VCIse/dUPAHAvLqZEs0crThCpP2q
	XsEtd0OldR8f7V3ZctTjmsGFCSnUHVkLxB62nwBseWb6NUXwP8TuZktWN3QLPP+YUcNsWh3vhkZ
	cWjoJRAebjXmVRvZWnUy/1pzlvCHFhos/Qpc5sDEK16pNoDqLNFRqB3ofTreSsrLcWhWv3G6Tct
	ssgIHuz7ksFfSkWoMEKUDgCVec5LJG0iWqvky6gBGli0mJ3TSlsFQBADZWEUWlxG1VWyiSp5mGT
	tuS/XvxvfyK+CzLKRiYYY31Msa2QjnqI27eJ0jXsic6nGq0IXLWgLqBe/u7q0NNvCsbZ0jHyotn
	fTLRAQGf8A4i0wMQk6cEKXFFgFnbUQ+8plaLGv/HCKgS+cwNx//iZ9BbDLWFahPQbQQ==
X-Received: by 2002:a05:622a:6bc6:b0:4f4:b376:a689 with SMTP id d75a77b69052e-4f4b376a711mr243212181cf.4.1767008117497;
        Mon, 29 Dec 2025 03:35:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5vBv1yDQDplq6Y2nJyKiOzTBcplQrNB9UzWlezWrbYHiD4gCPZL6KYl8ZxS8Bsbo+4+u+dQ==
X-Received: by 2002:a05:622a:6bc6:b0:4f4:b376:a689 with SMTP id d75a77b69052e-4f4b376a711mr243212041cf.4.1767008117123;
        Mon, 29 Dec 2025 03:35:17 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91599844sm31742314a12.25.2025.12.29.03.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 03:35:16 -0800 (PST)
Message-ID: <6b8b1db7-82df-4397-9e6a-73c6a100e49c@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 12:35:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add capacity and DPC properties
To: Ankit Sharma <ankit.sharma@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251226123258.1444419-1-ankit.sharma@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251226123258.1444419-1-ankit.sharma@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4jVROyFSQ4wtYWQUFXrmCpRcwgi5xVG8
X-Proofpoint-GUID: 4jVROyFSQ4wtYWQUFXrmCpRcwgi5xVG8
X-Authority-Analysis: v=2.4 cv=coiWUl4i c=1 sm=1 tr=0 ts=69526776 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VcFfoyNLmAT7u-qNsN4A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEwOCBTYWx0ZWRfX2cUQYX5CnjL7
 T0TvRWZBjdisdPg/jUwpeKuJWU8OC+ihg848mUpprjXtuHE9JHEWulCvW42n7TOWb9hxZnCauZK
 wZMIWYFo9aM4GnXWOWJQSIyrQ6AJVQJQ2Jg30XGO3lh23zPmoaPjzQE2a7/Yk9sllXpJP8ee1sd
 TXhbfJvYF23uo1u/a76vAG2Z5dv9RQCtFOPLi1CIZ0QmcFsDVkeEZA3uwAvafvghb5kC7dj+VD2
 jrR1gGRuZK750w30alHctVZsmUs+aPYwWlH/8fN9BP4tgybjmxImtWBk2IacgTQ6RL7ypJQPt66
 zXwCfuFY+uzGclSPVNdadEhjWQuILAw5+KYYksllN5D6Gh1i27lZmRfXn9ObJMAN+upQLUvQe71
 mIKctdSR24DOJW5qtM2hVBVwryBX11a5zRrLLdJw39DWLzPl6MKp1/J+w21TCyE7e3F9BhlEMb3
 42yKAEolq/sZAUY8p7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_03,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290108

On 12/26/25 1:32 PM, Ankit Sharma wrote:
> The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
> used to build Energy Model which in turn is used by EAS to take
> placement decisions.
> 
> Signed-off-by: Ankit Sharma <ankit.sharma@oss.qualcomm.com>
> ---

Is it really necessary? Does our CPUFREQ-via-SCMI service not provide
energy model data?

(see: drivers/cpufreq/scmi-cpufreq.c : scmi_cpufreq_register_em())

Konrad

