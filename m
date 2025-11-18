Return-Path: <devicetree+bounces-239874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE8FC6A30A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0B210368A5B
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F9735C1A4;
	Tue, 18 Nov 2025 15:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SvYxmp4d";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gc9uC5zD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052762773F0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478182; cv=none; b=E84f/2nFg2gOmhISYH0AW/MdoopOgoQR0mefZR7DqjUjT7OwQIuALZNcOgUZbLHa8emjRTZwvHu82d/YUFBHvRkj9m5DiCSI5iH73D1OQ0V4/xbd47ztt7J/N4KB9SMnQhxQQdbVvMdF3Ke6NcDbLPwZNp1sDjKRrLLVXPFWDgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478182; c=relaxed/simple;
	bh=v5nImH+xK+9SL4E4MH8KbpIvlaO5c50Qq/PRIW/0KbY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AUxgQrcg7JscNwJZe/mo5VLorXcZJUemawdJNyBgfi4USdr+LSlqK2bXMvgU8Qpg3aDoZRSC/y6Wuo6GJerlXi3qkLabwjhza1ug1eqEkZMOUp97pbApIPjkDTofOnd6p4WlAaQ2TZkQUzF+7dYyKdAVWLKVPI3uxAyTfZuRxkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SvYxmp4d; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gc9uC5zD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIAfMKk375824
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jkUfsqF7fHbwcY/CG3Vr07bqMbj6EV4hLs+8T8s4P6Q=; b=SvYxmp4dxkjF1Eq/
	M3+NBGJmb5ZH+L6kYsnni7vTyXPFJHokizXleotd1nNPyGfVoW/MAviP2fcsE1Sg
	IWfcBn3wVV7NOcbr0POp5fp9PF2wm5ygjgdK9CzhfRqc5pUSSpDZG6Sj5FEW9dYO
	/rrG7hDfCo9v37LXBkUmJjf51fhtXIztw9KR/AhG3IRpakBERVCbwN5OttmX+VlS
	ER69w6+0bgtmCrP8sqnCKoZb0WQwpLHLj+p7k1y1dzbACIQeVecRNN8gi/snm08M
	5RrGq7NFBxXZi1SiWvC2xjK5q7FZTdmeC8OUZmkA/8pqjKgFN6Rm3/F1uhUHXO4n
	s2vdtQ==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag76nkgpw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:59 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-3e3b3fda809so958153fac.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763478179; x=1764082979; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jkUfsqF7fHbwcY/CG3Vr07bqMbj6EV4hLs+8T8s4P6Q=;
        b=gc9uC5zDkpQiAqmw1G9NOCyVNbUN/APM5THkn6L8kcgN2ZYXQf113gXGwcxS/R8a2J
         S+eKTmy+w+LbRXBaBdsb3u519tfO5qxUkhleSaU14+h3LdIrY6zKHwluAIXIaHgmAi2G
         hHMTsMWbitbGKeOXWAplIYhT2Ae8WGK9ZV96kTrwd9KMG/BzBPtFPH+8CuS5L803Ad7T
         fPSbNR0KC5pv5nj305KRc8WcrFSEpA8pIbyQdC5WWmfviIBaJjOXi49Kovln8AhcZiDi
         96jwz49x7PKPAD89079eVrZ1l1kqiS+i+QloCjK9PPwU0gi7F3DCMeQXHAy7uTM2WJmE
         0NUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478179; x=1764082979;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jkUfsqF7fHbwcY/CG3Vr07bqMbj6EV4hLs+8T8s4P6Q=;
        b=k1sFPZZrscNLMrVPlyL5bG1RTC+6UGkBEwfb2c1OkqtDnxZU/TvJpto4uZ+T5pUKb0
         HdedNnqsShLPI5f0cQZe3fzwc3sbi99jDUEEFNpgB9GV6UZKvVgdWh5ay3wFoQribxgT
         4XO7OZcJE47Gb/ZOLHvyODu95aE82zIhruMnr27n95ZtfJLYc43S7nMenUZFE3m+H4Sb
         uO+nqz5Tz6SBnTVEVAWhqss4YnBYhEsUWAXawMDqbVYHoJ5Nw6N/883G1oC2rpCTSNK4
         GY8WSQsJ1eo6/YYKu5PJm0C4NbNCCdN9tIyOMkVf3drDmvx/NBIeRgsmFPExP+5yAhVb
         KUeA==
X-Forwarded-Encrypted: i=1; AJvYcCWyuRaVQ3AimYAjbfZiAlwNDaf3JdHrFV9opaapuK5SCYw/6lGHJPXSfkCB4wp0uMTH/AtwrYIceMfa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkp3oJl22fCYbeKmPavKubcLF/lN65QES+j5hfs3Zpp5MlmFHN
	JfgGt4BnzGkbCr0SoIOwQA2/7kamqNFVjdSATK6wAW58mptO9VpE5LFW9DxEYkoFx27AOo1yMkz
	4Pilfq2Cam6xfsPDqQmn02sZ08THG2eqbLCw/T8DY0qnx94i5AL26m4qJcIx6ZEw8
X-Gm-Gg: ASbGncs95WUNW8f6Vs2wzL63Z8SyU6uwk00hiEZQIw+Mn/o6wCyYUBA5akOZe/m7RRK
	bUo9FXtansGh1GBd92+sO7+kHw6Si5qY7LHEhHCEsEQgCqjn1Tc58t8QEgtHd9p9rcDAJ8ZH5dt
	EBifh1Vf/mTmKuRRWUGSB241/0zW2N9TKV4JB4SwlJ++gY/MiUf8gREn86y8KOv7mzQxT35N8K5
	81AyX98xkdFGgMn4mVJcf/X7ULGNHVcqjDN8diISSDHfD8RbQBAT9zfCCL5YDNrwe1tGbsGf78B
	dP2nB7tEKlPv3nQg0keNKJqNOYuIkLyo68L1mLKzyAJ1Nd/mz/k5bmrCjiFjp/OgE/DCEw/X9fZ
	mX9YLKEfTecvjJjJsFv8WKcDYV0E3gDlfvB98vG+aENvKHRpKeEykX2LVDJneJHfhR6Q=
X-Received: by 2002:a05:6808:2006:b0:450:456c:ecac with SMTP id 5614622812f47-45097569238mr4604866b6e.6.1763478178675;
        Tue, 18 Nov 2025 07:02:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTkmjEbG1bOBUmUhskRwPcIJ2t3hyrWgqr88XZ97OQx2rGABdJ9AERVUyZlfj43/laMV+EZw==
X-Received: by 2002:a05:6808:2006:b0:450:456c:ecac with SMTP id 5614622812f47-45097569238mr4604843b6e.6.1763478178062;
        Tue, 18 Nov 2025 07:02:58 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f961bsm13032422a12.14.2025.11.18.07.02.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 07:02:56 -0800 (PST)
Message-ID: <c3f9d05a-1811-43cd-ba55-3a1766808185@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 16:02:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sdm845-oneplus: Mark l14a
 regulator as boot-on
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251118-dts-oneplus-regulators-v2-0-3e67cea1e4e7@ixit.cz>
 <20251118-dts-oneplus-regulators-v2-3-3e67cea1e4e7@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-dts-oneplus-regulators-v2-3-3e67cea1e4e7@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEyMSBTYWx0ZWRfX3E5dvjHdYGcZ
 Myyzi5XWNTysuTzESeFmrPY3LAV4kr+vtlk5QRN3RT0Eotb3o0eakOyuf5e7J9+iwrOQa9bLvcf
 DM1Vy7EBxc8LJ7z8eUk6BaatKN0Qeayr4xYx9AC1fcjZ+dtHlGa7FF6910H68Bb82ag1M82WSw+
 mHJJowq/v57Ylke9FxAzHbGqTI5lL9U00oPtXnQ6oCLG790d74yHSedg7ldSYeY1bkBvMlIdzyk
 zJgOh8nIZNTWxxiObZVIZxWi9wsPhD4sGYlW4pCTvvqr4370aJghU5ax7muT0o7bSZRs9MrmXFB
 TSTcRYEnBJKnukJhhOnoAa09rfVSV8H4DFYRiLwdnisps8MRVPY9KwQKPXjIuFi69TCFVm5rr/c
 Rl0TLUaUDoK5XL/5wHIIOyJ2KOv4Zw==
X-Proofpoint-GUID: -eMCau5zionKSpVpCoWdcdYMiah0AtEW
X-Proofpoint-ORIG-GUID: -eMCau5zionKSpVpCoWdcdYMiah0AtEW
X-Authority-Analysis: v=2.4 cv=a4I9NESF c=1 sm=1 tr=0 ts=691c8aa3 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=BiXyI_okxTJ3JasmUDMA:9 a=QEXdDO2ut3YA:10 a=eBU8X_Hb5SQ8N-bgNfv4:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180121

On 11/18/25 3:52 PM, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> This regulator is used only for the display, which is enabled by the
> bootloader and left on for continuous splash. Mark it as such.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

