Return-Path: <devicetree+bounces-261923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDt9DXn4gGmxDQMAu9opvQ
	(envelope-from <devicetree+bounces-261923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:18:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B00D073D
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F5FF30098A6
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 19:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9CD2FCC04;
	Mon,  2 Feb 2026 19:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b1ciN4v+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bw1cIl+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612C22F531F
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 19:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770059894; cv=none; b=I55SY5FOKTRp9w/73digDHLVo8pspcQYz4k28os5D7Ubz7uXAY0FYWxs5J3w58nFvymGUw/vcwuwDmolSpCDg8yZ/11KCPvTrIOC2yv+pvInImTTz88OMEhwMHEWjjJUo9I+7Qc31WXIgWIa6p7VoMeog+3LejsWK7fvYvZ/LQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770059894; c=relaxed/simple;
	bh=VuJF53bRbEZuM/ViXJScRf30HwZPpFcIx5Agw9X+HFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SUCXyCUELYabJ8z0NtzboCcE0pv4mepFpPfavexHSdkftOf1XIt5RJFnavJ5Uj0QjVx+22WVDpggOFwq4bZCoDU6qzS7/W1vpxg2qrZ1vsmVuxXjVRyf9s7CwUTrKad9xXYdPIkr9Iv3YZG1cdEIVCwLwHeKMW3AN0reDz0Vr7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b1ciN4v+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bw1cIl+n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612J3XJZ2106369
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 19:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7Ge72n3jVcYwkIxd3WGK3mGj
	T+x+2KivVhNLFPkYiP0=; b=b1ciN4v+Nm/zh0pNhN/kKBDlSHsM1OewbKvNzUnU
	gLWTifrN090lmGdMIuGsnLAqBCsee6yjXPQrzhTVc/ogL5P5W3fKYphRRnpiHOxv
	xd8WcoA+5b2fyHAtkSd0OK9NwHcOLhISO1sLSkd/0FBWVJu/bwQMPYPa57KsW1b7
	f1gVvZVkiP7CP/lT/B8JLIoHhpSNNop8+m9V2Qs1W8Eff8HuJMnIG3rZlqte2R6e
	H3T3GVBxXJYa8QiZxeZAmRgjCdUeb/ijlUtKFPkyOwJROBO57gGuWFlid2keFavJ
	fR2pjaPoTzrTYP5XAr4u7MRHLsMtk3LMZ028K4Z3o+2b/A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5e9npe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 19:18:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71500f274so496839985a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 11:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770059891; x=1770664691; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ge72n3jVcYwkIxd3WGK3mGjT+x+2KivVhNLFPkYiP0=;
        b=bw1cIl+npadqZD9iUjRXUWxWK9J2I7pZAdyK2jOmDViVQr3pZIesJSTIszrqVuiTDR
         bal5uEOO9UwUvpLXR/kLPuo771hs/vBFzBJIKy1PaJShr9/1Fn8eVuVjte3bufH0he5l
         AXuGf7FQ+r9K5OAVgmCyUbDJNQtm83fkQs+HKqfzbAXWgsKFt8Fh3PBWEj6c/CTpbteQ
         s1Tz2AHW2hpFoCdPsC80Cqfn9R8ScRDUoeaTtDF052U1uW4DNrH9sejB6+r3AMrVeypC
         WxdcOR4aHTwUGRGlnZvrH1Gq1KplDHSatL+f+ct9PDsGeqLgR9m5flO8QbIFUp2laebg
         bD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770059891; x=1770664691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Ge72n3jVcYwkIxd3WGK3mGjT+x+2KivVhNLFPkYiP0=;
        b=fzrZShSTXBcX8TuXqHH5m+mPbdo8a6vj1SFJiyogePW07ZROvSnTLBpsLUVhzgCxhe
         sY3fnsKSnWqRFA8vRAdLsSbl/0PGDYIXSo73W5dnXI7y4Sxc00Bv4lN41wb7cDQCZPT2
         2jgGP5uWlWojQ+z9BPAl9njYPtZfc7U2om/Uq2nVUbnqM+VgceF3GgisbQJGGSzs2Txi
         PmBoT83xYLsCDTI1CLS7npkEn6EdHSzqPfdbG15i7BBlfLiiOakxtoloTD012xPOpnv4
         EynRbIM1st7R03qbgAFhvci4La8yF3hq1IW7lk/LOAIcwQ6UYi3VDluIztkAxAGQITM5
         4eGA==
X-Forwarded-Encrypted: i=1; AJvYcCVodrcKjTFtQUR0ZcalIwOaeQu7skanSYFWViJ+W7BSSYGzFW53T688Ypoar9CtpSZyY+TDMJb+u8Ae@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5FFVE2H0nxGlxFcJ3rKqdt4sFyCmhw17snMIinOJuwKuVaH+W
	RafetqR/k65Josfg4ggaNJB+wAVrbU3heN2+QNyWd3pk5SD/5aVdzMzQ3BM0Ilwu+qJ4P0hWx91
	AswH4OtLEnL9xCRfmX0F6nmzW9Zo1jJmzr57qwtcIN7/Cbye8sBuQY8F6SZhO3MXq
X-Gm-Gg: AZuq6aIiPV9gj4NwzXMwcuPk6Y+N/qysKM5SgR2dNltjOHPwCjwHmJEoqdt7KYbjk2M
	Qll44rwHda91HjyccZidaQ1UA9ARmgbEshc6ht+gQwryXy7Qr1flgxyoKVy0bFlP1JSP5ZlwGu2
	qQErCfsTj6CVhodork1hPkJCsRMD40ZedgQcSp4ohMe9II2zWOKf+hLiTVZYSp8k1UuPPOUrO7M
	az85/AK+0dGHGndqzIQ09T/WsTp4HQdy9tOsD6A59i0N3uKq4dfKnRaosBn42eMP1WARWs83z31
	jCSUx7iSDeUH7E4iG+js/4Wv62/kSyfVMFNnDwMTSIolJajjO98LKCA1Pc/OyYVXqaR/6tpe5Iy
	wZ8wiwzJuQpM2iVWc5k0gT5FT+MpZsL/+j1cQ9zCyn+gizR5klBUsNmKT/YrqQs1s9In+0LON0t
	Uhg4PXbIF+/uwONk0v+aGfx8k=
X-Received: by 2002:a05:620a:f02:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8c9eb275ca3mr1583578285a.30.1770059891422;
        Mon, 02 Feb 2026 11:18:11 -0800 (PST)
X-Received: by 2002:a05:620a:f02:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8c9eb275ca3mr1583574685a.30.1770059890800;
        Mon, 02 Feb 2026 11:18:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625f6c2d0sm32239421fa.23.2026.02.02.11.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 11:18:10 -0800 (PST)
Date: Mon, 2 Feb 2026 21:18:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, quic_vdadhani@quicinc.com,
        quic_msavaliy@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: monaco: Fix UART10 pinconf
Message-ID: <rxe6yq5xe6ynpjzwqm4yx556qq3j7dogk5bkkuujkz4ijuqkgn@gubukdsdenni>
References: <20260202155611.1568-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202155611.1568-1-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE1MSBTYWx0ZWRfX7L7cHdWBjZXR
 M/ZFAkIpwVslygQWIFkZ336Gr6jKpsy0qf8WeAenvuJlNzkPK3tZkI28vvWW/r1z9nPixjJ/CsS
 APhVCYoSCoAOz8ryF+v0vVGySqockjr9TZ3kZszQo/+OhKACeGvnaD5rslbY6rEp/Lg0aON5nSj
 zkmO+WHiqM4KnVAV2WwaWAuJSgcRf/ZoMmBDBdairNccq6DTRlm3VnxF+BgOFBUnHDaxfNDcSDv
 3On2V7jYTXToqY6Kmx7u93b/nkKYOHup6hJIH9Bb7EnTTF9HJazwHtLsspnsKpuYL+v+4HDoO2I
 7blRqFzR1tzhtlie+dlzZzqV21LCkr8ylv3F4ij//9I4StjX6Gq7ELt2AesUIGh8fnSIXtNep3J
 6ME1fV45jJVL2SI1oUytU+oQ6tWpsXak3GAeLR424p8y0xAdnnIqpH92e1wkYBPnmj+MjRh3or1
 AeEniricxvKRqHe+qqg==
X-Proofpoint-GUID: gKot-mB67UMwmcGALhY_tu__EX0cOzAW
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6980f874 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=F2uzNt_Jvis__oCUEkcA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: gKot-mB67UMwmcGALhY_tu__EX0cOzAW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020151
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261923-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C5B00D073D
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 04:56:11PM +0100, Loic Poulain wrote:
> UART10 RTS and TX pins were incorrectly mapped to gpio84 and gpio85.
> Correct them to gpio85 (RTS) and gpio86 (TX) to match the hardware
> I/O mapping.
> 
> Fixes: 467284a3097f ("arm64: dts: qcom: qcs8300: Add QUPv3 configuration")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

