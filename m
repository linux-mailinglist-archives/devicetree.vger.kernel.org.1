Return-Path: <devicetree+bounces-260315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHp8GKrneWkG1AEAu9opvQ
	(envelope-from <devicetree+bounces-260315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:40:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 242D39F9C4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C9B63013A4A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581933254B9;
	Wed, 28 Jan 2026 10:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AqIhipHO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a4TFVlws"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C08E2DC798
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596831; cv=none; b=d6FArW23PXYpmj9JcdDbzWR8xPm13+kx9d3kJniVN1LdZxQ79IBH4mZtqQktfWfJhus2QAQ4uXE+OIravOeLB9DoGGTGIFtkplbNnlIOuXD/u8L2WXvKz2Qj2P2/ibXA7xgTWyVS3DQV+ozegFiGW5zzGd80h5GKaKQqrL7/JZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596831; c=relaxed/simple;
	bh=xNCuBjdzS4goBIvwhhXFzsi0BmxhT/kaPlm/aIO1PAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MEStn51Ajb23tfJovYiKm69X7IsZAmB9uGdr4JMVVjPJ+IHS1pIXWC72BsrrzwfQFBq964BDWXXS5Wj9wNgU6p3qFDBo9WeRGRxhAFYaHCsFv+pfzePRFJxD3Fem51Czhqu27hzr3nhb+I5Ks00NM7YnHWdCB/hKIbVWjO/oW2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AqIhipHO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a4TFVlws; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92eDO042112
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:40:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1RUTm2rK9W/8H1oDMERwWFJFkerUpB49X4+1zNyNLdg=; b=AqIhipHOFcS5YYms
	Ihh397u3CjD7BEppLGJPviyIAi+6GM9de3mLm9ohtwmi9rgf0K5M2XxpZEQdO06s
	02+Rs6dN6q5IiQdj1xnYdZao9go27AcRf2f0eWCqioJHwi/uCVRJy+1r/xRfagM9
	5KL2sHOpLuhhbhfjl/X5Qozauf/ByloxLgSSmX/MiPSlTWxTRs9wRKCyF7XfMHlT
	3ClKI4ld2ex0rXJLRWSf/Ks4i0YZ6igG5z/xnHlItgKkQFAZtu6rKYfKbE4Qk0iy
	tlnC/yqAdcdKxuSLvHbUL++8ENzXhw0WwoEXO4RmaSPbHdOG3eBbv+DRUPr02IJs
	Ar74zQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355tpep-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:40:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6b48c08deso198135485a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769596827; x=1770201627; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1RUTm2rK9W/8H1oDMERwWFJFkerUpB49X4+1zNyNLdg=;
        b=a4TFVlws40h7o8i7rn9Ae8WmpSMM8JPGIVNfb2VKRhb6hsdb1JMgb+vrmKKLs9Q/zc
         IBolZS2c7PDpHBfwTCgeS/uFtCb2HKGqmONlxo//2bJ1u3JzuEcvLwEfEFqtuGPufQTw
         mbdB0HtIw6vJEoTSn15SCE4OG/4Ff3MiP2+b/+ROtu4qYstx8eHpjVp26JNdBpfhBcvQ
         Pmz/dhHKrMZ9MLfmGTl2Ejx2wvBuvehp3uKAvJe6ZkQz3bJodXoGpbqZR2+hx76DxSu0
         Hkm1CiQ8D23pvg/r1gdc3ZP24iBVCE8/nC1eVa/EtPovdnWY8YJ3wfOsaWT/MLm9+cR0
         cfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769596827; x=1770201627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1RUTm2rK9W/8H1oDMERwWFJFkerUpB49X4+1zNyNLdg=;
        b=ZNYWkUBuZ7UqOIpCiWeBpYV02ptDPoQxiH+EG6MFu6d1x480tFTqraU/GaMz7vxQxH
         1C5yimRHR4UeJ8qRAUZ+6fwvO8VwAO81e1jMagFWQf9AYZ5nVbUpM2HJxtIU6hESDQI4
         4qMR7DXyb5fDXqzLFa1B5PLQMAqm5z6mUkFAdIhSesv27OgsEezBBqOxCmmW58DphG4T
         Qe/gREUlYSvFWLSebuFyOSyrWdpJD5EQnZC9yzVFhRf+nq15qjmap6dZm6i2CgEleCID
         rL1ojexLE971dX0FgRQkN6NWDx+6DdYNqfnyzjK3ARsJJHxT8ugV9pwtLl0t5E3Y+oCY
         virw==
X-Forwarded-Encrypted: i=1; AJvYcCVZF82wgHKBA/eUD4XhzVHpo2gnixoTqy7M1hMiqcrUzNwsrcAnC/By/BzeiJFlgRN/wDCX0wOdFTAI@vger.kernel.org
X-Gm-Message-State: AOJu0YyUFMYzKlpLz4nlxI9+5P3VIDsKNsE01pEUtV84KIbxxlzKMtRd
	vPPAqNj+9JInObdoYOBAotRvQAu3dwWknr8+ceT8P8OOzZjmOsb75e3cJ1e82nUmQtLzBcbeJfc
	zaHwElT9+LdXsI59ZiFSdBktdJdhJhKbjwiPBI9u4FelPbXs7aos9lyiZt6lQ6n2O
X-Gm-Gg: AZuq6aJaiR7xsMpzNw1220YF9crcv0FpBNyT6lnWGvUGtrgm7Vf5dPoWIe8zSYUJUb7
	fmiFdXdVqRkgfGFSztMWjDqWkd6BmSVQZs7MwrzsL7AivurZAx4DgzTzIyGPVt/xSNZ4lw3xFz9
	v1ZFcXOJgW1IazPxCC6j/XiUDBkssNrYEfj1MirMnBZkPv5JxhKzwFvV7O/fcVvK7wVvwt6pc/i
	UjvwmeY59p+TMssajbZRd004KSU1ayAOR7K+66Y7+si9gp+ae4RN0om7nOGReM3PqHtQwN5wb3X
	bR9CXD3un0ZpnGO6HVZ0h+cx9NK3DVPT+g9sctO2vjHmxpFJ3NgOnxM/61AfNSvNq20rZ/P//X2
	7u/599YkiPFX3wJJfm9plrfIyKj+4DmhxOKlRVsysmvx0gmsmpnU9HsvzZHyrpJ+X16w=
X-Received: by 2002:a05:620a:1aa0:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c714b481bfmr123925585a.2.1769596826880;
        Wed, 28 Jan 2026 02:40:26 -0800 (PST)
X-Received: by 2002:a05:620a:1aa0:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c714b481bfmr123923185a.2.1769596826370;
        Wed, 28 Jan 2026 02:40:26 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbeffed15sm109656966b.31.2026.01.28.02.40.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:40:25 -0800 (PST)
Message-ID: <734ae332-e1c6-49d8-9f10-a68e84360ab7@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:40:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Eliza rpmh clocks
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-4-ccee9438b5c8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-eliza-clocks-v2-4-ccee9438b5c8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=6979e79b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yZxmAL73Vz1KKP0sLwcA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 4HQeXp_RBIwcU5giNsly1-2NrcbIlxlW
X-Proofpoint-GUID: 4HQeXp_RBIwcU5giNsly1-2NrcbIlxlW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4NyBTYWx0ZWRfX2xc6eDEHQzyR
 ZktNQUkUyP2HGBBtssfc2pcbdimvmKHXf3uXIKwsn0LtSI6dbWTPaTBaqSAcqXPn+op3ayXBSJQ
 eV/FjYkdTWyCyCL2prMaTxPs6XF9LUVi10Zd3srWXn0k8QSA/KGrYsWpvOtV8W9mut92GKFR/xS
 wtAtFsjeDFHhduH1XKBMAyeLiGA//UplIG3yvkBtmUcPDspwHZBWlGKu2CzUeoPKZkW+vqeTVRG
 +seVvn3rZ4FLsb6ZAl0HEX4CKAhTBG8fYQYdqXDHKrOgqNaoB+hV0zzqUM51KPNjzhS340XUTf3
 l2Hl+lKylHUObdyHVWSGYX1/iuF99sNbj5h98ZUKQa0AQjE98Xd1uRNofJEwj0b+1iCJwmwk9RU
 eESjq0VIfsFVqLcOBYU4CvBXMKGpsoPe6RiHKEjIMtdrcIULN868BC9NHh8vL4/nN7VNcecTrKZ
 l3U5KblsFhBR6dJxPLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-260315-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 242D39F9C4
X-Rspamd-Action: no action

On 1/27/26 4:03 PM, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the RPMH clocks present in Eliza SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> index 547729b1a8ee..cf46a6585174 100644
> --- a/drivers/clk/qcom/clk-rpmh.c
> +++ b/drivers/clk/qcom/clk-rpmh.c
> @@ -940,6 +940,25 @@ static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
>  	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
>  };
>  
> +static struct clk_hw *eliza_rpmh_clocks[] = {
> +	[RPMH_CXO_CLK]          = &clk_rpmh_bi_tcxo_div2.hw,
> +	[RPMH_CXO_CLK_A]        = &clk_rpmh_bi_tcxo_div2_ao.hw,
> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_clk6_a2.hw,
> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_clk6_a2_ao.hw,
> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_clk8_a2.hw,
> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_clk8_a2_ao.hw,
> +	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a.hw,
> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_ao.hw,
> +	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a.hw,
> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_ao.hw,
> +	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,

I see that downstream also has LN_BB_CLK2 (clka7_a2) and RF_CLK3-5

Konrad

