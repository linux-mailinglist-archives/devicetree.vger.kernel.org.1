Return-Path: <devicetree+bounces-189888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C33EFAE9C2A
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 13:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FA2E5A4A67
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 11:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887B02750E5;
	Thu, 26 Jun 2025 11:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RO2pg7Mp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CF021171B
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750936063; cv=none; b=i+oYQsxrc42V3mHDd/bEmaLuZnAIE3Wv/N4fdD+kq42Z7jD6H2qyLQhgcDjzB9hZit6KqKd6yzqYuA8bQEjZP/bnvEqqJocjLIiKE6892TrQTsuju3C+F5PwQIpuz6Z6xChZiFcfR+2Rz+/FfKdhRTrCKgNN+IOkJ2hokacIG20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750936063; c=relaxed/simple;
	bh=0Bp+qonHH5jylyHIXz9C6sgn6mP+n+r83KDRf7t/N5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rwHzHn2yVupVlJhY7iz7sn20usH9SrscbtIIddbnxFle5cBeVOKFIlXEhM88dMPu48JUooDuRo37dwDEFtWbUXn/iO2+L1VJnAk8SC/GR6LalK5h705DmX6VzA19HrgK3xrohBW6Bg1u+qsk1Y2MLSNFVpb5ZF/tJbHbhUvzV9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RO2pg7Mp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q9xdbw001044
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:07:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UE8txzOn/QAzC7EGqvtVxraZ
	th8YujXtysaU5pU06LE=; b=RO2pg7Mp20tMtr9g+z/d9ptLvnH/ztTZHViy7ixU
	shvntBNRiYLuvSW64h+jHPBbNRHbAe7ynwVIyUbAiCZr46/oj+rA0BQSaj6mRMdp
	mm93GYKHgi5MGjd1M3FxNyX74jZ4nGKhYyUPzdTUozFuTB5HI7xVuScDoUKJs6UT
	yiCFcuj8UsB/dq+JDd5CjE+Wm3Qz0A7nhuQ+WtA3QVFyPwX3WQR1T2Y9/BdmgBCX
	nsWwF3DgBNHa75SQ4t5LdsWF/Fmg+s9O0NZfkJh7BP9p/tqNCFBdsvSYSBEIGlzg
	sIUJHhkvMuRZ10QhD+r3wFJB5OxMnVZ7JFb+FwTctrtOaA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rq39nd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 11:07:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a43c1e1e6bso17307251cf.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 04:07:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750936060; x=1751540860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UE8txzOn/QAzC7EGqvtVxraZth8YujXtysaU5pU06LE=;
        b=qVm1srjOHfyx+T+2iV1Z2LNGayEjB3v4QhOIizADNKvP6TgSb/VPuJr0wedUBOb57V
         Y69c/EfuYTJjUtVi0Z7bckMgUdIy/hNO8Wd5ahJfnN4gCHpFHbUWyDJIVbXmIp++jMnJ
         a6yx/KrZQH5g71+2JYXB6Bkw+RcJ48tujjo35767Pg6ej6p/eI8IfMtdeTReOV7uuAbV
         wzkeMoHdHcTEjl8/GftUuuOyUvdMfPntNhPFSikNKPxccQHWKeqPyWKBzUdqPOD2uNg6
         LEufBso2MYULL0k594RFoZs9tTc9pzJ3EkrPuM5L1oMOAKZ/7nQg+7Qq7IyltshUJapC
         QdIw==
X-Forwarded-Encrypted: i=1; AJvYcCVfmwyFMpfvPiqYcOOg92jjbJrlin2+S2eJeqMtGTMNqgZSSh4oJq1KvlvtT3opTIlq2zak6w6K41l6@vger.kernel.org
X-Gm-Message-State: AOJu0YwysvEjXl163Ur03jx0JZQ535gtgLB2BUiVT2iR6DQm3JtylzQT
	M73QkXaqennzgQL3A8b5lqykivm/kXWpprYloxkfyR8rlKMPsYYlTzbikjKA0K6IqRlFS7txD6i
	yI54TvDAVC8JrGtzWevYDfbXXmByI1kEvizkKtezbKbPcgMRrzQ6gufiOcIi+UoNe
X-Gm-Gg: ASbGncsd008VPODamc5zsMd3iUpi1xj4cRnUizq/lMq6QxQSoIiy/7B1lMWftAEaUpd
	a74AeETMVYyaqmI5a//OSYjcbxgZBqZcOqNJk7P5McOtVOteG4qc6IFQFi2vyaqUcC1PbqI3RsR
	fintMnrUMuCgBr0mF6xMsUaVNyYIBN9HvlJLbGfBTVSU270qhqGpxzPAsM2iifv0GvabAgzZpYZ
	dEyGajaFC+OCFM7HUyXXdutARy9GqhU5isX7i+2jMs/EyBKmHbq5emmJ02kx/f0lxyV2nG5GBu8
	YsvXucKZb+onsJrGI6bhpNU7C+slOa2WKEqQEx8Hy/4E1S9i6sE2mAn8kV1zVRPf8GikF69FxzL
	nVqB+pNIDSlF35FLJ3Rr4/IQAEnvx9iCZY14=
X-Received: by 2002:a05:620a:4708:b0:7d3:a611:b72f with SMTP id af79cd13be357-7d42968282fmr882465285a.2.1750935754115;
        Thu, 26 Jun 2025 04:02:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCNqTQMhKRAgDVgIkPVE6+Lum8rJ6kECVPTi0eyeggPAIZDp/ebpXhKUViiZfcfoDb+hbfMg==
X-Received: by 2002:a05:620a:4708:b0:7d3:a611:b72f with SMTP id af79cd13be357-7d42968282fmr882457885a.2.1750935753495;
        Thu, 26 Jun 2025 04:02:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41442eesm2524970e87.14.2025.06.26.04.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 04:02:32 -0700 (PDT)
Date: Thu, 26 Jun 2025 14:02:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Subject: Re: [PATCH 1/1] arm64: dts: qcom: qcs615: add missing dt property in
 QUP SEs
Message-ID: <x3cmdir4lotf3yekbu3tsmts6idsvwygrp35opszmgabhpvdda@nlwrs5qojcml>
References: <20250626102826.3422984-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626102826.3422984-1-viken.dadhaniya@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685d29fc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5yXfonLdrd0yReSgdogA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDA5MyBTYWx0ZWRfXy8P/Y0nh5c5W
 w5FEPPuMxHcQ10CTaPI7nMcNxp699X1CQEd+JxsbUQ1EtPCzqn+OFeFlKNchIySZtDSibrxQyQB
 bGTpdCgeASqUZl6oE+s8yPZpMXvmKY1XDsRcur/PeUDaWotboBa1sj5FRbJ5upUADWdPPNgv8dX
 m7rFl7WqEfhi/zQSVeHkLUFHuWGKb9lci0FBDhFasoECj4VhB285PI+GW2whERkzHoxGN0hkPnO
 bzXj1ybVF4BZTgfC1BQsQKugIT5k0L+Iu80SaZ1rjBygdlmBl+XiR/PswXfT2RyrfIIbYWUWJo4
 Gr8TISt+y4wHihc05YDsV8Jg/GhreNjKzKE1F38IFdaZ1ZFp5Fk0a0uVc449V/rhQmuS8iFbBtY
 W/7xGq1+xLRFKkX1P4uVEkew3MEJYqMQtCv/G80ac+RV3huOVuf3DgTzuE/ciiIlhm/RdMaK
X-Proofpoint-ORIG-GUID: gzp61kRCY5LgZPwP-T2LECDeW-RVYFjn
X-Proofpoint-GUID: gzp61kRCY5LgZPwP-T2LECDeW-RVYFjn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_05,2025-06-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=705 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260093

On Thu, Jun 26, 2025 at 03:58:26PM +0530, Viken Dadhaniya wrote:
> Add the missing required-opps and operating-points-v2 properties to
> several I2C, SPI, and UART nodes in the QUP SEs.
> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
Missing Fixes tag(s)

-- 
With best wishes
Dmitry

