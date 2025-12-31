Return-Path: <devicetree+bounces-250809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8374CEBF13
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:19:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C30E300E02C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA2E320CD1;
	Wed, 31 Dec 2025 12:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SqbFdJji";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bBVNJmCM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A728C849
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767183572; cv=none; b=dV4wYSe98+PrCm1tngNeIBb7SoGwqRitv3rChYBPfJvcZ4jwCXi3F3imblMnZ4PbNFnOST9R9uZEqQFHc0wtpAaCbhSccHXehx1+obY8VsMT4tlq8sQ+OkQL0iSxVtqdEf4ASTL1yZ1jmTUNrOdBgPp9DPMf2gZNSZGLCoofpB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767183572; c=relaxed/simple;
	bh=5zE42THlvMDT8e78ERAJCP3VXwEkecj40vMqsrK/4bQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hc1Cpc4i9Jlg5EJIyPUOhgGAEAxd0p2Wgz8YAj2WyhOk5gE3vb/tiOT3ZEpn9mKVf+CmlpClQalNtl7A2VeoR8/wPdUoCimrRKdR4nusN4ERqz3Y/qN7nxVEgeS16BxYiKx651Pk82xDxP838/SyMuUUMve7wruAdeEFSJW+6ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SqbFdJji; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bBVNJmCM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVAihJL3368199
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:19:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xz+xZs2XNmhxuGnfco4MJFSJELyf3YGCWmUww37g3ko=; b=SqbFdJjiHICg/tIN
	xEggnwI4mOibHhIycb28cGfoiu6ke+edR/CNYaNq6x/50ZcUqV1Pid+1IHErjiYD
	xtlpIcatn6HUYrB3UfUaC77I3TXUSOMMjyVm6ofcRIe6XLwj3AJe0d78Vbo4nYUT
	aK22TCMGj+/0mdnJ1PzMMrzehlrRn4T0uH8kWS1J1ezNwJDHuIKnsvAx2YYvAZ0Y
	zUG/GZjK6s7ur1B+ooUMcd/gnObBRPYqV54FFHkPSs64aAVzj5L1bSAwNJzhmHK3
	9WvkMlPxq5lRj645il/843Fqp1byQA1C36A2WHWhzONU75ubYJItuojOIsn7JFYw
	i6TRSA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd2bb04g5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:19:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1e17aa706so62175241cf.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767183569; x=1767788369; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xz+xZs2XNmhxuGnfco4MJFSJELyf3YGCWmUww37g3ko=;
        b=bBVNJmCM6B//HoSBP9RNTUsUGLRFpgwSOCq20S750HG58NSx7qpfp86uoEXP22hdYg
         j2DDswgUrVbBAPBEcNM8ljRL+DZVkbSFCLN3bbr+vIuQMiy9a8QR9K/SocGO0f6snmCX
         mDTnT61eSwWj1Q9zp1Q8HkhFppHL/suqvD76Fv+G/Kfsgq+QaIGAZpYekrEvayB9s5EY
         gSSovwlOoaGHuFiBwYCgDGwshOtBCjxA86NS7i1DuGppWGrPCSvOXsxUxiYPW87CSC9/
         VXuMoO51O0eeqTEevJ70hOeA6Y0wCNxxI/dzRBYgo5Pulx1M+PxzcfBZhp3a+20MDWFL
         PEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767183569; x=1767788369;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xz+xZs2XNmhxuGnfco4MJFSJELyf3YGCWmUww37g3ko=;
        b=RCa+g0WL4uZii5/X8bGafp37c/BdGHZO4MSSKqL85NR7FoVuiY1aeXn0jSPRAMGbSw
         ou7M3g9biVtagVr3jdQTarW24N98jGujmNkgADm3x16zddJU5/lZS6ct4wggoUBAI+lm
         DMwd/83qbsPwF6dwIdu6IGO2N6qPxq/oyllsloyR+ODA/4DFZEEbfnqeQTyucUkpRGya
         5fyV8VKqgBKwLNTMWHPTjpZ52AW0j6NvopMLIfLODgloJ//1d83YmETbKc+zXnzXz9ON
         wWYAkM0y3nH3eQupMinbmViHk6OQxLi8LA3lF3RiwuvoScS7yp8rJGnffsa1dNCl+i0k
         vb3g==
X-Forwarded-Encrypted: i=1; AJvYcCUaUkvJtE7pcYKko9SVXjzyj7YcgGjVhtZOjyLhFlQUkZ9aQT4+X2UqckDdEqBWxo6supsMD0P+Z8/S@vger.kernel.org
X-Gm-Message-State: AOJu0YxQlvLsC76NsuTCqrgVkOV/pjr7wKfCruXbJg8lK7qgvT2c0ED9
	LNBN4DpCZ3wkBqx5xeIhRxeA8dJ+LcVwxPDaQ1kwjtPo44fLZ/9mFp5W5TMGkAGCPP8/YREOw+A
	rYssnrAsKsHRQ30hYA073myhvYGegf9NvpHh1Tm98g6StQpE3c5vx3wdkL1G4bT+k
X-Gm-Gg: AY/fxX7MJqHiqFGh1R9473A47QiZPgQ5RMCBLJB47N0edP1uueYog549D3W1YvGI0Cy
	Rlu87fwCYEFE/HUA71ddeb+WuN1JP5KEvFglmhOJkcJhFAIo3Z7KLN/v3HPWE6XLC/tBmC/ZnjG
	zQU4VB4+24BelnaPh2lXnFH7KN8tqHUPwryFJB2dskmSBznH1k/+BtB9LNDjgSrVKBnxIfoXbY7
	1HIFkm9BaxSFG8ofRKucmABozQ0TdRn7hjaCzfjfkAXvqXQLBPPVe8u/Vy0I8zYLqP5NroGqkwA
	4KQD8KREkZb3WX+KBFJZYtU20FOFH9mn2FiiZpULLlt1XnVNfThJAmL+/1GjrD3+TG0IHUZx9vM
	8Ufwwyrl401C/QNMubd0nrNEzv44dk/rFQ1la1tNKMm9Rx/V7mla0kCl9YRYt85zPxQ==
X-Received: by 2002:a05:622a:1922:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f4b43e3a80mr373002471cf.6.1767183568700;
        Wed, 31 Dec 2025 04:19:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE17gAkMD/VQbxKbGwU9yVlfZFQ5opbRwOVwkfXCULRVa3rxvdDFea3lTOfrcxDClnLVCPsfA==
X-Received: by 2002:a05:622a:1922:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f4b43e3a80mr373002211cf.6.1767183568144;
        Wed, 31 Dec 2025 04:19:28 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91599844sm38020443a12.25.2025.12.31.04.19.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:19:26 -0800 (PST)
Message-ID: <ed3e9128-cf11-4ba7-a7f5-cac2c537c2e3@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:19:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] arm64: dts: qcom: sda660-ifc6560: describe WiFi/BT
 properly
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
 <20251231-wcn3990-pwrctl-v1-12-1ff4d6028ad5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-12-1ff4d6028ad5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: J_5xQOf9sSbQYi2g3ZoyoGumL7ayYoO2
X-Proofpoint-ORIG-GUID: J_5xQOf9sSbQYi2g3ZoyoGumL7ayYoO2
X-Authority-Analysis: v=2.4 cv=dMKrWeZb c=1 sm=1 tr=0 ts=695514d1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YN4nVyxdPvXl5XCbABQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwOCBTYWx0ZWRfX91N3SAr59rZ7
 SSbBFYq9IlWSNKb2RgocrX+BBL+1Ncuu0OULleUdlFkcNGWYckrON1wlaTC15D9H7HrQ2frDd9U
 4LFuHR9dxSbvAP9q0VFH96whpfeg00hT2R7w3w53XCwNOC9J/r52DE9H8Do/fzexrUPgdWO81VU
 Vvacar1AM04mxjwow5HTV7pHXOIp9BhLc4Pt5ZtaLzn48YgtwetBLsavbnMbKiuXBwZ5DXUwurJ
 jEKqL3qVNsUHex2N5nH1aqNbeFIAUFpA6E/zSYCut98C1f/SCxLDSqx5G7yAcCdgswquF3yqp+m
 4h3BdFeeaV3oNEXl6hGyoJfrncnBYaIUyQ9uJIIttSXuCB4Fg41ZTFlUWYSnikPpvP/AMlu8LdG
 5Wtf4g6KbcOiC6A8E6Ao6Cw7siEfT5uF4AK33a+FWU3JJEr3CDG4gD+rtn0T3Hj3LhtBGCFHU1u
 lrMh6ZO6kRJ3cYn47pw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0
 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310108

On 12/31/25 12:36 AM, Dmitry Baryshkov wrote:
> The onboard WiFi / BT device, WCN3990, has a simple on-chip PMU, which
> further spreads generated voltage. Describe the PMU in the device tree.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +&pm660_gpios {
> +	sw_ctrl_default: sw-ctrl-default-state {
> +		pins = "gpio5";
> +		function = "normal";
> +
> +		input-enable;
> +		bias-pull-down;

Ideally

func
(no \n)
bias-pull-down
input-enable

anyway:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

