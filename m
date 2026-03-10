Return-Path: <devicetree+bounces-273583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCCfAmMvsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:49:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 823022526C1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:49:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 545EF3245CD2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8675A39934D;
	Tue, 10 Mar 2026 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fSGkSXoL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="afa2sb86"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3439DBEC
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151991; cv=none; b=mGorQJVKm4IfyWaRacHXOCJCjFz1qBGrLD57r9+rb65fpe1MM9m9LFuGFjvftBkqSj77+Le8Jt3VQUoVdQANyocjS8d4ARY2UvpwegUzIyPluTM5yZPGwewvr74ZJogJVBwx/yw0d9d9/8yiPrRm73QO5dZBvKjTdRpWBsZlHc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151991; c=relaxed/simple;
	bh=fuHMn095nXnFWpT3nvSDB5emiYVKz1ZSOBPXG+Z7VVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VDYvqanE/rrUUIIGPGpxAa13ndIHm+uF5F8a49H+Cw8s7pO6aWiQ8DkvBjqC06blnMyr/dAgcYN6qwmgOYlXAsxvrDxPAOtgZDXm/QiSzJ9YhFEXXcWkAlUH6Vt/lfl+ywL5ARWI2caUOe7gkcYmM4bCHGe+9hb9aqdd9X7TEeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fSGkSXoL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=afa2sb86; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaYUX3759633
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uj7lRluEZ+PijDD6FAfpyVAEjjvz57dxZpftGNLTZuE=; b=fSGkSXoL6BwpNJAL
	TNBy0v+QW7JImjzR/ehgL8s+PmUs+bwuYfBP8QFCybN3Q76IO7lSoiirWQedfmED
	3oMQwAIbZZ3MDHwah9qIkxFxqofbqJGPGs63w1rXCeju5+kGMGxH+cGTbNlgBB+1
	BRx2Uxb+OEZnDFph6YpVwSg4ddkeiw9CPb6EBef4XT4hgyYhVVKRZWMpdY+edSBw
	pFe7NIGogQFF3MDx818ubnXeL5BrqE/6gdZjv8fScVLUNr7gpEZvpdoreGO63ijU
	VsqL63m/JGO7BCwUMGZpcDt+oTw4rWkGJn11uY5blIoQqwS7ZvFmNo5/KBOlvAT7
	M5uITg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctk8ugcsp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:09 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a086578c5so54294886d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151988; x=1773756788; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uj7lRluEZ+PijDD6FAfpyVAEjjvz57dxZpftGNLTZuE=;
        b=afa2sb86aLAEDS7x9QVvRtSKfaVy2MrpUQlVIHBug0dPqUv79WnxXnWBvNQ2LGLNtl
         ABGXH74yKBB4C5sG0nMjSjchxuUZHuFs8Wc1hR3cgs9l5ctIJNBM1fvGIkib/3rIHaov
         nYHYOHuzvUXLdi/LM8En96wQdYExd6sDSR6rNd6qaDdITVFpTSRNWLTwuGVjW0q/oGYk
         wNXIL8m/MxrG5mesc1/Y4HjrtLZ7viIqPNbhq4KGkAYLwQxZ4m2DkJzoSTEJgvRnFX01
         kvEDTocOWCQBs6AU18JnRiMgVs0JmB+kJZGhcVu9YaQrnZxGc71VVt904HB5qvQ8nueP
         Wdng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151988; x=1773756788;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uj7lRluEZ+PijDD6FAfpyVAEjjvz57dxZpftGNLTZuE=;
        b=syHkpLkgQG33uc8+zhOdA7urWES9OhTXPaQ5yLOc6ezged/WDD6vjsCAVUxQbqfPCX
         ajPByLBIkpgNJHMzDFhS1zoFPQpZgCAKmZyZppUO8yZF2alUGV6jiZbZsJpzqXWtziCz
         PDqM8KYcF7vwv9/WjP6fx6o2KUGMEchvYkprM00rr4h0w3DnSWQT+yJQ8dmYkJIxrN/b
         pXljoGqRtPr1irz2mWkhFBjB18gX5kHWmswCfHiFqvS2PDrSfV75uAr28zn/GG5JOJ8x
         2pGFLAZyczGeLREHuGOfLLqHU7Dajk2Tbvv9mOWKyKa/Vr1J017A7hhzdXEVdtCNtLab
         ARfw==
X-Forwarded-Encrypted: i=1; AJvYcCW259zPwPB9ndAhZAJDrVGvomVI51RDPlWX1F8WFj+rfw6oZInoBnjdGrHXrbPs4M+BIag6oa9xz5bQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9eHwarfaLSoI/4vHoczf/KsYdQLx3N9rlHPSzm/DLT65f60A8
	ChgMz9e7YRKy6v8MpoUARWL8dwlZOYd+ndwAv3DyDhxF+JeJtsT129Ed9qcX7GD8hQ04oSiSTs2
	cH7Lfp9CaV+EcQ/sxfZzK0vaYK29yDc0T6V6sIlyTDPY9eosIm5l4Nx9MYKxDxqEM
X-Gm-Gg: ATEYQzwXf5JBhf6iUD3JTOupdIsn2ZXjlZMf/eInLiwRey0XVJxoPzKUmQYrxnlI7PX
	2ZYKba0C6XDEr//ahvKTaciO9g50QR/nCMEvHE3kwzn2mrKdn38vSvij97ct+/nfXZCBHF3dg97
	ixR9+feteos4idpIoepfqSFw9VT7Oy7RH/POa65w5t69RkR/PHrT+bM1XQXg7f2saUh6/1WhoEm
	HQVbkbqAep4/uf96iDL7e6j1U1v/27SMev8ULqpD+YeKV2zQk1h5fC7wI7x3DcGrCMLi3MaDBCD
	oPUt7n9EjJwXSIuC1lgnFkzxSNv9ToAB0kZYm9P2OqedYCF57GPuUu8hJ3MiHEGWAQeaW3Nmsmc
	ZMqAuSi7npLMQr3kvQKqM6sPWiMyIs7JkquPj/khjnwSqUA9VR8f49ZNYgFSgD7hDlBJENvjyWG
	uzpUk=
X-Received: by 2002:a05:6214:6003:b0:89a:595c:b805 with SMTP id 6a1803df08f44-89a595cbf5emr30835606d6.6.1773151988470;
        Tue, 10 Mar 2026 07:13:08 -0700 (PDT)
X-Received: by 2002:a05:6214:6003:b0:89a:595c:b805 with SMTP id 6a1803df08f44-89a595cbf5emr30834966d6.6.1773151987983;
        Tue, 10 Mar 2026 07:13:07 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f15d51fsm493523966b.53.2026.03.10.07.13.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:13:07 -0700 (PDT)
Message-ID: <91452d3f-fbbb-4960-b5e4-85efdc2c84e4@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:13:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] arm64: dts: qcom: sm8550: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-8-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-8-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lAA5u3Q3yPsrMddxX2rgFcvyQO5swUFd
X-Proofpoint-GUID: lAA5u3Q3yPsrMddxX2rgFcvyQO5swUFd
X-Authority-Analysis: v=2.4 cv=YcmwJgRf c=1 sm=1 tr=0 ts=69b026f5 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyNCBTYWx0ZWRfX9DkyTWtVoIUh
 IRKDKdaHmTQeytp4xJE7Zf4Fd3d73na8d2yxCikKXKjW6RmfqHFWnd5UxIFU+s37Kkdi+/lvHz1
 pnlECrzDoyXktxYDr0wPe87ZWeIEZF5e9n4ki7Ab6QRYNM97Ri9q5EHEYOCrK80xfCmAgHGXXyc
 ue2nrPMG2VnYGAKOoK8KyJ5y3ip364kyusHCA9aiMV1DJOoMVarEU9iKEW3CRC9fLRFocXSL69D
 oS8LY4s2Qg9+7CGE9nhKVc2hMQQrYEqqIDwnIvknoj7vNT6VKfV6vId7WE1LKVMkhP3ZFFm/Bxf
 nDQ20AURU5ch6BkAzzFMCT4vLkVrU2tZtyqZ5lDDhETfa39bjWeeVyNsHJ5u62q64bfeml2Av4p
 8+1AbhXvbeDM9a5NbV/HEQ2VlCG8anJnkXXX3MgJbV8cI2+mQi2IKJP3ZtMsFWzsURhZhYUWj2k
 trzrc4XQafWH2WK+3YQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100124
X-Rspamd-Queue-Id: 823022526C1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273583-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the UFS_PHY_GDSC power domain is enabled. Specify both the
> UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sm8550.
> 
> Fixes: b8630c48b43fc ("arm64: dts: qcom: sm8550: Add the Inline Crypto Engine node")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

