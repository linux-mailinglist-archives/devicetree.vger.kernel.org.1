Return-Path: <devicetree+bounces-274592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL+xNH+6smmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:07:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5C4272466
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2825300D97D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4959B3C4576;
	Thu, 12 Mar 2026 13:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O7f69NcY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NUlPYnP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186573C455A
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773320747; cv=none; b=L4WchkXFcP/4ru5lktOYYBpIme9r8FQv+o9eg/CU1PbuCHyLDLhr6NiFpYYPs7/yn6kX8kB8xyguIn7fJ91YJQeW/C1pKxtW/Ye05axV6xYhVZ00OR4qNXqtPR1JMiToiZKRGZ/x3Z7V0w7lit3f3RVoCo0UKb+ynj9GEqf+4iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773320747; c=relaxed/simple;
	bh=+7lLzPgiJFLbfgi2SJZ5ggfjFf+kDKvea0Nvio3peMc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mOi35ioLm1qEL80Q4DVC8ahx2zI8NXToROw1m6x5uashLQaqIVIA8pJRLymFMz1OZMozB9AjoP29FteUcRccM4rm2XveWrXJ0CkMKjvCwiy0vO2EZgM7xtC4e6SHsXIuMYX0SoJ2ufvBV3OG4hdEvJHgUzbtbXVyurnDxWCBm28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O7f69NcY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NUlPYnP5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9PmDH4027299
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:05:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mxGVGQZhgNqEUgL3T8t4n/rH
	Imq0eyOJjebteLOUh3I=; b=O7f69NcYjgXURL9UPeo9FaPzqaBjnyvNUtaK8VDC
	u9upk40uihqXqAW/8GQxfmFbWfN6nNQ2SQRnD+2SauyzIRKSqEbb4c+NCEsXjwAz
	cRt5DglEgi9bbRMF5jth6jmtVKqmL5W9sUInJNPqjUUcbiXjLM4XhE0aF0TlZwlc
	GxV5y+F7cHFFOyRDb3KHXPO6WNEtSfqyfeUEtIdU5Roz9TofAaqYA6VLfhlw3XUr
	np2/q17JVQGUXJyOCPbSMVpBA5QpCUMOsDK9oU+pUM8AMJBkuE9oBxxfWVeocPUL
	tweH6lFffNhYN/rG4v56WYT5Dhz0dXcrOMHASv00abLNFw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54t3x3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:05:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7c4ab845so442641785a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773320744; x=1773925544; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mxGVGQZhgNqEUgL3T8t4n/rHImq0eyOJjebteLOUh3I=;
        b=NUlPYnP5du9XYiFSD9HT45qQgrN81gBTKsSECtZBRfsIkrxpwBBP/+xIlkr4J6pg4d
         V6nNX1pp18ot6epxIolZN3dpau3lfpFx/qRJPJQt/+wV0nIeT4N6VUIqi7BDGrVqV9uR
         qkHx5QWD6Exleq4+N9NpY7RmrhJ7l3zhMBF8mG3myfOgNODfn13HB4SPbMp+CanUya2V
         5FI86+xLoMd3ZFSRG+PMH47ETUCcCZcIL/0RhoK6drdoPh3eCvYR41i1Zjc+XL902Wa0
         pHcHGkb95V5NsRr4YcZPo22dcM3DjSjJJJbI1DtLlAnFGRaMEAxiRK0R89SFZDf7MjuP
         o/TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773320744; x=1773925544;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mxGVGQZhgNqEUgL3T8t4n/rHImq0eyOJjebteLOUh3I=;
        b=CD4v4F2wB6eCNtPSUUckyqM2lBfyRF/e5Tg7sMfalxW9HwgPDCOmYnBDj5gt6O9E/h
         l9Kmc1pTfoAHCm/fX7hdxhrBMKQW8wfe5+3qQkT4aQtVYQHgkq9xms0hP2hlKT1DLtJM
         FwmQj2QjueJAo8gkOK29/w7lNK3lKCdVrdxKu50osMXNlVhQkpCj6XjsijQDDGKBqlR1
         uW+kyRZND619UXR6mcMASUDRMNGGbnud5lPwtf1abAguW5n/S1WjLLetqxOhDigNDJyY
         ljzGXN9wy4t2yXLYMwkFS+VpgDxMfqEkO9ItQwyppvsG3HrhBxkGpm0NvuyUalEEQB+j
         72Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXPulWIwtN5esokr0dK8yfF/KT17ylIfEkZy2sya1DXYhbKQizqeue8PG7wPDm0DGNJyKHKAniYZBui@vger.kernel.org
X-Gm-Message-State: AOJu0YyrxaK6v3AvFkz55gEEv4A67JWRFoOR7LBK6PampgKV4YU16pz/
	E/A6UBZymrh2wmpqCUWovdtzcuA1xVqbiq1/bz1t74wqSf+X9ibO6kb1+2f07UqqXLKuXP2ZHCM
	KevzvD7j93StjjsHsONioCftiob7EX8LJK8L4myDeqd2EvaCVookGeMmVX+wcmHC3
X-Gm-Gg: ATEYQzwfJtIt1kRT6D3f0BSvgqebQ8wHII8XhOHVUh1kiFlHnMGfuIAN6WXSnS5Ud0D
	mya8/XSGzjAenJ2/cbi4KnJt5rkY/+uc3KN4aQ1E4iXUY0gSCaqf4nALj3i0I4jmlp3ZBgfrXQ1
	0McVQK9y0mBFTUbg4qNg/3joA5xVjX9gX+D6jAKWyi2k43qwTk/PrImUrqBJimpk3ypLRvc0dbd
	urZwKggRSxYLEmtW40XrOHNV0Sd2dE1Z67+jZsNTee7XS9qfOcLzMq84x9VUqJdszjOjw69pmWL
	aHFCvwnYhAtAfjCU0YBrqbxqc1gb7l3eIBX3MunvQ30bs+wdpcKe6UzBOSxZA3tb14aE5DGzNl3
	/1R0ARBwJ340LlIhR1sYs65H1xRzefuAAuA==
X-Received: by 2002:a05:620a:4054:b0:8cd:91f5:7a10 with SMTP id af79cd13be357-8cda1a8c3a9mr743234985a.82.1773320744199;
        Thu, 12 Mar 2026 06:05:44 -0700 (PDT)
X-Received: by 2002:a05:620a:4054:b0:8cd:91f5:7a10 with SMTP id af79cd13be357-8cda1a8c3a9mr743227085a.82.1773320743581;
        Thu, 12 Mar 2026 06:05:43 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1b22e7sm8735499f8f.16.2026.03.12.06.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:05:42 -0700 (PDT)
Date: Thu, 12 Mar 2026 15:05:41 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: glymur-crd: Enable WLAN and Bluetooth
Message-ID: <3h4futtrnwood2ecguq5mwiavlnvew473r7wbplrdkn5jrvjs4@5ni67fnspqoz>
References: <20260309-glymur-dts-crd-enable-bt-wlan-v1-1-3badbddd5439@oss.qualcomm.com>
 <6cxuqytvlfdvtgns5v2dsc67dzmdtizbw2b7bzkd6p2mpxkqvx@uxjijpdjukom>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6cxuqytvlfdvtgns5v2dsc67dzmdtizbw2b7bzkd6p2mpxkqvx@uxjijpdjukom>
X-Proofpoint-GUID: lHLN_Rytf_-WJMPdonEVL4ZEjordJfs2
X-Authority-Analysis: v=2.4 cv=BNG+bVQG c=1 sm=1 tr=0 ts=69b2ba28 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=xvhWzvISPJ-Meh196csA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: lHLN_Rytf_-WJMPdonEVL4ZEjordJfs2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwNCBTYWx0ZWRfX15vSNPxGEcz4
 i1CiJs2qi8Qi8Vv83yqnfYy4YF2ILAjRO+WsmCrq3sD/hYfTKohL0+LWkWFbEWRcw0xAlFqTxQn
 xWTVkhVwdW7cVCg96XOZtb7/zy4d2Ol38xxrJWinB4sOnBNegIbiMZoAXo/Da8B5uhWmRHQHt0p
 oc+l17rZdHlEdkG/Lu2X2FCe3wll0a5VNel71u2ReFmimO1APauBnhA10G0mpK1sRe1OlLW7m1X
 vSeXPICxP75AWMQMDFbS28f9MUMKxQTfVn+LR/vPYGuerRs9jJa2hMcNAwI0KJqaU/0/o9ljE+j
 uAz8iEbN3UmDV+1iUkjmVSqwMCRzoE93eOcYgvl3orjCBoI76w+WN6W1ytCeZwn3nKHHT+H2yui
 QUpX6OmNNqglOVjyWHIhWO2UPLDNTcthnE7FUzy3K5DQabgypQJX60ZA6JA5P67CeyPfc0muqmc
 eGQWClvJqor1Kd6CONw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120104
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
	TAGGED_FROM(0.00)[bounces-274592-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C5C4272466
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-09 21:40:20, Dmitry Baryshkov wrote:
> On Mon, Mar 09, 2026 at 07:33:25PM +0200, Abel Vesa wrote:
> > The Glymur CRD features a WCN7850 WLAN and Bluetooth combo chip.
> > 
> > So describe both the 0.9V and the 3.3V regulators, then WCN7850 PMU and
> > the PCIe WLAN and the UART Bluetooth nodes.
> > 
> > This enables WLAN and Bluetooth functionality on the CRD.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts | 119 ++++++++++++++++++++++++++++++--
> >  1 file changed, 113 insertions(+), 6 deletions(-)
> > 
> 
> Is it directly wired to the board or is it connected via the M.2 slot?

Schematics say it's via M.2 slot.

Will rework and respin.

Thanks for reviewing.

