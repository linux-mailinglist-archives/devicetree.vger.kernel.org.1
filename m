Return-Path: <devicetree+bounces-247417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E030CC7A19
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 31FD130084BD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22070342527;
	Wed, 17 Dec 2025 12:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Il1Xgg9l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B0l2zZfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B5834252E
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765974844; cv=none; b=JeSwomU9iZpLGDJtExuvrpC3JGQNI1I/i5KBC/aAKmwHjG6RUO/VykvJKBofOJ4s6RaeBXSvmgD9KSp20TpAWqLFN2KIfyTmDSsgRFZCDt629BVOERwQoYCppeumiXt4dWSdCDvLnoHOkRStyqsGIcy8HrGtkXica5OR+wiuqgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765974844; c=relaxed/simple;
	bh=eLDjS8KtFj1s3TVN22PHa9RzmMp+pxbj/rgY96bTAqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=di9Iok5Rz+uL3/Mxfa6dqOzutTBgiDM2FA7iNTsr70q23ecapin12EzCHR9re/UyilIAlGG6OpCHJEVYwfmJej7cZhTNZobz9SuYQCigTIqUHnTuXFb3o0poVkgmov9NWNlyrQFlc8H3YKEcd0p5iY2D7ZFUBFm+cclU9VXqD2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Il1Xgg9l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B0l2zZfk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKmDr2390502
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:34:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gt6CfewOeqHxuGPgc22OPlwiBeZF/gHQKLIVrkleS74=; b=Il1Xgg9lHPupWBZY
	oAOoGIid9RzdKsmZvmzmCH2FV4K8FjqfGkEdQMDiDaRHMseo1fhoPUpDNcBcaUV1
	kwWA2Nm5ZclB1YPGqj/6HO/ZHfkLyXVAzSkTVOJgySmO/YSKFFShRw2XXi19yXzl
	fYa7xC9ROQozjAQg5/kPSivg+9EEfTNu8C1Lv5KVVRHGzCQ7w/X3gWn8jFqYzBZM
	JdoqyLGenxVj6LDtVIDg6KGm8b+4dMzpxLT8c340oCQMlyHkgWCnImPAbuzLCB94
	35kRM8mhEhBiG8sqJ0DkVdg2f7G6dhLcAZiEM4X7QQv4ls2uZIrlp4EhDCKLGyWd
	+VAPAw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g37wr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:34:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f34b9ab702so2978431cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765974840; x=1766579640; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gt6CfewOeqHxuGPgc22OPlwiBeZF/gHQKLIVrkleS74=;
        b=B0l2zZfkIQzzGvHMgy4K5hci/4kBOuExwe27CGTSElqPMi5J231h3ZGAbLfZkEz9P4
         pg9cQFfVg0jcvDesMj22ZOqOUyl/mS9WAKtot5vilZwUlIxuG/J//bjHJ33afqiZE6q/
         gbmfailZhAE2YN3puJrRFwbFzfi7igYwP8jpQ/4wsFmBXeKbJ0a38edsxDJZdVoIGsba
         QVgkGud+9TDYPrNkcOxNRrA2telDYw5CwSCu/SFjouP1rVbYzP0jQhcyGtMS25MIllf4
         mqX0ExvCvzceENiyaCzTlTv5x3TWBlQ+NQdAvO1KrHCYSnMDIWTkFv11S6Y8rd+pa6Wb
         KASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765974840; x=1766579640;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gt6CfewOeqHxuGPgc22OPlwiBeZF/gHQKLIVrkleS74=;
        b=rY95APlNI8PCDJ7N2RdouVy/ey9CpFa4S79UGD0Wixd8aqCRuLzjMsSrIunzfmaMPM
         NMlWZ/DWg/ennxlydVzvFV8K44q67ZhuTx28T/6eD2FpEqT+pkSAiCEFlljjBAO0IhYS
         ef9rL42kANV0k8nLoNUq/RVU8trlq4qJPirn3rb2YBIGhclZUZ8uTIjM5rwL8LAPxYM2
         yR7TMDIoyPFyBUkzOAktqdMlXXaWzQE/ZSMBy+LPL1Iwc0p+cTo+r7EUUw574fzEjaUM
         fSp5UseyU1y8darIhQSQUvVtcCU0YT8T1Eb8OFr/CvCqA3vtwWc90Etjxv8UKRUhKgUX
         dgIg==
X-Forwarded-Encrypted: i=1; AJvYcCVwsepW0gyE0s0kaYe40+bKiX0xuDaQWhugoqiqxL3dYA9lwHaLN16HNomDeNETz1FgyOdjUk4kbOSU@vger.kernel.org
X-Gm-Message-State: AOJu0YwB+iTk5EcnfmKMsB44sTJkpXhhYUtt1jnQpBraQcrJ+26sPfQw
	MfYdzWHe6Mc3CAAnbcE/wxoU99C//U4IJyp4ozJTukQTgBi9D+ok4hd/5MLbEpCGZjmVqKbhH+Q
	0RFOQTPpGf9sR7bqEygaKYmWqRpXxbCyK12GttYUc0oKAit7dwv7MyD4oghRVKdvd
X-Gm-Gg: AY/fxX4ksSTNW8wgrGerjxQUA2EcBLFhPv+zndy0hIFxay9JUZbX1ZnfvQaui82YJvK
	v0Kni1VyA0rXDNEblUFAC+B6ZbQr+sAgV4eFWZtr7Wc+xsllWWq3VX09KPksv/D+w0E16fpUt6H
	NKxFnZtTuEOEJG/FOBi0Y5ZzlwkRyr+HxiH82KzN9v533WpsNa+sSg2TtVRTcb/3xxXpjsvvM8W
	Nw9EIo3J+QTL7M0X6r55ul4ynuLTijlfoHaGaJ3RvM8gxC7nYg4d+U+SIvcJJE4JKTg/n3Qp8Ib
	g/8VEWa3kBYVdE3I7oeDcb++shCumBhAL076vE4T7r5tTxWXFcWMuMvuE0cPyAE1LEEwERuP1sR
	qnrRZ4KtCm2+e+IUGT3TMF2EIdVDotgp/ej1fO2WhZs7qViDroIN3/gVCxsWf2JWe+Q==
X-Received: by 2002:ac8:53d6:0:b0:4f1:d266:a4e0 with SMTP id d75a77b69052e-4f1d266a5b4mr135587381cf.0.1765974840037;
        Wed, 17 Dec 2025 04:34:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEURH6ZAyYC/GPJfsHoiUONjkmYtxmwlxziZaJGCuSCwbJINPBlZstoWSti2QgrSuYD9L96Cw==
X-Received: by 2002:ac8:53d6:0:b0:4f1:d266:a4e0 with SMTP id d75a77b69052e-4f1d266a5b4mr135587101cf.0.1765974839623;
        Wed, 17 Dec 2025 04:33:59 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f519571sm2324133a12.15.2025.12.17.04.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:33:59 -0800 (PST)
Message-ID: <4b7e2f6c-b744-49d2-b6cf-0d0ed1c16032@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:33:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: hamoa: Add sound DAI prefixes
 for DP
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3bCpgha7ELU6V5I78dLG5M77ONtt_VK3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NyBTYWx0ZWRfX38fJKTyz7mz/
 T/KHpDAexpfzpu3n6mcKGpdBjVwospfDy4ECZN7l1OvGZ7qJvN6nekThSJzVK3PLbJsWWDOHMCj
 ywBte8CDzo/EQI8yH2Db2KdugeHP7FCyl4lVcFghBqAKQLZcm2/eTWXh76Sr0lHdUi9D6o2j6DH
 F+OmRY9ASMn/OBhDy1kJUx7vUjYaVJneUi1tldIBDJ7kdj/e9divtzCuragQcsAXJDwv1/NaFCL
 q2lc66fgybUWQN+EZANuq5+4vWjXDz/963zJeYD2B+A52I85hkovRfE+hpWO8FmQgx8l6Vyvt/a
 IkOYEfN2/CWjHaak9bKgSkeIm9bwCn3MaYUeBx/u4XoIqdxH8zSs8HfAjvVwZaF3H+zLaUBeIRl
 iI7AqhaVfU0IclU5ZqflMddECKuV5g==
X-Proofpoint-GUID: 3bCpgha7ELU6V5I78dLG5M77ONtt_VK3
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=6942a338 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=UpTyAFhicMDBmGaZp7IA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170097

On 12/17/25 1:00 PM, Krzysztof Kozlowski wrote:
> Sound DAI devices exposing same set of mixers, e.g. each DisplayPort
> controller, need to add dedicated prefix for these mixers to avoid
> conflicts and to allow ALSA to properly configure given instance.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

