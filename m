Return-Path: <devicetree+bounces-271082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOLTJV9HqGlOrwAAu9opvQ
	(envelope-from <devicetree+bounces-271082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:53:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB0E201F78
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:53:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB45C31A42BB
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7C83A963A;
	Wed,  4 Mar 2026 14:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XWC9Fw28";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WLFKEktL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18DD3ACF10
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772634604; cv=none; b=RFOoL0OrWHHQvhdCvZ6gKmxhwioqk7W8TYzhWmMS4h6pUL3ty71I8xVw/2fiLYnlihEnKZzySudRuHo+miZ3QJ9Kt2y89z/UzUh8A/836RnUX5P/hedxfI5dgfAJfsavTBTD6cL3CGdrqBkHAZV7y6EVrJRwqwQ+RYxI+Zyac4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772634604; c=relaxed/simple;
	bh=pAGcftUkpOuwxz+hiLLDH+0kPM8pD+6clRxQbpPNsI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j/71WfkNj2nB6S/rbDhKlQTzbnphBKwlUCejd5WN47Q9jQwqo/d0arFQUkuSD+Dlp5zX1twXZoo20IhOFHZjj2Zk0cFMS9ebyQxo+PqTa3usAJieMXwQJvALlH//m+g0JPLSjKWnHYjEHdGzAEdxvO10GpnjC8KPXp+ngwMApr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XWC9Fw28; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WLFKEktL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CMwGR152512
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 14:30:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rh3ft9edmIR3MH+5987NLl83
	siXGjWWNjpTNPh6s+MA=; b=XWC9Fw28jkxty6vemT/FJ/4YZ03XfmeBOQrvZz3v
	aAUSKjC4LZbsJ2/k+YxEob9ZBzRyWQYZQgnH7+p3osyok8nabJdWaxbobYUJCQ/b
	CbZ4E/haNGWtWUQ1kdGCMcv2cnCumrb5UPf4U6psywT9Z0KvGuuGe9rSzv4ufcPf
	xG52Hx5ZxIkkdOxhGHImh6HbqZpj2LzrgkvvjJ3Bd4ilcqb45MhWD/kyN7ugdP5k
	whPGNvYZuCgDalh3Lvwm8Q7y18ehxpD52skdUW4Chep+L2OEGySN88IYdmyAOq9R
	qLL9+WGk4UpcjU9O29R9rXpeNd1E5S+yDHM1PVENzantuA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvkx8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 14:30:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70d16d5a9so4005470185a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772634602; x=1773239402; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rh3ft9edmIR3MH+5987NLl83siXGjWWNjpTNPh6s+MA=;
        b=WLFKEktLhe5DttgmrhLsdI9QIjriWLn8/oQfXjoUu54azZ8OEPAhvwAQVNKXVrz3A+
         3zqi9TQInPSIMRtsya3+v5+GYz3tvp1/SUkVov1ok/wjXpi5u+q2HOFa61Xpm+DmTzdI
         8l2pJtGm6oNDI1HeNFFYF8AywuHUD1UZcmKNNkA4dyCBAB+XgOW427lay1tSr7Xv0PYI
         KLtcdj8E1JNE0fn0aTU88J8+q3JX/Ax5TGESFeKJP9lWnV6UrMRz/mxRpVy9LhGyTWnN
         86ISxsl8izTCraBdKT9HjFyHk3JASFmtKuOZt9EBon2ckhEJ7E6NXeMlGXzZLjHGhBx7
         VUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772634602; x=1773239402;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rh3ft9edmIR3MH+5987NLl83siXGjWWNjpTNPh6s+MA=;
        b=fGVrSsu0UdxucqvuxVI8DhOyUHhPsJ8XbvZq7ZN6CpqbubRuZ/JPyehXChSG8sn7+y
         MaxRgkDRaUKXmM2RWfCuFDdFbfMule3pIqmetT3jUEUvIe4p7Te67OnS3Gv6HmvnymRy
         nyo7cWvyLATU5HxaXmHaMvkUVSgM8eYGT9w/WfErdYF07HdJcPZJ/87yvxBPhZublkaM
         1ZQyKolQDudca7tJqZ+YfyQ99cL+3GCG4ofgm6r8qH2uq1bVvcQ/llaxoKcG0NiKjsfM
         l80cUFYYV9MdQ3cXkDwb1ygUiniTzEhqT8E5UN1+nn5POenIbwaBI49bmAOh3f0DQxtX
         aEwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUP/XfKrihohgJAEXyNutCk2Aqx58nReZU2NWlwXvceEWlf6FHlLuSrFLMm0aRXX7HN9MPz7FZERftz@vger.kernel.org
X-Gm-Message-State: AOJu0YxbjCsRSGIy6Jbr+0N7cUlqBqD85Z1jt7+IXyyeW5ezu5SKz2Dh
	+olpv53qD3LG4YeCNRyY/BItzwO1fNg0k0pw1l9kp1+sXCz2n8AObUV1+U35D8rzemfj0SxNPyE
	6w28PHVoWWL+7YDqfco3lvFL1ga5DsFw1O5azQEgkDihIOQTlOflrq18b8CoXZITQ
X-Gm-Gg: ATEYQzw512S0yDOxB/LqYBEf+yEAuLHpeIzufmYrabIKTUsaTmvqO9cmn0Ty54XS53c
	IFtd9FAecqx2ly9xRvAIgdWRZwgnxtG8GixNqXyfUquUvlAIRTDFYvPIBlYqMNzZcvda0PP8wqb
	Mz4FmrEScCM8RKmPAs4WJDf0I4f/KwMe48pYLkonZkYKWgpObGY9VMCHSCty3uOFP4tJbE8ynFk
	C8/ypIARnynuDwwbZdoyYR62lHJXdCK7LDJVwNlVwiYlbs35ct9TvJGplbCUYRyrXGgluNRVkZ3
	n/7Pm3ywZGIctAQK/oJpo6l/e1EXJavFRUfIG/y2MPFw4U4CH8TwxjOu4U1uhI3VqKJEJF7Rrya
	zvhcuUgrcVbtskG7pl62WsJpwYd+EsupaUfKcfH6vG5T/PFE/TWDCp3lXqQP7N05n5nYPyGZJ/9
	2X/M09sTbxvwQIRcY7rrvJFCE4EUMfzO915eo=
X-Received: by 2002:a05:620a:29d2:b0:8c6:e224:926d with SMTP id af79cd13be357-8cd5aec695dmr274565685a.16.1772634601891;
        Wed, 04 Mar 2026 06:30:01 -0800 (PST)
X-Received: by 2002:a05:620a:29d2:b0:8c6:e224:926d with SMTP id af79cd13be357-8cd5aec695dmr274560685a.16.1772634601387;
        Wed, 04 Mar 2026 06:30:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12e9d091csm186828e87.42.2026.03.04.06.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:30:00 -0800 (PST)
Date: Wed, 4 Mar 2026 16:29:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: display/msm: dp-controller: Add
 Eliza SoC
Message-ID: <mru6szaucuqii2n5nhg3kg5kcppzhubu7xggzjwu4vzrx7nnbz@u4f53kr7tcqc>
References: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
 <20260304-drm-display-eliza-v2-1-ea0579f62358@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-drm-display-eliza-v2-1-ea0579f62358@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDExNyBTYWx0ZWRfX5Zbszbp7b+SR
 74Ky+z+9Mn9WQK9X+NDdlor7xupEGntMuXU0t58RO9X2aZ3vZ8exLb6QOF3yzxKJ442lbopBB69
 REsSKFFWfDaRR6eGxm1AbbL2JIB3UW1ivc8cOvTr9/+2snOxnQ5r1CoHWBJrm6iloep5EwHiRU5
 9HvqZLa4LdSi1+hFtZRYnlnEjkA/HCfXFhjS9SPfxojH6inVxVpaMV07CUwnhvmUdIUHxzyNWX7
 VdZJavbQrzlQoZD63aRi3tmfx92Wf//ewroG2ONxe3anIPvTDd0P2UMGH8cIp5kzB2hPHp+FOx5
 5oPOjVs+ppK+7f/2XZxipq8gpkDViR0D6/1tvTj01/3cqPfhHs9E91IB0E5tQh2SoWYkSnREBGZ
 /eokiqB3aeAv2g0CezlVPnJ3WkvG4y8QyJDkqCREgm/V18Jc0wEw5uKED21YmUgEjwjSbq92hm/
 MIOK0Y50u1zYGTu4Zcw==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a841eb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=wa0heElAoa-4UX5PAWMA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: MPQ8BCZ1cSrOC_kSFcEDrbzf0puw-jSm
X-Proofpoint-ORIG-GUID: MPQ8BCZ1cSrOC_kSFcEDrbzf0puw-jSm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040117
X-Rspamd-Queue-Id: 0AB0E201F78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271082-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 01:58:43PM +0100, Krzysztof Kozlowski wrote:
> Add DisplayPort controller for Qualcomm Eliza SoC fully compatible with
> SM8650.  The device looks very similar to SM8750 (same DP TX block
> v1.5.1) but with a differences in DP PHY: Eliza and SM8650 use DP PHY
> 4nm v7.0, SM8750 uses 3nm v8.0.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Commit msg
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

