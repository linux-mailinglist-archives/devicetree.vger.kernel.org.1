Return-Path: <devicetree+bounces-175095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2077AAFCE8
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE1BB4C090F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6954B26E16A;
	Thu,  8 May 2025 14:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YJ+vvhv5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C209A266B6C
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714432; cv=none; b=TFZAjUjM8fqsz/TwNYJ5XS0a4XmN6KC/db+/n5yM5luqKf1nPF1xSwQuL9afwOFAs7ht6KvWhBKaCbRa29e/S7lfaZ798FGzQRxZnMk0+Fj4nlkwtAZ2z/4klMskbgVjE0LPZvxZxxHcdGKXP2pPy+O2CRGzxOXswRsM5GldbRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714432; c=relaxed/simple;
	bh=zkds43o5L5B/f6HNVac68bbzTS3DCgZhRIDrIzr3LLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nA2pNSgxLhWWGKeYlest0fjab+qhbSZAbEvUK7kbp8TCOpDQs88jpm0TGIktCEYh9UF/e2nzTJGVXcuFhkXGhYqlEQKLBoelzR+Naq/KH3da253ElNqjnB5Mh2vyXQxPnCsN+9P1BSQbHJBzga9SDN6WFIAoVdWNOSgTKtrQeaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YJ+vvhv5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DoIuQ031737
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:27:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Mep7YcpH9mzwrz4fqg9kB+zrqpI2pfxnFBXIq+LfRk=; b=YJ+vvhv5wxf0zoE+
	FRCfleAoKhwz/ZkxHGa7gIFdg+hImF8d+4z4jqa58MSCjADTch7h5e7j6kcO53CA
	+u1Z7UIt/pzYSvriICYPyOvGLh0SE2qPFXwMyBl5y2wmW8D8ht2IixG2yIXQBjNe
	7TSTZelW0DKwGJkTfF7NHntZZudKkmoQV6Ts8lsJrFXSw+IiLHLjHFtafjPAZ+7z
	U7qsVYO5xaDHf/pODUmle7MKIrCFNIzLYqufBDYav66HZwewUr5gWLMDphuS1LuP
	Qrij5s3zu5Z3thxgI9Tof8rRNJolzGcYyO0Qtw6mG0RMMEDkisgNLm8pd7slh8LD
	Hbnq0w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpghjur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:27:09 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5560e0893so16388885a.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746714428; x=1747319228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Mep7YcpH9mzwrz4fqg9kB+zrqpI2pfxnFBXIq+LfRk=;
        b=QS5mSLw+N8rrv3w9x+2f/VHcyTGWfutMmUw/DBY54+PWKifuvXR0T+cXukLliUQvjK
         uUinh5DQFKHWGdPNg2wsdwF9bO8xURTAA2r3qUwQshwEXQ3klP4Restp/fIOW0Ywc6fr
         lfiH8lf3Pk2rng0EvyYa8KC74nZ6piLgR5xsOudFTypQVGcRV8z90cEuInHVJEwxb5+i
         W/uPdQbLaRmNmrWp4OOs4SfGmbWnJyh7eRR1R4+9UB5xwZHQx/j4SpU6GYYtd1LnZE5W
         xWVuf0atHuYbe1BaC9sWZz+yCt7RoVqnTiRIn1pxgZdrNOmxg7z5QfAUDUgzbsDQbi1T
         GwiQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2mOsz04sqjfjVSmhZF1ryUBwQ1ov4eyN+dwDnk/qx+umRAAYjmUkm/tZO+5jsyYoJ9X7fV0V8/lqR@vger.kernel.org
X-Gm-Message-State: AOJu0YwzgaHMJoEiI3fNAfrTo+OQYIJH+IgVzm4b+PMrB8SIbe8d/QeP
	7ao5riDinx/mCgoNhNk9eW5ab2g/ZlgbTrmLRn31WoUQ3B2X2mph+rRvj/koSMMc34eJpLN3A9U
	UmKQM/HmQzBXVcpe8jhMyBN+Gpr7NjQzwL8n5rd5iJiRkAPidoYFuLGi2/xxy
X-Gm-Gg: ASbGncs988g6vPTSN1A+vGJdSo2+Kte10YUiDWIsyf/aMc0Uq++v8SnyHuTJ3pwkSs7
	NWmhXPJowcc1dzVYb85+c0Ur9XHOfcRnjr90osRjSCaoKh5l0AsuyIlpGSibNDi+c+mMnRvF4f+
	IrS/rnoHDvbEbw3wTKjslkksrxtptoJZiEYCclmPlSybb4abqAlnByvoN0FworMykWwAjeOeKkn
	rCCX1zomwE+zv/l/NpC8yrRyXKBf+eybU8coQnuN1ZhrEm4JFnt7EyVpd7CRpyDXPUkpz9gxv8a
	9lwsiZoDn0EYlaNhoMJbs6ko7Spm8/XlVDCo6svXYHZDrkbDIzpwPCVEesT3ECyN2DA=
X-Received: by 2002:a05:620a:3711:b0:7c5:687f:d79d with SMTP id af79cd13be357-7caf73aaec5mr405296085a.8.1746714428664;
        Thu, 08 May 2025 07:27:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvba6HeUAx7OKuoCqvOUbDJe875HzP+f08GjIi6W0s7XmhXMvoMzNxaPmK3JIBmw9hSJ9S6w==
X-Received: by 2002:a05:620a:3711:b0:7c5:687f:d79d with SMTP id af79cd13be357-7caf73aaec5mr405294585a.8.1746714428345;
        Thu, 08 May 2025 07:27:08 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad20d048485sm55528066b.127.2025.05.08.07.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:27:07 -0700 (PDT)
Message-ID: <f22fe0a5-d39c-4a6e-9363-d02a6b17f01d@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:27:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] ARM: dts: qcom: msm8226-motorola-falcon: add I2C
 clock frequencies
To: Stanislav Jakubek <stano.jakubek@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <cover.1746711762.git.stano.jakubek@gmail.com>
 <5a8191e3758e0df78b4213102f25ceadc28cd427.1746711762.git.stano.jakubek@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5a8191e3758e0df78b4213102f25ceadc28cd427.1746711762.git.stano.jakubek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ao/u3P9P c=1 sm=1 tr=0 ts=681cbf3d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=TrkI-WLm7CqbamwRmuEA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyMyBTYWx0ZWRfX1Kup4phEDCLs
 IuyGVM+DfN/8x3D/6abcsSDzz5c3JawzdAPyFX2mCKs4OOkvK0l52xLNO+MGJDFK53U3OB2e52f
 p+2f8ySn6oIwp7XC6C90VrSkFCNT1avG+BPMjzMjHtv5zQ2qI672928AjqRaGJ6A5COdhKjG+vj
 H0qpATDMRYUgAlsjZ1kQXYRFbPs10l+Y5LjAg636xyw625x84PwMyEt1uOzSGZ+YRS6fAyM2Tts
 DBxtNx6Tix+kPBdq3VryOFpXcXOT2HSRdPsM8YE+Ax8v8Gm4rBxzghwUvJswqyGKoHh+ZFMlAoD
 6oyF9ClFoQGPKELaxuDuwV1wcDoSQ9kfch+gZ6yHVbBeKESWrwRPoipwsb/x3NKmye4f7dZnw/h
 eYJNRZEa1JA54PAAkp08p5SkgPN8SzwfBimY+fJDNTuLszxoeJLzERFuAN852rJ1FqF40Wih
X-Proofpoint-GUID: IXTODMavSDnYJlWTJdKagjJLTIg8jt9F
X-Proofpoint-ORIG-GUID: IXTODMavSDnYJlWTJdKagjJLTIg8jt9F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 mlxscore=0 mlxlogscore=728 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080123

On 5/8/25 4:11 PM, Stanislav Jakubek wrote:
> While the currently supported hardware works fine with the default clock
> frequencies of 100000 on both I2C2 and I2C3, downstream sources list the
> frequencies as 100000 for I2C2 and 400000 for I2C3. Update them as such.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

