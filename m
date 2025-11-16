Return-Path: <devicetree+bounces-239076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718BC6137C
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 795893538BD
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 11:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E9A29D269;
	Sun, 16 Nov 2025 11:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nVJSvkAy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AndtAZN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9528429CB4C
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 11:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763293020; cv=none; b=j8ymQrFDY6xqnJB59oG1iGmcTvuBXm2K+1t+yh7T8vj5GbROPiACUmVUzMNEQtIgMSx5IUW0YjNY7LYflhuz+dnJJJcAUW0M0yZPPPEBNgS3ruwEoHknQZiDMUI4nCxqraeo69mBT2R3nIwjoid8EI37jFXdzfIBzxh4UoyZlMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763293020; c=relaxed/simple;
	bh=7jrxjKLLHCYgpe/2ZXMQbyuaYicEtP2fnnY8ikobKe4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Az5k/cCVDGA9OTLoWpaW/lZaiIcIly3Yp1dQ+VQ/lWIOOlBLwrHV4a1dXIhhjeaMXhJUbwT2w+I4FK857nzvKzkvKCvi3eB5D/I3qfoaWdDW+CcrO524KQdr89ferf7m2oxOcKXkTSk2dRNl7iKbFvkaV5mF79ENGiqorCsMQQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nVJSvkAy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AndtAZN9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AG4vgDY049205
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 11:36:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rl39reuCjCw22KE1gWiy484p1w8qFeJP1HonyxL4J2M=; b=nVJSvkAy9sEqP0gj
	/pe3DkNax22Be5r5Fg5UPpXl0ZJYqcz832k6FuZf2JL+10ERGsZMWn3Mjx4WB38c
	JIKMNAVGJSif3A3wAO+6QnCixzEDb9J5/JM3NeX5tZBaQC8fomOELqby7MoyBXBY
	MrR52sILyEw5pOE4miTlc52B3JenwMzUCnj9wji6VsWZnKkVTifsSqKXobovAKHs
	5ohEuwDW7kDXvMAlhqM3TIYwTS2Z12cGUZ9hU6apRexMv2r2/tmDO9LfLCyznQ/P
	l4dPW9Dd4gl6Z37IwEv8UiHlOpVypvmbtiiHKUkKCyniooCWW7pA5Ucb7+RSX3f9
	m1pjjg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejgca1s9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 11:36:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8805c2acd64so115326706d6.3
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 03:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763293011; x=1763897811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rl39reuCjCw22KE1gWiy484p1w8qFeJP1HonyxL4J2M=;
        b=AndtAZN979UPUEo1Sm/QqQkaFVtUy+8i0hrERagejRkUL4RsN8psJ8pFtsskmDtljH
         Gp8UnD8XVJFDs/IoUuBGqVkCTBLGvVmRdYz75mhZFdKuV8kniNx2gKypfCFafUp2m5CL
         aUCbRP1MQ4Vv6qbISlP1SfMoPBJs50e3MekVXSSuAJ1p+4BHhtWVBHfKNgPr2Itr9Q86
         CcuzZYbJ3T7OOWZI3FAwg/URf6zM65qQbbG5KKf6bQni4SpAIefXWHLUtqy0BZEcsZDJ
         9D86d8MSPYapL8/0Ey+Udje2TCnp6d/C1FSE5CgVhr0NfD4cmLwtKccgwBbKN+TPHsU+
         Yl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763293011; x=1763897811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Rl39reuCjCw22KE1gWiy484p1w8qFeJP1HonyxL4J2M=;
        b=k4cui0U2+fYrf0qZFqZzuCsdFeF6jL7zLybpdnZeAmzHVTOfQr5lSJuZ39bSw/ITd9
         2nFtzlDForiHy2PIymaxyLVM9sJBNaFEaVV2OONIlvbmpnQRoekt9Xo9qRTDEpERU3xE
         CRRcS0oBkt70S1JHY04mDWtbX5T73QhHuXWhHt7Ij4n+mrVB+/g5D1xbbIVnGWUfD3x6
         rsprrZny1594IBsXxxzmxrTncMSCmEG+2AVMoNpYi7nDEd+0nmbZNw5/lqHRufzNK0G2
         e1akFsnykf93HuYfT5taLUKAjPC2qhdYmKHPIDPXSKRLrYD47VM4BSYah0qkWpUO34XK
         fNuw==
X-Forwarded-Encrypted: i=1; AJvYcCWIzkgIKOTAaM+Se9aqpznN/AX3WXd14sRvz/43GtamqEhQebZwloSUPSP7C/tfDniywVtM3GdSLjpj@vger.kernel.org
X-Gm-Message-State: AOJu0YzMMSU8KeEO9rHJ8hh+Jategf7miOiytUDWaJ4jWME8UtZ8MkNu
	AFc2wGnB1bZNwGrp3ytmYiwzff7QEA/x6Qzd8H8oDatiRPz/AJbCkNumw5eDauVGUZEyexAmylM
	cyJAxTUQYMzVaMGZoipOOzJDXSA4HErg8cpDAey0jySGYnLZCbu1wNYT7YzztByuU
X-Gm-Gg: ASbGncuAgds04Jiv/IcsJU4v9hIXmEcTMPqjFIqLAcJTgnSYvYfXNH/VlBTq80DYmuJ
	FIZrGMbj6bsx2AMr2hBk7uNm9WAxPjQBqum9mwciY/KhfTsHZ0IKEyv5sQiYPi1QAjtblkAT7se
	USlqkBaAvYXJkqP6i8/6U4rVr4wGrkGKQQjnYdl0ZFtFh3FKDtYf1+aEeiT/UhKw1RHvUexcULE
	YejcyLem5HnLHLsSTAbYUoggjS1T7beauLPnCkVJeDMZ1AFQvZkcuW1PGeDegwq17ETZs05ie9G
	Z4WGo2awAHZFg1T4QauxEDl3YkX+5NYWA3wEsCYHj/+0iMWWM3rR/et2SRMsCtfHM7uiz81Tl9u
	fmQVG36zQYBroh5CnC2HfrD3xv3TYT0d0b6ZT3JVn5hYiHrHq9ut9mNO4RtECZvRrRWP61+YFq5
	4Dsp+vbi2GVrCD
X-Received: by 2002:a05:6214:27cc:b0:880:8682:9b46 with SMTP id 6a1803df08f44-882926d3d4emr119921046d6.45.1763293010848;
        Sun, 16 Nov 2025 03:36:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEuuYZ2qRqPnytT4Ht0co/lJBzhqi3uZOB7XLqW3GSAiQkpAB7HtaYH7TYIA7VhA1y0LSU7PA==
X-Received: by 2002:a05:6214:27cc:b0:880:8682:9b46 with SMTP id 6a1803df08f44-882926d3d4emr119920746d6.45.1763293010314;
        Sun, 16 Nov 2025 03:36:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b3019sm2294925e87.26.2025.11.16.03.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 03:36:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maud Spierings <maud_spierings@hotmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: (subset) [PATCH v2 0/6] arm64: dts: qcom: x1e80100-vivobook-s15: add more missing features
Date: Sun, 16 Nov 2025 13:36:06 +0200
Message-ID: <176329291083.1920848.17290380320695043230.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: MLN4soKU_EwpmTRhSaZM_NmDWVmRwyC0
X-Proofpoint-GUID: MLN4soKU_EwpmTRhSaZM_NmDWVmRwyC0
X-Authority-Analysis: v=2.4 cv=PJECOPqC c=1 sm=1 tr=0 ts=6919b754 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=DDbhtB4dO4PzCpTsSXkA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE2MDA5NyBTYWx0ZWRfX+1Y4EVp+YTAl
 34wGtEQf/1YKoFLTtSgGT3lFvqZHDh3YuCIG+zG+TkN9kc1yz+t/t3/SQ3yuOC3RJjZjv8vw4q7
 X3dsammL/uVt8CciLFMbyXZieYy65+nMfDtFLVvkkioowr4qsV78/risNXI/ENPA8pdZFZom8xW
 7fVtuQuPha/gzpiV6DyTAHqpMt9sMkZlG9xf0fatQuQqpxvr+1eZ6nHGKUB7lgqIQj4ROSn0MNF
 C0GT7UCycVWywxeVFiLzU/144h5Rmcf782CLSxMENo6VdkuCNJEUsL+snVw25B71c358LWAYLeH
 jXSZWpmHxdc2ZblMjtRRJ8eeT2T8w9XhfY0dkNAh8kZbjW3cwldWjI4lEr40+gMVS6H6Tp5LAKs
 IqokZu4ENGOGx1MKYuGDt85ODtyg+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-16_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511160097

On Sun, 16 Nov 2025 11:52:05 +0100, Maud Spierings wrote:
> There are still many missing features on this machine, add the ps8830
> retimers for display over usb-c, the simple bridge/HDMI port and set up
> to use IRIS.
> 
> Currently IRIS gives a ETIMEDOUT, not sure what that is coming from.
> 
> lots of these patches are very strongly based on the work of other
> maintainers of these snapdragon machines, like the HDMI part on that of
> Neil Armstrong, many thanks to those who laid the baseline for me to
> follow.
> 
> [...]

Applied to drm-misc-next, thanks!

[1/6] dt-bindings: display: bridge: simple: document the Parade PS185HDM DP-to-HDMI bridge
      commit: 07b391b6f99bc1e62f41e4ac249e7c82d46480aa
[2/6] drm/bridge: simple: add the Parade PS185HDM DP-to-HDMI bridge
      commit: 92c49b3f4df8f9acfa95551ef38fc00c675319fd

Best regards,
-- 
With best wishes
Dmitry


