Return-Path: <devicetree+bounces-275469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG7OOftGtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:18:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADC7287FB7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EDBE33026331
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B18BB3CBE87;
	Fri, 13 Mar 2026 17:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y+5pucW1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JmDkCA69"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDFB3CB2C8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773422329; cv=none; b=I2jydWugFymsIHMDz2dDRt6NE2ik8tAm8ZcLg4yEu1LXWGtNjqa7Hq14EAGZSTXGTk8oStIjWHYYRnh9lVLtt2EK/5pMskTjPHArjGiNb6gaS0nrdIg1ijSCfZT9zFUKNnxVre3xvgzftcUD1U6SChaDQlyXLBa0XNol6qMS/H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773422329; c=relaxed/simple;
	bh=7bvPpOlo3Hnsd5JwuRJwuLjMVqJ7gchQWap9fGysDtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rFs6cl++5mC7feNgzj9s2dwrwGGa48Gx6Sx1vX4vdJA2zo7z1OmBL6UVgtBAMLAZGOZgq3cxSEP6gPLB5LSXgpCRc5JZ3ET2Z9VIpikryLse5hmLTMHzdXJiCqw2nnCrzbP1aZHpxAeTWQT0i2JYv90obTDz+AdNSaTg1TW7Qbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y+5pucW1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JmDkCA69; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9U2tR1499504
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:18:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tKYh//pluaHllMvZiLoXWUrU
	wmatDhGiwXWuaVJJBw0=; b=Y+5pucW172gtZadTDwX8j0ocOPwk8tDzb+NrgSuV
	3LuqtjXmOX7NqRc3OANwSndO1eez5JNeA0+wLyUEIfqk2buet0qA2WhKgtYNQ0P7
	tNfyyw0VVRydsyr17nIFG2g5jrlHbTn6mYURvOrIkd2UUZzpZQN6N6xkH8uc8k8p
	fdcpx8F0B1du2nC9XB41tgvtXAaigl7Jk01TAdb2TV8n66NUOysMS5wUtFg1BNcy
	jwQSUlRqntLWcIETPWG7MrPThfDfqMod9yjEglwjTLYTef7Jx9JRJeMpM1MrtvZN
	BVekx/xxVfEheadlwT/svf2vbxGWH5e7y+7Rtk4HSlT3IA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvg0hhj7c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:18:47 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-94de7380eeeso27600277241.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773422327; x=1774027127; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tKYh//pluaHllMvZiLoXWUrUwmatDhGiwXWuaVJJBw0=;
        b=JmDkCA69+gFK2QNI0x0AWMahWbvHJsyvutmdpX/8hGphX+fxfDamI69XWuNAmfq45n
         VcRhYcHNGgD80Iobv/lMtNJHxc4DDJrb+FiRKLKliNfsV0jf9jQYYz6hDIv8SDnOk+f3
         P0Cr7F7HH2hLAuGeRddszRGbTxfMNdK0yhh53tiGbsS08JTBfxaFHT5G1pyk0JwpmUw6
         av5d9682k+pt/EDCkXRfqt+9FmVrh0XU/KxhdCDMeY9K5U1xT5g3Mujl2sloxuwTR+B/
         +Q/CoYB+APAPZexbQiuTsLN98xqSB8GdaWjxEWFi0spBLIsIVLUvJaMtdnYZrP0add9l
         L/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773422327; x=1774027127;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tKYh//pluaHllMvZiLoXWUrUwmatDhGiwXWuaVJJBw0=;
        b=p4/Fk7Q11eX0YAzcJOhimeFxHt1axc2IxXOQ1/mJKG7zdpFfbRrEvHDBEHg4rAV/d7
         5QbAIMiEthMEGkakpG23jtJw2fVWgwMnnnKT1FO+pol2bV8YMq3QwgdqocTNmsXx9N/Z
         7C4f3Ue6l1pjOIJJ0fWjBrgYtAMBnL5ZSIRnEsr7QwntM56uWVnrFrXZjDMAKfh8fnxK
         yb4x2VCjiFWUa1lwkYcqY/F9XBlWi+cAB3t8nd3gucg18D+iugAMbqb4F3YhNuy1quwZ
         zqrTT9ATTXTCW0W7121PIdW1J8BMQNkuQxlCMe2zBwAER3T9t6PdVu9Kf4kKviqcDqs3
         zhZQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8s1wb9wBEDNJpMT9CEJbDiwyc8XcHWO3HV1n8wveo8tZq6Zytwlb6ubJhvFKTBpGyPBAcMzSadOd8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2AVZ15VZ8MVk/+3vs4y0UkFxlOW/qYHQkvVMLrRA5F5tePdO5
	4v/vrcQN1LFw+xcbyLL9ur6IpJalvfsgdGgMTQzAAZxxrrrGejxXjZEANyvhzu2Jb7dFTFeTMXG
	az+d7vqG96s3xpmwKgCT9bnqTtpxYsUQlT3NbtCx8eCBCYJ6zOdtOc302sE+xZlgQ
X-Gm-Gg: ATEYQzyd7ZSpJx43aAAZ0NhjYtPnI3QXnxQpzHCDViyqMf8s7XFezCFBJSi5v/YarR4
	KYx+EvWol0IXWMBJm/SP6aeH1s/wi0w/xTfa145IEqXVcIoEOCQCgLLb2xWSdcq6cCVYEFxkIKF
	rt68PHhbRoBPWDuvdEjKCf2VAipb84sw96SAzj2gCGwsa3wshflptTVizLgylXZHRSSjsorpHo6
	enxZc2wDH4r1Cn88RlATkRwmoBcUE6yMZcw7DO0kyzWO4peraq8KqGgzgiOjp/oekOYSLFTVLvx
	wgNqgLJJzcYt+4q7Fg/y//5+e9lzXNal20xeYrPsO8B2mFG7FZH+TfiTK4nVvw9zegGipp5jFxC
	I7h7aoOtAFOv6Pd6J6NG0Pv93N9gbxFPyewi3LbfA48jdf0D+08IQh6Is1R7mLuVUXP9o7cDSKK
	XqkecETGCQvdzI2s6vzlUNGzp4HtVS2DG3ieA=
X-Received: by 2002:a05:6102:5488:b0:5f5:5c2e:59ba with SMTP id ada2fe7eead31-6020e93d747mr2038731137.33.1773422326896;
        Fri, 13 Mar 2026 10:18:46 -0700 (PDT)
X-Received: by 2002:a05:6102:5488:b0:5f5:5c2e:59ba with SMTP id ada2fe7eead31-6020e93d747mr2038723137.33.1773422326483;
        Fri, 13 Mar 2026 10:18:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e67b73sm16445161fa.30.2026.03.13.10.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:18:45 -0700 (PDT)
Date: Fri, 13 Mar 2026 19:18:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: defconfig: Enable S5KJN1 camera sensor
Message-ID: <xq7p4vftr2dhu3lzgjcadond4d47ayzd2jxqnyhq6eozziymbk@walmc2hsxrl7>
References: <20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com>
 <20260313-fp5-s5kjn1-v1-3-fa4f1c727318@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-fp5-s5kjn1-v1-3-fa4f1c727318@fairphone.com>
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=69b446f7 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=qpRG9-ounqMPCAi8cIoA:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: Hzi2jT1O5PoVQsQamO4TrzZJuNii-ZpC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzOCBTYWx0ZWRfXynrE/0TqOFXz
 ZX15FSKzyjH5OuRCVNli65s0yqQsKO2VaElbHW6Hw1t9M3f2ClfR7jSCrcdu5ZYNmUMj4Ij4Zw8
 CBsT1ydfBpDYSKNcVfguRW8yPuHfMqVi5J08Mv2qdfhpnwzTIyfyO2psp4Pkw3/u0Y3Lnl5LZy7
 TnHds6HciSVFUz0MU4G71DdK5jvlSkN2SUCbI6kgnrZHTymP1+oVhrRil4tFTWhNakHjmff/lrT
 pfY0iBG+UaOPe/H3BFGlxFcbSPa3u/spGrdBFDtLtjzUGRA1xfHPx/8ipbyYPtBheyz4AV6wUVJ
 mtfSveXaRycUUmel4w3fTVZZad/uZBgOOPcghCNVvFxyAzxb5dMxzYMMMh0LMGMPSSVxFy3praG
 6EcHgnbGV2V6QaB0DStW5W4oURJNh4bPKNXlaVXzUEcpcOFtaHhg7TokyboyjBgqnNefuSjn1Sq
 Kd8o2S63hijVrLkib7w==
X-Proofpoint-GUID: Hzi2jT1O5PoVQsQamO4TrzZJuNii-ZpC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130138
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275469-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,fairphone.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8ADC7287FB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 05:00:40PM +0100, Luca Weiss wrote:
> Enable the S5KJN1 driver which is used for the front camera on the
> Fairphone 5 smartphone.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

