Return-Path: <devicetree+bounces-239950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF3FC6B168
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 19:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 904372B745
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 18:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBAC2DC339;
	Tue, 18 Nov 2025 18:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HYU3XwiJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DiS8SFDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4D02D8365
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763489004; cv=none; b=L3f1tw+o0qYPKNdqtdxuoF6mGBVzuArPQ8sAL4oJiGvmAtgfFPwLfQbu4Goh+z4DyNUfiXJNnnZCQzpxaxNaf6ePDHqpR7U96NwRkMVv3pCvpI3qaO3GnJhozU4peiMAYZGkXW0QMzGugMaDM7GBy1JpubNtvWidhs8hFxPdSi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763489004; c=relaxed/simple;
	bh=ZiwKdZT/b7+ZKy2Xh4g+YMNx7i8CqqIZ5SO+OHaO2tk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E1x108+oTNI43nHA/ehFrfUZrHmyMhfydc9Mlkcld3apmYJCX3neF+iEpsETJqnPaKU0LBceEHbbMLgRbhaHnBRPlC4IitULlMphLJ+Mc5rAcP8OtyRUpb/1sgoHCsBEBxcJwZqJoaNGogChOUC4wvudy3vdQ6w584W4yc3jY08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HYU3XwiJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DiS8SFDe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AICAogV2802300
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:03:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=l+LFPdNUbdnChxjtlZMpFeBG
	dxNsKZ+vbm5ueraslPE=; b=HYU3XwiJwipEjwM8nwGRGl/0eemfWWqeaedX1iKf
	3aFG1MhaC5F7M1w2TXtlKwh8MpI6Z+PfXp59hD5x3bEeccs2KMbleyNnmPl3etn8
	7SZs8UnCcIVW0AjXsi+14AmAB94ixU3G5p1gRW+QKbZdjB6bK32AjlVyM3dmlQ+f
	AjQyVnMeac3lPvauYL6cfPqZlcbgumlcKceTlqxLQaM7YbcElRGRtdEpYvh5ZpuX
	RPOxx7GwcC3bQaiEX+QFmOzPLgUOeiMFmaLXPaTkBtDKpqpCQfOdLqnMA01Rcm92
	3wDvMqlZlvrHzrLF4OYnIsmQ+ugMUZAoeYqeA2h9A3PtNQ==
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agrk212np-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:03:20 +0000 (GMT)
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-4331d49b5b3so137969935ab.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763489000; x=1764093800; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l+LFPdNUbdnChxjtlZMpFeBGdxNsKZ+vbm5ueraslPE=;
        b=DiS8SFDeR+TGnKfdR1OV6Dtuj3d+v6vfXZ0tmr0f9u+tqvjimblQQGJzp8SwZukJAS
         wLfW3ebTvq0ZcIySPXRYR9AZ/KQ0p36X4i9ik0HUwLQQQjRpb/49dU0EfptFn3agWNLi
         V2Wmyaz9LarSjx7pdqm7IisXhlbRxa5IyQSY2z5n2bSvjdSXjH9kSrcu0JmVL1Sa2pXN
         /yh6LRQnym/LjJQIBuSCKxk2CTT2gmL1h7T6izuevPOVWzJEgc+A+Yzud6QbmzDBLps9
         qfuFmI8VssHGwXBk0dE01vyaUKgUY5242SvWux3zp95ZmPAP3FFthXjR5uuwS3rfvhdS
         sMaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763489000; x=1764093800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l+LFPdNUbdnChxjtlZMpFeBGdxNsKZ+vbm5ueraslPE=;
        b=aIrkf5To9fckWBbu/kgs6KN7OJLWCYq/Q8DMev0wvyZGlTy/YoeHDvktQsALAWari5
         BpXFsIMPsjxWn9ipT5Y9gq6NG4Zf5Hbx3kNaoAVK8huIciob+J6xaaPitNVoxpsEh4Zd
         pdJqE3Ww6Iy/CCF210zaG4ydLPiBFdTCC7/jBicdWBQpCt0vJQSKGTZuP49WBXyDWPuQ
         UaxYAAesRRjJUfpvILgJjf67XwoNdGNBvrOMRPAIv6pDdpkvV59mvefYroDj9cvJzb2l
         w0iL4MHl3DQY6Sbdzjs6CLyVb5dDR55o0jJDcyMOSW5xd8YCHHgmYoRNt/LFaExHpDEz
         aKUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1mYSKCBNWFNBwIf3l8P7+g1Jamm3W1nbdrq5YUM81xnJ2NWstR95mC7xqVa5uKBe3HjrMlJDm9jeu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+1BiUcmu1M2RnbOBQFMwW9Mgry6C4Kc6pq2atUM6YdfSXp7sP
	kKHrtIK7boWZfJ7hNY3mP2KIzt39yJSo2PEV8CrHdDQ34cibubqcndwjlARb5DAmUHLYTKwsiwT
	ApEWdQsmjh880DiWhm0ULh+0cNRN5jQwk2Xs7KGLvBlOO3yGWTTvG0W5lRhJdDicF
X-Gm-Gg: ASbGnctLd01OhUj1TL6w/DrofQfNAVJl17+fwedo2/SM8nn8ItLva0kj4yhbW0zKLF0
	8riE1kZ7YSvoQgWNlmD5pY7AJvyFeSscXREKPphuBP0DCIixFW9LmuBvpuamMZtm10rSibsElz9
	lNoBkoBIZLLK+c+P7NSzoe/htM+40F5GZxJOY3Ep2AhKF9zr6FWq8/CheJCyFzLmFy9Es3Rg2v8
	TmRoY9jpkQT0Aufu+hQrgzgm54TZaABhrB+kLlCZ4M/OBszhB3W4CSohibbSq1rdzctA7Jpxg6j
	SRAvXTRgeOhXjlQ3pYjT0Fo7yls4LKh9LoS5Q6/b8CiIQ8ipbVcwriiDnUQFqnppAtwFLLmgi7d
	Ow8ArqlShhXD5ac0rZmtMPWZ00T3l6jCFsSLAoiJCQYbRPt0s0aYkcL27FgxFK5c+9CPnB7hGnI
	eEJIeYoPkTIDWH
X-Received: by 2002:a92:c24c:0:b0:433:3564:66a5 with SMTP id e9e14a558f8ab-4348c8ece4amr218286655ab.14.1763488999664;
        Tue, 18 Nov 2025 10:03:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDGe4BtQOcG6Rfn9KhKjf3bfHRFxwHEFjJMkWf2eeVTSBud3LSJ9z9RFhwWMfdRM6Xxc4W2Q==
X-Received: by 2002:a92:c24c:0:b0:433:3564:66a5 with SMTP id e9e14a558f8ab-4348c8ece4amr218286215ab.14.1763488999129;
        Tue, 18 Nov 2025 10:03:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804003e4sm4137514e87.67.2025.11.18.10.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 10:03:17 -0800 (PST)
Date: Tue, 18 Nov 2025 20:03:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] clk: qcom: x1e80100-dispcc: Add USB4 router link
 resets
Message-ID: <zqvvlxogscu3vyr25fdwq55ekbs4icrnvbef3p2isvrvppgubx@xxwhmwov3sj7>
References: <20251118-topic-usb4_x1e_dispcc-v1-0-14c68d842c71@oss.qualcomm.com>
 <20251118-topic-usb4_x1e_dispcc-v1-2-14c68d842c71@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118-topic-usb4_x1e_dispcc-v1-2-14c68d842c71@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=a6Q9NESF c=1 sm=1 tr=0 ts=691cb4e8 cx=c_pps
 a=5fI0PjkolUL5rJELGcJ+0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-UlXLyfOqKNP4VhGNNUA:9 a=CjuIK1q_8ugA:10
 a=HaQ4K6lYObfyUnnIi04v:22
X-Proofpoint-GUID: 8y-704go-kxVgqYDpBQM35zmvP9mveQn
X-Proofpoint-ORIG-GUID: 8y-704go-kxVgqYDpBQM35zmvP9mveQn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDE0NSBTYWx0ZWRfX9hmHPVAuQfMZ
 nyMyl4MF5m0GJ12R/SzwmpKjwFZWlvJRlOqpUmBsbuWj8phgJvhzYRiicaNp1vUxTMMdixZZCGK
 dVpd488lZWNK5MOkTF2Q5mvws3EAYDhPWsv/SOYJngI666AeKdq6SRGttK8LwlgzZ1Vr/mLD+Gu
 l43mUXuTk+m9DLsUxWjWIBB/HYmL0bGjjLjw28jVJwr8EH5+YWCFNker256G+WP5fUbCY97FiOS
 lfCcGzonYWauNlKLG2UUAUGSje+Y7RUmLGYX9awILBbIXEmwPzV8PIVknLxhyp//AnqVW6ByRdV
 EcZ7ACp6rhOPXNf6FZ1npSc0yw1jN/bSY/bWFFCQyUb8eS6linnk7XPXUBhZ8ayscPsAEAL54mU
 VFxdF+7/wbxDOTXKxHtyz7TZkSe2BQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180145

On Tue, Nov 18, 2025 at 06:33:12PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The router link clock branches also feature some reset logic, which is
> required to properly power sequence the hardware for DP tunneling over
> USB4.
> 
> Describe these missing resets.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/dispcc-x1e80100.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

