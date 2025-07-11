Return-Path: <devicetree+bounces-195449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB14B01BFB
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:27:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9875646F18
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9012980CD;
	Fri, 11 Jul 2025 12:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BM13EVbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1A81E5729
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752236839; cv=none; b=hIyh1MyceIgc7vIyw5hQyZKtioJpYG6ZDXrXFU+zkmLWAdSMRkeUooQddUjbMrF8TQnVHP9XOQTfUDrf9QW/gj2r6MpKvApTpILshMjymANKqcoDfH8I5SZU9Mu+3EV2NaXs5UOiVfzbhVL3gzo2vqtoZMqouolBCusZ28PODNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752236839; c=relaxed/simple;
	bh=eF9OHglEooMPRkT+RzzUrKW3/CQXaTm6Xts5c9lE7eQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dn9UcqYNIEE3tumNgZ3M/QB+Qb5CyORdjx4C5+XtxD2YOzSaLiFlz/FD7hhg9b3uzbmu1QSzxyWIYem9nevNpBEmrqWBLQoY/O5QvyzvDYJsghVSAnF6pAJQWHRAcKCUR19mjZJm14vQ9CxvoZGkLUsHXry0XPyF/25tFlie9Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BM13EVbj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAshqC016347
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vtZNijnRp1w5BVwcDMHaMUT6uupwS+ihEdb3Rm1l184=; b=BM13EVbjL2HXLpd0
	xEF8zYMCiAcdsd4xLg6veMfZ51PcSCe9qy602k9N1r2P1ww9GwxL2la649S+VCXj
	9pvFQrGO2Rj2WgPCTxknywHA/fseKnehgezNubHY+nhJh6v2Ouc17sUBjAaY/65a
	qVh9egMeXNkbnIA4hCgd5dDvx5yo455N7E8tTShZmUWb9eYScR0W+8JjGV0jfoMV
	gvn9pBHd9ZLIxJc1iyPxVsCPiANud+b7PAVZA9gmJ+uxGlLJJToxOA+qJTqv24By
	o4q3ZN/DaLrAT07swEit1+O6e8Xb1cBxge3e3JdRZ6OhPH9SfJZ4wY6HTg14qtQK
	XuS66w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47t83u4v0q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:27:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7dea67756f4so17865585a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:27:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752236835; x=1752841635;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vtZNijnRp1w5BVwcDMHaMUT6uupwS+ihEdb3Rm1l184=;
        b=ImJw83VNJP/47+hKoQC3AetsIOew8TRACCEOyjpo3QHmDB3DGh3CjiRAkYQf42T6q9
         C7qkvZphfjfTzusCsAJTZokr7CcJ8X0E+m6PRL37pLzVdNOefRMD+yg2+g7EEYONeD2L
         fVNYBOVL1bd8Q1YIzkJUs+txsy4FLwZdiJc9bZacMtDb8L6gTtH5tfngQywdI48Rw5FR
         KEbRj/U9xBxjjChFovZdtoHR7NBEbXhneG+Mh7rm00T1AHMdGGJEoyt5188/wovGj4uL
         y6CjVr7BZ9Ir1KL1yTYf1xw/qQI0vACiwcp/hcG1anQbiORv3Y2hMMx/xv/2A1BxnPnG
         7nUg==
X-Forwarded-Encrypted: i=1; AJvYcCXwrWHV/Ab2yrDGl8QlmmvhJz3ob6FxgE5tDP4/O2lRpUosR2AncmWCJqRroyOYXqEW2IwutWFDkhOg@vger.kernel.org
X-Gm-Message-State: AOJu0YzrBYnITIpYn98laxg5VNmASfkgOhoJVleikecH5rwr9ORl53ea
	e2lTzVGh7Zlj0hmzN7+1byhvpXimB6uT2xJTQwEyhXUj7NGTSnlk9IhsmvIivfXWfwKI93l4vp/
	8wP7En9q0knLiBZCAIYJJu68GHqmi0bsx+N6uaxzVqIFObYQ47AMBQeGLv1ozONU8
X-Gm-Gg: ASbGncvSM08dpqR7SMIDrsePoviNpf9m90Ffu/cZm28Dw67erEoUbYuqAg3eZu2Dx+s
	SFyLHLtVYEGAn+Eeo2JBrCOC6s72plS38ShEW+BQcSr455kpM90Eqc8xa7/rKjzTE5+CyAf23+k
	UMpiHn5Yci5rpmCDKYGg7pLF/WORfmt3hgFSfCEBTMZbAZFNw0LeWh2hqn/yJBipvm3pZI19iwC
	MS8uZsXmZJ9cVcjLu00xRzS04d12zS12K69vC3XiAH1IKpHQ3CnydgGKybHxGB4ecVsbIJ8eBcZ
	kDtQgbx3v1MI0r56Z9EXoU5Ug0VzRENXAwCqgNe8q9tASC/n9ZP2bMS3tig90Q+m0AzH6RLzh2M
	yDzsDQ81ikJJSb+J5iWYj
X-Received: by 2002:a05:620a:280f:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7de9784c3e7mr121623485a.4.1752236834679;
        Fri, 11 Jul 2025 05:27:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOEjFy6nozXjUM7q17Sb+shXEs+/L0eK/zLANGZuXGxAeetPAnbYDbefoGTuUvQLgTLGjhmw==
X-Received: by 2002:a05:620a:280f:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7de9784c3e7mr121620885a.4.1752236834194;
        Fri, 11 Jul 2025 05:27:14 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e826469asm285169666b.85.2025.07.11.05.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:27:13 -0700 (PDT)
Message-ID: <82482857-2bdd-4739-9c27-ec3143c68a09@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 14:27:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 support for PMIV0104
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
 <20250709-sm7635-eusb-repeater-v2-4-b6eff075c097@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-4-b6eff075c097@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: s-EA-2w0jfQ8WrzPqUqzxWuN_C9xf7kd
X-Authority-Analysis: v=2.4 cv=OotPyz/t c=1 sm=1 tr=0 ts=68710324 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=9PpJxbGV6q8lFR2oJlIA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4OCBTYWx0ZWRfX4TISDHS91F8X
 BDuvD84RTTmcH18UA4culkeLYkrofxXmwIvsWZUJfqfjH4u4bjfasO5gZrmCWA8ebrD5UVjsfKa
 9IGOu07d+itbcQj1DmzIgMnE0+T12LDtAR9eUcva8LgPPkGUVUCfusDSOI7+GQXYbTxWG/vo8Zk
 Xm7+odFF5tuel7mIoLZqMaeDu6Xeu4HC11xVIR0uoQGXSBVFOAEunDNVh9VawrBvnRcdnAA/I8I
 34Mg4JSe7BIfWnstA1+lWNaotxBOP7d1wTBN27KZ6JrRQEuQ1JbLAId3o1IafdwWqpO9n631zcS
 I5PKMOMrmiCSkoWHInCJg586ZhNHQlMxQb1gjwFyjJo46dL4y+aQcH1xJgJjAoeCaHvg3l5S+pm
 QPqlVUyVsoAHSYmmkfQTuNqqWyBHZNmw9lGI1H4IwKQhGAIahiPJXKn8vFl5nPP49dLpoLil
X-Proofpoint-GUID: s-EA-2w0jfQ8WrzPqUqzxWuN_C9xf7kd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 mlxscore=0 adultscore=0 spamscore=0
 malwarescore=0 mlxlogscore=999 clxscore=1015 suspectscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110088

On 7/9/25 4:55 PM, Luca Weiss wrote:
> Add support for the eUSB2 repeater found on the PMIV0104. There is no
> default init table for this PMIC, just the board-specific tuning
> parameters are used on top of the default tuning values.
> 
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 61594739e5b12706775622e1f76af6ad5d2d29bf..3d4cdc4c18becd8efd5015e698b836ad4d7cf18c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -82,6 +82,14 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>  	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
>  };
>  
> +static const struct eusb2_repeater_cfg pmiv0104_eusb2_cfg = {
> +	/* No PMIC-specific init sequence, only board level tuning via DT */
> +	.init_tbl	= (struct eusb2_repeater_init_tbl_reg[]) {},
> +	.init_tbl_num	= 0,

NULL / omitted fields would be fine too fwiw

Konrad

