Return-Path: <devicetree+bounces-262240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELeODqLtgWkFMAMAu9opvQ
	(envelope-from <devicetree+bounces-262240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:44:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D33D9311
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D16F830479C2
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245013446B6;
	Tue,  3 Feb 2026 12:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M8UYK0aH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d/55p1Rv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7E234029C
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122404; cv=none; b=BNnh9b4xLZCxdjWZkbzZR4kCwfoR5GI7nSzXidOlD0RMHvbxMo4xjpm09mcRvYmAKYNTy8piypxdMssQ5f8J526icDaZ6u7ckMVs9HySw8s+8xgvJUrkBjLfuPp2IeYWRzI2rnN+fDeYSfaKkwsIllNWKbfqlHurfi3t3U5y18k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122404; c=relaxed/simple;
	bh=83yjvih4j4UOictC6ahgoIhRDOa2P/J0oz7lHYxnhb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KoTsFd90RV2hSxb/r0ZrZh+xHfke/ctXlotd3C+LJCZsmRzLDcl4izKO8SRB6KJPDL6Nf1u/yn8Y8uviJH458Sx2qM4DP++u5JrD/xtdv7h9aCYw9ZoH/l4sq6k5WC6556jyYh5fiJP14iEcY8EVRXhMoohVaW/2HDhL9z59ibU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M8UYK0aH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d/55p1Rv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136iU6A256051
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:40:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ufTr7+wzZ2/b+1pjL/6eFzV9
	KL+yNiviwWGyOeRQjGU=; b=M8UYK0aHetEUsxaG2LKBeqrC86ZIxw86xY0exxR1
	MmQSCmtaJnsc2+0l7c9AqteOJkcg5TTdN0TuKWZCWn1h+9a3zazZ01IPJQ3y8W/a
	mhiK4XEYLr61lGwCE+ML+OOwHGN/cpVKOovI8VQneXxeOlGerMvq6iiKyF1LOOZG
	MZO+KrgK0guLWIboSrECV3GDPLdhToXpe0vLb3zCnXsyv88BIbaysXmqm8VH1ILt
	Lg76EyAKw0Czm9ROfXSd5m4yc103QuFS5vDKSZ98E6MLAyxwZ7M2KBUe01YSCTVk
	ia8jcQ7PuX52Tw9EEInwOhv8i0Lm5j5L6wwXeZTe2u8AhA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2v0km2ka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:40:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c7166a4643so1485300285a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770122401; x=1770727201; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ufTr7+wzZ2/b+1pjL/6eFzV9KL+yNiviwWGyOeRQjGU=;
        b=d/55p1Rvruo4yRuPE80pHxcEXSLWiLsll/8QxBxReSOXHFsJAHj8R7t/CxlopnO0zf
         AVZbsZgh6AEQZsHjUe/TOI7GcocrJwn7UevGO10jJxKKGwQc9dGokEsTXZQVOcGE9jYZ
         ljwUy/g4y/puR+3dwvUJmETsTori6QEkMX/6uFgrs4pXztFYo6IX5rcjXoJe7PZy/b7i
         X5kbl3ycj5vPOeAJ5Q0JmHta66uAtdP53Y6YmZ0fTbynurHFczBFzzZVf5NhIswMxhTh
         1anxNJ82PWuLXx6fsKxh6mXaR5CDmZEKR2MC0VbX+PHkdO6CUIGriixJDb0pRpwiLfg+
         ztVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770122401; x=1770727201;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ufTr7+wzZ2/b+1pjL/6eFzV9KL+yNiviwWGyOeRQjGU=;
        b=WYWXqRGPyKYVcyMhyxfuqNPNb6lOxbLogGHKm9YwwIeI/0yvp/SG17QTKzqoxS3Rhl
         n+X3I8qUM3Acwy3oLGIIrc1GeY6RBK8i6rcEIea6FQXw28hSvs8sNTneR/iA3ouRYthV
         6DIfh2llzMDdhLUjA8jjiYS5zY/I20rwKIFCQglR9E2owjFnhBVo258qiyNJsaCGDuB9
         XbDtxsWGbUR99sqMaafOou7/rcJWZmup6L0xSGjD1oX1LPZnIOeqxsZkG2Scu9UeqITU
         iiFJnDcuUyr98K3KgM0wCCKC3+YzbfBODb4EIbTNFo0bCEybXWh7rOUic4F1Yl2KP3Bo
         tqiQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3p9a5xZMypoBp40pNBwR+KnoLq0FYwjrfs8VCg/eyn/yCHqC6RdlgkIbX9LL9+p3n+TWLoyyu62eF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx29INYdnsXgk0O0UIXt7g71XmvWOWC7Yosk1PZKNdTcBR4dPok
	G5SLc+3WZbhCttSPC8iS8gnfmJUnck7RQ6pcLbySFQxnmiqu8IWRcGAuyG8vXwNmixUBpA5BZNW
	rr7mse1lYsTu4YuvvYQ3lx2QCFyRGZpbAWfxF2bmxUHhtFTI4CDsSovOsK16WO+pA
X-Gm-Gg: AZuq6aIGIP7CHdZNx694RnxHB21NGlkBagPX5f+p8CIm7iwa4S5wjq/NW85Kv8ZDQ88
	qUjKkINmbU+49424eYWFAL1Seu60k7oiHYDbfKaaKisNQEIKIg1C2yOIz81lNgxR/JWghVxa5RQ
	683Za1kU1d05DqV4CVzC0XJNasPzGvAn8vrNgI7jr/9jeB9E4XDwj0cMcjJbVpBUbH6nMKZAQoC
	TklqQfyoHq2AZTf+l7pfgFbBkdhY+92pC6lC2wC4Z5kCEWodlJ4INXxw9KrUBp/J69UvjPtzjxc
	AUwtbzLm/jXF/CV7nEBy0RXIoDn2HC2nvyC4qvlAsYQ6dqRoq8EjXzkH4JyTQRoSi9ISq8zLXwC
	qHQzS7cH4h8okPjOoqNTD/ynF8jBV0imYmgYB2pfC1IbJauJduld1jAVG35TDdd31dwYjWqo3ve
	sEAiozDo4r+hK2ZRYX1+V8GQk=
X-Received: by 2002:a05:620a:2906:b0:8c6:a8f8:9645 with SMTP id af79cd13be357-8c9eb37278bmr2010935185a.90.1770122400870;
        Tue, 03 Feb 2026 04:40:00 -0800 (PST)
X-Received: by 2002:a05:620a:2906:b0:8c6:a8f8:9645 with SMTP id af79cd13be357-8c9eb37278bmr2010930385a.90.1770122400389;
        Tue, 03 Feb 2026 04:40:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074bc9b0sm4187258e87.91.2026.02.03.04.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 04:39:59 -0800 (PST)
Date: Tue, 3 Feb 2026 14:39:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
Message-ID: <yaunylao3nefmhbdovpfoymy63hjfjtvbwm5quqvdyk3enpno6@7rmpnx7esdhs>
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
 <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
 <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
 <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Reqdyltv c=1 sm=1 tr=0 ts=6981eca1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=fMO12ABWoyO7-lQLxlUA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDEwMCBTYWx0ZWRfX5TOmz7St1X0L
 hq2c/PWma30x5StQgzqwegQdMKQqhhOekpKiAWgi/3JGzN919xwl+OlsZRUeZUeRFFLVMnPEaYU
 7BURGBmNnWfkBLHCpRQ/I483V5CVVpmhWQtaCE9VGHrYTZ2pP4N/byVWE3K9BmmDtIppUKGCKG2
 GtSWvJqjyASImEBh4nC8cRGti+VleEE/8/9VufxKMpFfYiNi6PLQzI3tE+jrtE3cnr3czfe3KV4
 HX7Iba4ow0o+xTGaC3HH7Mf6TtFovHT/Eth7ArKXdkVn/MLwtCahvryR8DGCyqwhgXK4+vixlPm
 fMWilkcoIAjS4jJxn3s+QrU5sfZ/3MLOdqVzu0D0fDaVk6YfLsXlZQUBhzL6FzmFzUO4AGhoEhJ
 sIm/3o6uXeLsJYnVyI2y5QawiIs08T/dQINQd5vlOpf4B6wrnYrahS/JyA4oVPbtXBzJMl2NLYC
 c9PTW1WkQngfRtmTTFA==
X-Proofpoint-GUID: _B83lu2GChuYhJKKPUCQtiOu1ZI3gMI6
X-Proofpoint-ORIG-GUID: _B83lu2GChuYhJKKPUCQtiOu1ZI3gMI6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030100
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262240-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D9D33D9311
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 11:16:19AM +0100, Konrad Dybcio wrote:
> On 1/31/26 8:54 AM, Dmitry Baryshkov wrote:
> > On Fri, Jan 30, 2026 at 10:55:24AM +0100, Konrad Dybcio wrote:
> >> On 1/29/26 1:13 AM, Sibi Sankar wrote:
> >>> Enable ADSP and CDSP on Glymur CRD board.
> >>>
> >>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
> >>>  1 file changed, 14 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>> index 0899214465ac..0eed4faa8b07 100644
> >>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>> @@ -487,6 +487,20 @@ &pon_resin {
> >>>  	status = "okay";
> >>>  };
> >>>  
> >>> +&remoteproc_adsp {
> >>> +	firmware-name = "qcom/glymur/adsp.mbn",
> >>> +			"qcom/glymur/adsp_dtb.mbn";
> >>> +
> >>> +	status = "okay";
> >>> +};
> >>> +
> >>> +&remoteproc_cdsp {
> >>> +	firmware-name = "qcom/glymur/cdsp.mbn",
> >>> +			"qcom/glymur/cdsp_dtb.mbn";
> >>> +
> >>> +	status = "okay";
> >>> +};
> >>
> >> Please make sure it gets to L-F (only Kaanapali is there right now)
> >>
> >> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > 
> > Hmm, looking at x1e80100-crd which references qcom/x1e80100/adsp.mbn,
> > but the firmware in linux-firmware is (now) targeting IoT devices,
> > should we use WoA-like names for firmware on Glymur CRD instead
> > (qcadsp-something.mbn). It would match what was done for the SC8280XP
> > CRD.
> 
> I think it's simply time to stop pretending the firmware is generic
> (some fw simply isn't and some fw may come from different/incompatible
> branchpoints) and include a board name in the path

Well... CDSP is usually generic, except for WP vs non-WP.

-- 
With best wishes
Dmitry

