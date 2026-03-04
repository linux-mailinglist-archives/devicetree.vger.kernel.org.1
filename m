Return-Path: <devicetree+bounces-271056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDoNMxE2qGm+pQAAu9opvQ
	(envelope-from <devicetree+bounces-271056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BE7200893
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 946C230C82A9
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC143914E8;
	Wed,  4 Mar 2026 13:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VJsYsb/2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="blXXh+Zb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75A836EAB3
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631340; cv=none; b=hI6NKw78hh/xn/z012+w3J368c7/6YuwAV5CRaeNoAonZSGUb+VYPHYzFP/LknLzn5B+asx6pnEbmIYhruEw5xHAbb3yQYMbRAHNgbJXZ1JKsal7AzsFIlcM5lriQsLizukfzjP337l9C5nRykxZij8M2Ne2IbBYxjm/dPzowOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631340; c=relaxed/simple;
	bh=Bc60Ce5RAVxeMqV5F3Hw8I4j0mmAfOiRf0KEGpNL4HQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kjHq8BFpL6pTzjuYLbKMrXhyAu/E3rF0kemV1apGCDQZ6ywrk7o0kYfwbVaOyg9eqMN9xLG5qqLStOkaspZOUvmrrKNjHqlOmeY48EKqZgWNtZwB7Rw6noZZrQpbT52cWbWe9uaXtQb58K9withSQZLHJUT66tVlyTkOuu0oLkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJsYsb/2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=blXXh+Zb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6249KfUq1455858
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:35:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HHFSyLWU+Oy7MJVGltMtPHpNmUOfcwnnSnJ2aE5TD9U=; b=VJsYsb/2vSUGtnPX
	iAmIkOgQTRoD/pXdcxv1p9Ch0KCg8y24kjy3jAWP4wTumPB6ms0CkgQw/LwXj4ft
	jP5S7gacgbggk+5rn5iq5pzem1VogAAJ4ZV6zmZ5+gpii9RmVKti/zw6QSyShX3y
	XHUCT9i7mQKRxa7HMw2lvXY1bUYLjYVqTpsDua7MZbX9AAaV/tbsPOYIlxXFbCM2
	gsWcrtBwC/BRN9c/dDXdPZHguTytvXTGXHySYLjjGWCtO2VwqlPEZ5k5hQPO3QG6
	bQk4G3Mxuyr7yhbli8QeIIutffjrcG3TXMi87c2vzO1hS/4vkK/RJwSFiam8i/Rp
	pF3uSg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj180qhd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:35:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb5a76f13eso390326585a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772631338; x=1773236138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HHFSyLWU+Oy7MJVGltMtPHpNmUOfcwnnSnJ2aE5TD9U=;
        b=blXXh+ZbKAIc3nZIfgu6I/SjlvYXjzkLc49OiXq1hZMYtrJ6YNu/0PcmNGik1KAQS4
         suOVGhcAsruQFGGMdWXZncJ2Joyy54dLKzA05R0Xx3VOHSsw30L09gtLoxdpU9G9Tn32
         KdELdRAhj53614MsHviV/WLR71zFgKcD9U37gRAOBVqhTwZdzcC4VTcSM9apvgrMShVx
         o+aNPvd+8XZC2dmmJoZ/SE1L9VN5M0/Fr8T5gQjXB9bFUZTr9xTdeiaY3tvdA5rtlXOo
         r9OofF1WiF2DB31wvwlElMUJ142wB3S30ydD2WmyrBwsmbIMriIZATYnxR8PF1/xOT4p
         ta8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772631338; x=1773236138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HHFSyLWU+Oy7MJVGltMtPHpNmUOfcwnnSnJ2aE5TD9U=;
        b=CJzSz+s06FUh/YmocmxvYVUBY/37oOG1Vc+lrMagHAxXaRam3q/O3ZqxUAGD9wAkZI
         9bfU+dco+8bHwFlKf5p1vzCL519RqtX+667CAqQ3iDSZGW8otQTMqTf23oFMHOIa+dWL
         XIXYRvRJwChhrHIjBTJHMNB/+YqwSdNDtgNjl9J5GqsSkDrGSl7oDGnpUcHRpO4LAeou
         xMwK11OoM2oV4p3uFhnMAKuNvEsV1+zuA7zzmbPZvdioEn3xJqT1+soHNkBt8wpMY2af
         6lcxawidelJBIOrKi06MnGZpPl9FNO+F0BbsjrX71IX4Nx0dFINVmb8fx6oPRvJjZN9H
         WnAA==
X-Forwarded-Encrypted: i=1; AJvYcCXVi+zfbLPJZwAZFHf4ld94lmozUi3LtZGS4sIOQ2tktryrE0bThvcW13geQz5NsWbRVraZv2NgTteM@vger.kernel.org
X-Gm-Message-State: AOJu0Yygp1dfxXvBZA0VaubcTcFyY0GX8Y+dQkz4kJLlbNVYP5ixJIxE
	8CMmW5gefSkcre+Ftkpo5FNnG3Qwh4SpReKKB0LpkUCr5dszkRNQnuFnWIUfjNv6U5B7Zk1kOiW
	yq1116QKQbVVafnLWvfezZKLHtQl/l4tn38Mk3rPbf9M0TmpVXlkyhjDa7aMbIicG
X-Gm-Gg: ATEYQzys2lJAknqqzoUxak0pyIevhdscNiouQexNOTli71prVO0/6x3hSZmnD3y5RXj
	zAuAFBgptchkBRY/Xun73Z+WYoPv6/UvTH2WB76rZj3kCAuWxtRBq20zA5Y9ChiHcpqlANCuXis
	kQxoiy2WHxhwPAwMBPjJb5N1OzMb3YYlylm1nRftaSMnpLw5V6nzhaEsYCRqGSUfD001C+Qdm0o
	ZP1ieU6QXEAcHeHqpWz8WTbAiOFYQuZvqUhiXrJdPQWuzeDkWGhquv4Y/DvRBlwqbSfnaoIujiU
	jMLwBwHPrJVZ4qStPNCzEIbXz51gBMSBmiDfqRREP1ChysWUxOs86c9AxJp12r+jlrda/fG3gyY
	EgP71nRnE8YrSDheM+rntWkAMgLirfjXOYnqT0BGggP6j06kNDc4l+XbIIeA7UeSImUeSzky5WH
	Fad7I=
X-Received: by 2002:a05:620a:404c:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cd5afcdcfbmr175281485a.9.1772631337976;
        Wed, 04 Mar 2026 05:35:37 -0800 (PST)
X-Received: by 2002:a05:620a:404c:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cd5afcdcfbmr175276685a.9.1772631337417;
        Wed, 04 Mar 2026 05:35:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660b5df4bf9sm1505895a12.29.2026.03.04.05.35.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 05:35:36 -0800 (PST)
Message-ID: <7e092c9d-ccc9-4084-91a8-7ddb063a904d@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 14:35:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] soc: qcom: ubwc: Add configuration Eliza SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
 <20260304-drm-display-eliza-v2-6-ea0579f62358@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304-drm-display-eliza-v2-6-ea0579f62358@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ppe1BI2cEy3yG3ToCZAtL1II2GKdoxK1
X-Proofpoint-ORIG-GUID: ppe1BI2cEy3yG3ToCZAtL1II2GKdoxK1
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a8352a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ofcykXZfb13_7XvavCoA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwOSBTYWx0ZWRfXyXgroB+NG/m4
 s2rGInR3RZeyrc3g4jSPqYJIPBCJj+r0rdWQIX+uoylHF5FAIBeE6KDLLS9tVaRVJa4VtkY6nbi
 nywYXsIrqaCajkSH6ukfjKSyt3Ra3xTyh64OfRiJmiRWzx1nEIFpyalhG9B1YwXzJG0V9NfzgnE
 +av/bA3C8DAaDSA9AwK2R7+y91Tc70x6h2aC9D6+Qzwx+oZlTvKceOhrMKfO2K/gk+SV6HAcxnX
 CfFY3VEfp9kKpL8mjmQ0JlYH3tbMI/lsyfnQ8G6QspVF1gj/0JqKiNgP1xCijYWp07mdaZqzgfr
 V/UITVRlazRkU7kZ9CUua1jpucP/jA23MIksQp1IpMXP1bxyOhMECgT7LvgrRwxk0UKNFPx9EmQ
 mO6/C1WPFo8vdGpskJiErk7yvGnsgwaWWUpPY17tjf+CFQWWXFGzv6G+ht8W82lxIFnWRunwQgc
 TGhYXZybZsx3y74AMGQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040109
X-Rspamd-Queue-Id: 31BE7200893
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271056-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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

On 3/4/26 1:58 PM, Krzysztof Kozlowski wrote:
> Add configuration data and an entry to OF table for matching the Eliza
> SoC.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Use data from manual (UBWC v5 as pointed out by Dmitry, but different
>    highest bank bits).
> ---
>  drivers/soc/qcom/ubwc_config.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
> index 1c25aaf55e52..633d1efa0883 100644
> --- a/drivers/soc/qcom/ubwc_config.c
> +++ b/drivers/soc/qcom/ubwc_config.c
> @@ -16,6 +16,16 @@ static const struct qcom_ubwc_cfg_data no_ubwc_data = {
>  	/* no UBWC, no HBB */
>  };
>  
> +static const struct qcom_ubwc_cfg_data eliza_data = {
> +	.ubwc_enc_version = UBWC_5_0,
> +	.ubwc_dec_version = UBWC_5_0,
> +	.ubwc_swizzle = 6,

 = UBWC_SWIZZLE_ENABLE_LVL2 | UBWC_SWIZZLE_ENABLE_LVL3

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

