Return-Path: <devicetree+bounces-263339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FWRBvDYhWlZHQQAu9opvQ
	(envelope-from <devicetree+bounces-263339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:05:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D72FD74A
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 436A6302BB9D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01FA33A1D03;
	Fri,  6 Feb 2026 12:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PXMR+MJE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hzjJ4lv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED6833D6F0
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770379427; cv=none; b=oTP0yTxt7QDBj8EW2g0St2fr1lVFCQJ5OE5MZJRAsDDNCNHhcq0Io685/owXpRSYR+xH0mBLChF46TnCw5qErqL+UtKC9gBqIDTGEd/5n7hdBVnFL7zLiApkreyC8EkxVSQwX7ScQ/ZIIQettdvlrxgS83NoltGTLiTtVXKQtqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770379427; c=relaxed/simple;
	bh=uy8KSJl1E4N7YPO0LpxK5qPqXXBNu7tHP4Vg5Bk3lZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iX5xj6cK9I5iKJ+WPPA2clNlBiwmrKiEUjVXPKg9JPYstKVdAvSgABlpcypor+9hKh74R5T9EvzHAgFeatmuUJEbBRSlao8lp2m1Q65o3VvFbBwPvRSHvk0pNsqw3iaGLelDBmpxNgKORmIE0MI9F/Z/uYDRoJWHGc/qL/iqjoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PXMR+MJE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hzjJ4lv3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6168utdQ2058317
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 12:03:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D7T/znkIGcIBDaQtDiqCYQV9+wOLqdbwc+EurdTvLiI=; b=PXMR+MJEslhETkVY
	MCMDVLvFyILaRh7tUetTxZ1avmPppThdRXrnzIv4eR4QpWJ4qPm406rCNr/yqZVn
	JZaIJvbDel4i5scGM7hbwIoZjPzdvp05lu2+fOuxhIezU9SM/HdOG7u8GxBr1n4i
	lAaX6u7WY0lSBMNtQqegg1eL2YFzc0B9fE08f9wpuGcJ1Q/3dIbxycXQDoYfy4FJ
	Nn5qclHYayIGdoDNZNK03ICt361Xx1Sr4P6bLF+h/mUVPfKlMRQkHVdqOjLBIeQD
	sr3jLAjcK7bYaYB0Dx4/Q5nFl8y18MXVoazLVUT2M8ZFFvRSi3ms5j+AACWI8Hu8
	jynHiw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4x8bkktr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:03:47 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630753cc38so4140047a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770379426; x=1770984226; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D7T/znkIGcIBDaQtDiqCYQV9+wOLqdbwc+EurdTvLiI=;
        b=hzjJ4lv3xpv/7OreRoHOONs49TP6jCarw6gXfZYN0SERy2KakzPUrbKtdAE4XmrfYg
         JXyKSDIn4aF895miPo5yyyAuNvDhX3D/q7cs9yRPe5i/0gY/+ycOwpSWuUnLawNkkpSs
         XbRrl/qrY6siKlWYpNgUKxbxul+RQUbKOmZOXsbYGaxQfIKokPbQ4yAwRw9M61tlPuMg
         gn5s6b5vIhIDzcuW6Z5PK/YXc3RTlZhQYOefumwV38Ghj0h9DBNpOTnGf4T9zTGh4YnN
         JCTNY3fyOKpLgT4gPU1jRkwZ4WrsQ6tppyOIEXhyNsRRlrPrU7SLclq1rnqRHb7EbO49
         MdqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770379426; x=1770984226;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D7T/znkIGcIBDaQtDiqCYQV9+wOLqdbwc+EurdTvLiI=;
        b=aAybbQtiMBIyLsmjapiIKbwe6ictiSG9kIF2R+sEcaj4dPCcQE6SbSJMxNva02yqox
         B25gMOwB/sOizjjO+pgp7xWWO9k8FdR1YMNN+s5tIHGY0T13O7hKAT6zqbG+igGWosBN
         uB9532k1x5t7cG/i7wG4+/7WAXZ801H73iDGuzWbhbr2nkA7KXJZ0WY8GlUb4sU7Dv8v
         JdzVhf3Q1Ng8AgfazoMf2iHAw4XGRLHGmauxQU+NX0UrZHWs2n2mRFmrcS9OP0j03VFi
         gxkef/hazTVeqSSJ5Ip6pQjeeYCEqi7EjBqAv9Oay+tIosExdhwNYTFcsZiBepe5RnlW
         Klcw==
X-Forwarded-Encrypted: i=1; AJvYcCX60IxdQxjQTIl0/pnaoHa/7Gau80CR5lMXdabUdKTF/HVRRNNW1Jc/gFyBmrzlNrsKiXFFNw632y8Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi96UVMrkkGvuk56pFKh3ziMJL9resTDPY0MfEGvi828GYqMPi
	mzIftJMueFfb5zeE8MndfR9BZyuB8pDvvraFrl0TxI9P74hwvn1i9j4s0U0pYp4565N3ANMssBY
	2LxP/XrN3JexxGwuUb7Gd8yhvCJp9QKLPOes7qW/XrimCOi+vD3SvGmSR3sTAwVqQ
X-Gm-Gg: AZuq6aJOpa8yK8UMkuLE35cpaWsyfYe9xdCDNJWsqn3zTT7hqfkwruH8ThDqB7x4jx8
	/xdB2J8X4Sjx1cPPllLQc7uFVmyHj3W9eXXq5Ttp6eCSYGCkk0Sg8Q/SFGZqaOvIccN66vPce+d
	xAttGSWqsO4rYdSfd+KQ5Hgw9oA9uU3fohUkQIb3CqU1ByOGTjK/I1Q51c6+t3hbl1lx03f4VXq
	imRx7FQpD1JmuyfQFKSPPIAS6CwuLcCzo2m1/4yPTQ+wf6SFW7Ijl03yd8i4A0AqgFj0RtRGQSe
	ovnX7VByIIZa15aTGJ6i6/agXN+4W7xcMNUcZyeUW8Rh1Xr3d0Bog+iJSbjzYpgVBBJftvrnhoL
	Y4szsdE95VwCf9D+0z47Z1Bg3ssfYVcoL83XMwY2S2jsvvxk=
X-Received: by 2002:a05:6a21:150c:b0:392:e583:b766 with SMTP id adf61e73a8af0-393ad339ac9mr2560253637.42.1770379426370;
        Fri, 06 Feb 2026 04:03:46 -0800 (PST)
X-Received: by 2002:a05:6a21:150c:b0:392:e583:b766 with SMTP id adf61e73a8af0-393ad339ac9mr2560231637.42.1770379425888;
        Fri, 06 Feb 2026 04:03:45 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb4fbcbdsm2262924a12.4.2026.02.06.04.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 04:03:45 -0800 (PST)
Date: Fri, 6 Feb 2026 17:33:38 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Enable ICE clock scaling
Message-ID: <aYXYmnFiFbZnVRqX@hu-arakshit-hyd.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
 <7b219a50-6971-4a0c-a465-418f8abd5556@oss.qualcomm.com>
 <aYBF3Geeuq2qHmYg@hu-arakshit-hyd.qualcomm.com>
 <cac8e14e-63e4-462a-a505-cd64e81b2d1d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cac8e14e-63e4-462a-a505-cd64e81b2d1d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GaoaXAXL c=1 sm=1 tr=0 ts=6985d8a3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=LeY25DUbnqDghkOhmf8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: ZFTTpsM7V_2-HGvFpzfLu0lJPcQ7e_jo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA4NCBTYWx0ZWRfXy9WQZ4H6xCZy
 OSf+uTA5V71990CsdkgjuyE9fZ2OJpoV/WdROXyoZ0JmUBRpV1RsEUCgKltQ2pUOV+ZngRlbJpn
 XdwnaEkjCdasR/K0vIW6r94OE1t//Kbdns0ZWFrbQwqFV/l3t4XYE+953xjDUivmuraKFRoUnar
 c5FcWLngMPbd5vjdn39mQYgKxIwlLZlcp5BgDDHs6xTHWQtsKfxTaRBzKjQYfzBJt8yp/7a6DRY
 wZK2zDSMNTHq4ZEQ0x04838qDPKBbpQgmEm7+uE2AIuvNYcegqe3mTBw/iet2XZiXF1VclxXNLz
 82R+RDbV/0J784eD7Zqsz5ctvR5SFT4R17efRkR6wi+RfNy2wep2cbjeyOpp+6xITmNat7FXhlE
 pUizupEC/W9Qw6/gy3O10AytZav7hDAlt5gi2UnvEd0kyjYCi0WEvPQnLT705D+57kQbwtuoF4q
 0pyzDyAYy0v9MjNEL+g==
X-Proofpoint-GUID: ZFTTpsM7V_2-HGvFpzfLu0lJPcQ7e_jo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263339-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.979];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B8D72FD74A
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 04:01:38PM +0100, Konrad Dybcio wrote:
> On 2/2/26 7:36 AM, Abhinaba Rakshit wrote:
> > On Thu, Jan 29, 2026 at 01:17:51PM +0100, Konrad Dybcio wrote:
> >> On 1/28/26 9:46 AM, Abhinaba Rakshit wrote:
> >>> Introduce support for dynamic clock scaling of the ICE (Inline Crypto Engine)
> >>> using the OPP framework. During ICE device probe, the driver now attempts to
> >>> parse an optional OPP table from the ICE-specific device tree node to
> >>> determine minimum and maximum supported frequencies for DVFS-aware operations.
> >>> API qcom_ice_scale_clk is exposed by ICE driver and is invoked by UFS host
> >>> controller driver in response to clock scaling requests, ensuring coordination
> >>> between ICE and host controller.
> >>>
> >>> For MMC controllers that do not support clock scaling, the ICE clock frequency
> >>> is kept aligned with the MMC controller’s clock rate (TURBO) to ensure
> >>> consistent operation.
> >>
> >> You skipped that bit, so I had to do a little digging..
> >>
> >> This paragraph sounds scary on the surface, as leaving a TURBO vote hanging
> >> would absolutely wreck the power/thermal profile of a running device,
> >> however sdhci-msm's autosuspend functions quiesce the ICE by calling
> >> qcom_ice_suspend()
> >>
> >> I think you're missing a dev_pm_opp_set(dev, NULL) or so in that function
> >> and a mirrored restore in _resume
> > 
> > Thanks for pointing this out, its an important piece which is missed.
> > We can use dev_pm_opp_set_rate(dev, 0/min_freq) in _suspend and restore the
> 
> FWIW
> 
> dev_pm_opp_set_rate(0) will drop the rpmh vote altogether and NOT
> disable the clock or change its rate
> 
> dev_pm_opp_set_rate(min_freq) will *lower* the rpmh vote and DO
> set_rate (the clock is also left on)
> 
> Konrad
>

Thanks for the info.
I guess, dev_pm_opp_set_rate(dev, 0) seems more ideal as this is
API is for full quiesce mode and the clocks are anyway gated in
the suspend call (clk_disable_unprepare).
 
Abhinaba Rakshit

