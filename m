Return-Path: <devicetree+bounces-225897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D02BD1FB3
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:17:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 651154E74FB
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC0D2F2601;
	Mon, 13 Oct 2025 08:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oXNudYia"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912472F25FD
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760343461; cv=none; b=ebaN5SyzKGQ8l0yjGxGNXbL6ljvn8N0hwU4Rei2Vk4v1zUG9wS5fohIMjlAPI8Z5GRTyoUl4caC/Y93gk6K2nS5m66e/OdX1osPX8lsfMzVUpF9uNfhc6r/E+DT2HTZK5lYB48gj+hxD42yqvfbwDecDpwgygQSgtsLm4BR4d2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760343461; c=relaxed/simple;
	bh=SJhw5vhfYi8mELvzUY6nKX3txrFMIMqW1JgIFNGo4Ag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RRZ02MUaTj3Q63k24v81Q1k6oQ8BrRle0QtDe6bA2RLLy0EDtGx0aHeCUPNAkgWqgzz9CESR4Ob6xxf1dDjwM5epLi90HcG6banRT8HP42RjddD6pi9jH8/GfuEokIo+6QoV2pqt+jxV80Pg/Izy2zadv0Nubc/knCL8kNqeMR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oXNudYia; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n6QJ017038
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D/hSBO4JMIhm+VIzVQtzVCKQOqmVbVETrjuAEMt01aw=; b=oXNudYiavdEHYW6q
	Y7TlxCFzOBkWjTqdGsX+Lj1Ga3kli6kDrejuEt4jsmKwdXgac8vQ4vP27J4vW8O1
	KPeLWmCXXVB64DKVuhDuzNa51D7ydXy1psrHrxUV9QN1LmTFdyT5tbK+nM7yHgyv
	kGoGj1hYV9zF16G+IjEX+M3lq9NYtEzXuSVpupJ3hjQJjD9xfLZogGlF1/sA3srv
	lSBf4asJ8J6OIlCmXtSzP6gfv+DfyC9CkOUjIMrNuj+FdZPj1PTUzWVvDE1Eu1OE
	VKqmGtCVA/esLLSkhDYuMU9JVDUy3b6/i7mFVfLouXt8I6/KlIs53O+ZTW9CRSUT
	RKyOVQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdk3r4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:17:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-853f011da26so282617485a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760343457; x=1760948257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D/hSBO4JMIhm+VIzVQtzVCKQOqmVbVETrjuAEMt01aw=;
        b=Afmhx+KCqk7JUCnusPz7xtM5gwaBcdNGwR2YRZxI0DkyJ6vE04UF5YacXssBw19X2w
         Sq9Bs9T54R5TDP2ckkH2ZXDH+WdTYOy8KaymhKZW3vFf9EpW8K044iY57JfRmo6NMGB2
         ton4qZ5tE26abjCzKwcdybuUSmESFbEp+catDFA71uFPHjTrh+q+DKhp7gZ0J7ZE4o8b
         Jz92W5dTuhRtqV+IZNyOTlt47ckOdXzZxpMZJKUQSvAELq9e36+DsZgutAIHGj8K3Thr
         WStAdA18grAYs8nfVlWTR2MQezxrklteYoMcFpNjt9NqG1md1gKidHayBk1UwUXYfvp4
         kMZw==
X-Forwarded-Encrypted: i=1; AJvYcCWfrD5WatwlYxyDbYp4yThM995HRjJls8jPB0DH5meK8fxaINBaNoHOkKuFncRwUihjUrJwmoaoR7gq@vger.kernel.org
X-Gm-Message-State: AOJu0YxtJF2c9fSxL6mjE+N3vODWbrXo+CMJa1v9K3dy4wT+HxhsYIFi
	A1GD0MV1G56+pDGqz5RPT6fABqWb2R91JgOpFC8mugcl4P1BqwRRcJbi8lIyRFPrHvIyS6t3jB2
	iTGS8JDs7pa7VXUrrw84O1S10Vk6441nrMpzdikXpMQUVq8aw3ro2nh69YZoGQrNw
X-Gm-Gg: ASbGnctg71tfwesu+atKpz92wC/1PMJ7krpfeR22ZtUtbRCQ1sgqxr5FlrqYooxNoEP
	PlG1RrPevPr6/+w83SwSFlNvvRHlfPxZwBJbx81zlzj/YNSSV1J91aNUcPHm9+FOvFrzAK08mpZ
	fa7HFHphzm1VuAk50Zh/W/ScEyIVRVYCPXuZT3HJWmwNS3jfzgA/9Bmwfyp4buZmCtIdnYnaIVn
	vgTQ9GHHHhTIgfwvNzkfjuu8f0B7CC7IqllopgV5m2QYzh2jYc0ENSTGf5bTG+JVYoJLduXPPLR
	0NK9Wd9JVOWqGkfPoW82POLssLOhkKlQW+MerwU+ht+tbYXnHlfbFHVARjxsHbOX4h4jaBV/crY
	RXA6B4TFstpma7zPXSWeAVg==
X-Received: by 2002:a05:620a:4107:b0:827:d72a:7b45 with SMTP id af79cd13be357-883525c2e75mr1943379685a.12.1760343457533;
        Mon, 13 Oct 2025 01:17:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEg1Cytc7cxncZGp15l962GuOIDaNAUKx773DxqnPs6dpbD1VJGCA2HzKR8IrepSdXmWy8rtA==
X-Received: by 2002:a05:620a:4107:b0:827:d72a:7b45 with SMTP id af79cd13be357-883525c2e75mr1943377285a.12.1760343457008;
        Mon, 13 Oct 2025 01:17:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12d2bsm881038366b.49.2025.10.13.01.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 01:17:36 -0700 (PDT)
Message-ID: <8554fb52-cbb1-4e5b-97a5-ca6979dc7729@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 10:17:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1-dell-thena: Add missing pinctrl
 for eDP HPD
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Laurentiu Tudor <laurentiu.tudor1@dell.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251012224706.14311-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251012224706.14311-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: i7iXqGqiSjmwPV7EN1Gu-FFRBocD8B2E
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ecb5a2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=uNKBZDDHgDJNm4LnVW4A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: i7iXqGqiSjmwPV7EN1Gu-FFRBocD8B2E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX9t6WpkMrgFMI
 L0IvEjjh30NBxUO0P89SQCQICcacgDyw6p+DBGKwWfOOLu94Sfo6GKmFEpRO/31Rj4SmxGGGZmZ
 PTMVErZgHCo417arp7J9VVqZdiMQnIVL6OAyjvok/t54QXkz6oSWBC+p7ic0ETM4jZxBKBkiHrt
 Fj2oh18WcpQhshUL3D3YF196tZCrezzkjFy7aa62GLKRFKXfU3B8JLz4vJ2K6t9DYdhpjSgK3pf
 2pDAhWycjt0aVjHKPMTCGKUP95wJwdX/NK4u/PfUWxLR/H/9Xe7PUPvCWegy7fw439MdzHx7IIm
 3k4AsMjMxaZzVH9oUQj6HinnqvxsobFEXjIGJDoiLfv71nZyp1IGwBCS0XzFJOVY6guADwgBBiF
 HzdQorK1XjN16uI8WRkFKSbExsclig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On 10/13/25 12:40 AM, Val Packett wrote:
> The commit a41d23142d87 ("arm64: dts: qcom: x1e80100-dell-xps13-9345:
> Add missing pinctrl for eDP HPD") has applied this change to a very
> similar machine, so apply it here too.

This is somewhat redundant and not very convincing as an opening
argument

> This allows us not to rely on the boot firmware to set up the pinctrl
> for the eDP HPD line of the internal display.

This in turn describes what the problem is and how the patch
alleviates it

Konrad

> 
> Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> v2: fixed commit msg style, pulled R-b
> v1: https://lore.kernel.org/all/20250927032330.21091-1-val@packett.cool/
> ---
>  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> index ef83e87e1b7a..0aad80a1159c 100644
> --- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> @@ -1104,6 +1104,9 @@ &mdss_dp1_out {
>  &mdss_dp3 {
>  	/delete-property/ #sound-dai-cells;
>  
> +	pinctrl-0 = <&edp0_hpd_default>;
> +	pinctrl-names = "default";
> +
>  	status = "okay";
>  
>  	aux-bus {

