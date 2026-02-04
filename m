Return-Path: <devicetree+bounces-262490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCpdIjG1gmnwYgMAu9opvQ
	(envelope-from <devicetree+bounces-262490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:55:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 313D1E10C0
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62D2230FAB6D
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714642DAFDE;
	Wed,  4 Feb 2026 02:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e6kMhbEF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hKpRcWlq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9432D6E70
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770173698; cv=none; b=EWT0HG9pBJiy8YVyMU8Db2pJigM+x3jjaiWszea3noPT6Txgrxthbr66EhLpQHQo1HeRHoWxw/33DxStVcoaGqfX7pjeId/fD84BxKxljp8jDPgz9R0yOPeQZRe6kcux6R/hmEoM4Ogo+AnFygSAYhOBnGby3ziFwz2f2EeOPts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770173698; c=relaxed/simple;
	bh=Sci+o9Tmpw/PiRCLomTqt2n/SzCcPtwFAF4jsayDh/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rrYdx5xaoTAIudT7Re860bcpXA28dapNLG9Z9cH4MOwfFeHDJ8jZNa6oqMf8MQMs1eq1pWE6WQ/HcuNyDve9+EqLryImt8kG6ZvmPMt/ovHomWquyryS/cBphx0y6bBosrRMoubQCvvaOdWMCUGlpYQw/9fD2KWOb+BorS5mvtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e6kMhbEF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hKpRcWlq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ilw6R2154686
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:54:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U+j6SguhaYzORmSzDa8xgmnK
	ds4ecElxzr/Rlmf5Gwg=; b=e6kMhbEFIJrDP3SKm6dYZ/7e+BXcO8aSdRDPqkgh
	eTKpbnfR8/Amz2UhdFrP7z3QAFJvOjyhCSgfRbTniSpHutrzZOctRQXNKINN8yak
	YAM21Fc8fi+O3Lmdjl9hcK6UVgDswJQ7ykzccvCCL4RUXzjod/lZ4LKaOg8lTZa9
	cXS+n0cdILbFUxai37WSC/CPYKtnMw4HourmGz2DD6qL8P+ttyKnH5TprohT0rxn
	J2B5lKk+DWgowOe27bhHFqnXA6SUOAirwOYKLOne8b0bIrhUaHLa27DbK9gqGIpk
	0K+zVYIZOb9vOcQv9EsvEGqfI3335/uOgcDvvBvnAIQSqA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3dutk7c3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:54:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ed6c849so1653124285a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770173695; x=1770778495; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U+j6SguhaYzORmSzDa8xgmnKds4ecElxzr/Rlmf5Gwg=;
        b=hKpRcWlqGwSjJ3pvGrAZmj1Lz27vzG5ML4q1xNotB/1AUxZ2PtNOt7sJe5OvJzDd4s
         +wkglpZAasiMa2Me98rbvW3fQRMgZ6I6TMMQ1iUa4tzVL9dlieEPQwUSnaqoSo3vDk1l
         xfj833KUxnfWOp9RCwFWUHfY2OYioL8lXA9OT5D3zvkxz0/K1sKYAX1Fpo0Ahu2W7x89
         UkUFK3rFrVqx6KpwWbytyjXAIYg5hBSKGaMGPDhxLIBLFsBymU6eHwFQDXtNnr/7Iowd
         vIhw25aki64AQWdhLzGmNQqHJN81da5rBwBeQAXHEJCVDbAcBXc46g3it5ojL8NafssD
         4FGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770173695; x=1770778495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+j6SguhaYzORmSzDa8xgmnKds4ecElxzr/Rlmf5Gwg=;
        b=O+hOK4zkh7qxBczh+XrhrAuFKal0/9MkJMOri8tei6x1OF1keHdBWXQQASrTFPyrpg
         aRU+PuWrSH8set+ukmywa7zSU+xdkkJQM9rRDsIVfflecEoBGVgA9Jz2wOjqG3FO70qk
         JAKV3OG1rbdhBSbdYWflcVCi2hMQ3R9y3UQpi+hYZW94EgooGR2kFpv1NDFtXbYDsvAF
         5okqFILfkZvoinipnccP//ip5ym0yWw8/OwbbvEv67yLu8nGW+vI8zzVNBxmBz+xl/U4
         /TUrv5L/05Bjve05lf7KTeSpvSrxistf2Z7UWULvTLptjhGeHdf1QkCGfTdlJHaklIpn
         92iQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv4VuFeF/XssHlMi5qz4ryyBSt0M7B11SWglgxcIreOjkbvJi1WdXpysGt4B/k5UVgMTIYW6wUj6ua@vger.kernel.org
X-Gm-Message-State: AOJu0YwjTJ/Q2yBA2nPpvzoKXSv2bfoFBnDCZlSTR3nlHtqWtQRD5iFn
	7m2sqxGqCN3FERzyLx/yU+He+bWvUYAN5hYlHhNuKsj6KUcfaBOekYpJZmmKh9jlPaDY2W6x0Ad
	0kaO59N5CfssdF07UWoqO1Bgo0BjPHBcL9rOw9eypv9n8A7nZoVVofe70WWhaaGir
X-Gm-Gg: AZuq6aL7iGSAL5k5PTyuUYnFrDCFBINFkbw2Kj+Gk5uu4aqg1xoHIOQcc59kcuW6d34
	X/ppnzJ0IGOZJubCh7bTW8WacrAS4dgz4b7gf0hpDvrepI2HFXmtQpAP7zv9JanFwrF17xGSDSn
	Yv/JPEd/AuBrAEJninhwmlpiDIAvxyOfjwJqlmY9Cw46wgHx2gnAR9NoDMoC1Avi/IiupVTWeJ6
	T9f0BqGcxLO+DtUYZmViCW20KVi45Yb5yWTBlvjvhJ4g+aUsfGU5FmxF3E2GjC8BFZwknHLPzU2
	0/NgrldYemTFwI6wjOOwOBvSC+b4I+e7j0q39lTC36KoLfbaNQMhDLgU5hqhJGnnwBquoERjsRF
	7UQ2tLcEKUsLdwzDjXrQbYWDRO+E1KbEoX0AEFxlQC6Vd5jPxn1qAiHdgu/5bZX4h7DMkLC6Fqo
	w0PeaX4ZBVLULTIZDa2XNQO2g=
X-Received: by 2002:a05:620a:172a:b0:8b1:2fab:30a8 with SMTP id af79cd13be357-8ca2fa5e519mr224513285a.74.1770173694612;
        Tue, 03 Feb 2026 18:54:54 -0800 (PST)
X-Received: by 2002:a05:620a:172a:b0:8b1:2fab:30a8 with SMTP id af79cd13be357-8ca2fa5e519mr224510585a.74.1770173694050;
        Tue, 03 Feb 2026 18:54:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e39710524sm134530e87.63.2026.02.03.18.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:54:53 -0800 (PST)
Date: Wed, 4 Feb 2026 04:54:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] interconnect: qcom: qcs8300: enable QoS
 configuration
Message-ID: <tp6xpuur6a6ekb2uy6bc6vx62iwwfiqzoxk2hl56njucf7s4ef@emrbbuhsy6pd>
References: <20260127090116.1438780-1-odelu.kukatla@oss.qualcomm.com>
 <20260127090116.1438780-3-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127090116.1438780-3-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxOCBTYWx0ZWRfXwaDmEBE+sJv6
 +M9Qt/7IMuMUDEYD0Vc4kuO6zipLFu5bRwNvNYp/sPV5i+qnOFoBuF/OtNMmM5ur4iT2dT/9rZu
 VK6N9Ql8l4yEU6b4o3pVbwzGfi2AFXZrbFDv2mAalgv+H6nnPE6ow2eIozwz+dZrKQq2bJVM+HN
 NiG1UMSiO/3WvRo1vt2kYCPmHTHwFve2pYt0HR6nNs21S+Vs/kO3tZK14swNbmY+9Cp7uXj75qQ
 OP9+hWG1SF+ctUL7hZ/nuQaWVFkgfX++JqstwP1wrmBzBEzDIrBo1nxbl74YBYmoNfPEzjaG2AN
 v1B6C6aA8RwaSVXC6Qb2YKg8IxZwFwyfdtj0UqRD2ox66Bv0k5IUsuEuKeBdh74XltRuuHAIw+U
 aP4HGL0cf+HTQJQxu2jE+j+toz8xpa8tkPRWnKZO8NMaQENWw6loC6XVtmCao8DSpnv2OXam21z
 f6IUV4fA2/hWiulJiaw==
X-Authority-Analysis: v=2.4 cv=FrgIPmrq c=1 sm=1 tr=0 ts=6982b4ff cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=i2ZByRJmBIJE-cFrtQgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: qzPOuE3Lap5WtAWB2hx99wDi4uBvTBP3
X-Proofpoint-GUID: qzPOuE3Lap5WtAWB2hx99wDi4uBvTBP3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040018
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262490-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 313D1E10C0
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 02:31:15PM +0530, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/qcs8300.c | 375 ++++++++++++++++++++++++++++
>  1 file changed, 375 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

