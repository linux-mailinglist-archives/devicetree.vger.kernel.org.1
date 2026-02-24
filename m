Return-Path: <devicetree+bounces-267759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNSvFtZYnWk2OgQAu9opvQ
	(envelope-from <devicetree+bounces-267759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:52:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4239183513
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:52:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89BF1301389D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF8A2364E83;
	Tue, 24 Feb 2026 07:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X2Vtt2Bw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gokRPlrz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A887B3644C4
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771919571; cv=none; b=rrQvBhJay7IZfbpaD18hl9E7RCcpL29TEghZ2m2WU0idiN/vE9mYrniG+9FXZyRMGbCv0PEA0XMKU+IeCq+4WamX3D9ZfAt+14TM0gLEQzb198oy7PFrdfbZ8tRRvJptKGgbGNWcv5GQ12FJOLzLSPdcMrIuxigzRw0Dh+Gpi2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771919571; c=relaxed/simple;
	bh=WkbttYc/JaSVCm8lMgfGU8SHvGp7GHJ63kO4RYslO4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lS103dQ+EVOPaP/48wqClwyoXOV8NL7dFgCXgfPY/t3Vmvh9EDBmJbAC5orqc6l9l90OuuWQXMTZj4DUnAtZbzAZHG0P0795RwDpq+7+jIxNiTuVVxH8AgPWN4Qt6mKK5aPifFa0HPF4y8gc6oxYX40ZWnBzDH7wnNDcftXHdd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X2Vtt2Bw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gokRPlrz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LP7x693605
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:52:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oWROSRKbi8Flf0IpoDBD9rLN2E3RlAFsrMmMtf5bQ84=; b=X2Vtt2BwhOJHVXU7
	TGCjc2UYHtUh6Sjno2ZR+2jcqYHi/VOudthfMThkCX1Wu2Xae9f4+2Icot39s7UU
	jPc8B3ArGRbrMaBR7+prvKem4s2wqcphQG39Wqa5gfdfBFlV5LFt2Zdn0yorjcrH
	U1CrmJ6QrsjSCSI2goCEuWPKwsaDg8PTIuoC2/crmKzVbGFIDkBv5FfIiT0cZ6nF
	gjkgIesiZ9+ApY1o7wwWInlaNyrwUePvrzo6lhwkTd12G+BJrfUoXH8cQ4pQcr2Q
	W/DShidESkYmsyGNqSWCIlYsasrfW6M3dSRdyC7jfaTjWPbQd6B9yEv7wi1PRyPG
	RWdkHQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9t8ux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:52:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-503810dba87so512746341cf.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 23:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771919569; x=1772524369; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oWROSRKbi8Flf0IpoDBD9rLN2E3RlAFsrMmMtf5bQ84=;
        b=gokRPlrz6Adagxu9TJLMTcD2gL2Vv4KUX+WnxZuByxMd1h9MEdz//NoVYUK0+HC67o
         Hk+Z3ziTuRlG8DjEAG3Kvc8XSgvPkIBPGsYQ9w4JAR80XyecFXj0uC1JipQJ6gKJ6qZp
         I05DRTp4Jj5Fxo+Bpq7YI329NMnDlvtu4QJOrK9LXXT5K5kAk7OAxbE/S8WvUlMcrROG
         xUBx5k7Nhxn88HzMgcaYJBmtbhRxnl9RP4ULvkhjjQYhk4NpwM2VFwx6lmErZUdF38DP
         74/a+0q2xBD962MQ5SvAE8agAYMto8DQyMqWI+eM8tBxGCDOug3iCpOWhdTnYxvquqRT
         GydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771919569; x=1772524369;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oWROSRKbi8Flf0IpoDBD9rLN2E3RlAFsrMmMtf5bQ84=;
        b=LGviPYbY39oQbeiV1EmQ+PWbWtoGC/SYoEhlKndwgV5vEfY4ZFi9eEx10knnpLJ3ip
         VhWkFj5TAR3szAcaRQn0+fi+5ugZPS5WM3wkaH8w4ubTu9BmvGwRQyMc79iJcj6vjrZ9
         I7TCDoeMrCF6DfhDQWQLv7p9AkTJ7dpVCBCv86dXpqgZIlhZuMJ+E5KGdWHDMbxzoQYR
         fgdtaEsf1eKPZzMrfkJsP/T29cFotHzmTTwVpg9PpvA0ddCs6MEoYh2eFFldFK6H7mCM
         vODVAWcs5Rx5LTD++/jEBvEOdHgXijdaimWMUfFNLLbRzlMHdwcg8oZ3xaYGdlT7Vsn2
         goZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4CMdqcJSCved3zXSXR/QbyLT/bLferLGhJYEwSstPq+s2d2Iwn+7sQcHbAvkGJELW3CQTxbpQX0iZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwxNs4BSy4y6A4r999Ib5QIUltobZ1tAedLPpDKUpGBlR6tDJMC
	T7iyiP2HxZnxJTp0ifdbmyV5QU8a9UjU4hRJhnJwDaWcWMfYokBM/fZwLkoNGngjzlf9AqcY8vn
	N/0PzFns+/cOgKzNvxSs1iyh1CZ7eqLmYC8St2hIuX6sd7aiBbwe6WDocOcFY3AQV
X-Gm-Gg: AZuq6aLlSwtl2+PsrsuvSptff4ntUbo+IABUBfxaOprQLuNx0HuqOrYVUz1Ra2OreK4
	FQGxLAOrJBRyfHLqPtTAKsYbH8a+DjkY0WAjWjz3+miKSkTm4vT62DTL59uvYX+t0UMnjSaZ3DE
	ibmLWOkCR2TbEkPYgl4i2L8RjqkBTKyFFQJOXtZBQQrw70Hqq4igX66LvzX/QtSxMsevCYBGY/W
	Jp6pWIDHuEUKRzpWaOUGDoY3hULlYFBboUec3FRSVwP2ByJitY3slAia+dTu80Oa+FMCcuDUQZf
	5TCp1aXkmbqOI7d909AxD/qkKOulWhPg2d62au67Y5kCgjzkQTMgZahEMczZnYpLNpK9aPl3Jaj
	SK88o5p+4AUFBFV3qdUlIgQNw+lkVklJchewbgex5OnT4iBCD5bj171pkcKl4oWudjRaNmWJbpK
	XocMHz9b5jqLG8qhP/EFFW5v30+h1+I9m4MSM=
X-Received: by 2002:a05:620a:4455:b0:8c9:f996:81fd with SMTP id af79cd13be357-8cb8ca0a8femr1535443085a.33.1771919568871;
        Mon, 23 Feb 2026 23:52:48 -0800 (PST)
X-Received: by 2002:a05:620a:4455:b0:8c9:f996:81fd with SMTP id af79cd13be357-8cb8ca0a8femr1535441385a.33.1771919568333;
        Mon, 23 Feb 2026 23:52:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b3e76sm19114091fa.10.2026.02.23.23.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 23:52:47 -0800 (PST)
Date: Tue, 24 Feb 2026 09:52:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC] arm64: dts: qcom: qcs6490-rb3gen2: Enable uPD720201
 and GL3590
Message-ID: <iy3yypj2gcl6znygsyoxja3lh7irrl25snqnbxfmyhyhqgays2@57lyx33bthh6>
References: <20260212-rb3gen2-upd-gl3590-v1-1-18fb04bb32b0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260212-rb3gen2-upd-gl3590-v1-1-18fb04bb32b0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d58d1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=YjueOEEBwl0Zzny-YbAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA2NyBTYWx0ZWRfX8BBH2npJQLYC
 YH1VsSXCt4zqajspHcDHbvrt6fkiELeAqtY6iQwBAyKsW9j0RqgqvPVGtV42eDG1Nzrc2FU4v7t
 vLhoq1OYmIWfB83v05YYshFt9jfqc0wkdsSxlcsOUpEHcP5qwsiFAIE6NBRaXYMIQ+5Nep0KBr/
 HNDn8AEPqHjk6UY6aagx8Fnh1fGRFfVUjTgJ1jMS0iOBXEpHCXaEBNp4Y9Ar2WwNa7G+sv55Jtt
 muVnvXcAWPz++FW9SkSU9VsJ43Ig/x7N9Y3qShKoJAv1dvvy/By8lFxUi/cxIVMywGcv5bA0QCu
 9rP5BB0r+JKjiYd6XRO2qKht2xh9nO5EaYjYFtN9dcCMPOpYbGyOiaZ3rbDKs9b/BEu1TlUop/o
 7n0fo1s5Yorthl7b4ZEywyKyEElUagqGnPhCSgWVwPJLgCbTUaJVdUzsYIFdtdcar24LRXLvgT4
 mCR5CPXhdK8i7pKCK2g==
X-Proofpoint-ORIG-GUID: VmXlT53nVeoRFd7i1q80Sn_M_DF37shk
X-Proofpoint-GUID: VmXlT53nVeoRFd7i1q80Sn_M_DF37shk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267759-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C4239183513
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 02:43:46PM -0600, Bjorn Andersson wrote:
> The QCS6490 Rb3Gen2 has a Renesas μPD720201 XHCI controller hanging off
> the TC9563 PCIe switch, on this a Genesys Logic GL3590 USB hub provides
> two USB Type-A ports and an ASIX AX88179 USB 3.0 Gigabit Ethernet
> interface.
> 
> The Renesas chip is powered by two regulators controlled through PM7250B
> GPIOs 1 and 4, and the power/reset pin is pulled down by PM8350C GPIO 4.
> The Genesys chip power is always-on, but the reset pin is controlled
> through TLMM GPIO 162.
> 
> Describe the Renesas chip on the PCIe bus, with supplies and reset, to
> allow it to be brought out of reset and discovered. Then describe the
> two peers of the USB hub, with its reset GPIO, to allow this to be
> brought out of reset.
> 
> The USB Type-A connectors are not described, as they are in no regard
> controlled by the operating system.

Nevertheless, their presense in DT controls port's connect_type as can
be seen in sysfs.

> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
-- 
With best wishes
Dmitry

