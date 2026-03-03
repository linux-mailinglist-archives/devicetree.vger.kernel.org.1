Return-Path: <devicetree+bounces-270516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDQKGCrlpmngZAAAu9opvQ
	(envelope-from <devicetree+bounces-270516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:42:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A47E1F0800
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 92035302EE34
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A05327AC31;
	Tue,  3 Mar 2026 13:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UjKfkATI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gfqKOWCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5092288E3
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544921; cv=none; b=ldL5udtYA4pIJSNlQ3bWHvyUVVOdmkGK6V/diwbFb6js2V9sSZBpW++kDwxpWKVxkjfmH9+nkaBlyGUDPz04nlKpf4U+LTib6L7EYvkxVxeUM0SEqT2mEkShv8xujFhO1BIE1z6NoGTZlESynvTpymkbUdj6V5vHWDQUtGfU2lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544921; c=relaxed/simple;
	bh=MUQCZt8SC6oRsgXEYYBZNhvSs8c95NHMWCvK4DRBGxE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MI0qC2df9kv2AmRpSYIXjB0wW0SDnJG0FUR70op58oj2lRoKQz7mxJnm2fMI4MPHOi69hc1hInvSFpQ8MUJIw3C4u5USs2dgySbnmJKcZ05xNi6udFtNn+IjLtDQiIaRCXRF35SjeLSkYz2J5X0hTxV6JVdMEtBUP5Q1QVuojW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UjKfkATI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gfqKOWCP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n6aX582383
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:35:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iIDdHFjvuX2Cl2qm4wnbyb9t
	S9gbrmx/n5LQeTmw3+E=; b=UjKfkATIJMdRvfZlq5+KSkv/9GEHXh368xPy4GqF
	xb09kpaqeLIj2UweoOCEGX0qTN31TDmp4i+EJYGR7uh14we7obTNcdSB2GzF//6O
	G4zss0X2/ceTnHS6bkU30h+T8P6gw8HzyIDTIAarzg8yX3Lj4sRgiKYUM9VkWkyH
	N5ffeWHgxM6hF8oK+4yVT2Yq0o+XtwyWH9yLJqo+wKqE7LaZ20L7rNJjgNPheNdh
	mJhwWBzAZxMuH4Lg6ZowZyBRjOXQlhCQMocXbiAUEDNiSNl07jdcRNZHs30Y7Bg7
	iMOCmElfRdYdAyt6mv5EzrjY/+Yb3Uc/nb8Awl6LhZSi/A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnh6ub35u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:35:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3b0d938dso4371924885a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772544918; x=1773149718; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iIDdHFjvuX2Cl2qm4wnbyb9tS9gbrmx/n5LQeTmw3+E=;
        b=gfqKOWCPZP3noVzdQ5SBGVhs0SMPOd+pU4xiXHTiPIXj4KKsWLdXcpCZRHXG97a327
         sTNFPyOoc9bqnPfnxIMsNsmbeLmJQgnkfEX+9hCRoSV1Xr3KjzVDMXsDqysGqGllOH1r
         w92SddUVokAPNVrkAteZNXn2hq6HHCVqsm3maPtu1J7qX5HzweYaHrweltrmy0uEl8+b
         Ems9tC4XEQviyGI1x4qNkO7X2WqONt4rjUEPpqGH9jPotxaIs7yIl/09fXel15QIYoZk
         jf91bKO/e68VCalFC3rK8vGEqvlo8alKEzJTEL4LiKG7h1bt9g/mytg0ERSTDFWD/0VI
         V4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772544918; x=1773149718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIDdHFjvuX2Cl2qm4wnbyb9tS9gbrmx/n5LQeTmw3+E=;
        b=PdmemdT3mjBfEf+seHSmfVjJ63bzo3sruzLJyAX3PtPm9nlbHIfKs4ssA03RlNHzMy
         xroX+RiKIeMcaQJfsyhffEhvA0abOYFeFVTDsR79PsBDmn98PK8ytyzwPl/t6iKsdyBL
         QXEw7m2mQRWdh6RKdjgrR2o7SCCLPPhkVQ7W0X/Nfh0L8Zs3lG6f+C+npvue4zzdclHS
         Vdst9+D/M10c8LCv8neaOUGpxhytjGLlrTDUN0+lCUqRFr2sW6G+36R9OI9UEUJ2oaSI
         JCL+L6XPEi58lxdc7gnIIezlg4t6NuuRcbPFLK9FzuG7KkuUHZ/mDe4EUR28+lMHlRuS
         pT3g==
X-Forwarded-Encrypted: i=1; AJvYcCXimNAzXaWmKDtPaC5fsR50II1jSDYG7xghV8JuMuSs/DOR2cMj7omVKYTrsDFKYAdc49F4gjbVqdNw@vger.kernel.org
X-Gm-Message-State: AOJu0YxNPmbsdz0kmhUbaDmbFKEE5SatULGMKp5SK6J8E9h02kiLQXxH
	XZ56vtwX4oMSUS9DYRvMMF8WxMewJ0c5/8sSkRd8n6DjRobysJnpCEdLGgS+uBo8xwiKMyNagq5
	x6shm7S/htbs2vgdhmxZ35ox2Ci51JG+IRyLwipKYN5QsMD4K+4DfAmlrZWrfE7IK
X-Gm-Gg: ATEYQzwR2sIR293lKt/af0HXfNgYNfyaBgLD9l66QC+NsYryj3ugZqKPMiECKOH5cjk
	l1S0OMD43jj6gYAAm5cZO0cahcWC0M9XS35cf+9xJBgCdipuhiAWfpZ6c+jxoQDqJP7q3pqvwft
	zVzKigFwrB7Bq1Tdd13aVyxnkZa8e9WmtyLe4i20hP6Z1WcYaFQyYgAJRoT7tj8linoMKvrN/T9
	qyrMNWzDyAEv8eb8vO9QADoOD9FXe/IKdwQXYxzjnuXuw7h5Hp6JvsObbcspEDqIUL8ipqwTE30
	BUXkHWOxIp2MLaePFAbefsmLhOHSuYQLbmPxCAbjAusftknSujOUWUco6L+UUZhNR2/RQXef2+2
	MFoMu5jH1+vt71IbMi42QXWKtS7H9nhq5RTbm
X-Received: by 2002:a05:620a:1aa1:b0:8c7:995:b961 with SMTP id af79cd13be357-8cbc8f2b066mr1941902985a.58.1772544918104;
        Tue, 03 Mar 2026 05:35:18 -0800 (PST)
X-Received: by 2002:a05:620a:1aa1:b0:8c7:995:b961 with SMTP id af79cd13be357-8cbc8f2b066mr1941897985a.58.1772544917427;
        Tue, 03 Mar 2026 05:35:17 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485125bbb48sm27812015e9.0.2026.03.03.05.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:35:16 -0800 (PST)
Date: Tue, 3 Mar 2026 15:35:13 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
Message-ID: <5fsq3ex6d6ytzus4n6smkd4tkxvsl2npxjdlnj4m332lmiad22@iu4f3ij3ozol>
References: <20260303-gpucc_sm8750_v2-v4-0-2f28562db7c9@oss.qualcomm.com>
 <20260303-gpucc_sm8750_v2-v4-3-2f28562db7c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-gpucc_sm8750_v2-v4-3-2f28562db7c9@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwNyBTYWx0ZWRfXwJxIqqhUklLL
 CDPzcc1qZHrxiHLpCksRDtXBtFIJggklvoIuBAorBkh3bor8Dz7VLzZV78puW9VBu3URm7wPBus
 JNED1TRuUza/Fgj4ytGgdfkF7OJz/4XOVnhwfKELXTWsaAjGj/O6t4nP1FliAlRdjlD5d7ODjJa
 /lTXHoOLb1i1EgzmezQ7pvZa8ysYfXvzWWxYD374AejbOiGPDB8ml/6AOzpd+p9y1sw/4OVvzAK
 8e5Ac+BuHVvO4FMV+wCKru2sSQc/tOe0a0wMMXuGZtsUExX7AvJvkaJZ63fhu1ancZNNasssdo5
 UsolAZdkTr4HfZOmXu2DzZFtPVWR/NsfIqIwMjbK5GVTRLBlD2xaKTGUEn+fu/+nWHU8bWg9F8p
 IXnKkp0F0qFeP0BIAS25TqHT7Yi7WGh6svv4czYBe2AlZYybFsC6nSEnWCmpf2fKcgh9xNGRqez
 htPazsWXu8ly+SCnvQg==
X-Authority-Analysis: v=2.4 cv=MuhfKmae c=1 sm=1 tr=0 ts=69a6e397 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=sWMdH8d5cH_G3Qu0fyEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: qGoIteFMTCQ5uWodcGUIVvLCMX-lNMQF
X-Proofpoint-GUID: qGoIteFMTCQ5uWodcGUIVvLCMX-lNMQF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030107
X-Rspamd-Queue-Id: 4A47E1F0800
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270516-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-03 15:05:27, Taniya Das wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
> is simply a separate block housing the GX GDSC) nodes, required to
> power up the graphics-related hardware.
> 
> Make use of it by enabling the associated IOMMU as well. The GPU itself
> needs some more work and will be enabled later.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

