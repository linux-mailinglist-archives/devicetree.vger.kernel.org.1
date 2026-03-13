Return-Path: <devicetree+bounces-275276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMpkEagXtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:56:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EAE284593
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:56:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED8C7307C430
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778C42EC0AE;
	Fri, 13 Mar 2026 13:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ah/0KcdR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WqyP1s47"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416C0286D7D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409452; cv=none; b=qZiefZ+8HTL1w83qN1pyaJw8YINQ8MtzE3uvbwGC63+oXy2kArmjfA1Y82CY9F3J+gVyjRec3msTj7EKbEOrMSzuqg1+9GLSn9bZc/xqt5V8zeIVhlkdpkB1Bu+KLtam4LPnoGnRncSYdCUeCvvhjFOuFATrYmFKCJ4qfYaePMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409452; c=relaxed/simple;
	bh=ha9Bd9A3J5ta9q5APvG9XRiWKfdLkqcg+Xkywh355/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qttsejeCPSn5O5C03es4fPZ/m3+8wBQ+L5bEOhQY/L28m01vNBjUjcWh+fj8ZZLiT9zHWj5g+T8RhnJZoi2AfBwF9cb3/9XRAKLqrEgKU2/SAja8RaZ6Oq8LFFNKNu3292Qpx3LkMRQ0lav6FhKR4ycYOy7G8WdjJaiNMj3NA5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ah/0KcdR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WqyP1s47; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA7VGY1748804
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:44:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7h8jUUtOMLoMOAauH6/3SgpV
	v/OymlnTWUMqYmVpR5w=; b=Ah/0KcdRjBwXfjauutf8xsmbZp6K2nVE9K/2yORt
	B4xPEnncNrKBJMDHZLSUpKQRanVLDMb/xUNaUxAdbH9aoBq5mBdlGR/QQhiFw7fH
	nfabhoJ3kK8GL+pinFJA13tQ+x23m+EwLSfpn/RRl+nXlkfLDw/Esw27dXONTfAE
	KgJLf1cfUjMSAJfw+efU0ee2jBe11/0nCYVSw9SrvaEftOsgeZEGHsUWtdjyxFw7
	kxzWeAf/L5BGcCiZgJ0igcWvDCBRiCBBiIA7znEZ6T+ZVBOEVPMjvQmpi/KVvMJj
	NNDtltM2/7uSgz82jBsOWCS5r2qwxksQlvN88+clb3cTsw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6gnw7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:44:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7c4ab845so951205685a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773409450; x=1774014250; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7h8jUUtOMLoMOAauH6/3SgpVv/OymlnTWUMqYmVpR5w=;
        b=WqyP1s47iJXSZ/lbKH7o363bns/nTxQ09MJTRVFMSeChYwfIpsvpShNWTL/rOfsUBa
         dQhboMDr8VRhBUOpxNU/8Cn8LC+aFgL9H+fiub7h3kfG8O0JRhFOLToKFTVV4TiiTyCs
         u++5uigBS446rImLrE1qChaLqlRdGKGvtNrSanMfvLM0fbgwfR5SRLtbZxYKp+gqkqzR
         fWPj6Z6NrbfJIdybFSbDqz5H6cUIB/EGvbwSAgVoNanebMnEnsv1wdsVKm7MslMFqW/+
         4EeJoApGPC/E3gS5SVXszeNIKtFRccZ5HHO8R9yLVfxg2mcLBeVJyHLipec5YTUbw0Xy
         5JHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773409450; x=1774014250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7h8jUUtOMLoMOAauH6/3SgpVv/OymlnTWUMqYmVpR5w=;
        b=l2m+ngJ9hocoRFGCi0GTAqfSGYVYP2B0YhN5C4ng+3If9797UsL9ZEYYilQdlmpqrD
         QnUS+9dIIxxu0yiOMLFUMQ0vK1fbW770zM84L5KhqvzOzHbjI3AMWIBlK+i/kL3oM5zD
         wuDD3NceM3SRe+dEUr0l9RImMQwH9gexszaclBKVG9cGlAWTscxhOPAWPKsG1N+7U54t
         6NJImprdc+SgS2Sd1YJjLlH7jpBWHpDT4gJH8h+Q0gp2kulbdUfo0oux+2qOYraA8xNu
         TcK/5Y/980E0pinXykD/3+bm27Dj8V5cVDbZ4DeTAkyu7vbM2EThy6lVLstHESoR3Rjo
         t5gw==
X-Forwarded-Encrypted: i=1; AJvYcCWGd/syiqwi14hxnHsV2e1CvAi5pc1FSZw5L7iXyiN1NACpI4TjeSr7iR5Rvjx0NSD8xQCHeydH1AkY@vger.kernel.org
X-Gm-Message-State: AOJu0YySdze+SOXjHexKJCFnT7YAvbiQuAFebjx+TZvW4WUYF2xFA9/j
	Pb+AxnDYnI5og5xIH/50q2FfIWZuzzZ13oU8nrFYXJTqJMTtoCFWHOeoFav7YptzQsyqY2FhLlS
	waROLiTUQxFXlUJ48KTdP9I1hgm2/pXTi/Q81hYa+aMASRD+pA6617fN63HgrqxSz
X-Gm-Gg: ATEYQzzatAFpI3KMz+OaXarprieyZUU6JttICUOnKxEPn4UoY3Mtx/uluH+eN+cfTKR
	YIaZojwpY34/ga7xlTIl5Kj3WqL6AH0zdzpr0awvCV0ENkiGtuvbkfxyHUjotBk2fXzRpNSxP3Z
	VFK/R5OIvarKOYm0/8Z1tnUVcAL18z39rxO8Ot8Ona+mIyS3Y9nhVbM7IGcAyEKQyhqEltjtpmW
	VegT2ycko/eDL17itZYmnG6wBLUjwmpDpqbff+l7UcuUp5Qg3tpk5kgHuNj2+Zu9fbrk3dXZc34
	1x2JcFCLUqVBfsSOMFn00MYpivtymw4JmUVsr1yCiwjKgpStI7gfv+b0vEUUOe9z3ah0v3swI4a
	lnNyucWE1O9nJWHKGb7Yx0rsNuqqwSvZChA==
X-Received: by 2002:a05:620a:4629:b0:8c6:a5bb:f464 with SMTP id af79cd13be357-8cdb5ba1b99mr464308685a.66.1773409449504;
        Fri, 13 Mar 2026 06:44:09 -0700 (PDT)
X-Received: by 2002:a05:620a:4629:b0:8c6:a5bb:f464 with SMTP id af79cd13be357-8cdb5ba1b99mr464302985a.66.1773409448831;
        Fri, 13 Mar 2026 06:44:08 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48557a732cesm21273495e9.12.2026.03.13.06.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:44:07 -0700 (PDT)
Date: Fri, 13 Mar 2026 15:44:06 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: glymur-crd: Enable keyboard,
 trackpad and touchscreen
Message-ID: <n7y47uwm4lfgitn2j4awj5budgi3l3vjf6vfrsywiilwzr77zj@m4khj2scbrnd>
References: <20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com>
 <4ac54faf-e27b-4907-ae8a-d3ec910e8040@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ac54faf-e27b-4907-ae8a-d3ec910e8040@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwOSBTYWx0ZWRfX500CpXQQFJbE
 jKmmg5YMEIMTT2fhOd860x5bieXJ2m7qwwfy9/QHdY3cQ0MYAVVohtGflbwl5jrivqfSdjzA2k0
 aZeOfn39/JJfOUPuBu88STSayDGT+cL44pG3FD32B3TNOOFNhdNcpZ+dKGqvLpWy+HOHK11vfHn
 gyjeEWYIfGpY9pNKauveZchEFzRXhqPvkOe6Sq4KySp18TLsaW8lJp2h+wlQEX4H/ZmkpRpADkH
 +gfBS6A24evognt5gcOtZ4rm3J4Zca30/UUKDqZl4anMgLS4KAyevxbJLDqeOKrtqSUY293MOdk
 nvwadjEFc7YQaTfz3xBfjq1rfS5eiLagx2gX1CbQKFN0wPQu72XgZ9LPc1o6nnJ0A90aJ62nqxc
 o/weh85dOseEyIUiwXHbsuj3Gi3gKN4LzfJ9k/lTjYA6gLfwByawfU09HvzlKax0YU9IjkV/szR
 R50aohSCmdTQFQhrd1w==
X-Proofpoint-GUID: Ofb90pQvlBhYZ3GlNDNXT9XaNR_M0F1a
X-Proofpoint-ORIG-GUID: Ofb90pQvlBhYZ3GlNDNXT9XaNR_M0F1a
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b414aa cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=n9Hp0GIUcRTdq3tSPBAA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130109
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275276-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B9EAE284593
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-13 13:57:56, Konrad Dybcio wrote:
> On 3/12/26 2:00 PM, Abel Vesa wrote:
> > On CRD, the keyboard, trackpad and touchscreen are connected over I2C
> > and all share a 3.3V regulator.
> > 
> > So describe the regulator and each input device along with their
> > pinctrl states.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> > +
> > +	ts0_default: ts0-default-state {
> > +		int-n-pins {
> > +			pins = "gpio51";
> > +			function = "gpio";
> > +			bias-disable;
> > +		};
> > +
> > +		reset-n-pins {
> > +			pins = "gpio48";
> > +			function = "gpio";
> > +			output-high;
> 
> we shouldn't need to drive this pin by default (also missing bias setting)

Good catch.

Will fix.

> 
> other than that:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks.

