Return-Path: <devicetree+bounces-270853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vqMRB56tp2mSjAAAu9opvQ
	(envelope-from <devicetree+bounces-270853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:57:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8CC1FA8AE
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3044305BBF2
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E98937DEAF;
	Wed,  4 Mar 2026 03:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CpgL03dJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EtVuuAmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C40F375AD3
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772596635; cv=none; b=rXGkOriDrFs45JaX+A2KMH5VYpGIOc617JED5DOYTw2IXOhn5Vo9cziwMyDz1rcuui7p8VxxYVTK5WE0SjbJTzsQmFjwb3Gr6bZpMYUZNHAqqZIOZwfQ0XTQONujwOxt/zJFPz2fLmEAJrt75NcnhGWZ6ek4FaFWnTzhIZ+TArk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772596635; c=relaxed/simple;
	bh=hYrGw9SnO50nDCKMjQLbwhp8JgOXABbtrMVdWcK3DBE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oWC1N7XRuThN/XDQmhBFEEvWaMEwJjBaWdrdJev8bHR0W64oyJreFacS+7BLGladJEqFogFBPckEFjSoyMNwxkf1bdLMJtBUEARMtlj44OGWndJ3zddrUlBHchpau3I+MNyEuK/SMR3r6BT7s8vaDeU/OpP4lESzXgHMr9ixwDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CpgL03dJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EtVuuAmZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6242paib2786691
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 03:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=issDwTTs0+YcI+syXy9krVtq
	LG+hmBkYoQyEcjmwSE4=; b=CpgL03dJhlzfOUjNwxYZoD+QL1GPz8u1krJRP6Jw
	PWJmY/uTjH7Qnyqk7NCEpR/iKSwzXMFYvVOxRklYFkRymVWFZr1chDJqm8XigD6E
	/6XpVEkJWJhHp/8UE1lWTO+l9E9ve76OQS0QdCNIz1UQHdMSAcNJTuxK5BTCjtEk
	H+NfS47GT97sWdcXaRE5u49bcNW7nBltNCZalQb9ea3e2URiHwywn5Wx+92gKgO3
	5XFF0iSGozaUnzRxdUIylesgokPBbDGErHoxyfzjUfbID8UWe3SNBQYJMJuIMhbf
	BCqfPguMqdfR1UZg7IhjsVl2DP5oAsFmt5Yflp+O6WrZ9A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvj0aw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:57:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71156fe09so4024863585a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772596632; x=1773201432; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=issDwTTs0+YcI+syXy9krVtqLG+hmBkYoQyEcjmwSE4=;
        b=EtVuuAmZVoZWshVdG4vI6ohxlnyvZPQpMSrLtpSdgrwa7HXs/6n+O63H5r1B1qHWgC
         1MkD2AEJFRVgq03k37lSseP/AmLclVRs3y8meOtIEZU2V5r+H8hPt+bt94Zj0DDo51SA
         EOLzOp272tU0At+UlMQh97iqJ67Xj1K3+AfVU/U6Me1jTfv65i7aIenI3ThRmg16Jbnu
         UccOzNxRtJiy3GgcuAToaGQ4eyyaC6eTs5+YSmxQVQdLC8jYCG6G9lqSgSQfMw4uZuhn
         XSVi+j9qmvUerexfid3qEIioUMkrPOzRHWhvmRpPjDTnYKYATV87zBh25MJYQtGqQui/
         CyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772596632; x=1773201432;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=issDwTTs0+YcI+syXy9krVtqLG+hmBkYoQyEcjmwSE4=;
        b=OYQh2s3T9Wmj9v0Y40YjDTxrr6bLcn6w+rt27A5eImHSr0cLIGxaVJkEn/1SId+o3g
         JC+Mul6VCLe6fGqskCQhAfkdeCQNoqCwSOlmoyqgtR8fb+bi9CTJsvSr0BWa57F+zp2/
         athUoTw9PxeFykNBw/6RhK3UnWfCcHySTZ1fZ2eaY0vuyaVQVNjjsCM6ptqLw3Bu+siF
         OkGGFgbs3SL3wLNjeFdlqIKB0nfKOIsdAvpmQY7zZ5KMq9jTlZCNfS6AiozTJNr3xLvI
         vTZfmJfDMyVhQN4nAXahJDpf9EgwIko6aaA474K86zNjTVx6Pch4Y3uTjyMrbBM1IDif
         3GIA==
X-Forwarded-Encrypted: i=1; AJvYcCUS+cx/TUJThoRQ8abroZiSYI8N6bdmTlxVt8s/5fbfw4iDEMFsXyitDpLul1PvhCWVGN16JzeRNbF0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/2Ta8Yn11QdF5sWgQCYVk2gzZCZOU1OvgOGZrbY2UJoSFGBoV
	m5rpNLIARq7KnJ103RSK/Up+r+iT9fjWQ+QQxc+3LYtMYunzUkYKdLKBl8ZqBn5h2TWscS1ftnp
	yxCpu1pHPfiBZLIog6e2IoPNqDbBSUk4fQt7InYshwOFVIyhl00RcYUKSi3OpzIxp
X-Gm-Gg: ATEYQzw86SGS4ymP7nfD8m5ydQn+pCv9DJKdmddYhZ1mE80ZLDc6ZBagruv+MpYP7XF
	TGfFj7b9CqlcdTzDW35XEZ+/LQFgaRa8dyvK8U13lEn4Z4Xq3bwb6WJIUSGJ2QOxHcvLLDV9aT0
	uHIkko+3eaA9Mty64A0Stv+I8Bol/yqNvY0UrVesiCBJ30mrr/fqLCmZ0DWrbch1YeHVK9sMBYi
	iu+V/IF+2cx4Ge9bvNvY7krbKdQsuMELnkaSoxgsBiNHL+mREKYTWwiVbBeLUXYSMiWL55sY2Mc
	k6xOipEFMqfb3BTXVHO2KiijpW3V4UEhVyXAJTYm0RrAxpZvmVnqw1v9+sAEe9TftLac6bNKqpY
	CJwka2E6uX7t66qd9OzUZcc5LOWz1XwIcnCkMBZ1EfT3bfvBVz9KQVS5HbDPF/ExfncY5owV2J9
	3e5p4JjcBL0ERAHx4Ls5HtGCPiod7QYEz1Lyk=
X-Received: by 2002:a05:620a:4481:b0:8cb:6b4:7007 with SMTP id af79cd13be357-8cd5afd23c0mr83420985a.81.1772596632292;
        Tue, 03 Mar 2026 19:57:12 -0800 (PST)
X-Received: by 2002:a05:620a:4481:b0:8cb:6b4:7007 with SMTP id af79cd13be357-8cd5afd23c0mr83419185a.81.1772596631936;
        Tue, 03 Mar 2026 19:57:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12a6e4c01sm217909e87.1.2026.03.03.19.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:57:09 -0800 (PST)
Date: Wed, 4 Mar 2026 05:57:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: monaco: Add role-switch support
 and HS endpoint for secondary USB controller
Message-ID: <d3n5pvjmxu32y72adukmeortisfftovhyybwih4xgfjbxbnk2r@gblewcjamp3i>
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
 <20260303082157.523847-3-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303082157.523847-3-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAzMCBTYWx0ZWRfX66rCzB/+N4+O
 6XR3WZMBhxXuM2Z9YxVuqy4SJDFE6PRbYo52c2MK6Bx+5+PZ00qn3B3vS8HXDXoXlviOVP8GLQ2
 R+l13/PtaHcCkKoNG4dDoe6Mu+UE4n8ti4gE01+1Jum2MuYYrZPJBNdbqSsUL39zFOsdF+eK0pA
 +SXCwLj3qxZH0bguA+qm23urTZdlda2z4BqmRDRTzQLXx6ExBPA2Pkyzvm7j20gXUGWjZCCgq0g
 pckzQoQxPwcPCzWxk4aLgiJ5YnPHYJoZkJ+XD7f+rD/6++MSwjnX57eG0+ZVB/PyHaGZz8Up9TJ
 dYuCtyGuIfLNjrKIxWh93bIjEPTGmNDL2GZ86pmjFxseXqRav+Kd8T2ibZQY053m53ev7jBQ855
 qqblQ3f8AZAqk5lSuqZnz3hEweqH8g3Lox5BxkVzlonkRBdebolU7Ejdo/CygRLkVbtOSA4y1xs
 Wdg1+7JJD1uB8olXlpw==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a7ad99 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=Fc0q_dUaYLOeU87dcmQA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 67jkDim48ExahjBpBQoy038h6WbVWUSI
X-Proofpoint-ORIG-GUID: 67jkDim48ExahjBpBQoy038h6WbVWUSI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_01,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040030
X-Rspamd-Queue-Id: 5E8CC1FA8AE
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
	TAGGED_FROM(0.00)[bounces-270853-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim];
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

On Tue, Mar 03, 2026 at 01:51:56PM +0530, Swati Agarwal wrote:
> Enable usb-role-switch for the secondary HS USB controller on Monaco.
> 
> Additionally, add a port node with an HS endpoint so the controller can be
> linked through the DT graph to the corresponding connector.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

