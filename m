Return-Path: <devicetree+bounces-266098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAQNDWBYlGkXDAIAu9opvQ
	(envelope-from <devicetree+bounces-266098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D5514BB3C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DADDB301A733
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E4E3370F4;
	Tue, 17 Feb 2026 12:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m1pbFrG5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fSjVDFVu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60B2336ECE
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329608; cv=none; b=fsOsi2FIth7EOLoVhHJkJyXroh5QiV4zddHrzem5EcNkq6OJlP9psRtI1fKY/1azp/iNHz7ByrWiTUamWIbtQVs8T/be1Xbebipx7tFcsfo0g49wfo5x89nSbpScakDHuXEfFQB8YlGjo0CcyEhEV64+HkPPz2QD0x98Nmr9tek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329608; c=relaxed/simple;
	bh=6MMqyUhkmPFnWhc0gV4G7uCa+Gk3mNB4cpDWSEqLgLQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=htMrOaoXtgxywJkbol3uCwU2QtR8b82CjCeb5A3flUnuG/zskC4JGxhZMQKnKZalg/z08nILAR+ZkZR1UaT43KO60MRLd1gdN64nLVNx+sFaY+I0ZlKBFibym3jNPf9wLMYpVy/yq+72N/L9ymWkNeuMExDyA0ROE4GqO8gU+ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m1pbFrG5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fSjVDFVu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HB94jj1615109
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:00:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Fhl1UjWTwf7RXcCYI80x7nwW
	jfWc5ixK5Uw/2Q7UGeY=; b=m1pbFrG5KrTOa6Dgli4a8bIxZjCcfhD2uCw2Xfpu
	nwwPLzJdFzp6FvT8BeWLT0bTeZX4T6m8FvrTQ2YXwlSbhyEnqIvNIJGUpe8Jtwi8
	2HAgbYwkT/4UCChjpYMiS/DNddD9FWNhx46vVsyt3kmD7+gej07kKc9Bf+jATll0
	KFYeyJn5Kk+xgbAXjMOnxlelJcLcky975j0DLaiQDVejP+dLrk1OO1VOhVnZI9Ia
	PL29VGDCuWq89ss/vDRjEWZ2wiEETfT4Idv5Mhh5+CNQrQGXSvUheo3XitxUBaOb
	L4jZ6PtrXjgxwEP5VNROuEn/Qxk8P/Ut7J27NU9Zo/Ow2g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662t91f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:00:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3b6b37d8so2517785185a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329606; x=1771934406; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fhl1UjWTwf7RXcCYI80x7nwWjfWc5ixK5Uw/2Q7UGeY=;
        b=fSjVDFVuVAxrBhyP5Wcdrro3JqjlhHq8eI4Zf1vvsST43wNZE17Zt5928xaSqE3yXi
         fwWF5uNllJ5bTX1M9xZL320TyDBMctI2yUCcm4J5fx4PP5ydcJ/6WOCU91E1n0WJptgI
         N19giIjc3v626dfzomY1CWdSejNmF7lZY9xq+SbuMkrC+xi7B1QDS70MARHvNBWWEd7i
         mkgUe89g1OYDsVmOUKHQ+or5RmUYgoHMWdeOeXqL3Ej2nIBrxUqFANzd4iPBjQtY5ohj
         oQw8R+w13dyQFMsWvC9My62nkIwyrcvy6kgmoV6/IwfD26MD1BnU8SD8JgJZbndvpm6/
         aX7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329606; x=1771934406;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fhl1UjWTwf7RXcCYI80x7nwWjfWc5ixK5Uw/2Q7UGeY=;
        b=uPBYsNG4mJqLU9x7px/OObMR7JAS+Tc7PmuWuG2L+1VfQSverV2NmgFYar1L/l5WNV
         50jPi16W/UQVG4vYuKoHY749/Wn6HJsspf28dgWKwktYr5l/kEGkgCNbFhAPG6Wm+WHs
         DmmX4fubhlo4w20g7Uk7o+m7bpq07Vkeas9sf57PiyTGKv1/KXD56XB92s1BwwsKFxYS
         oF9KaRlAbcGYxHTjvmgqd8ulvHhOTrTo9qop10XTPfKHWtt3XCPx9dnMVSk4i2CyvaY8
         k5sz/o21uw+oaEkpjYJADhdeN3AGwcDiq9Yl22Ghx9OOfORz0hVF22Ik6ybFrWNOsH9c
         1WRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGh767FNfjWXGnXdjFcSWmiq1CFNcGRgcfV/RFUvB29UDemKJVsiG7T+ONSSpNz68ORcSwhCvSDQuO@vger.kernel.org
X-Gm-Message-State: AOJu0YykONd0tGgZfsPnYOmBqG7+tgrX5a7OLciggFr+fM1zUGfLSO2j
	p1abmT1E+eeT8/hdlfXHonUzyQwhGrkLOZjyAgYngWgMVE5w1UEeqx1u5wO2lrQgO3sKq5BaHry
	FzgKawMK8z2KIFwZ1gydW4CMIlu5Mq2o7VlWdK3dSQmtHIq9UjCgNh5avQSF6fpGX
X-Gm-Gg: AZuq6aJdiF6rdfxcRVecC1RJAw593aTSbL7mdFDULLHIY1yMTeewPNcXWy9/2dcAthp
	MvD1opWLgulzkO+qITpR347eFcOrCAL0HZJTVl/uykeftiX/E3RbOxlSVfEzi3iy62iU+A+as+R
	0sJqMr8KqbXBqWQDHmvcltG8L0SY4Dm2EnUz5SeI1Y++LXqxdDXoX10W3rSKFHGwkoB6IiwBDAL
	n7k9u3RbqPPFPGynaNAhMFRlVQm2VVNY1sv705AbNtt1jwzQkpIZCIIUaoge2poM/3rxE0nNvYb
	oI0agKhIbEQYdAs1L8TV4CpVuj3T+RI18Pob9SrJzQIBjQmbCwVZIcAAIvcLgX0hKG7tsGnYn/2
	OkZWFOKLPUVo2TxQrGhLbX+nzbb2h3+GhZLnP
X-Received: by 2002:a05:620a:1725:b0:8c6:a5bc:8a80 with SMTP id af79cd13be357-8cb422a4a96mr1696753585a.29.1771329606032;
        Tue, 17 Feb 2026 04:00:06 -0800 (PST)
X-Received: by 2002:a05:620a:1725:b0:8c6:a5bc:8a80 with SMTP id af79cd13be357-8cb422a4a96mr1696748285a.29.1771329605395;
        Tue, 17 Feb 2026 04:00:05 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5d156sm37249045f8f.5.2026.02.17.04.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 04:00:04 -0800 (PST)
Date: Tue, 17 Feb 2026 14:00:03 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v7 2/4] arm64: defconfig: Enable Glymur configs for boot
 to shell
Message-ID: <6gyznxpfwycerkrxmqaxblgkrvd3cn7gs2hvm6tbrdhnzmgmkq@brrxwzm4zvdr>
References: <20260205-upstream_v3_glymur_introduction-v7-0-849e7a9e6888@oss.qualcomm.com>
 <20260205-upstream_v3_glymur_introduction-v7-2-849e7a9e6888@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-upstream_v3_glymur_introduction-v7-2-849e7a9e6888@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OSBTYWx0ZWRfX8ElPauMHzwFq
 RK9bZXOz5ajBWuBNR8bXiPdSblgNQOXBXW/B/gHgEQzm7AJ1P9SniV5oPjt7RhIob9RPdFcZCnK
 d0ciOAil1SgrXEMeTL3VL1ddBgQEHR6pLBTdRM7BhzspFFKjVLs1cm5wo07tEh+8e16aGKZIjyA
 GulNAKcFjC/dznyQHZ4FrzZ74kSBtQ4dK+7w6ATIIqMAxUxKL101SmYC9X9nRXN7aFxo2/oGlTl
 kWl1eKP59H14z6jLiQnX4eG3C7KHiAV4WaLRyWMBK4cVvfPwWRTCkpO8N89U5lXCnWerPJyN6qL
 lkL53p/24j+8pfo3l4u1lhs1lsb9AXFQUfzQcAP9VSAqfKijq6KaEIPwnHgIP1M7GYSUC6Or0KA
 mCIByixeieUEwnDlM6E+z93g+1kXLjy8hAOMEClqEufTjUF3/n1CoLbHTvm7S+Oswc8tSLWfyVf
 Z4oDp4lYs1Ofhg9ZgZg==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69945846 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=X6lb09SM9k0nLHDX1QgA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Tmba7ErOQyg6CM1BaSoxBu0pknE_MLdq
X-Proofpoint-ORIG-GUID: Tmba7ErOQyg6CM1BaSoxBu0pknE_MLdq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266098-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C8D5514BB3C
X-Rspamd-Action: no action

On 26-02-05 17:50:42, Pankaj Patil wrote:
> The serial engine must be properly setup before kernel reaches
> "init", so UART driver and its dependencies needs to be built in.
> Enable its dependency clocks,interconnect and pinctrl as built-in
> to boot Qualcomm's dev platform - Glymur CRD board to UART console with
> rootfs on nvme storage.
> DISPCC enabled as module, used for display.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

