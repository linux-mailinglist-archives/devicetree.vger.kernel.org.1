Return-Path: <devicetree+bounces-273095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL/bDB4lr2mzOgIAu9opvQ
	(envelope-from <devicetree+bounces-273095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:53:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3002F24062C
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:53:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 88A893004069
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76FF6410D39;
	Mon,  9 Mar 2026 19:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kKJzM0+p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ll78BIes"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D09033B6E4
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085928; cv=none; b=e1pwp6KvojLRsdo6tjxrC818wanRa+nNYKYOvuuKXKZjFLv5y+LbB5DN4bcTcNoVjZAi8NCb913pLLCUdZpttkMROqPL+sqy8IUPRkdyP53mGwKXmQx3VhZCAVliF/D0HzVEDSM71qt5ZQUPiK/HNy/d9YNVGB2UV/p48+o3pMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085928; c=relaxed/simple;
	bh=CSMH3GL08F/Gkm+WxEjZvu69ACUcFz2jZCL1xXNSTYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u1FQPuz+ZHYw3YOgkyYLruOYpTmCEAvvBQP5FQgY16gX3XpWd3Xkb1vJ+kHnvFxIawfdUu3/OZGOjlwZ0OujY+mUSO0qL1yoFZ/pvzT02xwqTWw695X+4vTv7FOkr7i1iUYjDgxVCrn/hoYD3rTUjVA81OTgF4m6hRX9EA6fG4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kKJzM0+p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ll78BIes; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBnar1920917
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IMagtpBiZrH/wMiGhDlnrnUK
	e1QX+fCXLXzkqyMeav0=; b=kKJzM0+pB5tywyXdyYl6D3J6OdPQvzXOnfrDvYC+
	9SjBYg6i6yVtQa+K1MW865il1nRCBMB7Od2Nr4+hVSYLricKHPDosD2eLOYN3Fh8
	sNwnrt+aHXus3Cs6Kpg6QEqhOywUDidrMGAuSABmZoOyqMNXxR/ZIxkyZ0sMTj5W
	l766Bbz5GGabuuWO7JlsHtRbfQ5B+d5OZuKh0FOQRIIWI5gsrJa33eTcvKSGI3WB
	qJUd6bdd5sV+JxMlYKtDIKvxByLCMeLzYecXvLMGM2PB0QmB/B7sGDY42ESWuYvV
	vvuwkjetXxCqhZfIyusgiEKgpQjsso7KJaMykmlEaRkUcQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy81cqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:52:06 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899edf0171bso689715966d6.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773085925; x=1773690725; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IMagtpBiZrH/wMiGhDlnrnUKe1QX+fCXLXzkqyMeav0=;
        b=Ll78BIes2v1nRxsZ87/g7aazQlnETe8zElf/byCps2c0mxUaUCz9g3+L9WFoaKsmuM
         mhA0zrleAjstLXa2uUzURv+rzXtYI65EMFTp+GIKGrceynTYKQCyVK+VhTfgrzWJ0Sf0
         PYUkN4KSOlLEResD6wl1cs+f5lDAUjwo1MBBzL5+EmnyhFDFmts7TeoAgmlUlB91AQZ+
         3ASeHwajB/PaKZ1d0gtHfFHTa/UERl1ABnSgvIb3KYC82NcMgnLkcBxrt9U4kdV8ttMh
         BJdIQw5vfdN+q+sONT0uavseF/xfkWm27YzWEldJzMQu/RWgt/G2YvP7BmNramE3I3f0
         q/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773085925; x=1773690725;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IMagtpBiZrH/wMiGhDlnrnUKe1QX+fCXLXzkqyMeav0=;
        b=sQ2F5XhAfJFuj18ET9+KOeb8tNWrlo/ey6D/jl52rBUzqu4nhO1N5hHPr5KrJiD6Lo
         bKc0V0G97ot91E4lerFi4SznRWO0b7JjwlLJ3vV1vOhN2iEW7vL6L35rTjzwcDy0T1wH
         EAz/Cltdu1eDl7ojElUfrbOqLHebsQsioUt++D5OPm/lVzeuL6B64P5Q+mgPKDyT9M1c
         yOuX5mmZ+oRyHdYA5KmlMqPi0IOLXf+VwKlg1QXN7YYZPUuSEixGVandk+Lm5uB01pk/
         XuWRT0MhKNWq5j1clCnO4IBkqOmDwZM18gEGnvHrLErtTEsHntm7oJVMecqc3tgwnwFw
         6bnw==
X-Forwarded-Encrypted: i=1; AJvYcCVTDFkQGQLXiiu6LXAXltpIqiXhQDbxrA+6CLLH33W6K3aY3+uNxO8TQ/B/woYXNx2dneLDdDeWJFAN@vger.kernel.org
X-Gm-Message-State: AOJu0YwLET+gnGGaQIlfA0/8AQjjGvs/+E17F3Y/NGibahbhugqh2Kk5
	QI0xF2uB/o0EeLD/mNx+JbDvYC+u+u7t3OZxKhBGCqTAGiHhBxc8iVW3E3IeFEICm6Z0+pJ6XM5
	T0NSyohln2TCbsB4snagCuoRTEPixfj5k2tsyipcJVSTwfIc2SI6kRY7gdS4COfJI
X-Gm-Gg: ATEYQzwdYf9OAfcs7pGfsUcYdKTdAH22OggjhRyosB7ouxDNO10a0HEsGEL5tf0teW6
	y76s71DxrQvTmxuMSLAQFC3hHrHyQXU/4wlvQ0NGNLiQ0LcVM95g9UwPRhjvy/hho4hP+ZudtQ2
	4wbCJH2Db47D5Dh0fgc6jITGMfNy1rietLm3yRyqQfIrXKmTAVs0Ucu5ogfI8ZIrFICUYPpUv+p
	wNbT/6DmprM9+8zPPxxndCz0XflLeD6kAyGwsgLXBk3e2KDQ1aKoVfxX1XRBLHowu+m2uDU4o6q
	/4zSnDnhg3YVQFhWHleERmYHfeOzwh8mbynAMq67w5J7yqkpSK75xBuUV18x+LtDlooIVmZp0aj
	pONWZ4n9Fz2S7vHw1nSP40KW6KOCoxbaUzQrq9BwU3ubgSeJK/m56TrQTORhBrtWMmkoYYiqz61
	ra1wH5FnnR7Ci6gpTnzqMQcG2ty/I6rszsvNA=
X-Received: by 2002:a05:620a:461f:b0:8cd:9468:691c with SMTP id af79cd13be357-8cd94686d66mr42378785a.14.1773085925267;
        Mon, 09 Mar 2026 12:52:05 -0700 (PDT)
X-Received: by 2002:a05:620a:461f:b0:8cd:9468:691c with SMTP id af79cd13be357-8cd94686d66mr42375285a.14.1773085924752;
        Mon, 09 Mar 2026 12:52:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5d057711sm892551fa.31.2026.03.09.12.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:52:03 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:52:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
Message-ID: <taqh3ipe54cgjwcvyqnysg7dx56mweo7zld3jvmv6goq2vo4b4@ea7ksdyyn3dh>
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af24e6 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=JFmwBri28pQwXZ3GTlIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: jpuIdLOp_P7UEtZwojyHY4bA9Sk4YeCy
X-Proofpoint-ORIG-GUID: jpuIdLOp_P7UEtZwojyHY4bA9Sk4YeCy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3NiBTYWx0ZWRfX8QGQ4FrIIZGx
 PNlN7XV5YVnJZU64prdmuauZQK0l7tUr2vaZH6o940uNoga/mul6gdjZ2o3OMXKEGp52TUW3Q8w
 gz4p1gJcAe62hXxWIjji+e5+NoLjCynaXfl+u3nn5eXoosfSKEgvGN4njNSTlpzqLU49vYjA9rk
 JfQP+OkrCwUox9BpdpBjAv5Jjzh+Peac5JtFTeWpV9mCbDDjQlhtc3j9O0b0GAOe9YiuGY21aNr
 F7ZRNp2V7lixfPIxJxSVzHT4WKHtEAgZp5zbp1iP9g5HGd/mZTpIjgwgLvEX3yBSfzp3WfHscP5
 4MsRtLOhWgXEfH9ExhVzZGDA3mqf+OBx9WyNi2KOMerG81eNUfbVPqh3MqgMn8sMmcey9d/VlWf
 e+GSPOdLAu46iNG0UrIfegyywODiQuwj2b4TbmozN17csKWNe9cAA47FUcOKO19zEJVpyUc0TBo
 Uo/zdCuCWuua5wZm/SA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090176
X-Rspamd-Queue-Id: 3002F24062C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273095-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 04:44:45PM +0200, Abel Vesa wrote:
> According to internal documentation, the corners specific for each rate
> from the DP link clock are:
>  - LOWSVS_D1 -> 19.2 MHz
>  - LOWSVS    -> 270 MHz
>  - SVS       -> 540 MHz (594 MHz in case of DP3)
>  - SVS_L1    -> 594 MHz
>  - NOM       -> 810 MHz
>  - NOM_L1    -> 810 MHz
>  - TURBO     -> 810 MHz
> 
> So fix all tables for each of the four controllers according to the
> documentation.
> 
> The 19.2 @ LOWSVS_D1 isn't needed as the controller will select 162 MHz
> for RBR, which falls under the 270 MHz and it will vote for that LOWSVS
> in that case.

The list of issues isn't limited to Hamoa. As we started to look at it,
could you please also fix Lemans (drop 160, 270, use 594 instead of
540, use single OPP table), Monaco (the same), SAR2130P (leave just 270
and 810), sc7180 (270 at low_svs, drop 160), etc.

> 
> Cc: stable@vger.kernel.org # v6.9+
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 49 +++++++++++++++++--------------------
>  1 file changed, 22 insertions(+), 27 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index 4b0784af4bd3..645bc412b0aa 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -5658,18 +5658,18 @@ mdss_dp0_out: endpoint {
>  				mdss_dp0_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> -					opp-160000000 {
> -						opp-hz = /bits/ 64 <160000000>;
> -						required-opps = <&rpmhpd_opp_low_svs>;
> -					};
> -
>  					opp-270000000 {
>  						opp-hz = /bits/ 64 <270000000>;
> -						required-opps = <&rpmhpd_opp_svs>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
>  					};
>  
>  					opp-540000000 {
>  						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-594000000 {
> +						opp-hz = /bits/ 64 <594000000>;
>  						required-opps = <&rpmhpd_opp_svs_l1>;
>  					};
>  
> @@ -5747,18 +5747,18 @@ mdss_dp1_out: endpoint {
>  				mdss_dp1_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> -					opp-160000000 {
> -						opp-hz = /bits/ 64 <160000000>;
> -						required-opps = <&rpmhpd_opp_low_svs>;
> -					};
> -
>  					opp-270000000 {
>  						opp-hz = /bits/ 64 <270000000>;
> -						required-opps = <&rpmhpd_opp_svs>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
>  					};
>  
>  					opp-540000000 {
>  						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-594000000 {
> +						opp-hz = /bits/ 64 <594000000>;
>  						required-opps = <&rpmhpd_opp_svs_l1>;
>  					};
>  
> @@ -5835,18 +5835,18 @@ mdss_dp2_out: endpoint {
>  				mdss_dp2_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> -					opp-160000000 {
> -						opp-hz = /bits/ 64 <160000000>;
> -						required-opps = <&rpmhpd_opp_low_svs>;
> -					};
> -
>  					opp-270000000 {
>  						opp-hz = /bits/ 64 <270000000>;
> -						required-opps = <&rpmhpd_opp_svs>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
>  					};
>  
>  					opp-540000000 {
>  						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-594000000 {
> +						opp-hz = /bits/ 64 <594000000>;
>  						required-opps = <&rpmhpd_opp_svs_l1>;
>  					};
>  
> @@ -5918,19 +5918,14 @@ mdss_dp3_out: endpoint {
>  				mdss_dp3_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> -					opp-160000000 {
> -						opp-hz = /bits/ 64 <160000000>;
> -						required-opps = <&rpmhpd_opp_low_svs>;
> -					};
> -
>  					opp-270000000 {
>  						opp-hz = /bits/ 64 <270000000>;
> -						required-opps = <&rpmhpd_opp_svs>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
>  					};
>  
> -					opp-540000000 {
> -						opp-hz = /bits/ 64 <540000000>;
> -						required-opps = <&rpmhpd_opp_svs_l1>;
> +					opp-594000000 {
> +						opp-hz = /bits/ 64 <594000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
>  					};
>  
>  					opp-810000000 {
> 
> ---
> base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
> change-id: 20260309-hamoa-fix-dp3-opp-table-453b8a5e3bc0
> 
> Best regards,
> --  
> Abel Vesa <abel.vesa@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

