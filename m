Return-Path: <devicetree+bounces-141376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5B6A208CB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:46:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33F763A1937
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20DA619D8A8;
	Tue, 28 Jan 2025 10:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TybtrqSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7673E198A08
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 10:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738061159; cv=none; b=F1oQ6d5cuDEMJPv8qt1kaYo0vBaQmkHbKtte4ZGjPK8D6MTREGwKlJfpo7zg/BAOaH6SKxgbSl+WrWnFSb4thuTMN1AEcCB6fDlQAd9fScjgdowaPkcF62+0eLcbVSWTKrzs+pei3iYZFJxChj4UtwC9id9PRxFm0mpCfAAcYnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738061159; c=relaxed/simple;
	bh=GJMM8b0YGs6hY400QPvNBX6AR5cfnc9XZ4UHVNpX/rw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R5RKB2AvAQgufv/Wi5/vqz+CMqMV7fkBHjAQORNC9R6oVk6NfRXKnfrFvceJa7yD7IHwvbjqBq9qafinLEZHi4bpI883G6dNwC3+R+D76YehPAih15ldk8Xi7Yje0zSCA9ALH9R2Z2PXfXRdV1PFYNL43P5fardI+NyolwoCkV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TybtrqSL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SADIE8027034
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 10:45:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OhsgF7rKwe5JIC/AdPCbzMZyNaFWY1m5uKPa21q85mM=; b=TybtrqSLfqTg9WlU
	WcFZgquIjsrOe4SZBTlQHaAD4RYXGzlnkO4/Jc/GJjzEOG8eCMyFos/tx9dmmfis
	dbIt3NwlJ5ez3ChTaN1xcX4bAH4oGDvlu/wKbQ06IYE7rDqlCJbO/M13EcpS3Jvj
	hznIo5RYCPSHBfdPwUzY/bByH1zvoeJ5ISLsWAa2VFoi46AAVTAH/GqizhTzSe2U
	c9x3kEBnbBUm8TyynpJtimUb0UGqoTuC3wAocJRnUtj/6rZ24xMU0NzFeUlONc7P
	5kJhMGKBZQ4mV6DMWro/GxT8dZsAuO3a3QpzczSnSNQ9EN4QziQ1tdJsx03mxMTr
	zf800Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ew9n833e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 10:45:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f28dc247so111323185a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 02:45:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738061155; x=1738665955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OhsgF7rKwe5JIC/AdPCbzMZyNaFWY1m5uKPa21q85mM=;
        b=enl90OalG0oSB5uEP7NoPYJCKvF+zYqwRKLCkCURyddNi0wvPtNoHmmVroEytSZc9M
         RFr/Ams+RZG/AO5dQ1RDhX/8ODwLM2eK2ympRebDopuTRZZ3xJ7Lq69RFKFX4oXHX1E6
         jaUeZoB24zLB9nNQjD743Ae6OVR10mJ6mxCE+Ql5JxiqcpLR8s0BaN6v6nOZyxZqVdcd
         lopoMvhiNbZ2dRqYj1juhvSprxDuaz1TP1nxGJ7a1KHOSWmff/FwcDhQXRpkWHTTkBj2
         MKssVTMAM1S2y2aq/1cu3CGUQM+HaO2hvK0QmNFygXQbgsoNVvmG0Ir2Ng6Ox0KCc/wk
         IG0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVV/Fb9RMHX6u5Ypgok4MAslSnG3GC+rpTGsMiUEilCSnpniVwveCcJXCXKkEtM2R+HP71V6iQfHTxu@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ+GmrImt+FT5PnPk4c7LXRqvoylmjiqxyW0apq9OJ/ZNetOnm
	1gGc4x42JlLohBU1ZxUeRydsU5gmw4gxrt94w+MQPqUx3CrLgmtXINO7nL1tQI1aipeoWWWPjrp
	W5KY+vlLQE0WHmRkJHw+YJvneZfkgigqM2pduNYCvLuTzxuMHXDHcfwb/64dx
X-Gm-Gg: ASbGncvKe/0oNCHXUkoLgTytuBKsWa2VhoejknunlmMIHHXS20UQ70WZefnMZN+a0dY
	SgkR8DSrMt12EjDtBYO+Or9/MRboMHs6d9jiLB+Yifw/6lv0J7B3NTiMuO5Wy9Sn75q/v9P+61v
	hpvLRdDwiZvGFwGz6fApRw3SPbovpezp9DF2V4P8Hfi2X8SPW/1iQLqN2VEcEQdgO9LBsJLCknK
	jg3xhNF3kXpjKBWAS9HfH6yo1ZO3tM/lsvGbybwZ6U5hl0wYCOMHzIqpazcIIXX18f/X5svX4Fs
	89RUOUKpiCBcuoOcsAeo3HBeXc0dON752YiXnH6SJPGmC43F2M49n60/hUI=
X-Received: by 2002:a05:620a:254f:b0:7b6:d089:2749 with SMTP id af79cd13be357-7be63208909mr2263812085a.7.1738061155469;
        Tue, 28 Jan 2025 02:45:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+FDki7Hsh32PGe0Kwr8rrgkS9gmvZ9XJ3Lcqs2QPF8jw+4HDYwrPfciPwydWMrJyTCkQ6bA==
X-Received: by 2002:a05:620a:254f:b0:7b6:d089:2749 with SMTP id af79cd13be357-7be63208909mr2263810985a.7.1738061155103;
        Tue, 28 Jan 2025 02:45:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760ab363sm760272266b.114.2025.01.28.02.45.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 02:45:53 -0800 (PST)
Message-ID: <5b0f9cd4-df65-4963-8d6d-5bdf759ba0c5@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 11:45:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/13] remoteproc: qcom_q6v5_mss: Handle platforms with
 one power domain
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250127-msm8226-modem-v3-0-67e968787eef@lucaweiss.eu>
 <20250127-msm8226-modem-v3-4-67e968787eef@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250127-msm8226-modem-v3-4-67e968787eef@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: rDDOUdu2SNcZ31EIopZ1iFiadGOonjWK
X-Proofpoint-ORIG-GUID: rDDOUdu2SNcZ31EIopZ1iFiadGOonjWK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 mlxscore=0 priorityscore=1501
 mlxlogscore=892 adultscore=0 malwarescore=0 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501280083

On 27.01.2025 11:45 PM, Luca Weiss wrote:
> For example MSM8974 has mx voltage rail exposed as regulator and only cx
> voltage rail is exposed as power domain. This power domain (cx) is
> attached internally in power domain and cannot be attached in this driver.
> 
> Fixes: 8750cf392394 ("remoteproc: qcom_q6v5_mss: Allow replacing regulators with power domains")
> Co-developed-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  drivers/remoteproc/qcom_q6v5_mss.c | 20 +++++++++++++++++---
>  1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
> index e78bd986dc3f256effce4470222c0a5faeea86ec..0e1b0934ceedd13d5790b798afc95d68a8314c75 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -1831,6 +1831,13 @@ static int q6v5_pds_attach(struct device *dev, struct device **devs,
>  	while (pd_names[num_pds])
>  		num_pds++;
>  
> +	/* Handle single power domain */
> +	if (num_pds == 1 && dev->pm_domain) {
> +		devs[0] = dev;
> +		pm_runtime_enable(dev);

This call can fail

Konrad

