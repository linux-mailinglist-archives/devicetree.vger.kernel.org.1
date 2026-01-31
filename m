Return-Path: <devicetree+bounces-261394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZSPDDMm1fWlXTQIAu9opvQ
	(envelope-from <devicetree+bounces-261394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:56:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 768E1C1298
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25838300C025
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 07:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0982F9C2C;
	Sat, 31 Jan 2026 07:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="obY5bTeh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OBPa8Dhw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7942D97BA
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769846213; cv=none; b=OhJWdcIbWl1MG0aAe8nqixCbMSpqz3uWVN2TXE1okLopWvvZ+tOrDVLV9+PqKeiTnukBBSnwlF+R5im/9ZS8u4y/UZtPZidl7UiDDlzNkmOQcqTg3Hdnls8YwWOmcpYX9t0e2VP6FrCpqtTTk9B48LyaLLQBM7JmJaDk00BZxlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769846213; c=relaxed/simple;
	bh=sHEicpusxt1BhCWPqTEoWD2qVeq44bchRv74bgEZmSQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pC7EPyWG+h6IKCIRYuxZ7h63nkHm529aJ/0E08azPcG5L8VW1CxUxmH72T5OoBpomveCJqSYgMvoTZq2CWSL9OVQqOnxzSyv27jjE8RteYiPE0yXo3IH2q+qsLpnwXgaGsO+mE0hTDj1c05zXqDjKtLPiQpKGq3xRJy1njUxiAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=obY5bTeh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OBPa8Dhw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4bjDj1061474
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:56:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PFdJohiEcyNjLvWuefXTpcb9
	eDVSKkB5aq+atHh5Jos=; b=obY5bTehtMKIDHJwW4DzRjMb7E5VBVjBZIW5vkmf
	Nvp2cD2CFEoPe2vczcxvwYgTelyIrlv9Hy9DdedDa86WHLLPVeInb0vqYmrNIYVC
	oFGIGUkTYK066JpphwTlWrQJ0kFOsRuNHQFacp/grXsRuOmAopC2EN/D1OxgTcfN
	c1sQPa9c8aF2xCrOwTShQZrkM9QjCfSZvE29DlZQ0uKrt5x9+nKPRU5EtnW3Ll4b
	EpcsvSaJDulSt8f5ssueoN09aoRKjhMy7ttLZwAqW1SAc/tDFTnDvr1GQ++F08Uw
	lOOGIhnJtBbFYayxEPa2oibdxyzqFwHW9GDpKQMCd26d8A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avngdfq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:56:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6ad709d8fso674201885a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 23:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769846210; x=1770451010; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PFdJohiEcyNjLvWuefXTpcb9eDVSKkB5aq+atHh5Jos=;
        b=OBPa8Dhw7H3+NKA9spTHblGpe9PnA9+lPzFO4XCFs8NfoMc15bO9CVJIQdaIEIYdA9
         hGPqmJaa8DdSgssvWERJTZqDCbysdo0vqzh5IPHCZgS4Jfw/t+/r8uCleIaxFjXw/IDO
         TLWDg19RAH7DuGQNcynb964i3GI63jM4OIodrSATZi8vbBLl6U18NwPMgIeqVyThFaoS
         wY9JMUpiHKATZXBWrX6N44ecfX1mKInt5QX5x58HJXc32oBlcNkRVCBkb1XhtUDgVe0W
         TuWh/6WOFUdBSIpMIZt77UzFP2RVASloN0daBzmT0fIVW9QQjwmGIlVwAV81J1bq/Tqv
         YJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769846210; x=1770451010;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFdJohiEcyNjLvWuefXTpcb9eDVSKkB5aq+atHh5Jos=;
        b=r0HLk672we/q/quawEEPVJdZ5OduCy63DYg3AdXHsJAuzsI2KFUuzPSycld3UY++Sf
         P82Tik5ueL1L7dV8GEk7enqsu3ud5iz16dQX0zilsW/Y5mSiPsVZAHERdDNmoLdGONza
         pvJps61Ahq3FzQhubKThoEBAVO+1AF2mdzAboTMO+2ZcXhuapJ1tduw7N+fClrsoVKDg
         tgFZGdbA2DuHKHRP9UGfJsnm6K5U+Kqpl4DlllEbGYz98lL/nPeanVFsq8GFW5oNGoCV
         l+hDiKtSFy18CXXpGddbvs1SPd3BZ1rFao9T8vITiHKGAmXO0N9S3e6rxc//qEidGl+Z
         Milw==
X-Forwarded-Encrypted: i=1; AJvYcCUBAw2M6zLNGyEBvxQLKVGMh5K6UmZaVK1RgE4NtNjaOZz3Km1t6di+5riGYCkYls+nm79uWeUWfOI9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbn2IsfkBFcvACzxPhVnKQMwfNfmTU4yrnYOHLqUbXIFhI7j2h
	ZUTFI3h00sqY3RovyLBZT8z1NneRsKSZttK7MjwoaGporgCdvurzmppvUIIl6LpMyqjo78xEW+x
	xFOEwQAlVC9rOqxUkw9VGWvWE69lU9d3ELZ3Af1LCmEWnDY4g4eRDKSe7NsuRbmQk
X-Gm-Gg: AZuq6aI7Fi3VmYCsi7eiMTU7hetR3/QRVDCoxBGlYg7jRP10I3xpvN9zh7zGRj6UXUy
	uJSODsCeF34095Hcmeb+70kubxH670PFyQbALzE9zC/viK1EJnHG2w6Jr9OEaSQKKR5PNwUQ4SX
	w7AUtTGxtb3jhhapx8HwQ8unFsh2LbemQQg2BYK0cX9KBe7YgUOOuxrN7iUXIazvT1O8q0LyC2I
	gLikl7eo6OxiWF0hVoEfbIjZKKr1OZFqrmJj5JNqCNNPPmfzTkOy0cLwz54AZ7FQUKWQSzNRzTb
	SxGBHo69EznbtzO9K9ayyCpIeKvqZIbDUt6HQe+OXLDftEnWDZU/mFka2uzpZvokVllDxIa+ALa
	yM+LwAmISkScYpHqoihDDjmCmAcM5iGhs5/PjQNauiEA024Mg3LcCzS7iWRgWb/AbjJ8P8SnE7L
	/m2V9tVA5qJYfxjlpxO5iseHQ=
X-Received: by 2002:a05:620a:d58:b0:8c7:a39a:d51 with SMTP id af79cd13be357-8c7a39a0d92mr831914385a.13.1769846210517;
        Fri, 30 Jan 2026 23:56:50 -0800 (PST)
X-Received: by 2002:a05:620a:d58:b0:8c7:a39a:d51 with SMTP id af79cd13be357-8c7a39a0d92mr831913585a.13.1769846210035;
        Fri, 30 Jan 2026 23:56:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625f6c13bsm19324641fa.30.2026.01.30.23.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 23:56:48 -0800 (PST)
Date: Sat, 31 Jan 2026 09:56:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xin Liu <xin.liu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, jie.gan@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device
 trees
Message-ID: <5qplhwnkiwhsfr5rxzjqk4v6rtvpqkvsg7qxvrpkqd3b7vjvob@jffvv4fvvd3d>
References: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: XIbHhrjFX4lF5wSvAUbXFIz1dMG18zpP
X-Authority-Analysis: v=2.4 cv=bPMb4f+Z c=1 sm=1 tr=0 ts=697db5c3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=7aDssnv-2FInNtQMBZEA:9 a=CjuIK1q_8ugA:10 a=eSe6kog-UzkA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: XIbHhrjFX4lF5wSvAUbXFIz1dMG18zpP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDA2NSBTYWx0ZWRfX1Llx2iGV+7nU
 6hTwB0KSPtMp/y6PLxoy5eMhZoVAMeeNSvJx0VkycsE2t5h96V5+OZFxxkwGdXzSNxd8U+QUDLE
 KXPcKcMmzsyopWimQtW/sKFVqyaoahLxlW7jeSNWGTS+c1OPfNRMS2q54kjxldH+lLdmZee/CR3
 pReB9DxTsBFnw/KOHxRll226/FN1zdJQI+CcNmyQ00k7I1NBETirowLeiQsx9EYdZUOQ05BNwoX
 7uKf8tbOPhRH/GuGcd8k2GQFMUHHy51KU7tJji85aCPo+1+qD/MPDb+jBe/VTjLCaO5zO8LvrLP
 R/Taodyqfqa7dOKhnqlfHGP4IezRooPl+zfRRQixVHz2OqnW5GKu2xqAUW8K9mdTHoYkU/I8kSA
 mZynxu8XFidD9JTr09kgRDkzgi3W/ak+ZVyGijsSKG9cG/fHgl4vIaFePoOz2XT6xYh2d0ADT4Y
 PxV18WEcWY9Fn5OhFBg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261394-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 768E1C1298
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 11:31:13PM -0800, Xin Liu wrote:
> All the existing variants Talos boards are using Gunyah hypervisor

Why are you mentioning Talos here?

> which means that, so far, Linux-based OS could only boot in EL1 on
> those devices.  However, it is possible for us to boot Linux at EL2
> on these devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU streams
> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
> by the consumer of this DeviceTree. Therefore, describe the firmware
> streams for each remote processor.
> 
> Add remoteproc to the EL2 device trees to generate the corresponding
> -el2.dtb files.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-el2.dtso | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

-- 
With best wishes
Dmitry

