Return-Path: <devicetree+bounces-162353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6FDA77FD2
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD8C2169E91
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC6820CCFB;
	Tue,  1 Apr 2025 16:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BuYESY4U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1B2207E05
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743523520; cv=none; b=GJXyI91uFL4JdNq/5UBnpZosEMKTPc5YszBYzgmpoR15ZBAm3LLsbDaBt6ntzODroiChs6U4EfZHD8ZJ5vdyhoFyA9tcXdw0sFIbmtOKexdUmWk3ShcRJLWJfP2v4U75jfkvxtAUwUQ06JlcXMD35YdA+jETF1y5pAA+Er8USow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743523520; c=relaxed/simple;
	bh=FjnK+VEJGfvJo2g6Farn5qlcut5gatkOJIBcUkNGPt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tBQd49wbKPVMPtjp2G4OZMBe9Bi+I2RpeiDhzf89/yr14kAAwC1DskL3HXOEzwM/uvWzcuWFVCfQHhv41eVA3ZE973GeNNJ18bkdcbcyUq9NX9dtz6p1A3LMXKrA2jMDJE+eJTTHQc5rVWg0JOCE2jkCGQCdCGtAq2SD4UMcHSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BuYESY4U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531BtT0q025093
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 16:05:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IA7B/oT79HtilXDgO/qFvO0UXqMPEVdc96N5gfIs+dU=; b=BuYESY4UeUswyQ9l
	yzKGjTCNJNUJtf2adScTPKZkkPChjemJKc+J02JpFkaQ3IEZ4fYX7Z/kTercoNfC
	B5wzIsfwpmf24rY/32JbZmZ/dx4LH3KaqQY1ELnoPD9Qr/5I0YUWLbNTCx8DYGSG
	j5KmYsC2VXeVxMMQ49pNf92vW3ljOL9T/BAwADo2A2Wqt0Q1g5gPT0KzkV9VVFvd
	M0oiOmjTFQ7DdrSKy/2VxL73ShWip+vcwDoMM+YmS/ozgIwsPZKyaxoGm75m5V/2
	AVOFXxzm/hEsQWfk43pXGF4PKDRgJSWFTgyYrbmpjcUX8IWP+vCiY0Um79BGrgQB
	etnKgQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p86krndd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:05:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5466ca3e9so34292385a.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743523516; x=1744128316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IA7B/oT79HtilXDgO/qFvO0UXqMPEVdc96N5gfIs+dU=;
        b=vigmGUc1IACOxGVlrl4rQa/WHfrWAUzjAAd4uLOn92eQLC3P/JdID5uDqogb+jh+zD
         gPZlTuZcyqHCppnHC437SCFRrj58xDX4EQMZpYHHcbki+wUqpJrVvAEwPy1bDwg+9A0b
         67KtBgL3FJgWIWJAn+kQBU+bJUl+gzabD1UruzzJdGHUZvtfPhUW+I3ifMxx2o2MqIu5
         IuYSGpksxMtdWNcqZL3eS6o+5F6dQ2TlEtscMAa1/NtpO1cgs9j8s5n/pPHejFs+fn85
         TLrQJoO6hOaXx9GdUn7Ll7JwjXCFn01odunIT6tjuJvjoCVdYe0PZ9doa+ED69/6zPmM
         KJUw==
X-Forwarded-Encrypted: i=1; AJvYcCVmI56u16xhhojCRyrXPJOu5E4tWRThwerJ69oLj/wnIDnXhulkHuRY/pBsBx6ZY3RMbxaLIHTZPnKE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi7DKemn5PCszvtwzHrK30dmS2B/jddNNm23RxlVG5sLqdWa9U
	+2ZF7jMaRWbpsyZ8E47+2wt7jAkpzPf9ahwgwTblAHElake7Jgu5e2tZ5mstqSHEYwm+TjhhtDG
	/wf1sm4H+Wt7JsJr36MssOfeshA2YctDy+nwq84YuGobrFMB61aP0ppE8IKjU
X-Gm-Gg: ASbGncuUEZ5NE0GkDlyLkJ2ARRfi18b1bqmw1SpB7EyiGk7phLTHeOzl+CnAR7FIaiO
	v9Cp6bFBQb+ZIjJaFuj1oXG6acbQsQd7p7MrM0xeV/PSGDnzUMAIfI24t1TCj9a/dsjoAJfvDIC
	J+cLZjlrs5Vr7wiNCzYf3P0Ksn7zEc/4H1Jc+SxAOfqx8lgMOtKqFbmHmB7SVbTjqcK2VHCeg4F
	qpZR5vUZ1UDFhiDff9uxVqqB2QBG5hteRdSiRVkgBYGWHUIXos6bxDVqLfq8Zw0JUm2xw/oAmTV
	Hl9DVMbc3FoMAEGDpqbs8TMqRaAqdOxz/956yap9whbBf/u0INMdPcZEuFFuhohvL3yDBw==
X-Received: by 2002:a05:620a:bcb:b0:7c5:687f:d79d with SMTP id af79cd13be357-7c75cb073f4mr153743985a.8.1743523515532;
        Tue, 01 Apr 2025 09:05:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEscuFyFWFsirTv68brZWR1bZi8v2Jm9WWhZ+Cb63yKIJveWTii0me3gZoTfLF/2PEkywgG9A==
X-Received: by 2002:a05:620a:bcb:b0:7c5:687f:d79d with SMTP id af79cd13be357-7c75cb073f4mr153742285a.8.1743523515228;
        Tue, 01 Apr 2025 09:05:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7196f55f9sm789484066b.177.2025.04.01.09.05.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 09:05:14 -0700 (PDT)
Message-ID: <4c27d6b9-781b-4106-8165-97c9750cf99f@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 18:05:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/8] arm64: dts: qcom: qcs6490-rb3gen2: Modify WSA and
 VA macro clock nodes for audioreach solution
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250317054151.6095-1-quic_pkumpatl@quicinc.com>
 <20250317054151.6095-4-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250317054151.6095-4-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W8g4VQWk c=1 sm=1 tr=0 ts=67ec0ebc cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=jFJkBKkQciev3rdfaj8A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: z9-xKPIy1XRuUl_vIhkfjEprnOZX_-4N
X-Proofpoint-ORIG-GUID: z9-xKPIy1XRuUl_vIhkfjEprnOZX_-4N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=844 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010099

On 3/17/25 6:41 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Modify and enable WSA, VA and lpass_tlmm clock properties.
> For audioreach solution mclk, npl and fsgen clocks
> are enabled through the q6prm clock driver.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

Instead, put the inverse changes in sc7280-chrome-common.dtsi please

Konrad

