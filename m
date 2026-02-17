Return-Path: <devicetree+bounces-265986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIPhBBIclGn0/wEAu9opvQ
	(envelope-from <devicetree+bounces-265986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:43:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C33149450
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 815563034E18
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB4E2D73A6;
	Tue, 17 Feb 2026 07:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hz82HG9C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F9r2Ga5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B4E2D877C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314140; cv=none; b=PcAiwcRwX1dBQOAiTOHGbWppFaoodDsWxjm9uCmlaJxPGoXSeOxAKUFxNjeppjc3Ky4u0u/2RbLAZK1JSDSZHqtmorrizUeL1MJCMfanrjNu1KYLci4vxsA28PoQXIvhP+Oocjtp4gSH5PPTLYv9TRIMKofP1f7t+aFRBk8uO18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314140; c=relaxed/simple;
	bh=8CDvF4EZqywjeqq6n1Gkx5D8pKS9ktfF5GpIJMI0mXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O/qfxowl7RaeqJNojWsb0M+48YOJM8mVr/1ZD7+xqZJHxBI3dYciQioj9zsVU+QkblGCRhh7ergsf1Syr+qykUDsHF0Fk9/d1yvRvYS81JamtvJ2h3NIOoTfIU8PW4PhtFWebyWMOCaPRQuM1U1EOeiyMxtnlYvC8SwtHNV2e6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hz82HG9C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F9r2Ga5S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GKDIdB597148
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:42:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2P+ECG2vxZRApWW3EQOfpyiF
	thEBPrS5O1JGmhWTvVU=; b=hz82HG9CNLKnvW1q+EWyiLA/LZredeZN2J90x/qh
	dy4px04E/HNbPuq36qX1J7rOKW8e7CHt3IsdF9WYD2/6tw0gXMYPRuSvqRJaTadr
	pvdtO0SN8agIJ8p2RA4N0FVo6CI5o1vs3vxakzP2cXrKzFeEIuVNwNKu6lBOvTTQ
	QAZQ3bakDSXz5RqnBHE0VPE1Je6DyXOeYZvDMaMI+IH7gm5H0nEBAJoUU+OxVwDJ
	Ygo6j3/Idpivkt0CZixyqRQ03sAosTt/HjvWV7l6CU0wLBzczd8Xu3Mk/B17KRP2
	0EEb4XFPojmqhBUXmfph7uZUglaRI1S9s39BJ9GBISbO3w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cca3611a7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:42:18 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70fadd9a3so3256035085a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771314137; x=1771918937; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2P+ECG2vxZRApWW3EQOfpyiFthEBPrS5O1JGmhWTvVU=;
        b=F9r2Ga5S1XLhOgSAnVNOS2gATqdgzkI5vgHDC0waQHZpO1P+8iFF7sOwmPBxBIOxOp
         MLHxbkuXfzbBTdsBSDc8w4nU5YMR9kyk38hc8UQMP1tLzlV152/7Bkt94ld7wCFqNHN7
         D7qY5sWiqy44v703EUTBg5rHNhRSACf4VeGSlEGMRNfiSJ4nC+jR25HVUt8xmBZvY1De
         qG6GwBbCRo/pIX8QasTQmIAr1XQdARd3jaMLtaKi9Wlxjcr0ajtHsI+aRGMKVxw9+NUl
         qIQJDCPiVc0ytsYr59HOkUiSBj78T4IPLTPaPkrEhXcRIKB/P/4Ba1J38+B5EG8kkv+c
         7pLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314137; x=1771918937;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2P+ECG2vxZRApWW3EQOfpyiFthEBPrS5O1JGmhWTvVU=;
        b=DRm8suE351qvSgFa1cc15QB4V3siPA3jEc/w4T4SQu9ONSU6SqfKcjBWeY0dJ8Doae
         x43nWMpbEzIhekz3sCGNzRkPYmdU0uDMSe4Y5Gagl5+d5sw6eRH0/XaSWtHQcyDcq+Xk
         5z7knbsEmhS8UkMvoDQxBwVkqiO2NQTqKMUYOTPMZfL2PspYxfJsE9VrhyV+FfAAuaj/
         KGWc+jlsiRmWanMoiJnyHl98b553rt+UbhRD9vWu2UCZW4tjjm9j6ZRKLW5vrjrFZkZw
         hiZyIptWzAuwNHTQ7uAIC1cJMr5YE2EnoMCQ6vrbiydgNg1KRsErV4eakt+j2y1nJnwM
         gQIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFi7bCzSmWlmSKQqOySt7kQdSTEyar500fW+xKQM6FnSWKFvAZAAyLvQzk4+5BBPMiazU39J3L6nSa@vger.kernel.org
X-Gm-Message-State: AOJu0YyTLn7D/1L7SAA9WkLG9LkLBTzesi7IcFlVpkjRetuJTs9oKExJ
	c6rKqZQmav19o+Zs8BRchbJviwKtLO9Bppcjs7Au7aXExpQcxUFQTvhPeIGqQ76Vf4+RoxPLG9A
	Qnx6GTYXPM/wf2dJcbzsGQ8yr7OO068DE8/zmboGJP7m+5yh+1zoEenVySI9NBLfu
X-Gm-Gg: AZuq6aJ7UtxJ2sB+7DetOCJykpPP7QoyS+usQPE9B+9Uc0Yg/W5lpE5i2RSAXlq7+2Z
	WOdRP275T3O/CDejo0k9e6upiW3i1uAAVVJuAgup5vyXkmWjw8eB9oPvVVo5RFOLAyJUB+ujEMg
	8TEWPbWOi3Q2DNfNd7jOOXfm7Cx/kR3zCjI9oxC/O7jUun7zPpFZnE/uyA42CCfMKDUm7XWBSAj
	iBwVW1vkLY5xYDbpv3MQwa9t4Y4drRzRixL4H5c4A37eiDo3ASqYAtjDn+s8woSBDd0TCVnixak
	RHkJ2otNQUCjg/rbGHYjeqXZ7orIpvB7C/I7X8Yn5bdzIdnpBRpCq6NebnDlFo2jLmddlTz/tka
	veeEvNBjJ7L1sWfNwSH5T7FuprddRhXqEudVxQIYAnixuDtT7f99juVpcJFVxN3WzwV0sB4i79Z
	cgdlx6Q2Dz392AVZjOX6ZOXCca3q5U1gl7+0A=
X-Received: by 2002:a05:620a:454c:b0:8ca:4438:b8ef with SMTP id af79cd13be357-8cb4c025c1bmr1178893385a.69.1771314137220;
        Mon, 16 Feb 2026 23:42:17 -0800 (PST)
X-Received: by 2002:a05:620a:454c:b0:8ca:4438:b8ef with SMTP id af79cd13be357-8cb4c025c1bmr1178891485a.69.1771314136799;
        Mon, 16 Feb 2026 23:42:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a4fcfsm3692473e87.46.2026.02.16.23.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:42:16 -0800 (PST)
Date: Tue, 17 Feb 2026 09:42:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mani Chandana Ballary Kuntumalla <mkuntuma@qti.qualcomm.com>
Cc: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: lemans: add mdss1 display
 device nodes
Message-ID: <konkomahmiuuqn757wjpsxt722lcbzougoqyxhzaskqquuzbfi@unets5hlsw7k>
References: <20260217071420.2240380-1-mkuntuma@qti.qualcomm.com>
 <20260217071420.2240380-2-mkuntuma@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217071420.2240380-2-mkuntuma@qti.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2MyBTYWx0ZWRfXxERpjMkWyJJo
 bN3OFR0/tPvPEH0kMI8udNKitP5G9cI2oopIpR/LTVJ7gHPn9GoKR3N3Zpe3S1PNBV5cvL/UgW0
 QY+ju/6O2ZQDnc5k119A20k533pNUoCWjfbBKdbmPZlXe9M5R8CnnFpIAc3RsAys0B3ssbMjweL
 Qb/fIhob1cTob5Ro8tjnVP4/dv3gJgIqZ9oV2r6G0HyQ+3EcOvCVsav/a1m6wTZ+yrxcLrPVu82
 sNnl8+WKSlB1g0UHiL5fz6n/o2q/OcujsoQqocCmy/eRx0Ilo/30oLjqsrhzFlKITWInYsKGQDc
 U6oqdrXlZIzEsnBJSEIJDzlxtEOIZwCr8dNtQV15yyX3swSfHtLO9tpwjIOCn+icORti35G88JA
 Dlw0bu+Vgpgx1wZJMyFEokhgJkbB5q0k9G2rpUHly81UHMEIBkguJq2RiPgDuXMcv4hMCPDidPW
 XUsRgncar1X1eEvcT0Q==
X-Authority-Analysis: v=2.4 cv=b+G/I9Gx c=1 sm=1 tr=0 ts=69941bda cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=SI5dRhP91uxaG1B2flAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: xq8Ddnr2Yo3OKKkqZFRMDemdnpmSVqgQ
X-Proofpoint-ORIG-GUID: xq8Ddnr2Yo3OKKkqZFRMDemdnpmSVqgQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265986-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[somainline.org,chromium.org,kernel.org,linaro.org,oss.qualcomm.com,linux.dev,poorly.run,gmail.com,ffwll.ch,quicinc.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.81.56.32:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,quicinc.com:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_PROHIBIT(0.00)[1.94.243.192:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 78C33149450
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 12:44:19PM +0530, Mani Chandana Ballary Kuntumalla wrote:
> From: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> 
> Add devicetree changes to enable second Mobile Display Subsystem (mdss1),
> Display Processing Unit(DPU), Display Port(DP) controllers and eDP PHYs
> on the Qualcomm Lemans platform.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 315 ++++++++++++++++++++++++++-
>  1 file changed, 313 insertions(+), 2 deletions(-)
> 

> +
> +				mdss1_mdp_opp_table: opp-table {

The OPP table is the same as the one used by MDSS0. Please move the OPP
table one layer up and use it for both nodes.

> +					compatible = "operating-points-v2";
> +
> +					opp-375000000 {
> +						opp-hz = /bits/ 64 <375000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-500000000 {
> +						opp-hz = /bits/ 64 <500000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +
> +					opp-575000000 {
> +						opp-hz = /bits/ 64 <575000000>;
> +						required-opps = <&rpmhpd_opp_turbo>;
> +					};
> +
> +					opp-650000000 {
> +						opp-hz = /bits/ 64 <650000000>;
> +						required-opps = <&rpmhpd_opp_turbo_l1>;
> +					};
> +				};
> +			};
> +

> +				mdss1_dp_opp_table: opp-table {

The same comment, use common OPP table.

> +					compatible = "operating-points-v2";
> +
> +					opp-160000000 {
> +						opp-hz = /bits/ 64 <160000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
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

> @@ -7055,13 +7366,13 @@ dispcc1: clock-controller@22100000 {
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>  				 <&sleep_clk>,
> -				 <0>, <0>, <0>, <0>,
> +				 <&mdss1_dp0_phy 0>, <&mdss1_dp0_phy 1>,
> +				 <&mdss1_dp1_phy 0>, <&mdss1_dp1_phy 1>,
>  				 <0>, <0>, <0>, <0>;
>  			power-domains = <&rpmhpd SA8775P_MMCX>;
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> -			status = "disabled";

This needs to be explained in the commit messages.

>  		};
>  
>  		ethernet1: ethernet@23000000 {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

