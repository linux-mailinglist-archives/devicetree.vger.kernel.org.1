Return-Path: <devicetree+bounces-273576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6G5+KhArsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:30:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01323251FF8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCA3C33A0429
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155131DC198;
	Tue, 10 Mar 2026 14:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f5ERCElp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HrAf7AyY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A5338B7B2
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151938; cv=none; b=FpPOTza0NinTMwkiViT231rc4MvLV8ykRMLD+c3R4X+S5+84cEDIqwInRxp+9zXql/uNGsz9WAcPnzS16GU6+W6An5nqmvJymaBIURGEwrEk0fNiVSn8kQG8L0YI/8DPNcrkfCWVVGu1npTOAvKK4SA0VyRHtlXxol8n96QAN0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151938; c=relaxed/simple;
	bh=Kqn7x/CgHOCtjliiIZrKXiQ3tj99UvGsyutJ0+E83QY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XzHL4TTvtZVjIdgi3/OqqktwPkkJNEwEKSeam+gIvlYRwoAQDrWU8UP931/AX26dvNZWofRdKhVdEgUiFeDs/W4MZbSDTnjvzNYxHaJXl6mHn9p/kIjrI01EQ1gyhkVdmGoVlhIa+KyUfRdHRLvYg5BFeWnsl8YNlByHYdlcbqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f5ERCElp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HrAf7AyY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaWqd3295832
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UwQRs3OinF0T+HUdATBj4XocoJa8DTta75lo3fnEfCI=; b=f5ERCElpANUhx4Yx
	PNpi9nXyw+Qy0AihJpCBPJcv+bB3hDg2Sufx19UYSCKYQsUEAwxGzqAThbhLr4a7
	awor7kBqH7nZ05gse4MzdNIaTiZFjyfzfqYCAbM/f0hupJmDJgPuM//n8C8ZDx/6
	H1FkDOgHrZZWNhrALaMMIXsEp6qeh6yIA5W6TOCk/q0nugL1c4MOY3YEAawhLBLZ
	a/M2s2RK2dpLX/bDVNRONlEypHCLPLq2V4BvO+CeDDKva/d4hGXtrpdNdyVuKtpl
	SGrF3xIN+QUjdSVA5ZCGej0QkdCQAf2ifSDTN+AF3rx8F+B9hpsGfBT/bhBpbUMm
	C5NbtQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg1ms780-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd8dc8b434so132509685a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151936; x=1773756736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UwQRs3OinF0T+HUdATBj4XocoJa8DTta75lo3fnEfCI=;
        b=HrAf7AyYh4i4mBdo2qyGIDx73MwjDnSqDr6iOaFU5m6x9eEWzrDcCgpoAySVbAtp5K
         w49qUYjiGT4AaVza5O03Qq2/KFbYa8bCQ2wyinw5+KdkQKf1XTEr9YdCWdSBVhiQ8VRG
         Pko+BcnvVe1EELM4K7EvbzVEXWZ5xaLV1oLjYNqfBMQxp15TSOvTEXVTeqcNJXcwBHgo
         o8n9j+I64FvPRALRwopJ2iLIyTxPJBEd0pBM1R6nMt6erRrw0ZndkYi6Jt+dNMb3LoRv
         K5j20kaJCNaPEMXAhePNiS2p41pUKhuiS15drbXvR8fHZZEk2z2bRGOLUlL1Iaqa37Bu
         wtUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151936; x=1773756736;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UwQRs3OinF0T+HUdATBj4XocoJa8DTta75lo3fnEfCI=;
        b=Xe/tDzJ6Y26JodnyQAAf0RdSZ6HwVw0rjiOGIjq0GRWfQ+/tPldsmBpwxAl4q57Hez
         15oAUFWIX3GBx9GxFFPBIwiPgW4NIttN86u34DDBDiuBDhZG3Hiki/MsN+J60CJBvjmB
         ZVO+Qloe0MBmL94jv94CQhzyNaO5sxc0/0W848wELjO1OKy8uI26wYM6kHF77C+xLxvs
         DnU2XmIMyIxjtsQDAx/jg8GCBeGHirnHY2opKYpvXOIME3tJe/K/kAaeENgWBgDdSrVf
         0Kb6pDDBnAIvilUgPcchQUV8L9TUHb1O2MCMN+QY6w0Xlm3t/qamRW7sAo32k5lz0Kjf
         O7wA==
X-Forwarded-Encrypted: i=1; AJvYcCX72CpmGwm/C1YavEL88TXr0nE+x7UMIjYcWbDInqQcZCvHqHqKarP2GfQsI8MykLHd5jZyCvodo3/x@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhlpd2GlEj8dwEJ322rwZ07ig2gcnmacfncRVNArgZBOUDDIL2
	n0y5SHa/79eCCO8SABlVTZsCjTNSj2TS+9y6D4koyKW4HGJDewMp7bsdIzkiw4rreXn3rlHpXci
	MVLr7R/VflzyOQSVkEmvCQYkME5HAyIoP795OJPZkx0rh/MTrVaXhk8FQn0vtA4rz
X-Gm-Gg: ATEYQzywaZoI/2PFowct/rFjPkvd5rvVwXEiensPblPLoNi3OMHHfTi1qF5dIbMUdWs
	2J7hOQxyCL/hgFvbIb8Ol2tc2kzpoAyB9AjIwcCESrhqKt0b9toj9aPX/of7+2kx0LADDl9iToA
	FZAlFsoQfcLvZcu8sBs1PlyzuW5KwQcTUZZZcFQgSVrFmmJmZnFGtRNBuKXRbBa6tPnP1F3hkqY
	dbX6ULxvtv8Gpp+fXB2Ri5FXglzzW4lqdOjr2J1MMMlVRD/ItIBimtUCUWcXZ6UymlD6wRCSaMf
	K1WWPlFuji5+ueMYcOR62suME+Upf6EpD3t/LRB6E3FvtP1IHgfDvmaBiES7Nf/bhJOxm/tnrc9
	7mHdC+vEimxxjhdu5RwPtIlWyrxxn3PmpcbzGnpJIhy6XxAMqmCQMCkB5w1rPXwPCs2wyG3qzfx
	zVPDA=
X-Received: by 2002:a05:620a:4711:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cd6d374b89mr1582350385a.3.1773151935944;
        Tue, 10 Mar 2026 07:12:15 -0700 (PDT)
X-Received: by 2002:a05:620a:4711:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cd6d374b89mr1582346485a.3.1773151935466;
        Tue, 10 Mar 2026 07:12:15 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-662a07022ebsm1512263a12.3.2026.03.10.07.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:12:14 -0700 (PDT)
Message-ID: <4cb2dacf-801c-40db-b5d1-ee99d083fc90@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:12:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] arm64: dts: qcom: kaanapali: Add power-domain
 and iface clk for ice node
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
 <20260310-qcom_ice_power_and_clk_vote-v2-2-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-2-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YOeSCBGx c=1 sm=1 tr=0 ts=69b026c0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: K1Gy_49kp6yfEpoI1MCsdF3d_k5QcyDK
X-Proofpoint-GUID: K1Gy_49kp6yfEpoI1MCsdF3d_k5QcyDK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyMyBTYWx0ZWRfX7rbPjgalR5Yz
 2vRYulDohQz9OM99F4G9h9b7QyZ8PbuoYqp11iV18qc2FQtGnrnrDJwQah0b3ulJEbXEQxGjzJd
 KtA85zk/dkgwlFFlVjOAMQWhBz2DSjLaK1iYkFzzv6AdpnWkAvl2NaIm6wSrmaScCJdKLG5hKjk
 zcRDW3RKsyrGHavAlNAgWQGzEnMMW+IiqIaft/xlNQD8kPD8OU9aWQFDHG4fy+7U5axPDTYOwrN
 rJ+lv2MAYOnir07XtlPTgu8ayQzVRd0LQooukkVMCUTP3bV4jppOgkXwF8PgEML74zHfAjZg7W8
 PEz5eftiPeR5cuvp0Zbd6n6ftdWy6RGNGvYTC00OvtF4b6xVHcI8omYZYO1/25Ayqix06NhyFV4
 Z7ykhNO2y/Uz20IENhGMN5agud5OTPp0dy8SmH4LNo2GPEnxirb+HwsXuFJnU1LXOrln1OkC6M+
 tfCiSpYw73P3cJjceKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100123
X-Rspamd-Queue-Id: 01323251FF8
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
	TAGGED_FROM(0.00)[bounces-273576-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
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
> done if the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
> GCC_UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for
> kaanapali.
> 
> Fixes: 2eeb5767d53f4 ("arm64: dts: qcom: Introduce Kaanapali SoC")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

