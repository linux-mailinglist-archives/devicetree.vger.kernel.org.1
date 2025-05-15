Return-Path: <devicetree+bounces-177719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA35AB8B56
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68A9B3AEEEE
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B046219317;
	Thu, 15 May 2025 15:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lWa4vlyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F717218AD2
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323737; cv=none; b=NCid27TF7jwpz6En0Pbi84FeD6LuzvK4FPe/aixWkIJdIjTFReJ4b26xjVN9HEK0UaM4Myx+k8tfpQaf/mw078C916mIWA0OmIYUCXBYWyM5kiMCOw4TtQtkVpXkk7oom7wXLOL0CC9nRppzPn7c179j5mRBrtcOIvaWx9Ms6HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323737; c=relaxed/simple;
	bh=HuDMhaU0RATL/TD57a38UuSJoa/rxM9NgiPso9Ov6Es=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P8YqF9fx2ox8UAiXqRL3kNYj1ABThK9Bn/KGicJJFm0M7nwxAA/onxe+0Fs4Nmmiu+QC5jt1S0aAvGOkDevf2GRk9TdarY0nKewiuY5virw52234/e2mk7GwZaKwpEBan/u7jpFkAmScRoNd0jpkTTpDn81O7nbXgdqjOHEoH+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lWa4vlyv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFAgn016647
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uhRouZS0uvAg73VXrnNZeOxAr2zt9QiKx0m+FD9Zv8w=; b=lWa4vlyvnSPQQmqa
	7j46ZEv/0SyU1wEOkQQiNsDI4q9s+OiavzmxmsyMvL2eDdvAGc43N4JC55229SRe
	47117yV5PyO7xGUtWIyseVTVXCFo5FWruiZA3Qm9ZZBvp2Kf/yKqnGdgDV5ZFsed
	8gkkodiRVqBwcJhLHfH1JW/ldydFhRyYFDQF5PlYrNJojQQDNhm0S4RHi90HVF7+
	qEOtG/+8jXxc2FMAmp5FiUQzIURlKn/+gpHOWM5IfMMoFOmTLIbsVl2Hqdcw3SQ+
	mxf0p3dgVJnsCqOpZ9yhqeZHUdmXb/Hv2N1OInQMRatyuBChYvrileBjq0WqMBHz
	pvzj2g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmptan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:15 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f2c8929757so3161346d6.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:42:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323734; x=1747928534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uhRouZS0uvAg73VXrnNZeOxAr2zt9QiKx0m+FD9Zv8w=;
        b=DZW5JT/9VBrOIDQ/6Czz9iHRnZIuOH0agNYzpB5xrbqecUeGzyVNWqIOIyZ2xEM/Tc
         ge66fodvlN8SNrDkEwvwH0g1kRIKU16CjhpKc4Myqd8BPJ+/aEMuAxUsy3C767+shZDw
         kcNpX8Zz68eo4wg9qFvegsf5soT8fkLidSQHERCYPesRNq/u7y4lLEHOskARF5U7W2xu
         +uq4Sin/k9ZNWYS9Rz+/24l6J8JDbH0hGb0fJx5cya9UAFthq+RyMRpBTQNfye9wM/lm
         IYNyHsyJeMi45i9SzseboN7jRGB34jQ7d+IGNG335fBQv+SVRMsD30PYzlaF7J3Hjkr4
         4UUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEGW5InIaqbp5Rc8z5SN7QstdYbXk+A2PYerXTaViwcq/ra4/GeDMMro+TdgLEuw9naVKb6sOTI2kK@vger.kernel.org
X-Gm-Message-State: AOJu0YycmnG2DXDmAIHbIDf0XV9/Qz1/aPFZYrJKhFNeXWDYnmuW9X9k
	BJDoJkFvey7aTUI63l+KCO26aXz+et3sV8kVM95bdFXt21DReKF+lBuRnSLLOp/P39ZplN5hrVB
	H/SNazb4rd6X8o0RoRYSmb5riaqI6iClYwq0M+q9uNbknFX+HQr9pBMV4p6D4482J
X-Gm-Gg: ASbGncv3uVB4cJIkWbnOJlluTQFwjF0jmLsaJ1dlUgkLRXA38oRgx79d7RvGZNMe2RC
	SUeJude4GqO6rufiKnY3Ml4u3YKG8quiz+PVcErmTUYABXFqzcrYbxB+g8Oacpgmp1e+IDaHZc/
	39bSk0sklvjLo7NaXiaY1VLElXHzbPamjn3N2sY8YzxBabHTaRF5pufU+6SB1Z8rPkmCgH427PQ
	nuDOw1SjYgHcMnDPqZ5+ZjaW4KVlMwn7AiNDlnRISonqjF/TnOaWUVq7d6fHx3IUpJGPZUSJ021
	XGx4urJsY2ZpYCPfbDZyIZgZ4I+e7P1OH9h5hfXJVxYtMxgeyOBlylgmK5CUOSXeLQ==
X-Received: by 2002:ad4:5c6b:0:b0:6f4:c307:5e3d with SMTP id 6a1803df08f44-6f8b06f0c57mr1592226d6.0.1747323733808;
        Thu, 15 May 2025 08:42:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfvUSwb5Jv+bvNmLGRlaYTg/YTUTg0whxG7ImoPz57t5jBTuwWR5hdCmSnWAgzP4lkq4fbRg==
X-Received: by 2002:ad4:5c6b:0:b0:6f4:c307:5e3d with SMTP id 6a1803df08f44-6f8b06f0c57mr1591996d6.0.1747323733310;
        Thu, 15 May 2025 08:42:13 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d442069sm5528366b.103.2025.05.15.08.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:42:12 -0700 (PDT)
Message-ID: <62964e6f-3b09-427c-a71e-58aab3e22e42@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:42:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/18] clk: qcom: camcc-x1e80100: Move PLL & clk
 configuration to really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-12-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-12-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NiBTYWx0ZWRfXz7E1VU5zWUpU
 2xsugTORuYgY35IlRUN6INGK1pR6B6Kr+nTqTv0zroKvhHiY9Gnfrq6/3xS/C0wMfKjrfA21ezC
 VdPClg83tL8/twwkylwdmylI22iLEBacUGzSwxp/rPAJgYGYuTUOhoSmkVaqp1y4DoGzpQxLEaC
 C3nRv6Nq6LQ/y6oU7Z4VfC+1u/wXTC+ntTQK/Y60qo9GajIt9vIYnM1Nbp7bX0RWwO+PXOrq5xC
 yNe1LsrQjRt/QmKeccdXSHYu8N6CjcI0gl/LBBCdJDxFplE56DlGynKyAWoS/G4y/26THFPUxtA
 wvatEkux+mLWq/0i5mrJenS4Am7zAvt8w4N+pakoD+tfzrIxzdpR/4hW17ap9tZj9L2j0pzyTpn
 UtP6PkfhAhWfDQl/VRC625xPMQdq+7BkS8rJISzSzO/ERMRA+s9B8kxSQ6/n7M3wo8LmDNn9
X-Authority-Analysis: v=2.4 cv=G5scE8k5 c=1 sm=1 tr=0 ts=68260b57 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=R-MJ-YjwOO2PQHfhffwA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: PUqYSBo4H2VSpJdk5NsTPFY8Z1FqpzMd
X-Proofpoint-ORIG-GUID: PUqYSBo4H2VSpJdk5NsTPFY8Z1FqpzMd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150156

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Camera PLLs on X1E80100 require both MMCX and MXC rails to be kept ON
> to configure the PLLs properly. Hence move runtime power management,
> PLL configuration and enabling critical clocks to qcom_cc_really_probe()
> which ensures all required power domains are in enabled state before
> configuring the PLLs or enabling the clocks.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # Dell Inspiron
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

