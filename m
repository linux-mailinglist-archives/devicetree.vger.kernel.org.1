Return-Path: <devicetree+bounces-276732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMvbMeRsuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:01:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 419F02AC9A0
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E207930D0DF1
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884863E8660;
	Tue, 17 Mar 2026 14:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sm279Wj0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WTpof4j2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EE53E3C6A
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758879; cv=none; b=BA9Z7ojIKf6Ar1Ixz2zlyOwf52NyBaKDxmM5h3AsEgaSpuMCt5g4dhf9jVVdzDcT1YeBl/RxXvWJfD+nESDUJmBt5/wbOedHF64fDWvt7FXkLmiKE0FCTa3P88lklm4l9NGnWZwgvS/GqIlHVhwszKMi+QfDvJkbdy8e352YZlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758879; c=relaxed/simple;
	bh=imEYVKw2ikzk34SNWoDfARLzCwp+j2gM0hRCKgnVAho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lQnMQTElH4axvBaM03qkEfqG0KgQLcj0eS4udrSG9glZELWgX3E28U2rav9r+DTRA/Xg8MOG4i9DIhZe3jiRxPtPEm9QxWl6up9aWwPnW+CXjvR5F4TdoDCeIWc7wUJhQoffHWwnPspPdphVIuZhp0/U9YR1x5tDhuXOe6kEd3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sm279Wj0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WTpof4j2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HA3Meb2072294
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:47:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=l/tQmdeqMmPxPPt8d3p5Iiyl
	S8Qklua8YgPdyWhVMAo=; b=Sm279Wj06VUfSMTtFMn6PjQkVsnNaSOUUBzi/Lwt
	Je6vO8woWqYM0bg0VSpU9vYkOaP/fVQPJQ0i/KdGBYKAnojlrRDMLvFx2PYRiSQT
	YdemnjHsCk31fOqiT6D4p3vtw9+x3kZLVF2arEKqRiT3vgpSvTuSYYINDuXShHco
	CWBLn+C28H3FUD5X8zKmX8VGWlWBjslbUS3O+/K1a70SkCKu74JTwTCyZsKOaenR
	gqACrBOf0Im2+HCqrnCk6ZY5hALhE21lNw4hzmmYoeZ/j8/i4XvfDQyMoRqDbWOl
	issfGIgjKr2TOz/tzkqK8R2y5feVXzSX1PaD2D617zcQlQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy4v6ryxg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:47:57 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd773dd409so808940885a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773758876; x=1774363676; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l/tQmdeqMmPxPPt8d3p5IiylS8Qklua8YgPdyWhVMAo=;
        b=WTpof4j2eIyhDuw5cY+6nRYmQfRHLC1sQiKH4d/C1pIOC3bCHMKx2xK8sjTmDZUH0/
         Abrz6TfzbFfAHWXYoUOFpadcj3G3tY9r/LJd19vkvGOAcx7VqLWRJa/OLR6NcljHQeNw
         CJWExKFlwA82CwCGd16jRSVhxX4BWTDI0NmjiDFF6Dail7euiPZDRSSVEYg6BAckAyBE
         CyXeya4yu8u/EHmoLn4fdGkidlimjW/7Xn/3c+E3XmHxI1Ilo5qVc2rcKTvtmk1Bemi+
         R11TcACAMjQHDG9OIE1HF+UAdpgTT0tWbit8j3ihobHh6Uw9XeC94w8sMe5a3rZqtjD6
         veMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773758876; x=1774363676;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/tQmdeqMmPxPPt8d3p5IiylS8Qklua8YgPdyWhVMAo=;
        b=Bp0u8rMP9DIuLoRd+e02cub9BqKHG99m8znBh9lnBkn+dA819ZLonEY2nXGORaWSVk
         bn4iKrIeDB8qunu52UiKulmo4JqVw+ShADsvFOQdr97rd3f/dltUWPc5ER/UUCZBWPmG
         +PJkx6iJicAYGZhRWkF3yT9ypSX0EeciJLsu2/NroSe9ION7zxCNqgab8cyf4LwhU1MG
         Zlb0lQE5F4RyJqkkhSV6b/rBC224C5ZEQmG2hhuo5qzxB6mNms7p7UToN/wdEXk9L4vA
         LhCyhbG257YoeKDskHbx0ZDVIZbHFjwUYlK77G1IH6JJ1tLN6yp/mWUFSYQCS1B24YUf
         ClsA==
X-Forwarded-Encrypted: i=1; AJvYcCUASynzdfPCH1xBhzlpaLu3/fZNR/HjZ8fqSmA5hI4B792bo1fVD0vhBlRbiSme76wnHIgwCT/JG+Bv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0+f5CrW6BIoDmR7PuMrrDQrhldWlHd3fzrAjOtCDzGDTma5wt
	za2psE+6A+cIo6kcqW16PaDW22LMPps9qfT640LOx0KwdYG9eX71OQ+5lgQINWSZiepPQI0gMF1
	JCr5+Jf8rNKUF1XZjdmqNyvWziIo3hfq8EXY91cwptFwFghny4EiwvWa7TKnJDKRLy7jHG+KC
X-Gm-Gg: ATEYQzxkYBZCtvwRIHNHXGSXNarWhYKZJ4jpMa0W2ErnuiR/q6LbRFzHfYDhHKtvx3+
	V2zQTy/ctlO9Dy1rr2bjjD4C7sx0jjgt1Yj1ZJC+VvETsEmKnU7e/ZAukW59ftWv9WcTcngwyw8
	RoEPZXrKYu66SY83l9jhDbgYmt9X8WnbVqg8X3kUm12zQMirEbD/DcZlloyTS0cY9Rh3lokbGe8
	QP35lFx5ZI/rghPmz8EyEJmzX19hgg7pvzbYxG9IyLa6ANRTi0C4ASVm0azNWLRZxcYqe36yfNz
	RNq5q7o4YfjtDRVDvC11UelEL/hoqwVsw2XXH3C00F0pE/FBHk5XeXfvWEz/STbluqeB57riRT+
	/GKve2qLCfo2cJzrEy3a14GaK+cOedfZ8Y+cXUBka5qwocGeA5QDftXjhXt4z+wKwsNn56NKSyf
	a78072irk9ttTp8oZXxtU8Fs0ep814CLsHfKQ=
X-Received: by 2002:a05:620a:31aa:b0:8cd:8e8c:208b with SMTP id af79cd13be357-8cdb5b05b6amr2171639585a.38.1773758876409;
        Tue, 17 Mar 2026 07:47:56 -0700 (PDT)
X-Received: by 2002:a05:620a:31aa:b0:8cd:8e8c:208b with SMTP id af79cd13be357-8cdb5b05b6amr2171634385a.38.1773758875803;
        Tue, 17 Mar 2026 07:47:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e6dd87sm40751901fa.35.2026.03.17.07.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:47:54 -0700 (PDT)
Date: Tue, 17 Mar 2026 16:47:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH 0/1] Enable UFS for purwa-iot-evk
Message-ID: <lmmlmpu7h6rm5ddi6aaspayhaibeyr274xjqqquaxtrovusnps@5p22xw3vcbnk>
References: <20260317071311.1696361-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317071311.1696361-1-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: z2Gvl_wIZ99GArubS-sIqCUG2iGhgPkM
X-Authority-Analysis: v=2.4 cv=Aa683nXG c=1 sm=1 tr=0 ts=69b9699d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=MdNTHAFcOfdl-yjXUGcA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: z2Gvl_wIZ99GArubS-sIqCUG2iGhgPkM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEzMSBTYWx0ZWRfXxsjRknW0pSvD
 zxTE6A1OSpthLN62HnNpjNyReYrpONUf2Bcpc4v49BDP0fzATGM4NxurgCXljK7I/XC39LmNgOd
 v5P0jCHio9OxIMi+P3Gxvf98St7eF+r1JCthCe+mpeM/tP5VwqypfifohjVESc5nDYwWLCanW7r
 fDt40nn8nzpIl1dm+G+31c4p0xjbJvihrf5q8QtmWsdq8Ky5ORrJsHwiSUYYM1fcMqkGEbBKSX4
 s8veaN1OS+PDgSTg1eFTnnnl09bYf09UJ+3B30TpYZRAjxLX3c+gN5bfXFCgqWmnTF1tDvEwF4J
 mezOX392kgycMqXOZB7rWADS+EeLzuS0z/beu2T56+bvN8w/EQuLLGMcC7LaJ8+1ZUHWec5gGNw
 6tvpYom83A1hIAkbLtzG3hBaOYHDW/EqfArGRYlku5KHqYxOOoGAXwYb4Y1PQqra3Ra4cO4oCna
 eoGiNci2wt6fcmdWR1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170131
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276732-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 419F02AC9A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:43:10PM +0530, Pradeep P V K wrote:
> Enable UFS for PURWA-IOT-EVK board.
> 
> This patch depends on [PATCH V5 2/3] arm64: dts: qcom: hamoa: Add UFS
> nodes for x1e80100 SoC
> https://lore.kernel.org/all/20260211132926.3716716-3-pradeep.pragallapati@oss.qualcomm.com/

No need for the cover letter for 1-patch series. Please switch to the b4
tool.

> 
> Pradeep P V K (1):
>   arm64: dts: qcom: purwa-iot-evk: Enable UFS
> 
>  arch/arm64/boot/dts/qcom/purwa-iot-evk.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

