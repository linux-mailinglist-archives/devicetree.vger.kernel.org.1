Return-Path: <devicetree+bounces-264317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHmRBoMBi2npPAAAu9opvQ
	(envelope-from <devicetree+bounces-264317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:59:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3CC1194A1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E3163025E78
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C599F342CBA;
	Tue, 10 Feb 2026 09:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Scm6CoMy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WPsZHw4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A88342C8E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717567; cv=none; b=Fzu5Dub4Xd2ivy96EDjq5fuX6GsX2S7Fp6sKPUWzgMvE5oddsn20cnSDo6V+ovy/FPTB94rf/O6A8yS2ObYmClUAa3BFoqD7YV1VeFD6HQ8loPjT8iENA0TTFtCaO9n30W9E2tzvywcBrOoN/0dzebVftan0/jK5U1PiKeRMA3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717567; c=relaxed/simple;
	bh=KuH9i+TcX4plvvuTg6Itj4Tzh3VmtiGAzr/F7fN+J4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=FYfQDpKyx6kZeW3ZknWLLPp9/x1SdZ7DhMPOUxhLcq4xN13Fd6QZ8VMP8P57tBicGP9cmH8++wts7Lv3EVxFcBKL/ndPFk9THu+AFHM4pYEM0U7lJys+IGaSpZrwHUDh/JBJuCygGyRSU9wJL63q0qsZR0eEjDBRVoMZyXuxbRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Scm6CoMy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WPsZHw4K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A9C4E51231942
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:59:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gijSi7VTqWQwgSpjW82izSKCjFJWnOi42Yk/5UzN3tM=; b=Scm6CoMyiJ6lHHNn
	7w/2My7dBN2/oWzHDn0y4jCGZh9JPCmatlHfhjNhCWnn8yMrkJ8WJscXc7AdgO0G
	eGC0OMaGm4irm817y4iAXJfXfXuud4YG31CJ1Rrb4LzQBDdIZORI2B6ASPGcXhPq
	knBXoa43A1W5LCTO75L/m/W9L1GMIUwO8diZNh+vaGazsr5lDxXdozOJ+bKyfAWk
	OGaPGCbowIt0X+Gmd4g9xb6WBNBv5SnAZcCIvY6xfQQiuNs3maPma24VEn0xv6h3
	Dr5svbKmiHOSgfy4RJukfy/ateMdyWatDCAhvhed+XaQnlY+7W6otfgJR09fmrfQ
	v3Y3gA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv59c6d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:59:25 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8960257db65so10023776d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770717565; x=1771322365; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gijSi7VTqWQwgSpjW82izSKCjFJWnOi42Yk/5UzN3tM=;
        b=WPsZHw4K8WyOmRMSNj4ecubZTALMk2niLoF77xlpXfNZCX/Rdysw3yuMgCxnJEXM+w
         Q+L3awkxSZaowD8Fxxkyo7v5LeLkZ3U4FTE3/7CpgO8S1HjGepI7KMNiq1LRq5k/lwLA
         ANokWCk4A3lGI8s2Q44GkuiJTFIAxkORdiSPEVEENF2BSpHJrs0iIXRKa4o+zMdf/yVd
         N31M1BTyeX01XzBzZIjqiyxSeg3aZ0vVJ8RUT7lgG4mINl9c5LvMzItBgCTs9SsnN7Cs
         CuEbfoBHLg24iZmJa65ASXledr82ZTGKx6wzC6nqOad4ldeYpdKQx1p3E46DnKshMh2b
         SA6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770717565; x=1771322365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gijSi7VTqWQwgSpjW82izSKCjFJWnOi42Yk/5UzN3tM=;
        b=LGGF7IuntepUFaqq6Yaw1ICd7cz6yJzkbdsbQe34Uxs+ZlKcmmM3bOHKxk63oXuPu5
         Mt16eAf5Sq/eLsPTZTfgI0Z69FDJfH1wrrQn7qsRnKoY/NwyrJ0pnXtoQdrx710DfE2s
         BvyhD6ndnpo/KUiMKvSq05thQsDkQId/lXzvsnbgGxwkpzB7J6a9y+5ero10GfebZ8ds
         F4NWI06dKwtl/3osAIbaM1Ji8HREGkxcvxeKne0xU0KL7tPfyuAZeGLXi7IGW/ymdmcM
         Di4hnEh7eaNh0rt5MZZbt4XmOao01JZmPolTNd0VN92pDGvbqx6hblFAqwfUBG8XtJCo
         OAFA==
X-Forwarded-Encrypted: i=1; AJvYcCUX9vN+qEW1dGIsI5Sv6j8YhvwCYIG3RrEeMGlw6ZOXf1EJ7FY1GsN8WXQSz6OfyvARe8PIfkz/gRKt@vger.kernel.org
X-Gm-Message-State: AOJu0YypX9UI7khAmIy8jHL60k7rA+/rlHjGDgX/vWEd+uMtm5vID9BV
	n8f270D2L7NPuCgul/MjCRS1kyhPGnxCXutO6IUidVsPobp2d7Vz95IXWIEOOdAvCKMZ1IIKc2a
	HtyDNxQ62iTR5b+CMFHLlzadZVoaJzB2TQfzTxoH5gLsPYKya/ZjgQHQqanG4zaLh
X-Gm-Gg: AZuq6aLaw5XvGDLUdT/UBAian3bv5dX4NxuZuSTfmB3SkeuVrqS0ZeLpqPhytIPaftU
	t8J4O8MY+8zl4Y5smhxgc9O6TFsTe2bBe+ysUlUjvZbELdloiBI4M5Ul3Orj+SaYnAYhctmqWPz
	Wf4JESldjEWchavyDqbpNggSmz8s/YvIIIGPv48jhvnlr2c6vH3nLHDxZkBVThyFtwFwxoTOZnL
	XcfAJ5nJrwhRI5YvI0FltPPOtAcdr1M0zOACWC65HWOoFxIL8yaocBVI+hyZvfp7cSwcZk65qdi
	p879LCkWu7CjrYGa9Nx0At1oHzf6zaEuUsLkh4djlX1ZDaBZhNRdgkCgmLBjbPfoiHDpN0SIjvC
	E4RSzMLfa6bFwwosplJcAGGTj5pDJCx8nwuUql2IN+7m/PYksuoz9B5g8Se15F2YU85zP7XfglM
	VaMFc=
X-Received: by 2002:a05:6214:800c:b0:897:1e9:578c with SMTP id 6a1803df08f44-8970fe8c040mr8513686d6.4.1770717564855;
        Tue, 10 Feb 2026 01:59:24 -0800 (PST)
X-Received: by 2002:a05:6214:800c:b0:897:1e9:578c with SMTP id 6a1803df08f44-8970fe8c040mr8513496d6.4.1770717564472;
        Tue, 10 Feb 2026 01:59:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-659840238fdsm3656808a12.30.2026.02.10.01.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:59:23 -0800 (PST)
Message-ID: <e72ede03-94cb-45c3-95e7-63dff0ca3888@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:59:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: pm660: add thermal monitor
To: Richard Acayan <mailingradian@gmail.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20260210021819.12673-1-mailingradian@gmail.com>
 <20260210021819.12673-4-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021819.12673-4-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MyBTYWx0ZWRfX0i5yxad1ZLhf
 HOLw6r/Nci50KiKvj+Tbhi3MQ6J73ko+MSHp7nSOMmOz0ZH0lzhJsGtw2CFbrhIq0givph8tnX+
 8e3xDWpfiSwUxgED+jqwiLFU09bepfpIjSaFTKQvYdXhH+Z5fiBW51F+z/It3uHNCClyhRMfH5L
 /zRzwaeOP/+QA9dv5FTimXXuxfHmrui0k0BB8HXWaiN8Y3yIhIoKQq6VJ5JOsT95kBaBr+MnZho
 TuD3bv6sYKzY2UbFtLnhQWYYW6Sw7iXQfSysAcZndG5lWROnAV68Hb2uZDs+0lupwccnnREH/Co
 l8StbUkHhemmQ+onYAArNVsm6p8DP0Vrb/9IP+Sq7W08JHYlWCqmE5fS3nNFKhfhyY1XxQhffVi
 fxOBgdMhFJxty3N/DybWALXu2CD4pVPFylrf9wbPd8jRrV6DvGBuyDNQKiH+MnitMFWon8p+DHV
 sOvqCB12dOa0r6qyFvw==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698b017d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=dtVtHMBJ5IpWu-ZwicwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: fOxAXitpCCupsahm620bB6mmpk-_imLO
X-Proofpoint-GUID: fOxAXitpCCupsahm620bB6mmpk-_imLO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100083
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264317-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,arm.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.85:email,0.0.13.72:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6C3CC1194A1
X-Rspamd-Action: no action

On 2/10/26 3:18 AM, Richard Acayan wrote:
> The thermal monitor is used to monitor arbitrary ADC-based thermal
> sensors. It is suitable for use in thermal zones. Add support for it in
> PM660.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/pm660.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm660.dtsi b/arch/arm64/boot/dts/qcom/pm660.dtsi
> index 156b2ddff0dc..7cedf6980b34 100644
> --- a/arch/arm64/boot/dts/qcom/pm660.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm660.dtsi
> @@ -197,6 +197,16 @@ channel@85 {
>  			};
>  		};
>  
> +		pm660_adc_tm: adc-tm@3400 {
> +			compatible = "qcom,spmi-adc-tm-hc";
> +			reg = <0x3400>;
> +			interrupts = <0x0 0x34 0x0 IRQ_TYPE_EDGE_RISING>;
> +			#thermal-sensor-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";

Can we enable it by default?

Konrad

