Return-Path: <devicetree+bounces-276923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAfdI6c3umnXSwIAu9opvQ
	(envelope-from <devicetree+bounces-276923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:27:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CB92B5EEE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C9C03077E45
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12D535C1BD;
	Wed, 18 Mar 2026 05:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ECn4kCCQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M5ZVbF/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3EA35BDBE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773811455; cv=none; b=Qv2X4VZLbDeePgdZ4B5HlbNeq0lv0d5ZoklsgObcf2WZUhUOEDwVJ+yvIOUswPRt25Yoy55HRWco+Jv5PPq7Ix84CW7VXDgdQ9VU6YuaW15UnYEb3DMDpP4cgV164MXk28yLvxKGiL7KEdHRtQ4cV3AwK6hKAApwpCEzAHdkc40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773811455; c=relaxed/simple;
	bh=G0PH2/TolgXmjzWqHnbWsyT3T4tkwloEvDqiWpIjvhU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HzeGuPNMMIsEFTRYu1DwZKN1yCH+m3Sp8WOd+D98Apos4CU3v/c3BvwY9qr2Yif+aCcxK+SKkTsJx8UUlJBsvxoDG2X5EpTv9uZMTlF2eJ4nIMSRfRvot84Vj0wH13uq5QMlNqOPU6fDH4+GSJDHQB0Dijc2J5j6LoyvA53dQGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ECn4kCCQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M5ZVbF/q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I18Neq2789430
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:24:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TzUrDmIdph/j2l/nPcUWC7uOb/5ii52SzTxob7nyCOU=; b=ECn4kCCQq0wvBtSM
	IpxE4/AvhwJ+om6+ljJRfI1c0bTN5BaQKhe793ZhQXb95n2Pgr1YZFB671EZa4jV
	2DIac/SafDdoTbXf3n2O+cpZe+AMheAm8pYAFQZk8mFo6mg5ePHH4s+dO96uqfzQ
	uJ2U/squukj9DDrBdm8u5M5czAqX+00UWDf/WB2jHlwWuIh/b0FG+uVhjN99Zls8
	n2xjL9K8Xg84juEKLGbHhpQqNDc7Bk7edn53mgIKDNJDNUfveKwS8X27TihLTlQU
	cLbsdnNdA23oBT5LoNddOBw5s86dSRHRKXlNqf7HDnWC9RkoyGFahJUuLrYqT0lc
	DQWVeQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4g0tp5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:24:13 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c629a3276e9so29211958a12.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 22:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773811453; x=1774416253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TzUrDmIdph/j2l/nPcUWC7uOb/5ii52SzTxob7nyCOU=;
        b=M5ZVbF/q7FehoO71bbzBpDfsd/A1GW4sQi986HK2iKXbk4dEAOYLtFN0//s5q9JvRa
         uT82SM+0CBINLL/vLR+rytdMBfitjH/EoM5yQu9KLTWUbwueTychxYX/LalCkBchbMq2
         XWXA8MbaGw4xjOIsYT8sO2SA4BpFfMWTBU7JA6EHBAG33m5YVCWJu9sfx89m6M18wWBM
         UhzT59/SRYxN20BQ/ZpCLs5/mBPqZN9sB1KzeGvt7gXM3t6NvRrN4oaY5J+6sa+7g7KN
         CuABcA6QmZhA0OSUbCOiMEJQUK654GY06xmG1xth7/ibPkW6rQZTFZpBgLGPSijFImJh
         wWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773811453; x=1774416253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TzUrDmIdph/j2l/nPcUWC7uOb/5ii52SzTxob7nyCOU=;
        b=ghznzb36SviVxyhJPDvl9PxYTTJiv4OxtZkt+sxp21pA7BG7lTOYcHZxnNjtZI2ebZ
         e7EQkrkoa60EaLsdCdwb82SQOS+Oh1YkBQW+WvI9xeqxanqry9aMEzVBtZ3jBSbelECg
         ijrQ+yvWDMqSfLrGdL/MDNiBel3crMfn6PU7n9SzesiRb3qEgZYYrnnascWj5rqRWXY0
         x6FztSpGkhsp/vw4/PBAb6NU0BZrS2ov6y617HgxIjwYFYeWgBiukQg+oJaC+T4bo6Kj
         omzvVuTXn541QrqmW202NgL2AfdqUTnrod+CB6fPD6osFqpptbN7zzyuyWnjsDwbOhIO
         E6vA==
X-Forwarded-Encrypted: i=1; AJvYcCVFEscMvcZmTsPi0Y8TpiXTJpRBhrxbJSS99SB01MwjTDe2p6Y5ByFz214iDbDTe8viVXYain7F4PMR@vger.kernel.org
X-Gm-Message-State: AOJu0YwSs6B5NDVE3RUs8it+D8Nz7ICmk6ncM60pND8nVlV+RN+t/e8x
	dEHp7CcRloXRZhzaDqa4JGDcBHSFyGbSB9jZQ3aNl+0Bdx2UedpLG9ffvfSdMjAEh1DP20f6Fbv
	Pt+k7JM1eELcfgt+TGWzNtKjLASQBncdjHSd3dJGd8qW2ibihhtsupSaTVV3SnFqK
X-Gm-Gg: ATEYQzyCPa1FlzmL0PNN7B/b+45LghCImU7EpdLuUZgM5E9JAsWqgA1djW2/YTrtfOx
	gx56IRsDIaKMfDeXqqR6a5K4IVUr+Y+drG9+ereVunjmSGC2A1BT02vjlgK4+d5/PmpeEQcBAxa
	HtJnyDr0Ly0N5MqOxo+JuqBnbiNMADi4hVf/bqBza4WeOB4v6UuYRD3MRtyLQtzIKtKGqNz8F35
	wcBsMlFPu9yLd3ZJsHBy7BtsB7UwrQHj0vEoBCLySR63LaH+hkpCZKE2xMRqEb9GN8hhVZ8YVih
	qF2WLui8o282bE4IozsSCaIRcCPhCc17cQeaM02L3iBCH8qd8uVtPBJDq3kiZCTh3fBaazoGobd
	9KZHfu3vWdDMZftYU3Q3cgPUp8dZ/zZRkiMT/2Nd1DQokJKLhUO1ukw==
X-Received: by 2002:a05:6a21:a90:b0:39b:8545:f15 with SMTP id adf61e73a8af0-39b99de82c7mr1830670637.25.1773811453282;
        Tue, 17 Mar 2026 22:24:13 -0700 (PDT)
X-Received: by 2002:a05:6a21:a90:b0:39b:8545:f15 with SMTP id adf61e73a8af0-39b99de82c7mr1830644637.25.1773811452784;
        Tue, 17 Mar 2026 22:24:12 -0700 (PDT)
Received: from [10.0.0.3] ([106.222.229.118])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e0b31fasm1255083a12.5.2026.03.17.22.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 22:24:12 -0700 (PDT)
Message-ID: <8dd814c0-039e-c8aa-2588-9c1edbadaf47@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:54:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sm8650: correct Iris corners for
 the MXC rail
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
 <20260313-iris-fix-corners-v1-5-32a393c25dda@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-5-32a393c25dda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TPhIilla c=1 sm=1 tr=0 ts=69ba36fd cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=RgczR8+8wRjDfzPIf2UjDw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=nRN9RV7npC2xITY7ZkQA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: xuj5M4PbZU53LHei8B05LFPN9V790v9e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA0MyBTYWx0ZWRfX9GEkhra+AHqw
 t7I7bu0UfU3WqJTRaKB2kxM+xdj2ufjBRAzsP/Pz/y7Sg0u0ilbm7U1UNivzbaU46fzohHsyQWc
 vwNx2I+g6DAFbP9H58+Izg2R7fX+XyUOEJ0Mk0dM27pJvd9UA0pa+QXqQy9ByH5zw61ABIvH0fs
 P/QfW9LBy3YzODo7eKk9rwFHeesCTpyP84udeFsTF82A7bvKDF1l4TJcaKzG+3Ykl0y9eQerrUu
 F9eUXr/o5wxPsbx2FZK6wYC+IijUe/Uju/69u/Oki205m27mzI37d5r+DJh59plzyfKEf8Lqrbr
 KWrDzihiiZti58OoaYw5cpT8NfVlxGHjCg+CyfGREC2RS8DIF3PM9obnlisATKwYg6W/3tIY/Zc
 DLwcKmkbQOcM8zMfCNTBwL0GXdlW+vhLeJhVjgNGtmSFividFA4II/jVm4nULkZo4VktYqKu5bt
 MvJUzKWiV+aQcifHqwA==
X-Proofpoint-GUID: xuj5M4PbZU53LHei8B05LFPN9V790v9e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180043
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276923-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E8CB92B5EEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
> The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
> match the PLL corners on the MXC rail. Correct the performance corners
> for the MXC rail following the PLL documentation.
> 
> Fixes: 56cf5ad39a55 ("arm64: dts: qcom: sm8650: add iris DT node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 357e43b90740..9437360ea215 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5236,13 +5236,13 @@ opp-196000000 {
>  
>  				opp-300000000 {
>  					opp-hz = /bits/ 64 <300000000>;

I see in the document that this level value should be 280000000, could you
pls check and update accordingly.

> -					required-opps = <&rpmhpd_opp_low_svs>,
> +					required-opps = <&rpmhpd_opp_svs>,
>  							<&rpmhpd_opp_low_svs>;
>  				};
>  
>  				opp-380000000 {
>  					opp-hz = /bits/ 64 <380000000>;
> -					required-opps = <&rpmhpd_opp_svs>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_svs>;
>  				};
>  
> @@ -5254,13 +5254,13 @@ opp-435000000 {
>  
>  				opp-480000000 {
>  					opp-hz = /bits/ 64 <480000000>;
> -					required-opps = <&rpmhpd_opp_nom>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_nom>;
>  				};
>  
>  				opp-533333334 {
>  					opp-hz = /bits/ 64 <533333334>;
> -					required-opps = <&rpmhpd_opp_turbo>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_turbo>;
>  				};
>  			};
> 

with above comment addressed.

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

