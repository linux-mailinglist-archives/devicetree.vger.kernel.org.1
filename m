Return-Path: <devicetree+bounces-270356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GEIA2aapmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:23:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD8A1EAB91
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:23:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C56E230763FA
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E244B374E50;
	Tue,  3 Mar 2026 08:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A2GpSR/Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iVIDzOgI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570E63845BA
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525979; cv=none; b=JKVPpKkSMtFAaaMk5ART7A90ctZ0h6boTK26nlXdOlWgbaWuD3XgkyDRF63clMIPnMu5A3/fZwMyQDMpgvSd4+RsoioMJrH/m6oukN8wbNKiYnF7pNLF99Z7w7ma8tDKwOU7CI9/3Gmd+9rJGw+MCmTJ1IcyoaJj5IOAFlKm+wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525979; c=relaxed/simple;
	bh=3kTC24SI6aT+LaTYEQI2ode7SdCC6mqXZ2wYGz8MF20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GzbkpoEoOSWPhoGcEES4lyoUlZmHQ1BCyEhxHYEEN1CH+oMjQAm/Ja/463Se9CbR/OPXpmryrL9aXwcibEwPIPtreF8hDHX2CQVUwAUuyv00+vt8NXM+jbSDvfxPA72DCwmHQ6vdcE9taP04MkjpGKbdLo1sMeCkH6OMvWRD+RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A2GpSR/Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iVIDzOgI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6238Dhwl670310
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:19:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4N213Yy/tErC/qPxFB4Ckztq
	tBqutFx9DF1gTLrNKsE=; b=A2GpSR/YSU35p94ku9bB8xdmQIUe8J9wM74m1FoJ
	Ab8sgMbTptb3ppeypULLoSNUO+hqRKRH9/5XfpTbcSp8FfTvAZCONmN82DXRt9Vc
	LZrmJPmF+cBXeXl9GOQNz3N0GztUcvmv40l3vzajboP4X9L7CRxRiIlhqymXS8Lm
	iIgZAi65R4c8ayKRhNz4B10ZB4cC8kBzncxjbT9n21STliZ0ORmPVxYcWbQhmBAK
	WdB8rjk+f5mwzEcEDk9Gefyu8lRqLrRHm0vShUWUPnnKoS4/aRdq5e29XbNo82ML
	aJ02rY9h4XiShDY+N7xJlFqV04qoYEGMqMJ7rC5gKRw37Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnngg9bp9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:19:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3ad1b81aso6517197585a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772525973; x=1773130773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4N213Yy/tErC/qPxFB4CkztqtBqutFx9DF1gTLrNKsE=;
        b=iVIDzOgI9x2VTPlZbZircit0VSXJ/CKaQrxa3ZmTYgqE5jwBFsFXnD8L8WECAHDs5g
         7i8xItu8+tKcL0o/UkHw6F89XDT2qOWNQr1elO9x7aYG/15dsKeDe+3hWWhFQWvptF4d
         aPPQYcfftspbTcqqoq+zE8IoSWROar7t0I55zaRUGQLqrbrX7EIev1Ea2HSnh7bjNst+
         8Cs3t+c9bsHyzwhwWMpqLFRgmM3cJsmUXyEDixt191eeC9SZ3ptGvh+lO3yIiAGB840E
         5x+mYrNe33JcyXVXIf2s9V+leu7UXEFpHc3BfeZm2twUMT1AhxbLzExtUJqpr+DNddBO
         E+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525973; x=1773130773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4N213Yy/tErC/qPxFB4CkztqtBqutFx9DF1gTLrNKsE=;
        b=VqzCouiyX9Y6fgxWB5aEkGFifyMTORAx13UcFibCBVnXZPBNFCPImmEVp+vSP42E8M
         /bVK/oeq2IoOS9jAqLZp0bfhysl/lFHrYMJxaRhzsCYDWryDMXQKEqXfX6vavFtCuu/H
         E/zHlG7yWyxYikM6fiC182ZDxpXbxzKBndLdkGjcL/Gq0NckjEn6e7Mdbg5WVU8azb0U
         T3zMw20+WuzfKTtM8fx26i5YDNhQK0akc3WAht04xYuDH9HVNcoCgP8nYcSer/qLfLvH
         l9jV2flZLeu3UQJt14AnlSitWXQndL7lkPxt60jZyplgHkdHMUBtPHlQn0A/8wFDwbk/
         zfWA==
X-Forwarded-Encrypted: i=1; AJvYcCXaB2aS6Wd3+Xex07NdnoJXjtdcVS04Ll6NEaVBbdoVi5RfNaRogRwcyaFvtxMqs0XHJ7XeJo1EzX1y@vger.kernel.org
X-Gm-Message-State: AOJu0YzqbYaCgcYotknEcOuFv3eT1M8Td/OCjbsJB8Tcgbli4rHqH0eB
	DYFjQRQ0Zkz1mQMyGo/cs5bBU4HIIVe5KMukfaNfi6TfgPRH4vwE9cAqtCBV0ny0UHUMyWxhW7v
	62kyGE5Bny8BObrZuLFVczKNL3fPWbkaOo6oeJom49EjCKG0mAg833B3WVwRMoyV0
X-Gm-Gg: ATEYQzw+DnXvh1KnlAAqD1IvqJiBhRq3BeocRWYuPoVlvoduRoGT4yqyGYHJwlaVlIY
	IoA9TB4YSah6PRiutXZeEGkaF549RL4TT8+KxCY0FAaF8Wt820DdLyN+6tLC1i+joZv6mT5Zrdc
	Q92IwSg710+wEBDLaZCu4Vw/FK0EtDhU+LwHYlkCYeU1/9KNLabCCipy0j4Jzt0UAws3OzjvwL3
	ChiskwZ62qvSpNNHGIbWtl+3Qhad9AvvfXWGwsCr9A+6ySvi1jSTLMuVV1jElRcLUWX4Hs9y9Mc
	wpAjjk/ayq9lANfmJrddWxOtzz8xt77Ui3yTkL9uTljPKribgv32y1LZFk1nQ5qtwePbnjp3d3x
	WLPqKuQWcaecqYjr4hhIIyPI97QatCrLDrSZY
X-Received: by 2002:a05:620a:4004:b0:8cb:7ad9:65a9 with SMTP id af79cd13be357-8cbc8e79948mr1962843585a.59.1772525973136;
        Tue, 03 Mar 2026 00:19:33 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8cb:7ad9:65a9 with SMTP id af79cd13be357-8cbc8e79948mr1962840785a.59.1772525972438;
        Tue, 03 Mar 2026 00:19:32 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm486645545e9.7.2026.03.03.00.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:19:31 -0800 (PST)
Date: Tue, 3 Mar 2026 10:19:29 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v3 2/2] dt-bindings: display: msm: Fix reg ranges for DP
 example node
Message-ID: <tzzwpymjwwqem7zph7ecjvwsfhmylvgvgel7jpr7zrfcdaevzi@aggighjasjac>
References: <20260302-glymur-fix-dp-bindings-reg-clocks-v3-0-8fe49ac1f556@oss.qualcomm.com>
 <20260302-glymur-fix-dp-bindings-reg-clocks-v3-2-8fe49ac1f556@oss.qualcomm.com>
 <20260303-resilient-bouncy-anteater-b4cf0f@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-resilient-bouncy-anteater-b4cf0f@quoll>
X-Authority-Analysis: v=2.4 cv=P7E3RyAu c=1 sm=1 tr=0 ts=69a69996 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=hwl0D8rbNs11RpkTeDcA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: ZoBiaRXNbDX3daUUpLDWsiQuVOkb0hPn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA1OSBTYWx0ZWRfX+5xfyzyeVeKd
 7Wi5bZ14Oavm/LNdPVH05+3eG7NvlqeM3jCwFMyI089597dq+alrjeDjcKIpxOYHHK6LB+GE4cy
 377hf0NuAYLDvxVnvcpUX4k7ZACRHMdOMwVH/w3HJyPRXRC7jED8rp8M/VKCalW8cE2S9ihfWjR
 e3tp9Efj1aXyq0EKbiF+6HG9pJSHnnxTSies5+LFxtaMz6b9tJM8PD1Lhl5CF5GnUtIZILevzsU
 MJdPHQ8uRn6NlEeAPki+AHviTECYbsYYkCYbJ5caDbsRZ5MRX6nUxlJw49FxHWUX86x7kqw5lXO
 luHfcPpRCKdAmsmYPxl6AzuoGdu0ht3ze83Q6Of/aWwAzz5QD9ZnogQXXiffdnUKJM7JC7KjTUv
 GLVV8uqqfWYOypanf+vZKX54a0QgOKOCGxvMmC46yYB0Y0aXOmwJ1PZ0W093dxf7R2mO6viCDwV
 vaZXR9xo48gZyoix0Og==
X-Proofpoint-ORIG-GUID: ZoBiaRXNbDX3daUUpLDWsiQuVOkb0hPn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030059
X-Rspamd-Queue-Id: 6FD8A1EAB91
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
	TAGGED_FROM(0.00)[bounces-270356-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-03 07:31:50, Krzysztof Kozlowski wrote:
> On Mon, Mar 02, 2026 at 11:58:36AM +0200, Abel Vesa wrote:
> > Add the missing p2, p3, mst2link and mst3link register blocks to the DP
> > example node. This is now necessary since the DP schema has been fixed.
> > 
> > While at it, use actual addresses from the first controller instead of
> 
> As pointed out by bot, this must stay bisectable, thus should be
> squashed. You can keep two Fixes tags, if both are applicable.

Will do exactly that.

Thanks for reviewing!

