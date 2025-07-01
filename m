Return-Path: <devicetree+bounces-191499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B01AEF799
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 14:00:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 061D01741CC
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944C62741C0;
	Tue,  1 Jul 2025 11:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MkpXT2gA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30F22737F7
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751370828; cv=none; b=bkjSMiu308D0iY7md5o/tma6LhrTF5yQryNtyQp3294iYi9XE8tCL9fXZD/72lgxTfCpNzKahm6U4Qwy6TDnRjMLp0invIhGk+ztOH4uhi/0AAjzvqlfVCAQbFiljx2BonDrLMK0/jGg6UFGxeqV/HQjF3EMLkGlh+f49xz/n2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751370828; c=relaxed/simple;
	bh=lfplTRJV/q/OMm+q7mTMyZDq20FwbquibZUlr89u/Vw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=svZd8i0DygWsTeOOuZCJKR6Gr0s1vnPjL2raDbhkAT9249DcUv+aftWDiYb06In+APtQjT7NsJjk7T3edfVG396mO/q6430N0G51TAPnkiT7deHyzHRwDbLzMIkS6KIZYAkZ7gCKC8c6ntPAfki6/LGWJhVqB+PC1WN6JlrgpFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MkpXT2gA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619qDbH028446
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 11:53:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QpxwNhV8kmBkr08es5SALZ9+EdMkxt7tGYCT2PU2xfs=; b=MkpXT2gAJBzaclE+
	cMg/d8jiIfvjRAaHVctWYlfjKh+MGU3wDkIEooQWfm6OylembSZQCaMQQmQem8rc
	KcuwImmFMo+KciPu2OJwh7AM7PURxWt/y5DfklzwPAlkJp4J+Rv0bSrxUIdpQD/9
	AOfjVBhpXRrvF9/+FvfHoLV2LnvzndRbvXJnlzaWMBcmvjE3XCWA+dwjZR7Ck9Fd
	8JrxZ6McFi8Esqwi4080mE2WA2XGjRtY16DCbsyxAideclbyK6rU8lQzl9TDI2Uh
	q9DaT/q4tRhvh7W3vaghhYX59Fnq2nQjJIBpjVbw2aeH7PtSH9sUTzQ6XjfOKdCg
	Ca30zQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7bvrqdf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 11:53:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a7fb1710f9so3038831cf.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:53:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751370825; x=1751975625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QpxwNhV8kmBkr08es5SALZ9+EdMkxt7tGYCT2PU2xfs=;
        b=hErJPgIZw54zXWlgXYjKqDvPGiibQ/5HkHYpN+8fZmXVHjRHYZRxuyM/6zKcEDcUTE
         Kg/PYyVLqoQzhcMCucynR4MF6Zklx/2KjudpPn1MpxlpwUQxJFYjSVqnMfbHn+YjkHqM
         q6YX/d5T1wAV7zZKa1jp9Fdi8YuY5e4ET2h71EgLRSYuWyOUChnQLc0fUDv5FqZu+aWh
         vmtnNMvEwFEWbw2RIDjWCRxtS3oD+f2kKMhAl1BJpVGhlC3heuNQbzmBBAW1q6K7F/Nb
         HK0ujhuLGy+hbOs8O3E9ueFBwJxqztLhu1j4nGpaP1uM2xh+o79m8tni9nXJL9zT9ZSA
         v7Gg==
X-Forwarded-Encrypted: i=1; AJvYcCXNM5YaxCLlcuIUlmM7xJqRgOzQP+gsD/p4rQ+LGn+iQKE1aPDeXzlRF/gOBK9CXfDJ3gX3KvdsPp1g@vger.kernel.org
X-Gm-Message-State: AOJu0YzI0lppWGVTOVdWIvySDs7RRTtW8EUTm/KnqV66iMGT2lmTbZg9
	EorK3XVjZfuyG7Bpn4h4uZ94gweBUoxn9fAM+0x0LC/J1CbMySLvq8qJHt2VKN2aYnfYG6Xfi/h
	3tdZKt3e/BseJiD627lAnivH23BBUqjuzXnM/VTxmqjpzKFgbJzhS5V5KpxVLLbRE
X-Gm-Gg: ASbGncvj3t/FoPuDqn91MtZGmh4ia0U2hSyVWqukKz+Fhbx1Tm9da9RBC/9b1AFySdF
	DggoNQ+pR8imQGRYhu3ylGQblSNfsZQIj+e6R68Guqmms+rsdqv2oRtwFSaqKFxPF2D+INTmsZ0
	X0aMd5NIIosLpgSAG5AQE3MlY3OG4wPkzF7mJX00m3yYU9mU8hTqMxij/qtxS4jzljUDAgUOuyo
	n6IXiPhu0iWXFLqrhB+afiPbC39+2ARFtYXM6Lw3pIRagFs+Mac2yKgYjJ2jk1XYkRCuAvsW/B2
	LTPq+VG+kr/dgEQtoBHASqb9/m0ZQk/UbDnzDrvaiPTrrr5bOoJTFb/htj3g75iCYlz82Awb0Rq
	s5hCvoDaE
X-Received: by 2002:ac8:7f12:0:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4a832be2468mr13903981cf.4.1751370824652;
        Tue, 01 Jul 2025 04:53:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWdgLxpAzuiN8smmXG1hbj+2clhnPsKozIAenNYDlGQFDJbhfROsW++8GbvMW+JJgD+uQTCQ==
X-Received: by 2002:ac8:7f12:0:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4a832be2468mr13903671cf.4.1751370824063;
        Tue, 01 Jul 2025 04:53:44 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8319b155sm7402498a12.52.2025.07.01.04.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 04:53:43 -0700 (PDT)
Message-ID: <9b6de81e-54d4-4448-87f0-5ca83086fc27@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 13:53:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: qcom,videocc: Add sc8180x
 compatible
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250701-sc8180x-videocc-dt-v2-0-b05db66cc1f6@quicinc.com>
 <20250701-sc8180x-videocc-dt-v2-1-b05db66cc1f6@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250701-sc8180x-videocc-dt-v2-1-b05db66cc1f6@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oXWgr6VKAnU7yX-lwtSdz9WhNOAmP8D5
X-Authority-Analysis: v=2.4 cv=RJCzH5i+ c=1 sm=1 tr=0 ts=6863cc4a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=pJjouIxg0UYB63CLVSoA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: oXWgr6VKAnU7yX-lwtSdz9WhNOAmP8D5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA3MyBTYWx0ZWRfXwEVpZeSYnUs1
 ja2dVJzJNahWBxOVcmNK/0Vak1SGHpS9peMfuAUmYaWsNVjCOWqjhKktpmS11ubgxAare1anX7E
 e876DnQF/SQTC3R+Byttxuzn8E6fBsCjKiHFHNAO+5Dz0XwhEhn6oLPYgcNK88QdBlmzKbtjzDs
 P3IxLQd1TKm6UQ71vf+Hv+ZkWhJVqu5/+Vuh+LTOEJes+LSZsp54xo9Wu4Y8G4J2nsED8xxkx+Z
 jBJSWukuvQPefFxu/fyJetVD3Bs2Oazn93DMTKbLVhOgwQxpQHsQzZBzRaVXQLi8VT1/5ccNbfK
 7+htGtxtl6Jfwa0apNI+9CsoNKdk8A7bj+x+3oNN65HYTcOLaE1dA0NYx72onA+vu/qhaHVscYZ
 wvwf1KwkWjptS8zWvVVYaiGkn/fgiEjL1taFVcHUKEWKQcHySRD+iyVln42kTRBa5fopwkCQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=695 adultscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 phishscore=0
 bulkscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010073



On 01-Jul-25 13:40, Satya Priya Kakitapalli wrote:
> The sc8180x video clock controller block is identical to that
> of sm8150. Add a new compatible string for sc8180x videocc and
> use sm8150 as fallback.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---

The yaml checker throws a warning:

make ARCH=arm64 LLVM=1 -j$(nproc) dt_binding_check DT_SCHEMA_FILES="Documentation/devicetree/bindings/clock/qcom,videocc.yaml"

  CHKDT   ./Documentation/devicetree/bindings
  LINT    ./Documentation/devicetree/bindings
./Documentation/devicetree/bindings/clock/qcom,videocc.yaml:28:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/clock/qcom,videocc.yaml:35:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
  DTEX    Documentation/devicetree/bindings/clock/qcom,videocc.example.dts
  DTC [C] Documentation/devicetree/bindings/clock/qcom,videocc.example.dtb

Konrad

