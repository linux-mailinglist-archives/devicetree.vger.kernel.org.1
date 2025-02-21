Return-Path: <devicetree+bounces-149695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 322FBA40228
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 22:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E80CB19E05A5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 21:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2860D255E4E;
	Fri, 21 Feb 2025 21:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bbEmgMW9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89291254AE5
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740173937; cv=none; b=p9IyBcK2e837hdqxw7YjUO8SUwHaiOeHSYV+4/608/tEq3NdgQ+sMegc34a2FWQjAFCp/NIvT/Be0rD5u8F6Waepg3PpmtMfL4zafTOwav7CZBXyHKJC6QqubH/wPvRsuaflI277KXYDNtZYDIbCfnWFzV4bkzpBf/JNyYAsj2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740173937; c=relaxed/simple;
	bh=M/hcGQyoFwPFqirz/txizQCfEWA8XcQU5hY54LZQlVw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BFD054nYIhSj6I6e7AYzNCQmxDe6T24/wMZLhxisfsXqBUi6psy+V8OOiDIBiqv1mslXnAmy+S7ynV7G1ijynXL8D9LwyXbGIx7Z0gzimCqwlQfoY8hOYRxaLNmgWQTLzubtmk7RpwCLrFcvoTXbUSbRWRB3eX1eqLsqSNaLO+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bbEmgMW9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LEv1Ih031356
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v++WnZUnpWOgAMA0wIfH/ID14IE5ovXRwz5f3ehfMvY=; b=bbEmgMW9lWB1Auz4
	IW2ePG2bp2qwT0Qgu600EJZh6QJkxg79+JwMmpMOgO1LK51s+SbQU5AHQyOtaoTY
	HQhGZYFIMRnSwLq4VdnC4P8//EZUqQuoJZew7AuWua50dPQeaEgsadlWPsyXWUx8
	EpHrWFIdMhNK8q/cALvV+60uSyxa5SM4eMn0kX/CffzK6NMNDUsRQhbqU3PKLSa/
	KkCilc11vfou2cNtLMq6eiT8A3yOd6q3AaMwqih1sPcY1KjCnse/iN9eAai7ZQRF
	oCLkjbesL1+saD02pvWQ48e7C421I7rl5MN9QOyJSL1cKP8vPDnLDkhogIZvd9Er
	j06FUw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy5k74d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-471f4878e08so4236311cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:38:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740173933; x=1740778733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v++WnZUnpWOgAMA0wIfH/ID14IE5ovXRwz5f3ehfMvY=;
        b=JbxbBzf0XZ8UT//ip+3EBcBl4FZ6rLe0MpnFDFwqicJBsZ/UEURl5IhKF86tov8p1X
         6+uNkXjUeRTCajt6fNi/a5D+JjNneEaFxuSQAz81G/Il9d8N3hpEHfO1c4kTThmC9Ubm
         J/HZoxI0nJ0LGOlqTSNTTRo2fY227pYgOEtQAs+kI8dELWPsnxrYlAQY8pl9voot4+XV
         UvQiEKXGxd+HLgtmIkmkz4z+Ujg2UAtruO6fEpD6tTuuO/3px3D7+VzbcyiN8C38Ctzu
         3t+4SH1mUjclVNPZkFroPj4KM2PJL1BilVb6smIoclYFDxPLWJ4pIVlDeyEfZIRAB5SS
         W0IA==
X-Forwarded-Encrypted: i=1; AJvYcCUSKy8oVTMu/In9vyITubQt2olHS6p0mQ9yZjSQvPHt/oAa0bu9b1e710vDPSxxVGMLhCgJtFJ9oCoR@vger.kernel.org
X-Gm-Message-State: AOJu0YwJvqdab9fX3O/yPny85fCAvI6JXfZEPYsUSdhITyHz2FxGdbcX
	TUYbHgTw/Hz2KJ9cKnj3QQjL1Y1vvXQsyvmy7g19keNr1UVNJ9YXiIHSQS1GWbfqJj6hcRhwHEr
	E1nojMpqQb0QgI2t6lmik1Ipgfw0NVN/ElcQUa46gRhkwKTHROGVnSUKYCd6V
X-Gm-Gg: ASbGncs7SsyJQ1uFwV+l1dZY/vEyBHLQH5+QHSavnr+mWzdLlAQ5M1gu/TwZV1hVLGE
	0iWBeKmzd1gYSMmxxcMsfYoh2pjOJbcHr3p70PcX5ABqaaoo6oH6CCX9vQhUuW+kmlryMr9rux3
	St3IIPU2RaNd8/pB1mGKDa3qEVFe2giJHH1+DoPLZE5da1CSxbMS5wV6nOGYBe/khsgbK7Lt5ay
	SFRhoTy0EaIDJXx3CrAULMhg+i+nW3CAAPk++PzM8aHMWrtln8nOXvcTxjiZLzwld5mAjLvG01a
	dc1W45OtHYzHH2dgx+OA+Z+vEK5orlbLBK+udhvI+C2PbhGDnNMhTNd5Hatl3JHgQm4loQ==
X-Received: by 2002:a05:622a:104:b0:472:1861:fe13 with SMTP id d75a77b69052e-472228d5becmr24240461cf.5.1740173933596;
        Fri, 21 Feb 2025 13:38:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7LFnmHnBy/t33605DNQYqWNsZ6WQxWF/c1cepGHBy1JILe4jOOnXsKOEhp8HSt80yjo7/oQ==
X-Received: by 2002:a05:622a:104:b0:472:1861:fe13 with SMTP id d75a77b69052e-472228d5becmr24240261cf.5.1740173933171;
        Fri, 21 Feb 2025 13:38:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb98ed07afsm1067043066b.102.2025.02.21.13.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 13:38:52 -0800 (PST)
Message-ID: <dbd99d6e-e8c4-4b03-98fe-8faddecbf11c@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 22:38:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8750-qrd: Enable ADSP
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
 <20250220-sm8750-audio-v2-4-fbe243c4afc3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-sm8750-audio-v2-4-fbe243c4afc3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: cgIHsMLAaCCVxwq8cF4H1ZeJdwC9V7Qh
X-Proofpoint-GUID: cgIHsMLAaCCVxwq8cF4H1ZeJdwC9V7Qh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_08,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=547 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210147

On 20.02.2025 9:49 AM, Krzysztof Kozlowski wrote:
> Enable ADSP on QRD8750 board.
> 
> Reviewed-by: Melody Olvera <quic_molvera@quicinc.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

