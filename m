Return-Path: <devicetree+bounces-190470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 653ABAEBD0C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:22:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A05396470E3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BFDE2E8DFD;
	Fri, 27 Jun 2025 16:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TBC50qEi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CC62D3EE8
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041315; cv=none; b=dLPXS/+FGmO/Hyk7wuG+PHrceXHSXtW3S53Y9l6B4+EUn9BcTdp3jIqla1VDgnBdnA7AGnRZPZxYydwJUCSz/kENn7Hb1Y5Rhn4PwDFWgyolWClPQ9+uZHM6yAD1HwJL3v/GZNuzmMTEMonSUmr9EaEq1pmT2ttY1gXBUr7+PMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041315; c=relaxed/simple;
	bh=30vgKdy5n94b1DNeLRG5PLw2PPMa/I/W7Pqq9Wsa51w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e7XXAe84X1f1nNhqN8aHUmrovT08+w+iTma1HBQb7lLNo4H0qlHlLMEmbPYUtx78D7aKJBUGxH81Z8pyXb50aM+GE3ybi7cgC06Svoeatbr6dAKigw43vKFLepj0di2VcY1iPb+rdCpPV0vOY5OU2QE8jA3ssLOZPyIyIpjCMog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TBC50qEi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCaERQ007795
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:21:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g8S/q69+hMXzlKm1t8hoFvS7fzscnXnzVXeG/Aysk4A=; b=TBC50qEikpNwSDDm
	cBrC48K85w4D7KXqQRgKZsP8yS5P+ij4btN1s5LjIA7iIGixJK+TmreJKYmAeXaG
	IGi7CrpzqKey8wweQalmj7GB7Ht6M4qMPx0CGiWFfhz7LHJmV1NqfDlk6zgIz5p+
	y+ZxXn68Pr02GC/PyLKaEcw7c7b7jYByvSzfB+b1rZvOb509kss3Kmv0KExAzFUV
	mhLa8JgaZ/e/zP957DD9sHeIeehrDk+Xz1a9Z1McSVT6e3FYCFPRroe4QpBu15Xr
	mOWCIbSF7mKXCUWjcIu6iUxA6l9MwPyx00idDae+RTMuTHjODgkZFwTUINcg4Y2M
	9mN1tQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqwt7r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:21:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d440beeb17so19681685a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 09:21:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751041311; x=1751646111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g8S/q69+hMXzlKm1t8hoFvS7fzscnXnzVXeG/Aysk4A=;
        b=PCbM+mov+e9+Z84Phk/EggWm67ZkKOXmMfpXFd0xmav7ehFLJ8kJXPZANc55cS/YIa
         Iuj9I11pob0q5vwj9URZn9OKbdMBpt/VTeRwOSYShrYYwaViNQtZ0ORoYY7ayKlWqvAZ
         Ej0gbD0P4pj/oO5s+WlG/odVlHe+zY+jCkBAwgQmD6nxJ/F9eOrDKRaRNUffBZwek7zS
         cZZqEZ4GURIcFZW3sSmC6rtcBR0z9fr8sPdpxwaCbsP/gKIpAmsAL7qVNu/0vXtKFXPh
         U2T3uWlCfaet5FmcWd5/8sv2vFBvjLxVE3hO9pfZcdD/LKuT6oNMT/xicCwllJ4gb9vz
         K4Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUNcJvFldjAnBIOZ9uS3Vgkw+Tj+s7Pw1Lcb8hv8ySvBnV2EEHBsd9SKr1oIRZ/2mo/JAA4tfqk+tvU@vger.kernel.org
X-Gm-Message-State: AOJu0YytfH2jyg0EGoTZqi6XeCos9UGZ8VH4J/n4RSyb9Fih3J3GKURj
	5r1IkJjglwJTurdmUI+hZgDWCkUgggw0H2fuL3XbMyprpdkTOq6gK1zzcfLxUuV3/0kkSgCR82H
	4itfk+BnoCnW4DSQQHM1AKZrXAWU3gXGm5Ra067QnMvrih44WjCkSfY2JRvlMEVkWfA12pY98
X-Gm-Gg: ASbGnculKMCb8haX/i4usfFmWrNK7KADos9lMwdZCmATXAC4dQPunhP3BLoOph1YOVv
	R4/PS9OpMSKu4hrcHBafNxUEAEIWlyZBpzHbfAgqWVIgd2jgrPzHbGAuckPqKE89HzxugOTED3Z
	sY74987Z9UQvjavCsfxgxFS5OIkfWTajVdvsJG5uqbTcSo0eFCXBLUN4fnPDgjn3shTk4p6J05I
	wQo0f82y5Pbf7ZFnFn3A9tWAMMvhy4889TWMaA3dFbvG0thEBIKj6pF9X3BQhFpoMUZmPZjNIuF
	Lg4+10Y/zRY0dqwdovhw1mEDkSs8p2soaUl+Zv2176AeP0GJIxNzh1dfyMl30ymTblxchu5SoWN
	Nk6c=
X-Received: by 2002:a05:620a:1925:b0:7d4:2901:2b3c with SMTP id af79cd13be357-7d4439b51a3mr212887085a.9.1751041310914;
        Fri, 27 Jun 2025 09:21:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1SPxuQsD4kZcYVOTyATUEwOXLUOsQYA3SYR1WoncAoVYNaaL5puLHJyjBBdfcBGSK7mKW7w==
X-Received: by 2002:a05:620a:1925:b0:7d4:2901:2b3c with SMTP id af79cd13be357-7d4439b51a3mr212884385a.9.1751041310357;
        Fri, 27 Jun 2025 09:21:50 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35365a016sm153479966b.57.2025.06.27.09.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 09:21:49 -0700 (PDT)
Message-ID: <4556893f-982b-435d-aed1-d661ee31f862@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 18:21:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v5 03/14] net: ethernet: qualcomm: Add PPE driver
 for IPQ9574 SoC
To: Luo Jie <quic_luoj@quicinc.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lei Wei <quic_leiwei@quicinc.com>,
        Suruchi Agarwal <quic_suruchia@quicinc.com>,
        Pavithra R <quic_pavir@quicinc.com>, Simon Horman <horms@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, linux-hardening@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com
References: <20250626-qcom_ipq_ppe-v5-0-95bdc6b8f6ff@quicinc.com>
 <20250626-qcom_ipq_ppe-v5-3-95bdc6b8f6ff@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250626-qcom_ipq_ppe-v5-3-95bdc6b8f6ff@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8ZIiAJDyKQIcqorIHuoijH3JzRfwe4aK
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685ec520 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=JRFc35xCpNCPHeNcAxQA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 8ZIiAJDyKQIcqorIHuoijH3JzRfwe4aK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEzMyBTYWx0ZWRfX/kGT8jjZ2rsY
 ld6ErDUlLmTt6UKYUz3Y4hBrXuZ8R6uROD1LCvJu4+TWCwdiMqkEgFAAvJZ+rX9bfxjLpOimCTg
 DS5Xw+7IUVO4dlSAfiPO50zCgauZakQ1fY2m8k8tqKWcJUtFe2drJl049cpMrBJ/pyR8Ls2XKaI
 0paGNvyjn1YFUbnMLs7iLF7wpVWjkJ6Hx4hCj4bq6J5t+hmpwjrTfw1JVSW0l+COtYLcLFq/zMA
 VUwtJ0sfbdUGZCpjnke7BVRw/mNgLi/aDl2g8olTieK2CvgCucOPUA38TXzGOfTqv9btli6I1fL
 1MGWe7YIhu5JSBLEvis8p2XiTTwAc67NbHnce+/kQyA6bPWbwEFtKuGksRuILtT1gHy1ymEYESg
 oBbMpzttAEHiVzqlFoCObt+mpe+clYZeEr7E15GhiOCAU3Cbp9rW74xuLlkE6w7791CjFgtp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270133

On 6/26/25 4:31 PM, Luo Jie wrote:
> The PPE (Packet Process Engine) hardware block is available on Qualcomm
> IPQ SoC that support PPE architecture, such as IPQ9574.
> 
> The PPE in IPQ9574 includes six integrated ethernet MAC for 6 PPE ports,
> buffer management, queue management and scheduler functions. The MACs
> can connect with the external PHY or switch devices using the UNIPHY PCS
> block available in the SoC.
> 
> The PPE also includes various packet processing offload capabilities
> such as L3 routing and L2 bridging, VLAN and tunnel processing offload.
> It also includes Ethernet DMA function for transferring packets between
> ARM cores and PPE ethernet ports.
> 
> This patch adds the base source files and Makefiles for the PPE driver
> such as platform driver registration, clock initialization, and PPE
> reset routines.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

[...]

> +static int ppe_clock_init_and_reset(struct ppe_device *ppe_dev)
> +{
> +	unsigned long ppe_rate = ppe_dev->clk_rate;
> +	struct device *dev = ppe_dev->dev;
> +	struct reset_control *rstc;
> +	struct clk_bulk_data *clks;
> +	struct clk *clk;
> +	int ret, i;
> +
> +	for (i = 0; i < ppe_dev->num_icc_paths; i++) {
> +		ppe_dev->icc_paths[i].name = ppe_icc_data[i].name;
> +		ppe_dev->icc_paths[i].avg_bw = ppe_icc_data[i].avg_bw ? :
> +					       Bps_to_icc(ppe_rate);
> +		ppe_dev->icc_paths[i].peak_bw = ppe_icc_data[i].peak_bw ? :
> +						Bps_to_icc(ppe_rate);
> +	}

Can you not just set ppe_dev->icc_paths to ppe_icc_data?

Konrad

