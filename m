Return-Path: <devicetree+bounces-270840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGa6IaWhp2maiwAAu9opvQ
	(envelope-from <devicetree+bounces-270840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:06:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E10241FA33C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:06:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38E7130226A8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E458364E91;
	Wed,  4 Mar 2026 03:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aTZK/ug8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C/hpLq70"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56457364947
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772593565; cv=none; b=g1OZM6tibaS52XjDyX4xoWAS25fh50StzL1qEyXE4hiGJV1KkssN/U1czMHE9nZ+4+AZs35vo215XM0iIEbHqRkjrIc2Uii5KlaqYlzV558r7O60SVx/pl+flPSgzKr1LQjYljgsXwkwibpHpe0O1+7kp5CAsbm0Tf4ZtSlyJNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772593565; c=relaxed/simple;
	bh=WwVC+N0l7G0UP3qE95WD5qZ7Z5fDT407m9RxyJMjz7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D7X80YFUIU7yFdimEZDMTEF5pFbWD8E5BYa5+5LSZ2TA3qe6ZYo3wHNRBX1SRq1bxi09ZM6uAIZVCtgW+7cApALKz9XQYqxXOSvG1/47IqtXE891zsLAL6sZ5u30Z8zvw/tDFBQZlak583VZvkAarVgksZ53vEyl8kEIyGusjU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aTZK/ug8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C/hpLq70; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62433oRv3548606
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 03:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZYR5EVWpVGfwRaK9iWWlNhRq
	Nikp7eG2djRtE0hPVE8=; b=aTZK/ug8tV2FEICmYdzAJUR+zqPMCbiAK5/4OilB
	CMfiF/bU4lUiaSiYOa2+oR2dlEaExvMHCcokCNNFbHmb+8OU2712PGB53AIZ2gM5
	ntfDqDI9AXhk3739AayfYi2UALQflan5r3vv++pPSeOD8/yhCTYXr/uOAwpTl665
	lJCAKbUUjl/JF0hN1/7PJzdrT7vOGVOvZXOjMWu51TcXlp1JW/vX10Lle4N/5BI6
	0UnfQXfmwimoS6dZeEEv0zoqi+M7IGVG/fITjmgzHoBF0M1Fjg3onKAI2Axw+4ba
	adXa0r3DSXnkcdW5L9hdSEV/zS4bqG3TJWkXDqb1YR2VYA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvxfb9g0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:06:02 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a17ec1eecso23339956d6.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772593561; x=1773198361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZYR5EVWpVGfwRaK9iWWlNhRqNikp7eG2djRtE0hPVE8=;
        b=C/hpLq70ozPeqtUpfvaajpvjgi/WZMqxe7O7Qdd4QtsCuQk5vM1+clV+q27HM/JN3n
         ZFGak2nHx1+mB1K+ENksjF3i4HfH59YaiCK2Xk+QxhyM6x2ucuifh2XeKPDTUXKKc3Qn
         wYlS4nHCfMro8bQ9LHgNGiH9CgNmDHzJBxrj4ccBajA0XJ1HZ7qngfzFasaJEQhHKodG
         AcF6ZbaDP5cuGB5+j6ezLIdxCzdM6SAkW2ArEdoalJKW5Y2p3MfLVVtY2RboQVUHkgIN
         k+yrFACS/3k4OYr7eS21EODBGPqhzCNtz3NfbQObxZTjjAIBxfP7P24G8sj/D9XdVEch
         QWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772593561; x=1773198361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZYR5EVWpVGfwRaK9iWWlNhRqNikp7eG2djRtE0hPVE8=;
        b=o2H45WsaeJKRA/Ls0+vLJc3bgwWGDzHJW2g8wwXT3qYs4SFItngjnFtAEhzt6VDWcW
         Na7ADimyl98nCNkIp/hTSghk/X5QZYzIyGVrWIBd7IjXAtp/QcrkN7D2D62MQiwDXzWX
         ir5mfNMc+GxMuBfFsGc40FdTAwbFQ610f9ECmXsWspHiwKqSkm5s0yMh/+kgQcIDyxKt
         IzfhZ8hsup8CD5fFIlSyniZYVONXJaC43e61gWOv/BYbuQZUAav42FX1qNPxFL6+qfis
         hs8Tlwk+5FX9afA6R0cCjpCnk+S4Q6A5ydyG/Md1imINhaWXD95uV/8ScRtJnYUdAHB6
         GYiA==
X-Forwarded-Encrypted: i=1; AJvYcCVdbD22dUY9GRFWC6s9QW+DW77y9D8bF+KZ+etjhmqAqDgKwRuDeAwEFwGctIe65RvtBLGYjYfeaVM1@vger.kernel.org
X-Gm-Message-State: AOJu0YzqsjHPLwk/16/gGwviH1iYVRIZONa4aKCozizKDspDcvBW2wy0
	KcRH0ZYyyM1INGlT+Y531nX998TS2R4/8Gz/01xHdIoqZgkrY7rArsJlg0+SwFYRJDlb0VTjhWj
	ankvTbqSBQd1+Vighq1hUuiIESkbSOQR1NV4qg0YkOtUIDADDW+AJr8ycMCgxF/Dc
X-Gm-Gg: ATEYQzx+czJ8CV7JT9GN8rjOLnOxtyb7ALZEW9lYjPgs50qgIgLnG0RiKOCL0YMqdNA
	jkOQ4QdxRg9GXtxUIv/XuwMs+ri8HzoI/5yRPn3tJ23DDcQdhoDZ8jm30HqF/we4771/AfPbn3D
	skKPn3m8wRfQ+avcAhF02PPThAB/Yu9C8QgmIxmmBrcuYQygf7Jinn3xae6z4ZPytBJwKMZMmNz
	POIedi3W5SSM+Gi7ohqTYNx32szzNY8s3kcziRGzjTYuWVH253k2Rk2emBJl6x3BCjZhZnIfwEr
	LKoMO7cOzrUSHZxWlUnETybXD5CtZ8mm+yZBVUSP1NXimfN+FEAlrNFX/E20XzFfgc9cYZ/SVMb
	sokyZ0ZbGrPoOMwTILlGSslBLtXsekXm0cqKO3phh+QAdR0Bona3X/UVQsi0FBqcz3odU4yhyjo
	BOFDdnzYYOra23lmoUAdQul2BzaMcD16AIWRM=
X-Received: by 2002:a05:620a:bd3:b0:8c7:c25:9e69 with SMTP id af79cd13be357-8cd5afac33emr77355385a.66.1772593561508;
        Tue, 03 Mar 2026 19:06:01 -0800 (PST)
X-Received: by 2002:a05:620a:bd3:b0:8c7:c25:9e69 with SMTP id af79cd13be357-8cd5afac33emr77353185a.66.1772593561077;
        Tue, 03 Mar 2026 19:06:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12357dd0bsm966811e87.34.2026.03.03.19.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:05:59 -0800 (PST)
Date: Wed, 4 Mar 2026 05:05:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v3 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Message-ID: <cc7n4ubnuaboej5uazgf3h4ojzyajietjgbahmsuodoses5vpm@fgq2kst6ijpm>
References: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
 <20260303-dts-qcom-glymur-crd-add-edp-v3-1-4d1ffcb1d9f6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-dts-qcom-glymur-crd-add-edp-v3-1-4d1ffcb1d9f6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAyNCBTYWx0ZWRfX+zNBLxYySl5M
 k515mMOi7Iwph9dsyOgzDHuxwqQBnaH4wFFrFajAROQ6QVGv0RV8TlQW+pZkwz0q+r5NxMAxq+x
 m5AcseivkSa1cXoa0kJbtBA4oQzre0dF8Ssn9Ds6ssRnYMakW6scb37GF1pPwdLsWEWszUorbD7
 c+4Z2/nBOaPjjeNLe10ssDIXEgxzkktIYitPMILxqQxNLJuGYbC5KlX6qrj2oebVUcBTI96z5/T
 /Oq9ytvWPLcrYQtnNWHPEbd0/RcN5FwKgPgAJckmJ4Fklbupg1q0BT+/fk1ggwdS7ar1xy2ZZuX
 sKQS/GIcZd7JOHL83Q8b6E1aLH6WEvDbqMfPsaNEKBHnWrhsi0NoiUpcjxSCb29e29Ljd1aEGfJ
 2xf8z+EOMuT8QZI0oHrWrrV/UG++3QR7e8f/ck6HbmqeIKHGRafGi0/xjXEoDJRKrQehmSUibG6
 Huampycns+bUPCL0tiQ==
X-Proofpoint-ORIG-GUID: m2lS0OnNj4wGxPW_NA2CIFfrjIWkEfg1
X-Authority-Analysis: v=2.4 cv=S+HUAYsP c=1 sm=1 tr=0 ts=69a7a19a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=GtQPGISGVa-A3H143mEA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: m2lS0OnNj4wGxPW_NA2CIFfrjIWkEfg1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_01,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040024
X-Rspamd-Queue-Id: E10241FA33C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270840-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 12:44:08PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> controllers. Describe them along with display controller and the eDP
> PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> clock controller and link up the PHYs and DP endpoints in the graph.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 471 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 463 insertions(+), 8 deletions(-)
> 
> +				mdss_dp0_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-192000000 {

This should be 160000000, otherwise RBR mode will select the wrong clock
rate.

> +						opp-hz = /bits/ 64 <192000000>;
> +						required-opps = <&rpmhpd_opp_low_svs_d1>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-675000000 {
> +						opp-hz = /bits/ 64 <675000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-810000000 {
> +						opp-hz = /bits/ 64 <810000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +				};
> +			};
> +

-- 
With best wishes
Dmitry

