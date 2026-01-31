Return-Path: <devicetree+bounces-261401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDXZDnO7fWm4TQIAu9opvQ
	(envelope-from <devicetree+bounces-261401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:21:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24947C13BE
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 62FA83003829
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39AE12FBDE0;
	Sat, 31 Jan 2026 08:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GwPppWFT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K1W047nV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E36A275AE3
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769847659; cv=none; b=kqbtTACRAhCnc7Y97ydF3/rozxGzUqgXYV5+qcfd7I34IOFS2vNPu19eswtIeZ8wTFe8Wiancgi1qi45roeeN5sTeV1LbpSoeYWIakMdW21abNB1YaCd8/VFj5jOfuFOO1MrjZytDGTk5GHeXaVnHNmmffqjr8aGttsb6flJkgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769847659; c=relaxed/simple;
	bh=DL6RQXTaFjh7ka7FhddEp9n8CkpqVnzfL2lU3F4s6ow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HLH2BT84RFRMHITNm4WJPEpmeQ2Ov06DFQMjxTUctUWxU04S9eSHVC4J0kooCBLmtKPB5aNpShXeTgsgmIs/56089actJ63pXzHbnrHkyS5zTULssgwTXtvlJ/M2ZB+UGg0Q1a+ksSXUvvqNaL4/RFPgPHRg/Q0iH585EYiX0Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GwPppWFT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K1W047nV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4bt4F1061777
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:20:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=COmFWv2JExG1Iu82MeDLsbXO
	3mvVpSI+IVRX7pQn10U=; b=GwPppWFTYNZJXF8WMWUtKDTngfDn6gT5MeXIVKWf
	pEcgX1H7Ok0i071uJjY2X/AV1795e77GuwWGhQD5P9d59yIJeuosu/ou9MYFnz++
	n7lP81CALmnsj+6PR1593gfRpv1HJ5fN+/dwwg22VgI7UbCiGtkRafws2B2dOB7O
	bpPT3ZTWbxcDwTntDxVj20IdzB/TwnDtGs+khqLIb1Z3Jp/GIAIUAcgDpSXlEGfa
	ymvl1qeGFym+sr4ZjchKF+AVGDqHJdwroYqoIrzhh2fcWPYcpwDP8VtV48jN8QTK
	Tc9z33vdBujXif/E59ZY1HzD3CPSyK7QcgBWN43k37UzFw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avngepa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:20:53 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89471079a13so160860326d6.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 00:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769847652; x=1770452452; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=COmFWv2JExG1Iu82MeDLsbXO3mvVpSI+IVRX7pQn10U=;
        b=K1W047nVJyqyVnYqpm9Yl0gKQukfwOFqCBNCM2LgVzIuHQ9mGiNq0/1AbKDikE1fv/
         k8IT8IfDwcTV2HP/u3gWJ9+dyLLveMTjurzouLmAb5yVSVPI05ggRDVCIiajWN9cV4PY
         KipkIgjDeHle95flGrZi3OvUQAct6LhAJJ+/TKmv0xhhF0F0ZJm6DQV4uLc2MUn7ei02
         Gao04LQVicRQIlJEgMnWhL8r6F/pKbq5TjnUBTobt+OqSlMpJcaiSnvIJaIdQh0x8Ymw
         DZxiGXqYSC35U3FKleU5qaJSxjMWVPPFvjgwfpWZmj1CrCkN7KkgdQssTieYDM/Ifv36
         dBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769847652; x=1770452452;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=COmFWv2JExG1Iu82MeDLsbXO3mvVpSI+IVRX7pQn10U=;
        b=PagundiGWIk8UpimQgdO406EL3lBwz6tx+cMgjnUG/17BYFfRPd/6SMSkRFyt7onm0
         5G66FhPex+P5kMBZADHcyw0rIhy47ivzwb1UaTyNB2SsIiD2pWXs4utGLCfAoYeviE60
         5rB7IyFL5X16bXKavXiuV0jLpto0Bl64JUMt6FoT+kXj68FSFE5R/j3AtmNkBP6rZvml
         WW41PVdDi03NCcQ5fwzmuptS5zFiECcYeLdQ2+OPtXan5Uk2sDeDz4l7xlNw7ry001aa
         2ch5jUYJN8vHNH/ov0imnGHBbDUulfdZkseyMlbBhehmgY07pI5dSOZQ12bECXI0lR0j
         NHjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXztRl6BvcsjsHstvEIdBYQtTBS2KZ1TAc8HAX2BTd/TOXrL5VePBL/uCzG5iGY3cRUdfGTpDYpE/iA@vger.kernel.org
X-Gm-Message-State: AOJu0YwIYgqxNlfr64flb7KpGI1KnhC7HK2HD5t4btyXs+Kwg0bppX00
	2F6EuNFnQByXxi1/m2AQQYpgnAstk03pcDS8OcXPNh8cgAusVdQ7+HYmLMeH2rB7PoaSgqgVYoh
	k8Fny5INNnTHtsZP+pT7BCNGbDjpZgxlAQNexiI+ReGjf+VdgHgz99ma9DwH1OHek
X-Gm-Gg: AZuq6aIUwtUwhykbcLwcRAniNSdgIUpv/dQMvAyBELoyqnCjSg0qTQzIX/e4CFY20G/
	W6nAomrASvTqUPrjMqJYjgCmFNOeRuavBgr6UW2j+OR+xNuZuDkKpq00k4B05hdIRjZ0v+t/SHx
	SxsbwenPJl83hwJrZCRjasVoDrnUM5R+Iu9ar5e/krwYb8YAA5g+p7GTqfrQE2vKpvXLflgst/D
	CkrkQrcVIxF2jKscGM20jkmCamwCV+T1ICopaCTh5stgXrIpZc4AptzLzsSC4p0bOMn8XJyNJUR
	GjiUPbWxuUIDP3hdByRk+mvOaSCvN5uV/YNKnXfG79qi0vBpOQ+O4PxVGxQu77ot8qSozAWUAjo
	Wpj+aMjIJ09laZFPMoliqzV9bgNLQTYOTDODdzo4zhkGFwbTZH4kDNtyTJHIz27YGQy5fwK0cMY
	JLWFbUgn3CpOOl3aDpMnBYh9w=
X-Received: by 2002:a05:620a:2a0a:b0:8b2:dfda:66c4 with SMTP id af79cd13be357-8c9eb1e67b4mr777394285a.8.1769847652600;
        Sat, 31 Jan 2026 00:20:52 -0800 (PST)
X-Received: by 2002:a05:620a:2a0a:b0:8b2:dfda:66c4 with SMTP id af79cd13be357-8c9eb1e67b4mr777392485a.8.1769847652078;
        Sat, 31 Jan 2026 00:20:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625c61882sm18873461fa.12.2026.01.31.00.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 00:20:51 -0800 (PST)
Date: Sat, 31 Jan 2026 10:20:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v6 1/5] dt-bindings: sram: describe the IPQ5424 IMEM as
 mmio-sram
Message-ID: <2cktheoo5lmh5odlvc4iad7gclx3h4hltg6rbzphga6uu7dbaz@3p23jh5nxhuo>
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-1-417ab789cd97@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-wdt_reset_reason-v6-1-417ab789cd97@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: nvrJOMCWeO1fKB6wKqCiurya7YIGA-wD
X-Authority-Analysis: v=2.4 cv=bPMb4f+Z c=1 sm=1 tr=0 ts=697dbb65 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HBzuxA2VYrXHyfHpFaMA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: nvrJOMCWeO1fKB6wKqCiurya7YIGA-wD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDA2OCBTYWx0ZWRfXwZumWzx+XZIw
 uLjS1THvkW+qblcm86og423/8VlqCUe7gaPx3a/YOAznqBBfCzQtzhM8Z83aUawTiXsJ5Y8Nm48
 5umYSMLKPNI7A8aGVrXMWjgJqDIY7ygo60w2AJTZcKIKil2AxnOooMZE07PbxIHIwIwvMZbw2lE
 sTDbNmMGhP5IpHG0AUliYZgP7IJKdV87dWWSbFid1N30YNxxToziBHdriuTI5uDXa6fYEow6h5P
 yF960knYq8HQHvPaLSGHml4Mxgoie9798IONGqCkR2TQ5V/xheBgCaVT3tJg7WzNgMXdLByiyGH
 q3umpVR+ciOa2E/4SVRigHex5VfKuQ1Fdb9EylFls3xsizovxev/dZ+cdOv555ULW/TCkaNZ+BD
 wj9+A1iBMjhKWDQfxr06VwF0uH45VoPuiTE9JLjAa8HSXQdxLAR357+p1RUaqKUaNOhiO5rUwuG
 Ll/5w7e1ORzjxq6Pn7Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-261401-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
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
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 24947C13BE
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 04:14:30PM +0530, Kathiravan Thirumoorthy wrote:
> Based on the discussion in the linux-arm-msm list, it is not
> appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD.
> 
> So drop the compatible from qcom,imem.yaml and add it in sram.yaml
> binding.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v6:
> 	* New patch
> ---
>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 -
>  Documentation/devicetree/bindings/sram/sram.yaml      | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)

> diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> index c451140962c86f4e8f98437a2830cb2c6a697e63..7bd24305a8c7d98dc6efad81e72dc8d86d8b212b 100644
> --- a/Documentation/devicetree/bindings/sram/sram.yaml
> +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> @@ -34,6 +34,7 @@ properties:
>          - nvidia,tegra186-sysram
>          - nvidia,tegra194-sysram
>          - nvidia,tegra234-sysram
> +        - qcom,ipq5424-imem

Bjorn, Konrad, I sadly don't remember the outcome of our discussion. Do
we need to specify that this SRAM region is Qualcomm something IMEM or
do we not?

>          - qcom,kaanapali-imem
>          - qcom,rpm-msg-ram
>          - rockchip,rk3288-pmu-sram
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

