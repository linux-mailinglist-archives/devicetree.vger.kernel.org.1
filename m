Return-Path: <devicetree+bounces-321272-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wisuBvTOS2qsagEAu9opvQ
	(envelope-from <devicetree+bounces-321272-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:51:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5808F712D35
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:51:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=A2dUz9US;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZLCCjbOt;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321272-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321272-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 149BB39FC925
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 14:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA30B3FF885;
	Mon,  6 Jul 2026 14:29:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D753FC5B5
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 14:29:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783348191; cv=none; b=L8jRNfJ9rWfbZI/onft1foVsdvI+mFTwCeQsl1dE97diaKEycHvt8+Sy6dZq1qBkrgsfo76QIdCOoNvg3b5C44Lzk8r0IQuUJiWyLsZFi7hSl7FTHTqlDtOSTllighk5lODZ6NLJ/g2Icrmyux5ptrXVNfL2d1nEl3qzGN5rkmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783348191; c=relaxed/simple;
	bh=8vEnHRGenzBdSJTnGUYW/EidTO23K++uWyMCCMhRIrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QCoIkxoKiiA5xqzRdksBtCSz3Sjh0qAgbiW9xGlVbyza2B/YLLrQO3f9HmVZN0IhB3jUU8WhayyUN39uxklKKXOVF2h2VRNrPMfrbN3j7p7wA9mnhsyft9w+tElvaI5XA6AgPSxKFTJCXDfZv0myFenFRabhvZCRaCnYXyJzv+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A2dUz9US; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZLCCjbOt; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666EEeDj839262
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 14:29:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0E9exI+cddKw0j6jRULMOf3c
	bU7Gt39SEkbobqxG5po=; b=A2dUz9USbo/UDb31TV2VTXtUJScDqsXlYz9IrPPw
	DiMAj/YTVCxm9EYoJ+NDgYUnrNZQGYCQhl3iNJUyo5zO9kicU35ipP91x+5hJaRO
	35yVVtVlK/k0RqWmm+ZodgYxLjItV1J+lJeva6ex9AgNIPFxO2Z1AA7s/tsgpD9/
	QjR3EoLdCtrDdrJRyyHgi5inTeFHCEk8CH55eaO8lVejF4KKkAW4uzgKGhAITTdf
	IfjbDsC3rj2P/PCG25ZAp58XjOWKNTgg7RxSFee2hoSfocWdwIUITClYGiUP6aNy
	5/0/DIlhCzKRWAd0GhAwWM8olztsKpabsOPXTIz+NoJWYw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89qph8db-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 14:29:49 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5bbecd25037so431788e0c.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 07:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783348189; x=1783952989; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0E9exI+cddKw0j6jRULMOf3cbU7Gt39SEkbobqxG5po=;
        b=ZLCCjbOteS2m1RmXRl/VItGeVPbEA0vx2yTJUF087Djr/WNrIJlPw0m/ajow0vHMgz
         VV9xwgNY2+/6okf6lyKcqWF28sl3YG6EE78VPD4hb2EhiEWzM7ZyPbsk+B1NyCp8FACk
         FBqXtDREkeMuvU3oXLp7XEH0BZ/6NHRnvVrUSzTScjP4nusiebsYOA7gqCkPhWr/rX6I
         CvbaT4uTk+YiaN0sQwQpmxwNN3WbYlBldCD75Lr+EQAueMfoTR29p8n3aiR3ifL5y6jz
         z/bEblGvb2TrC67UobiC0WkU8I6okPFGXPuCG87Z8MwKEC6JKQGxOOQKUEKHIev+ojSV
         NzLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783348189; x=1783952989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0E9exI+cddKw0j6jRULMOf3cbU7Gt39SEkbobqxG5po=;
        b=AeCm2B7GfhA0279Bn7vzbAROo7izOt2k8lX3AuJGoD9BpIlqXDaqJS4ixP80FTEhP1
         cOhh2u+90h75e4SSjic8YjCerEgcQ+OSo5jmxFldN6uYrNNYhHSyI9HgxE3FTvFl3Lzj
         E5DwY2eSkQmHzpJeRYNwr1T259NiXkgk7LsU3JEr7C1R7uBwzkyTUgIILv2dXrdvaQ56
         TZ/CIdVDQzT98hfA9YGwaTTbC+ucUCWnTAK56cUTfF0lEqQOXJTF6Sp8XuvKNLbvoPJN
         Z4idsagoxKLgqKCkSP6ha9NdPJDTLjXU698Y4NmkB5NEoxKGm+ARPSsVpPmzMXY6/ft9
         K3KA==
X-Forwarded-Encrypted: i=1; AHgh+RpX349qSAfaL7NB3HxetgrejTNZVFsjQebt3Qt04Acy6oPeSfjwlDbk0gXmQUjBkkVJYuX0+rENkRIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwqOXHPWd7936ZSEi/o0tXzF7yZc4Use5O1jtN3Zqc0+5hw5esC
	SjZ77biEwPeJBx0o3OXBc/GPkjHVibLZX9/AxjbbUT7txoa5OHb1zH1+qQMsi5IRuXvHyY6MnTB
	dwFA/YxU/aDVh779xqbi9af/GMYlXDS0xd047uiw/E5NMor7VN12200mtdteGc6X1
X-Gm-Gg: AfdE7cklWBUX3KmEGfe+T9SVA3hNer0Omuoy7nLP9KKWrn2pXOLPdc+HcaQCQG3mL63
	SWGLcabTDWi6A+wSTuEbU4NWStaAT5WMbeusmGPr87dVb4KQujgL+iT8Qa3Atc2r1fUxYq6vewL
	MaT2BiwEWp8z4cwOYOlQutJSOHiKtReWts0lRJDboOyTreWP2+Ap5ZIcvUnxufFZMqIejP35vhL
	4489GO6odvpyruKpofnV0FhgGzQp1Tc/G8/pxO4AYlCNRZYjWX2JdP6591J7ZqldP+oUTZ9d35N
	2i0cyubmOVwo03OTDBe7zLRZi6ENgoK0Ae60cNlN4J5gMoDMcpohZ1DZQtpvE+hn/p03oXKkvQc
	l3aRi4UnP6pEM4Ucawkv+mQXpEGwn4jHx8WF576ZaY6rzVyvBk7povuzYQz+bAWjnV9mPJb0gq2
	AJMigXhi0mmZlQeEXdU+Jzxxqb
X-Received: by 2002:a05:6122:a15:b0:56a:fff5:b4d6 with SMTP id 71dfb90a1353d-5be907435fbmr420996e0c.4.1783348188831;
        Mon, 06 Jul 2026 07:29:48 -0700 (PDT)
X-Received: by 2002:a05:6122:a15:b0:56a:fff5:b4d6 with SMTP id 71dfb90a1353d-5be907435fbmr420979e0c.4.1783348188369;
        Mon, 06 Jul 2026 07:29:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c8c2dsm2887085e87.83.2026.07.06.07.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 07:29:47 -0700 (PDT)
Date: Mon, 6 Jul 2026 17:29:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jishnu.prakash@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 3/4] regulator: qcom_usb_vbus: add support for
 qcom,pm4125-vbus-reg
Message-ID: <amitzgw3327pz53msqnicbd5c5zw3jbnwbcxoi6tyzb6fy377a@kopxxlllqw5c>
References: <20260706-add_pm4125-vbus-reg-v3-0-999d78a87b81@oss.qualcomm.com>
 <20260706-add_pm4125-vbus-reg-v3-3-999d78a87b81@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260706-add_pm4125-vbus-reg-v3-3-999d78a87b81@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c6qbhx9l c=1 sm=1 tr=0 ts=6a4bbbdd cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=eoxlGDcgPB-HuCwanXQA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-ORIG-GUID: V67NQtrun9YaeUfYqxFZWdKEeLytf3aF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE0NyBTYWx0ZWRfX9320XJ9nmPfk
 GUhP9gNdJXpcDivTbhofhX+I0HNirXjJKQm/6iv4hKFl8i+XaTh9Qyd79WcoD4Q3K7GNaogHL9P
 c8o5sh1esIXfO3IN30Oj80fukQ18heFKrSNAkhaCcQE7e9SwEURT2LEcUHsBbFnU044JJmief91
 TjfnKt7ft93nHTLEgneTq4PVBXkMHADm7PJ9Vb/Bcl6qQ6upYApteiCTZCtII3H7s5QmNN6ilR2
 es5RHmIsJBnx63Zje20Z+zSZEQIHv/s0Th4lZ950+bQdTtrFKg9iIu1JSH9xJI650OF+nuTkNvp
 /kqzFQG1PLBK9mQaQlvMUjBWi2N7ILhO0yw+wS/8Sreb21pzI5oy9i0zR4/66wHAN0hFDJS06bd
 RPIlJDyGcDvMPZjHSw8mic1dFrdky3lYOGK7bxqovHRTQ9xvmNLfKpdfh+mKQLLnhAHCNaT2VHG
 jAxOfs26SpVyBA9NrCw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE0NyBTYWx0ZWRfX0bJRS0QKxm9p
 8fKX9g26o2jZwrtm/IyxnpbxE+BaGsUVU+G6zsZKnEV6YmCX3pmMMXrTLhemzzp9zPd2fu/C0MT
 SGIIVwml8zVHa8f+4SBK3dyLdtkEw4I=
X-Proofpoint-GUID: V67NQtrun9YaeUfYqxFZWdKEeLytf3aF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060147
X-Rspamd-Action: no action
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
	TAGGED_FROM(0.00)[bounces-321272-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rakesh.kota@oss.qualcomm.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:quic_wcheng@quicinc.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:bod@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:kamal.wadhwa@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,quicinc.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5808F712D35

On Mon, Jul 06, 2026 at 06:01:07PM +0530, Rakesh Kota wrote:
> The PM4125 PMIC uses a different register layout for USB VBUS control
> compared to PM8150B. On PM4125, CMD_OTG is at offset 0x50, OTG_CFG is
> at 0x56, and offset 0x52 is a 2-bit VBOOST voltage selector rather than
> a current-limit selector.
> 
> Add pm4125_data using the abstraction introduced for PM8150B, along with
> dedicated voltage-selector ops and the pm4125_vboost_table covering the
> four supported boost voltages: 4.25 V, 4.5 V, 4.75 V, and 5.0 V.
> 
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> ---
>  drivers/regulator/qcom_usb_vbus-regulator.c | 31 +++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

