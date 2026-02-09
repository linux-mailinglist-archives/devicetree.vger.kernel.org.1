Return-Path: <devicetree+bounces-264052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMjYM1X9iWluFQAAu9opvQ
	(envelope-from <devicetree+bounces-264052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:29:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D88111E99
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B8EFA300A5AD
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312B437F8A5;
	Mon,  9 Feb 2026 15:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b7mjjZtg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dv5sv93d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8B737F734
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 15:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770650908; cv=none; b=FK2LzqiJ5pjwBXyXD2WajEMziOA0IQrSrdiinwHgaSSITuDQrvxj80mP+m7Tu3cK6kSyqS7bAeB8/k/i884fTlQnWknZjRaE/UVEi+HzZya7MQbZG8PBfZpSbpzitp3OphL6RMwkvpIZ0SPz6FKwnuGYzyj0erRDeXWwIjbN3WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770650908; c=relaxed/simple;
	bh=2J1TwJLAkT0qb7F+VSSHbbeFKKvRSDVNoM+mNHAajKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=inHw36wQ05dNS5GdmYKPgWGXkseeHA17Hn5dKkCs7BL8lcWBUz2iH3yJONJzyFlSYb+3BT9pk7ZBSdUcJDgrjdhl/aeFZlus7g4BC6n1UuNxtwCvUDU+LI5yOlJdGMdaUjGS0f/l7xtm12p+ryZzAsiZTlVkbsz9e6US+3aMRKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b7mjjZtg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dv5sv93d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619BS0EK3347381
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 15:28:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7pTHu8yVvZklYwlRMbs+abUG
	QD7YxrhrgiP2RRskjIM=; b=b7mjjZtgfbEopFr6d6QFO8Bhe0Zy0J6tCQyOvwdz
	RmPrg/uphJFhYGHSGe6b+u8vdBMzvQGvcXFIiblIDxnICqFYWCApXKedZ+NvFmX0
	KD/MSLlUjZV2W83G/Rl/xM71K7zDuhCQKb0ZC0ly0MwAFLVkttWAHv9U11jYiNLM
	dRt67dIOVyIEAK6Mc4dnpnxC+oCbO01w5SohT34hPB9plq+CMwG0fojX2T3GKmPf
	K6i4lx9rW7mgoB6L022vl1HvlYRZZe4SVhp5Pb7Wad6MWI+PXe+PDG7KA4CdRGCp
	qE5PQmisQwMmkqFoekcLsoBY0dyIDpPdIAcvqyr0Ru5Fag==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy1x4p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 15:28:26 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896f50f008eso66492276d6.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770650906; x=1771255706; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7pTHu8yVvZklYwlRMbs+abUGQD7YxrhrgiP2RRskjIM=;
        b=dv5sv93d/a4PPzP9ADwenORRbQQY5/M+3R/zJdc76GbPeZfy4YJ8+P1GTmBhUwSLKT
         Z9TuppsN1TfQRtwVmzQxNbDON3cZ+/w2g4FzO9qFIAYe8I2ts457oLjEYwjaJStX104n
         Yavuidp3efawOlYmfMxece8my06AkHTSXxw3b/3erfcDap0toeNoLAZsUFv+uOjdkNS6
         /u5mZ9oXVBmwnLb+0mCy7touAtSUATkzn17q68bhDbxabJv0evZprsEvZSIKl6wboJXn
         Hbkx/nk5EEI0bC3DAssOWY7UBg446VeU4JbrkzrR6xD0s3bupLPNep6dbILkvKBOU8KC
         C5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770650906; x=1771255706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pTHu8yVvZklYwlRMbs+abUGQD7YxrhrgiP2RRskjIM=;
        b=DEuhK1Y/KbSKuDuKB0jSPFO3R8ADKr6PdavTmz//C6V0h08uWNpvRXCDjuvGIzB8QG
         /uCRESQd8dukAQoIapxJ5ZWxmU6OTgTasIcSbhCFLh78NPqEYNpceolxIV3qW3EJzI7h
         nr7VuGkZSGGrG/x69a84lq6NMdWzQnMkmzrSe9EUdzY+vDgY0wV4Vz4YChfCWwFRDzlO
         hwEMrm5NTfc86nIzVtL7sg5R0y3UqFqRqOI4+p+tWEzbG8TVlpaR70Fx6ovdKK/LnwNp
         P/akA5GYSTyTisE0jiZdDZH1VsrW8+v2Bw0y/AG28od+yy5GDOnqW/3spCOmM2+HsqUT
         x+wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQckvcYsyrr3W6F6HKcz6pEfLbXedvzLYZ/gbpBvzcB3qNZM8j13GWODn83PexqJP8xwwIUVD5gbnh@vger.kernel.org
X-Gm-Message-State: AOJu0YwAG25pAY2ms7oG+b+2vWMaSGb/XPrmgGhMYLwP1DgEIsLU3yca
	0zxWacn2tN5IrqK/H/NN1pD27HTOS9s9tTRl2wKh+WgkqKs6XzZ+kT92xB/OKKNWnwlV210YklJ
	j81hqClco0kDy00wf1jTZbMH0kwUa13FhNwiJiwKBncCKZywU2+frwNG1F06KHvX8
X-Gm-Gg: AZuq6aIKnCixgAmoyQD6mGtjoyOO4sIOC0xvkPZ1ZzAPzMvDHxtDid9OEiva7nIjduj
	MXw5Xz2ujA70pItgRY+1R07XFDVg3LMzu8EwCnD23ynYxIdsW+IUs67Z+Mw4BvoNMGKrf0kvLM6
	06/zoP6FZJZZKrqa2GZ1VMjDmxsvSPyQzbA7HFF4fahIKQFJaZDziJ7EPh/MN7mg3INXCZmxweO
	5iTRoUJd1dLzg2w7Q65iX1ZAeCJWHaknuK8B45xmUYZ2Ui0GIyg0BFO9z0G4uYtjJOmRruh57+v
	VKCeWJ7ULF9CYxjNPmiC8mEQAAOPNRd9JNB4Od6g0gl36GwqlzvjkM2nFywmXSkUZbK2+0e6Ld7
	YxFiCAgtS4wJbTEfwDcpYPactkhTd2SLup5GK7XkxJ6uxGDDIEqdNwsAuo07c8WYhoAKpUygl3c
	f84p3HWj0a3SW1TIjKszBxZ/8=
X-Received: by 2002:a05:620a:25c7:b0:8ca:2e36:18b0 with SMTP id af79cd13be357-8caeed3b00bmr1556926785a.39.1770650906215;
        Mon, 09 Feb 2026 07:28:26 -0800 (PST)
X-Received: by 2002:a05:620a:25c7:b0:8ca:2e36:18b0 with SMTP id af79cd13be357-8caeed3b00bmr1556919885a.39.1770650905569;
        Mon, 09 Feb 2026 07:28:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e46c5d5d4sm2528406e87.50.2026.02.09.07.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:28:24 -0800 (PST)
Date: Mon, 9 Feb 2026 17:28:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc
Subject: Re: [PATCH 2/4] arm64: dts: qcom: agatti: add LPASS devices
Message-ID: <pybu54sir7vxjlrgfqlplulxgnafyemnpebrf6jl2qeldax6jk@icoefmculftb>
References: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260209142428.214428-3-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209142428.214428-3-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: m7tcVUaFIAtzyGMxjdh08PBgk795Q4nS
X-Proofpoint-GUID: m7tcVUaFIAtzyGMxjdh08PBgk795Q4nS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDEzMCBTYWx0ZWRfX10GzCvQ08ZGz
 Mo64wHH4DQv8iKjcUszi+2oE5/KNbRToGxxxUE4xStDiIHeolGsjLvQgOekQCMkoi+KQt3n2sfP
 /CM6i2BceOr1+mfAFPVdSN2ObhkMBv8NN/7HQnAHzmVG2BXWQFhThzXu5P+FODmrjqAZiJS/ebP
 mJpzwleHl5VN2XKbGQFriCwUV8XpxZlWDISMqfkh7vnmleYxeaG5wC7xZK8nacTEWbSt383FxQc
 JZcmjVPFrN/xQX6NnT5D+r20gDkfVi4dGmTM6QiE5hxt6M2mINFE1SteYtS94jRO9PUlqmtcrxg
 uS4c/ELEnGpMM9RL/JoZd6GqV6y19WplGfmLEvez8I8KGcDz06EeZfuoghN0VSgcYLp/jELNa0q
 XYBGzglaC8uA5Xmamq8i83v9a8kPX5mrQX2FJUPQQy5bB6Aq/sII1Ffte5sODLhB8fmUfpBxuqT
 Ftel4OT/1ZZ/J8H6Xsw==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=6989fd1a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=wwjenF7iYuOk8anNssEA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264052-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.21.92.192:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,a600000:email,linaro.org:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E7D88111E99
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 02:24:26PM +0000, Srinivas Kandagatla wrote:
> From: Alexey Klimov <alexey.klimov@linaro.org>
> 
> The rxmacro, txmacro, vamacro, soundwire nodes, lpass clock
> controllers are required to support audio playback and
> audio capture on sm6115 and its derivatives.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 189 +++++++++++++++++++++++++++
>  1 file changed, 189 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
> index 76b93b7bd50f..79cd8bb8e02c 100644
> --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> @@ -758,6 +758,42 @@ data-pins {
>  					drive-strength = <8>;
>  				};
>  			};
> +
> +			lpass_tx_swr_active: lpass-tx-swr-active-state {
> +				clk-pins {
> +					pins = "gpio0";
> +					function = "swr_tx_clk";
> +					drive-strength = <10>;
> +					slew-rate = <3>;
> +					bias-disable;
> +				};
> +
> +				data-pins {
> +					pins = "gpio1", "gpio2";
> +					function = "swr_tx_data";
> +					drive-strength = <10>;
> +					slew-rate = <3>;
> +					bias-bus-hold;
> +				};
> +			};
> +
> +			lpass_rx_swr_active: lpass-rx-swr-active-state {
> +				clk-pins {
> +					pins = "gpio3";
> +					function = "swr_rx_clk";
> +					drive-strength = <10>;
> +					slew-rate = <3>;
> +					bias-disable;
> +				};
> +
> +				data-pins {
> +					pins = "gpio4", "gpio5";
> +					function = "swr_rx_data";
> +					drive-strength = <10>;
> +					slew-rate = <3>;
> +					bias-bus-hold;
> +				};
> +			};
>  		};
>  
>  		gcc: clock-controller@1400000 {
> @@ -2188,6 +2224,159 @@ glink-edge {
>  			};
>  		};
>  
> +		rxmacro: codec@a600000 {
> +			compatible = "qcom,sm6115-lpass-rx-macro";
> +			reg = <0x0 0xa600000 0x0 0x1000>;
> +
> +			clocks = <&q6afecc LPASS_CLK_ID_RX_CORE_MCLK
> +				LPASS_CLK_ATTRIBUTE_COUPLE_NO>,

Plesae correct the indentation (or just use single line for each entry).

> +				 <&q6afecc LPASS_CLK_ID_RX_CORE_NPL_MCLK
> +				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> +				 <&q6afecc LPASS_HW_DCODEC_VOTE
> +				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> +				 <&vamacro>;

The rest LGTM.

-- 
With best wishes
Dmitry

