Return-Path: <devicetree+bounces-270854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGpfG4Cyp2kfjQAAu9opvQ
	(envelope-from <devicetree+bounces-270854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:18:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD621FAA5A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78B54302DB5F
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 04:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0002E37EFFD;
	Wed,  4 Mar 2026 04:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WGsDR5/N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fY+yW4GZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7C037702A
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 04:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772597877; cv=none; b=KflQ0pWkBXbkr3Pjpot9iC8mc5sQwrRwzzlPCoC9i+/VUuqf2nLBQJNd3ygJ4e5kPHPXWOPpcHr8U0bX6A4MyyyNAC+huXHaRSSK8SbzTBY3J6bCba08Uxh5HyubuToBPE+aP1Zv5xkijeBTYsGupbN5e6Vb6s3T9cIQ35+7zHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772597877; c=relaxed/simple;
	bh=TiYB/VHZv8GZr74L//EeGmMQSjtvZ6XNT4eFBz1no2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cqCsAx7pERMHBD2uiHXWEnwIRIhCOB/R8WAxOrBm3VXQ+ke7eCPcAk9j0OPE73nnBuTPVAghEcjFYaUxvQnBYe2kogmUhnD0O4BsvFJ2cWlhIx9S5D8b3euUZwUtxBIjDIpWBkKvS3orNpGrdbVc7oVEay/5PUWZ2BMkNa9saTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WGsDR5/N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fY+yW4GZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623KU5qv4013588
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 04:17:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=z0JAcdZuEBA1HqUmgy1iLKp2
	o/XlgSm+bZ25MBE7wfE=; b=WGsDR5/N1IVduKZKJEVxH2UncUyfGUAtBJvltrxI
	X8c605Nw/Ngs0RViC/djuY2egCcm23VVKxwvUt0TPU4K5i8VaPGMxYLFDPLGZZi4
	Q6Y76gPaTpJD6i8/eHOWMhNKiFQyHUWkUPNsO3Eh+MrEJdioO20gSDbAzGZUnpT+
	rqGu3Xv177aV8wfXeN1OzpW17SEnu8R3QAjQP1FaLBBSNDB/reSZasDvdFc5Fd5I
	QScU3g/sMJ4ohUoiaHodoPceUYda04K/RYIVzJtyaNuNDPpw2oPTnfaRpFWY8MAK
	u/ZiC2OVui9y5bsYp/K4D+BNLvH72fP17C3KLgp3ELwtZQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qg9are-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 04:17:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a178d7270so65375096d6.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 20:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772597869; x=1773202669; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z0JAcdZuEBA1HqUmgy1iLKp2o/XlgSm+bZ25MBE7wfE=;
        b=fY+yW4GZvr5El7luY5lVFgtX64VZyLnrJycEH35XaXOTwD/SncQPnPS9LY2DI0pLqP
         zXivHmzcK1k5sw7N3WyDUTjwEHbhpa3n2LXkKFXhD8oZrtwMCFKPoe9HtiQSy3OM+JcR
         vgEsT5DjYE+wKMKJTuRu4Nb9x29q90ZGXHZOYcPI6LPVxxi1oLd6iKaCoSSJqq4NfBKc
         OCdF8F5psqgge9TnhrBZRPN/Ic3kBAfQyYS6HcgL07yA73apyBrLFj9k9ZMJKOblrbbp
         6GopjemIKGrJSn6K0ZQfEhshyJirECd9akdU2xdoC1y/+A+sm7nY4jIracrnJfeEJLFo
         f3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772597869; x=1773202669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0JAcdZuEBA1HqUmgy1iLKp2o/XlgSm+bZ25MBE7wfE=;
        b=LyqlNQE3GMUSzRg9sQC9E/2RsGnfYeypeIcjZOjkDyuDgng3ymDTHjCP+rq8DXuUos
         Q/BHDo8VWOKAkIhxv2ZFWIkH5hwk6KuHQ/L01oZHov3Z8CHMtA2QNN9m0mfzszJXAbgp
         RthgjnPAERSGYlAbcKX4D3ux2HFJJuORmfaPv4pLXuTR6xnpX0Cnlq5IeUuVXWGaSF+C
         jX6LeZjmgYKH4OTiEKH3OvoBJzq4PRdgM92sLKGXwdihOV99eJ8WyaVY5I0HdC8B/+lU
         jFl0Iro/ZNeZyMGtqLAjYsmxajBfoNQa8aVwR3QUEpfPSfoKJYAFEs46EgrRckmREtzn
         LH+w==
X-Forwarded-Encrypted: i=1; AJvYcCUm4kSZ4GTKrLjD8hiEbB+4J3D/Jh7gGJ0DFXinJd7kXZXdAV5VIMH2lmjTdHCcSHtkfeBtJJejHbPA@vger.kernel.org
X-Gm-Message-State: AOJu0YyfCEQT3l0wc1jkd0gTAKnOuNwP91/ur4MDgxMrKfqTrJkRsfD3
	RaXpJS4b+U6jeuND+0u01AhR+U7bULpH4fUg2LSjFZRnZnveo/Oceb0DsQOK9X7aBjwHcw3FJxl
	gGcuh69E8BklXanZa/9wZmGWH0SkrBgpvjRjk0uo+h1B/8yl+BCQdrfaGP2+tTC4R
X-Gm-Gg: ATEYQzwg4hi5PU9E7Bc7R0GEWBByEsMu80/635hCpfaAuKyASUCJWvZo8nlIUB2qO4Z
	seyhHdGmiZ65ZcYFOcXJDQPRP/khrajRRSjO0b07TIZxOcGVlcpa2nHGI5HtWErwKeop/3gGHly
	lRHF0zdWvS4kiMAtQdKsbntHevNoA2cECPg7Dxc7JSZA8CUWgQyu0e0ZJXAU/z0GOlzfl1PA3JR
	Jh9YSVDugUxS71lF6bdTSFIAKNTw2cn/jqvmwB4hu291zgZb8pNF7uKiuK8ekwWR1j6oxbJhc+w
	hme1XeVVzRpExQ/8XwrQlA326bydVQa//5fdL8gkTCoiM1BsiIobFNXWydD5r3NuxaSomaZOnCk
	R3vRHf5WI5eLGhJ1bkg+hU6Z2vx66Zu7pETo8gx6sPCtbvW7+9VVbsy1AXlHVjpNfA0NcQ+631i
	VJaK/djC67SuIRQA3Wbrpniu2U7NDDf1EPNsg=
X-Received: by 2002:a05:620a:4405:b0:8cb:72b2:2a01 with SMTP id af79cd13be357-8cd5aef5e55mr95661685a.18.1772597869130;
        Tue, 03 Mar 2026 20:17:49 -0800 (PST)
X-Received: by 2002:a05:620a:4405:b0:8cb:72b2:2a01 with SMTP id af79cd13be357-8cd5aef5e55mr95659785a.18.1772597868738;
        Tue, 03 Mar 2026 20:17:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12358402asm970495e87.15.2026.03.03.20.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:17:47 -0800 (PST)
Date: Wed, 4 Mar 2026 06:17:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: monaco-evk: Enable the
 secondary USB controller
Message-ID: <cnyjjvkzjt2ndav7hhfk4c5ezix6gwxoq23afx55hb6sf4vjtn@myaixeryjflf>
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
 <20260303082157.523847-4-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303082157.523847-4-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAzMyBTYWx0ZWRfX8ovrSh1rOx9s
 2pyS+KZD0k7T3dbehEJpVfFnCLZkfdeSxHbKt+tOhx6dSr/P47+Whq4K3zpj2D2nd1HuGeZDBE0
 hJU/SoT5KtD2hrBcrb03q2KNK/thVJZno0XI7MKOlg9BRUBDvBqIKX+Kdk4BH/7sm9BQpWSoNLe
 LSDRylWMrlc4teLL5pHjtbhbRKffivbnFzL0GY9KVC+g//i0X4noeqJqtnzTYEzGecYlS3NCYgf
 q2YtaBJcuUeY56jSwLHHIfkmauvR9yk1XhZrsRTM7IRpmKb9+TXr4ZLFyKlj6vFn6rGtc5Y9XMY
 Gn22g3QwKFwclRMJbaC0WcofzNjMwjmYybharNn9qbKpVFT7LnX8ATBChLBe2+Gj/igSyEdaLyx
 xA+NJl7e+nJq9vUeoMWs/WtvCL1tSeicJLb82UFk6XNv+yJmu2c+OZjnhfB1KxB6uNu+2By3tmN
 qP8qVdqAZ2WH/WuW0rg==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a7b26d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=EQwHw-xIIpEP5aWSzWoA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 5jwphSI6D5Y5gUf58GVexLc4Efsz0RU7
X-Proofpoint-GUID: 5jwphSI6D5Y5gUf58GVexLc4Efsz0RU7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040033
X-Rspamd-Queue-Id: 1AD621FAA5A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270854-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 01:51:57PM +0530, Swati Agarwal wrote:
> Enable the secondary USB controller connected to micro usb port in OTG mode
> on Monaco EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 54 +++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

