Return-Path: <devicetree+bounces-273126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iA0RJ1M2r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:06:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C56C241560
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:06:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F5E13031AF3
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A88DC40FDAD;
	Mon,  9 Mar 2026 21:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jhbmR9Nb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AAHURRJt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78B7347FC3
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773090373; cv=none; b=kL8+bv525uJ6ItaDa6T8KKOLZVTbBRaX5UwPMXG0Ze1VdKI/fBViCjveBAuY8zyBgBpY9qcIWMQs+VWrTayCnib0GjUVVfvt9jjBJEmhBWh48g4CpCJ0Wi0kMoGJEQ56ZMFDkTeP+Qqgm0S07HpMZMHsrgyrae79R/KOwoN6U7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773090373; c=relaxed/simple;
	bh=xaEeiX6OmsoumLdOC5tJ63/jO1CWQAAlNzVa0vnV+80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C7uLVrTVrMqnZtF7wsr5CVxdr4cJtRUJ6PEAxbmwSu7oAh8fg673EyzUFNhsUEGHXSwzsBNTKgAcjA7/TQO4Zru5OSnhtrTPewitPTjahLIn0NpJs3MQbCl4Vp0W38nsIZQ2R3IFcUvMVm87Xm2bnkW5jnGOpUn+rQ5dQSgb+FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jhbmR9Nb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AAHURRJt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBsB61920970
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:06:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n698Dyj5P7b6CPLnLLa4Pbha
	fMLunYH5Og2awom7UOo=; b=jhbmR9Nbz4D9t2k9X0lvO+UqzQczbJ27xXgVXtPS
	iaqkraQKDT6PB4F9YXFAUMEAOsBZfoKHomja+ga4gzop8yQPWYzKerbwz+MddKMB
	LqPbvupPSkksg+dzVccVZuvVFCQnZUDRjhTRvOIxxD3yUSxr2g6rWssDLx1YBvaS
	9Nkmq9JVLnzxQMEGpyeqzTwlJT2Kzcfc5onoEgUgr/Gsqp5U28G1GkjTHhQ7rctM
	A4K7WmIDQTXSKIcHd8iSFvFbrFnE071C732ChnTmQ5rcZ56YCAXon1DHmkbzPS9v
	VvYfXQM6laGa8xWDsypBarzqC7nxO8tPeCYDNEPjHsLI1g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy81k3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:06:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7f6ac239so1173118285a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773090370; x=1773695170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n698Dyj5P7b6CPLnLLa4PbhafMLunYH5Og2awom7UOo=;
        b=AAHURRJtZL+xgojYBEH26JltK2qWeptIFMM+S4bcgV5dk3XcvSFi0MW44Zf9IvSxMF
         C1u4vM3wrMbLIrEFp+McU4KuQOXKXso27Pw4f25D65nh/wmLR5iz2/MgwkxD8R3Zd+/8
         JGnHpzth783pWgERPeZ+XvjEGo+eGqJ8kWgxTO5b9Mq7Sm/TAApN7Y2wf/tbQfA5nMUs
         /kC9/seBMQyC/BvZEbV9dCglcK0q49KSTiCOBPJQVLzijNiNgBu5k33bFkibFr2twL3O
         MABEM9m0BgQB3YB7Av/O4OYvXocqCessj7mvB4RNo74Z+l3aPjvigDOqLOGEAIG782Yw
         YDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773090370; x=1773695170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n698Dyj5P7b6CPLnLLa4PbhafMLunYH5Og2awom7UOo=;
        b=RK2uyRMT53uiuMM0arLs6+/dRABxiNzH05e9Kg3J0qisEAZ6T4Clphqho8wrcqiUss
         geFR8oe7QINDjqpVoOStTBl67D0WhPTyy4BmYHYN6FsTxLYdpq/xxS0Bzb+duOWRNCjF
         OJW0dkMWqLJDEx4eWZekPL/8bSQHT0EcC4MOJ+OKqfmLejrv6PqNU/jEfLwyb7Z3CloZ
         +JUd6/3oiqsxQd2bqVGVNmVJcGGY530VVVyhej12shi4AxXjjEjFUbpt4/x4voYSk0gM
         CvNApwVlgU1jePWUb8bqmwASIZ3AzBVmPjGuSLa/xWNdEZXYJtBeFt6EmYG5G3I/JWb9
         TZ9w==
X-Forwarded-Encrypted: i=1; AJvYcCW6aJX1+4dbqwTG79vqtCzLICxkr139EqHQGky0lqkjMss/zN4zyrRYQ2KRp4LCYVe6iNf0hCtSwNIV@vger.kernel.org
X-Gm-Message-State: AOJu0YzHfxzia8GNrL0bCqMPxSE0sDRaoxBnsmK1UOq5WqFWy3I2Qvef
	PVfh7epqjssE2CUZs0rjLVnyCDTvi3Im4+zY0CFKdIk0/xu7Ywb/Npft4uMjFjgFXGRe01oOQXJ
	4vZWO4WLiZ29GCslcsO5r5qbTu0uXMF+i0kHfNkG9kHslBuW1IAjlst7vVPemOfj0
X-Gm-Gg: ATEYQzyMLTfHVE83RLlsH3SuPggYh21v4Lb2UEoSYAoOWpOHZUdDuZCF3G7Pg/OFMvQ
	BYCHtkYp907y1u/605jGy3M7Gthcx41vZCkhhoCC4gY9gNLRNbbQcWdqq2spIN+y3KsTd9URf25
	P1KtCak8kFVdazal3+ZsEX7EuM9lT4YyUYobsJbAhkPVkV3hIHkNRIxJA9fhrclPmG025VA/qgq
	kfl1RrC4nt7M/zW6P8tL8YJ1oB7CvTmT3kmA1UWVKjqS5S8jFjXj7RhMHDWgVZMyvT8HxhPEdTZ
	mcUeVhgn62HPvBomKO5v5am1snD6fS1YFXRyozdAjLhC8X3YGTF1HpHCbtSupSQYZVkikqW3ILL
	cKcKJctJVUyf7E3+ZZArYWiiqR4UEF8akxpV9v6ONZdkc7hO5hzoyNsvlLQqMbXuYtehuZWldmw
	BneLtmKMe7HBThls3OQNbHVhDUSW+nXtNlTiQ=
X-Received: by 2002:a05:620a:319f:b0:8cb:66dc:9fd8 with SMTP id af79cd13be357-8cd6d46b265mr1656312285a.65.1773090370092;
        Mon, 09 Mar 2026 14:06:10 -0700 (PDT)
X-Received: by 2002:a05:620a:319f:b0:8cb:66dc:9fd8 with SMTP id af79cd13be357-8cd6d46b265mr1656308485a.65.1773090369630;
        Mon, 09 Mar 2026 14:06:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d07e16dsm2298947e87.42.2026.03.09.14.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:06:08 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:06:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Subject: Re: [PATCH V3 1/5] dt-bindings: embedded-controller: Add EC bindings
 for Qualcomm reference devices
Message-ID: <6wim6vo626jy627k32nlhxjd5dh7cvvwxraqyv7uujfgbo5p4m@cesxgplycnpm>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-2-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308233646.2318676-2-sibi.sankar@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af3643 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=4Fh_A_dtJNkFtXRpuoYA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: XUMxOJZuhNq7scXctMRcKqmY_rK-yDMg
X-Proofpoint-ORIG-GUID: XUMxOJZuhNq7scXctMRcKqmY_rK-yDMg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4NyBTYWx0ZWRfX/5q2oxT4LUKK
 E0KWCfShNq/93mK37rMUCWCqZtz8JbF6IpLGoUvKztmOgCbX7nCTDhhCFOs7FzOJwlOUOp7m3FG
 MGc+UAYnG3MfV2DbSgLw+6MiRZOkTsn9W6yywHyV2kyxPjgSmNyz9wa5Wjtlc1wXknL65aV6tMa
 MGi3UWTwbmZKKppu0IdSW00obO4qQZzgL7DETuWopMVQVYCWxg+KRZru/zkyM5/Z6jv1AupewgL
 Fo9nNKO3eWOdVlqRSTyTdudRALBXmwO6Mfn+f+2kREzbWN6tbxTI6fPSNs0DNUQvLv5dMKcy1Qo
 ITzVoxaTodrTQRtVytrKIS7fgINTQq0gbYpyRoIHtZSRWtn7W9hF5N9/kcDw2114EgXk8DwZ+LR
 ddZkma/n0r0x+cztB+imcSO1WmAL2yxqg/bhhN3rsYRfn5/G4TeNRZoFeA7dr78vg9LhFCk91OC
 g4HOup9sm9+Grze6TKw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090187
X-Rspamd-Queue-Id: 3C56C241560
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273126-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:06:42AM +0530, Sibi Sankar wrote:
> From: Maya Matuszczyk <maccraft123mc@gmail.com>
> 
> Add bindings for the EC firmware running on Hamoa/Purwa and Glymur
> reference devices, which run on IT8987 and Nuvoton MCUs respectively.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> ---
>  .../embedded-controller/qcom,hamoa-ec.yaml    | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml

Looking at the DSDT database at [1], several laptops are using the same
protocol for the EC. Do we plan to use this driver for other
Linux-supported laptops too?

> 

-- 
With best wishes
Dmitry

