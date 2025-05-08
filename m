Return-Path: <devicetree+bounces-175071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0284CAAFB6D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAC131C22387
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5948E215F46;
	Thu,  8 May 2025 13:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CfECkK+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38D42AD20
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 13:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746711210; cv=none; b=K/blNDY1K82yHb6gsqxFzkVRcuUhqPk31Ha/hvgYX2JoKoBs/zl4KfjrgMgs7jstG17ySCwH3Wcnq2BOhQH6Caj35WLfjL/XIVYTdL9tddOcijiUCVnrpB52XOay5IMs/o3+sc1drP7PM8msM8vWHNA/fykE30Bwe3NZzwGKkNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746711210; c=relaxed/simple;
	bh=kHY2L9AAUzXeokRXvu9nu/P9V3hBGYDfgVExgxaVQq0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jUsJq6Ll+0E9EoRpYRbdJ/Xw+VsK93QgJwdFqcf2j05oNnENJxRhWxTDHRxpF9rXLMclpmSrFoQKVkBO3Q0qe0ba++4ASJ40Osh82BaVnMDF2IpVeusP5X/ZvVNaa2MH+UDfxplqgzD/dG3D9e4nL20voqKjn/KpsE8VIgiD0AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CfECkK+B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DWIIC002555
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 13:33:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lMYfNUnuS89Wpo1r8C5mbTS3ohz5/xv+vUvBIEOJELk=; b=CfECkK+BZyHZQ8Ad
	DVbqKsJ7rmilEVrJucabreteJTYoeIW1wtLY6UaXsZdQLIaOYBd2dNQ/3pdvNZQV
	IASApCjasMyqnSp4rCU9aHAnmE3O0+AJTfjl9OsAd5Gj4xEDaFEkPkqWxR3ySHZa
	qN31EoxlRtkt+HhfOszKb/KXyrhxEuDKcvMOpjQrOta9GSoygZzbq+K+2+21M70J
	K1B6ICTJpS6X8XRQ6NTrSQJ4Iyg4ZP3jAlBmLX/9LcSDAP69+JGJjJUpQNe2EWkI
	YituhxSnk/+iE38BImbdrWKMSFd2qD9Xad8BJgbEp07AoZkVZCXzmSIRiLGeiLI/
	Fj4WWA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp59eyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 13:33:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ad42d6bcso23970385a.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 06:33:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746711207; x=1747316007;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lMYfNUnuS89Wpo1r8C5mbTS3ohz5/xv+vUvBIEOJELk=;
        b=IKQqctvdZ0FptFcKl/laybCYXMVaUyOHS5Ut2mb4G2iD3XKNV7MYcSOl+P4ZjRvoLt
         7vNfV90I6/6+2kCxMOHysqZCbTohBPGd3rJThMMXFrGafSUmEiyFiMw1bzD2zUIZlL8l
         CUMcWiFyDgp6F0Dh4B894m5mnEu4IsZMCErYuPe/Pcg7lmj2QZE8ryaEUt//QtM2sD/m
         +7/svRw8jE72uzk3l8Etlwr65jkSCmGDVKxvaE6lCfF68YRv6nRdVizIuYQDkz5UYJjw
         W5y40uO/J+sNaQqktHJ6b0dJYe+lVOm7UJrQW3joxYBcsq7/7m0k8NuthgUi8tdT8nq4
         uWmw==
X-Forwarded-Encrypted: i=1; AJvYcCXL2k/jZ6F6Is6o1wf10fDw+RsgDdXxjQC0JNkk/v4LRKcWqPH3a/4Ngkw4th+6weZHDFJ13aLMDji6@vger.kernel.org
X-Gm-Message-State: AOJu0YzmW7H/fVAkWjhjLwkZiIyRGs8+qQjrvFCf/gL2kbXaZ5WPG5w5
	1jccU346c3ui6tkWa1cnddOIQHv/1kxwe0A3SPXX/8FXgc649kgs6LO+zc3XN+Pt+sm4I5ce2dB
	sKTmZwWzOHZAG1jZRjlz+gOSSLJ5U2aXQb7XNvoRwLZuUzfOWmSiRDMIHpMix
X-Gm-Gg: ASbGncsa6TvZEJGSpQRvgUH4moo/vjqk7exE+SOYeyYHH6LDFGk2n3Qy/rvw1wLdCJD
	n2V+kUlycD7G72PajUisvclPko/ZjUK3ww9pe4r4hjaJNJHSBBdskvEHlAuYV1qT1P2foI35QW/
	j/YBONFKnagyA/TE4drRWYArImUKRpqsycldzYfzDvTSiXej6jwqOlM8hoWbIu1/vKA+TglyzKL
	bQQxhbh7uhkEIeEC5UmPbA7iiQtNU7D+Uri9ZXXDCm9iE6tmLWeCBVdY3aeGjkzuccoA5eAdkme
	RNsl/MxVRdImbC1dpyKP89/xUuBZXsTpYsFUr837fsq0UToQDN3rR/+1L9Kgx3KZ2CU=
X-Received: by 2002:a05:620a:2a14:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7caf74220dbmr329260185a.15.1746711206768;
        Thu, 08 May 2025 06:33:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6s2Ys7CGrDpjUFZ6mMJVSeDH0rUEreHUG859D2NeWarnKpmclxkN93uV3z/V0eMXoKSJDtg==
X-Received: by 2002:a05:620a:2a14:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7caf74220dbmr329258085a.15.1746711206337;
        Thu, 08 May 2025 06:33:26 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad18950857fsm1081323966b.125.2025.05.08.06.33.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 06:33:24 -0700 (PDT)
Message-ID: <370da6b0-f6ac-4a9c-ac9f-f1adc890fc68@oss.qualcomm.com>
Date: Thu, 8 May 2025 15:33:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs8300: add the pcie smmu node
To: Pratyush Brahma <quic_pbrahma@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>
References: <20250508-qcs8300-pcie-smmu-v3-1-c6b4453b0b22@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250508-qcs8300-pcie-smmu-v3-1-c6b4453b0b22@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XL0wSRhE c=1 sm=1 tr=0 ts=681cb2a7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=kZKVpPXic2WTofaLpVUA:9 a=QEXdDO2ut3YA:10 a=IkyAniIzxkYA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: X9Zjp6BfZ7LeGauuGRq6WI_0hA7qZLna
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDExNCBTYWx0ZWRfX5WJ2kkwuK0DT
 TLXrg7/CPzb/rnSFPHHG74aoERkIZZtNLiImCx5w7nLzv7jIrT+5DujYVDCfDFli1k/QnY6Lmth
 LYyqOXICkXFuL++7yRhbvt4zDVSMsv90x2q1AC5qma5zk4RdVw9jKS4p13d5968SWq3YV0uzUcq
 t3GzDn71RzYfXMCrWVjAeyoW6ClNqvcgh0cKTCkiuuNEVvkCBGtFh9Nwsxo6pERA/z/+Oqgh2Ei
 X8mM7kMFHE0xeYfEkSJYzawnbtuMlPQPe0vsbtZnVVlrepnYHE6Rl2qxzfI+aWrvfgdVo3pU5Bo
 PBf7rP17AnqkV8e6ELNMHGQ6oFn1IPidNE5/FhvoEu16xvXnq4F5OGW0/CioSJdHyDb85huo2g8
 M3V2xgaXP94hb6OQv98DvCUbJfWr+JZgxX0zt0OwsabYvx55NLSgOYiYIBIrL9NCrzmhuB9o
X-Proofpoint-ORIG-GUID: X9Zjp6BfZ7LeGauuGRq6WI_0hA7qZLna
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_04,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 mlxlogscore=742 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080114

On 5/8/25 8:21 AM, Pratyush Brahma wrote:
> Add the PCIe SMMU node to enable address translations
> for pcie.
> 
> Reviewed-by: Dmitry Baryshkov <lumag@kernel.org>
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

