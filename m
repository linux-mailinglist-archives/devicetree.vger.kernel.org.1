Return-Path: <devicetree+bounces-273585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKtTH8U5sGlbhQIAu9opvQ
	(envelope-from <devicetree+bounces-273585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:33:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F7B2539DA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5091D31AB687
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A85339936B;
	Tue, 10 Mar 2026 14:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JhG9zUjC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BdxYIKp2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D523A16B7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773152005; cv=none; b=bkbof1L2SFuRxXIQheW9jlXg+F0jGwWxPCeQ8pItwjUjn+7a63A1Ajrw/8URkz4J0Dht8tFFZt2UvfiVXj8QK8n+PBE/F14m+7ihP2j7ztuW29RKgdOLNdFt2XsILP0l9sjqbswUA+g4Q9770m6o9v7uRg+caiG/2jkefVARFMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773152005; c=relaxed/simple;
	bh=O4BqC7xKtyuYLJXMiicZ8E39BCLJgP0YLen4ndYdMCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iC9Hlj35WBZNPbgamAiAIC8FpBZ3nhIQ4PsZxoTMqttvM4dI3d2L8GDRoSLrs8Xi2/3btShaQHXjuMTPuPtE6nTZFJjiCxEp41gHNTEVIFOSpHtM6jp0NCnNhhtdgQCFYMQ2UT+twHIfvgKjBXuCS7L22UU0pyZyeP+1UUBPwZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JhG9zUjC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BdxYIKp2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaRZw3417072
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xKOFavLkplwLvk/5s8iEokBvnWPtbQSEsRHzYQNaJiQ=; b=JhG9zUjC+85y0Htk
	zdPQPeXFJOFkIxdUcnJqvxrDMezIid60d2AU8tdkqKXgt1Md4tujhR1g7A1Shfus
	FXkkj2zNq7p6mDx5qFZmGuUGZW2sCAzcdkVlgCiZWYyMt5XTRgUPHAXR4wnlsK7Y
	Q0m6yTot1sB0StYURmP65utj4ifluAbLK3hnKLNOzQYhM00ZIk8b8T57n7IeBmcB
	nhkXzEyYubj4cm5w9r5AJphyr/G1kkrpUSXNpi7k9mAXdIc/Tij+RvBQqe+pAzWB
	zWl0YgxEia6viOQHFhg2jbPhZ59lmAPsko7OD+t+PWkb1fcFyF9bGn50POftkwkg
	BEBt7Q==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28me9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:22 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ffc4993b02so1002081137.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773152002; x=1773756802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xKOFavLkplwLvk/5s8iEokBvnWPtbQSEsRHzYQNaJiQ=;
        b=BdxYIKp2AiHmaA8kf8emIk8wAQbIWxfTe5BLRXDoZ2fr1k/zqMNNHKBNyZakONL/Sc
         +x4b9Dw8AvDH1APCTwndXExPOwBM36ql5uMtZzlGb+dnYpoyuz81TvMlpp1EiIv/nFfv
         Pjs0lqFB2vzgoua7cYacflCqAvJKx20qFNT6g7bXWCdF4ZRGAy4wVbVIPNGG3wTCQZtj
         zT5CkPIrN4KLMOzJ2UJGd6HsLaULsNtTy5RhSMwVe5aIVqDlwzW17wBAsW8rAL30rOEa
         dc5YO+rNgVrU8axbjSZOq9UeoT7V2GjyXsGmeMqKr4gRFz5HLzR/nGai38Sn9T20V+2t
         4vUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773152002; x=1773756802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xKOFavLkplwLvk/5s8iEokBvnWPtbQSEsRHzYQNaJiQ=;
        b=WiA1gNt+zvI61L3uliXMCpzpOcIP2Qn7vGA/jsddamEoY/zC1MxlOkyxs+IHMqYQ10
         yLnuFvzXET8LmgwLaI06mWMfrkMn1MCtkMY5mgvkrfH1URv3ZmLiTuOMiZRAQysW8Koe
         ilZmEOE9woGSrvGvU2NgbEe/B0XWlwLvbJvVB2VAa61fDqHjlOTxXqjTRualJxjnSaJW
         AKm1Z2Ab4Dikx5FLrMe/7gAiKhvf/hhrK3puCmQsYmwI3ybSADxusV94jtcJ6Wbr18aM
         myl035/UcjWt7SqbG1E/zBaOULUR+WOefm7j2onRFHxtupc5x5HT3AKUYDFqniZZtBHy
         jELw==
X-Forwarded-Encrypted: i=1; AJvYcCWmYi94HfZkr9BZvnse/uTpyIBG3OJePYbUgpwskHC1OqS9vyldMPCAngF1X5QsFho9vkaY28y8xGOm@vger.kernel.org
X-Gm-Message-State: AOJu0YwKuZA45xK/to6YpHQAAfLbPht7hZra0+GsUofujn721MbNNxIs
	85E+5/1FeeT2uTWubEDuaCzFM/GKChYLj1E55HejbooOTGGVPx/ZWfgkcGjsjOqex1id9BRWxFu
	ry3jj9pMVeJAofhFyYHUAM8JUFFC9aoHA7/0TAKNemNFKPfJEk0mCHAeK2WR0iZbb
X-Gm-Gg: ATEYQzxpx77ie5suMkNEai+7mde0xJs4TrubTzN3NQbbCVW4T/rX9G+e0qKNmg0W5Hs
	1mwV/u7fWp0aUrvzNXZrqfV2NTULS5dy7PKHRFiBHdEyby3hqsLaUVhVtZTpaHAblQv9Gc+yCRQ
	4T20bHBuGYQZktcR0Gb64iO8HtaYJLolydgq/H5ZNvP4s18KhPFPXwyjCYducwQrGwRq4ch5GKI
	0ZyFVXZY3yojx0q0uUdoLSvpGKj7svVu7sh9UFaYfqyg3bfJyq3whCyymadtqtXVV2pFmFilIEy
	Lk8KODaJWpxEiCnnmEWM1B3Ie/B5Tl5XEHQ3qg9iLlJiZNqTbNnF2AxVppTaPJvmCt9W7HxnuTA
	PhuoM4uy4rYuMI4yEHVOr8WGy6wrG3mqH5fcalMuxr2eICiQGN16J4NRyifchRK3LBE8I9vli6i
	i7wGs=
X-Received: by 2002:a05:6102:c8d:b0:5ff:2cea:c17b with SMTP id ada2fe7eead31-5ffe61e85c4mr3065740137.7.1773152002058;
        Tue, 10 Mar 2026 07:13:22 -0700 (PDT)
X-Received: by 2002:a05:6102:c8d:b0:5ff:2cea:c17b with SMTP id ada2fe7eead31-5ffe61e85c4mr3065721137.7.1773152001529;
        Tue, 10 Mar 2026 07:13:21 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f15d51fsm493523966b.53.2026.03.10.07.13.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:13:20 -0700 (PDT)
Message-ID: <983e115a-dd90-404b-bb8f-71b28b33fab6@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:13:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/11] arm64: dts: qcom: sm8750: Add power-domain and
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
 <20260310-qcom_ice_power_and_clk_vote-v2-10-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-10-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b02702 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: SzfwncVcPthlKnHkr5h5aABYa_66gZqJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyNCBTYWx0ZWRfX9ljLsxPkEqP0
 vvRf7d/8Creu6OU9cYzU/6V1zN8ed48T3TYSz1cIZ1tWJro75wB5zoqu2V2CjFvxuBRaE0vv9nu
 25Qhq3EgJVhIIpwEy37xAK/Ck1HW+tnILDK6MMk+ZHLBBYB9vW6vXW+rQHgk1gmtEYG5KD4RWo8
 6fPTujXbdWOt/BcXB/jLlv8R5qT8cxlZuOGSmVcFFTfFmylBMyUJW2DzVcqAyZY4jNXCe5Kh/Eb
 meJUcJywI6R0S2VbfF/ERXvcxzWA7bCf01pRJtNeD31mZX25sE24/sQWdcdwUPUGt7BF/mWYJrm
 1qlSZspwOs0twq2BhtxRlyARiElHEyaLwyRTHp0hjXH9NZyJ8Jy7LtywVGtfwiro+DY48NhS5An
 1XMSLeiO3HtmgomU3agk31x69nIYvXZl37JTOeBdeSxzuEQm70Pn1eUH8avImIi4rMFWE42cwlA
 m0m5BwPK6zjNPYDvlUw==
X-Proofpoint-GUID: SzfwncVcPthlKnHkr5h5aABYa_66gZqJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100124
X-Rspamd-Queue-Id: A1F7B2539DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273585-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
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
> sm8750.
> 
> Fixes: b1dac789c650a ("arm64: dts: qcom: sm8750: Add ICE nodes")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

