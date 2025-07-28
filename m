Return-Path: <devicetree+bounces-200183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B934B13A3D
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B56C43B81A8
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 12:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF7D262FEC;
	Mon, 28 Jul 2025 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VurnArGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44ED2528E1
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753704633; cv=none; b=uQupyYOwy8EssEH/CwW1hLUbicHsQ0YqSBFRuOzgVoJxDk8Ox33BDL22ebbPEnk8v0lfKtD7Y9Te4m1/3NHVQLs3PzX1fbZE2VfoC9wYqSI0La2SItDaNTCYfPKtH77bwK587nf/KvPgQoG1FUWm7QefuB0Zb1NWa+PNOjS9/gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753704633; c=relaxed/simple;
	bh=SlUHnpJvsu7DOo10LcCPvcjzGwxAC9oLznI7M3JdauE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mnuZGvJX4iImaumVCAN2uQo1IIVeLLNBy5rUS2J4RpWcomX01tzAh6CFJ8sb0GTh7W+ItUIVRbdWTeCyL4QTWJdDBiffEklhuoIst3WQElWMuXQ/y+UXbt2zpC3wFObuCnHuDJw+xNSlvoiNjx45i9AqMrpmvKxJlvFBL4GOnAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VurnArGN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlILj026577
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3Z9/0om/fZeIBDRghX6Mf/qX
	8eJ5Ee46TLv/snXtU0Q=; b=VurnArGNvtiGnHtOGpJAv7N2iV6fWhL1M3dc0GBE
	fya0AXHLRNntZvYSqvywohqLg/Y3XHb5NBt6WpswIoaaUyA1oIhyMGQIIhSRH7c5
	I9GHch+Ji0fzgNJ1Mcwke4fWsxMEw6djgrdon35AxZRz697CLF9LPgqGZBPp1Q19
	dAi0vOfKqUbXskUDe8cXyTlCoQRo90X8i9JHF/5wo/cu5vBznJbyf/xPlFZ3i+Jq
	E3+9C2gvgChq5ujJZNN+JDSiQ3QwaBbi4dKFO230OjtfsRFcs2l5yXPa3HYUpWLf
	caKwyFOu0CI+7oqASvBWLrMEczhwnsS/otGB/XaREPqFHQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcr4q1m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:10:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fab979413fso86669386d6.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 05:10:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753704630; x=1754309430;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Z9/0om/fZeIBDRghX6Mf/qX8eJ5Ee46TLv/snXtU0Q=;
        b=lYDoVKac8eAXvMrpeNlW7ecuovBC1Fj+RGP0ezUaz3TGuf413fv4Z7rVXfDQe+qfoR
         fyZnfBI1mWfmk7MdejPswIycdiV2xyLRqmN/N4zHuW0e8CGJqTmI5GVnI2Rq8IFixhyf
         QYDbUgKSIm3u9Sa3qmSU6+L9WLhkU7y+1CHWVza6NyJW4cDfzGHw09Co9NMIkD9drGTq
         p4Yb/fz/81eYglNyWhWMqquABnDv4p9qHmyDwUOmCVYAzpF+Z5NSMSiciahWh47z/+He
         cAdRbyllrCFlxZgZtE5I6ItFGn8BzkT6E6hlCMS/ql9oKOVI4WqIJLEOMnjIavSqEIkH
         WQVg==
X-Forwarded-Encrypted: i=1; AJvYcCXKYPyb7T6p/W2cJc4ONZsLstfkNT9msLiXGi1kkNttA3gG7msrQZ8zbuwKL3gamkMPY5Yg/HqCIGen@vger.kernel.org
X-Gm-Message-State: AOJu0Yys8HKF4BnO1ct8myNlUFS2+jN97lfjqgfDDNeKvbrRKnEcDJ8D
	gTqbyYXvBEviAE5B9BLCS2UjpNK9co5oXOQkcOVXl3obrQWwby0JTzOScQMcf86DJjj+Nr9OkEh
	A5Nc18wI9Z/OqjP0gHpWsa2Q04hMQwmwbbNNsKJf6CvY+Y/H0+nvzpJRVay1Cc81Q
X-Gm-Gg: ASbGncstEhEVm3hTRadMtV4srzmw76u5B6dokfZT1MB+ZYZTF4wkT2psiXekROeDdoD
	bufUlxPR2NdwXt9RXkKUlJqp3tP9uAdAN/ekUjN/iH4L+xAy5qWsdmCIjHdou4UAhd15J7MO+Ra
	iycHlZbYK/EHReK7MzbbZrL0ajLsz6L1nmcGHVh0crrIiRmoPurcOWpn9jBoBII9ma393OnMQwf
	xds+qfz2kZMdNQVaN366mf3k+LNcHbM0pHM3Sz2xxN9WgiWewjiYEeLwmLeQqz5PM13u5HYNsba
	ujqrnRz1NezHPESg9ZZXC2xOF/Ah/Ler5kWJ01b5cSrKSXK8Dkd/Inu5s2x0/QXEI4vXQ7lOg03
	OYXg9JGhaIgdcpAeHs2CPjlgxu/dZD3XqAVk+NQ0YxDJNLSbrbaUi
X-Received: by 2002:ad4:5d47:0:b0:6fb:3579:8f07 with SMTP id 6a1803df08f44-707205aeb62mr185599246d6.31.1753704629747;
        Mon, 28 Jul 2025 05:10:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE71UWUEj466c0+xSs4DXPbga6P7ZAhusGRh/Zoa1xQUl8yEBQAQPsUMh54XKc4aG33mUXf9Q==
X-Received: by 2002:ad4:5d47:0:b0:6fb:3579:8f07 with SMTP id 6a1803df08f44-707205aeb62mr185598696d6.31.1753704629228;
        Mon, 28 Jul 2025 05:10:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63188014sm1259473e87.66.2025.07.28.05.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 05:10:28 -0700 (PDT)
Date: Mon, 28 Jul 2025 15:10:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Enable HS eMMC timing modes
Message-ID: <mth4grfyxsgd7sxw3i2uzjmeffpelsntrje2qhm3ru4th2nrit@sgjab6smzxkf>
References: <20250728093426.1413379-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728093426.1413379-1-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA4OSBTYWx0ZWRfX/cIOfEBcZ11F
 qWG4X+46511cVXCtwNUUsCEQGyJNJ7qeCPMx5XuW1rZ/X2lJBrnyEpEbGbrP8pbnHQuLN7C7CVI
 dl4T6UEORgZSR2ZaWma3kp9QWbdFGu9tPx7jG9RPC+Jxx42DvP1tsghNUJaruFWsh1sIeI3fQOv
 4+ihgvEJx6gqsBzogI2aEgG06FvMZLcr0Nfz0k7evI7Huwohurxe0tD5vTuWFc6s4xWU7FlM+Id
 SnH0PXgn72I6xzuS9VH6QxLl/4QhHxOMKbf2vfS99tm8ECdTTmjDS7v14RW91c3jLJjIQyDh0vM
 xmG1ZQEDUQxtH6PjZNDX4l50Y70C+R690riB4WL58Y22E4rWNikp/YJpxUxpGXKFsVLMH8+zwxd
 36yAXtRhLKjaTkZnYlexMkTHrlXJJ32dv1Pxbby0p1ABwclODem7Y7NwlunuR8sukdEHD1OW
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=688768b6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=F2uzNt_Jvis__oCUEkcA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: CYiK_w1cCwRa31uV1-DlikT1DxPuL7FO
X-Proofpoint-ORIG-GUID: CYiK_w1cCwRa31uV1-DlikT1DxPuL7FO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=546 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280089

On Mon, Jul 28, 2025 at 11:34:26AM +0200, Loic Poulain wrote:
> The host controller supports HS200/HS400 and HS400 enhanced strobe mode.
> On RB1, this improves Linux eMMC read speed, from ~170MB/s to 300MB/s.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

