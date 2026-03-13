Return-Path: <devicetree+bounces-275394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCMlCmcztGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8402866C3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 638AB30104AE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6697B3603ED;
	Fri, 13 Mar 2026 15:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B4y4nTn6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NxyO68du"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53FDDDCD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416987; cv=none; b=DQEF1qoj0T6NqUF3JFHvUlIn32nJTacY1UQrMzLKmBB1qgWbhNUCZgzDNC6DAXReGAkDXsZIXJXK61sCySIu86JVBggp6G+63JGvXBzgVcAsjkn2E0XQLp+w00WZ2/202ojYEKvDDeEiDaQvsklx9tjvwss7jEiDifsbCTZ/tLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416987; c=relaxed/simple;
	bh=LNF/ulUaaW5dO4IEer3wHJzBNsU0mMg2Wob8qkOhPIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C3RMo7EeAWWTBHiM5kD+MpxaAkSvmVBsKzkI5w17LpmdTzBpJhVaBslc+meZz2vU9W3QajK8ilVy4GZj71v+2+x89SQK6hyNw0W4wcpz7l4bKcmz9oaSGu14egzMDk1oBaCm8ckBqG2g+Pq4SrOnSJHVbcAEnDzC7Jxl/pghZe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B4y4nTn6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NxyO68du; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DDDrNG793612
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ngjNSuCvttZ3xvrVRmeGzmNn
	u0ReudBP3SkdJ0pWCZ4=; b=B4y4nTn619mJ4MN0GVjX8n4jFtocDCfemyoJ7xnU
	4tk6yeltK0PgZYzx2nSEm9uUr+o3oMvk5Zi4hvNrIBjUniACDNBi+sgY4Ejr+SJe
	uvfsh2ihE3aRS0yNMhHrq/OFh7l+fH/0+hEHd+5BkfLC1CyKXMph1/yDImsJDZ6y
	bVyi6kCjlS8P2Ht/whee79nsrZ/+9rvb8VvG+i3GagZ5j5ieS594k83Vvgl4xPFd
	5wKLJgz4B2PI/s2fbxXLAOAiOsrgcydrJgwRWosUgmhxsZR4A83MdeQWdfsyVurP
	PbHYDD8CgVJH1irJKb+wwmtPSXVjZ9XoZPisf85/1MoIKQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt1vne-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd827a356aso1395667285a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416984; x=1774021784; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ngjNSuCvttZ3xvrVRmeGzmNnu0ReudBP3SkdJ0pWCZ4=;
        b=NxyO68duXuU/ay89eTVemSZve+ynXislPX26yChfBsDwwncyHfxcBRFmiQTVuaIwCv
         6CLRnZubh13joZAM/VFoxlfqfdC5DejcD3laZX2pSFuU+PgC85ZJHNiNF9Ox0Ck9pAPR
         yFV27NxuULSGWhNt5J1tYS3tWEQfkLUpb2KRYRkbvXPB41yc/Vokivf5YewCguDIWErI
         3MbEOSfamdkz0BsFKFlObk1kH8ciatCiEQqJZNeKY0DI3DbGJsP83ItdJMuu/+LFOAvj
         4KLjV1hMmCRKZBnpybilrIKbaTLZ4vmRplfzWy6mqmVDPSPwmMar1gBZCdmYss2l8RI1
         HHWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416984; x=1774021784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ngjNSuCvttZ3xvrVRmeGzmNnu0ReudBP3SkdJ0pWCZ4=;
        b=f1bj8RlHqSrBczpjsy2cudePlm+tUBr0kzdItOe5hi72Z5akhByu+cuTUe59eGWmFS
         O9NbIq1u9RNxVRBY1GaUBUOk+gAgCpPJWZqPvfryddq3nCW7biK1t60auEXAzduuzPeI
         Lk90uio4BAmVPp5+2hp5Kgmm8OQbHCPuMecLVlipgQ124wofCeltP4e6Xt1E4es1T4aA
         3vsNu8FYL8VFtXsAH1akox9OmZp3Px4bIf96xF5Kx1FKnBm5yCkDTJY7If2Y1Oja5v+j
         8anS8anIv0ICrnuT0iItj93pECfSe+3EDZnQd1eZWm786pDOdwPX+uIgHyg+iBh76gfW
         KbLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZrsreMZnl9YvedRMGGA5dAO5hgyGtkRTeWXAXT2ufUC3vsn7mBXSBe2LwZGmsu7CBZDOxUgMY0YJ6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/VkqDdpuTA+zwDMulsDwGJ2iECX9nIYfWLfUg3DyPB1OPwMLE
	lqE8v9NltNStLoneKW9Us/WI33MCMnikUE6qbv7qd66KwZYgoXj7usAgGKqThL9e+U4CVyh5ptm
	Zxz7fsOcFT1KODrnFTZ1QCaGxy0gYuOovbnnGdyzcCHcc3d/9fjgM4k2MQbfK79bi
X-Gm-Gg: ATEYQzxdNnyVuH21Q2uciAcZRChImnEudwCVrGS9oh5GlNcsdp99wKh5nJML6dwowsF
	zOCj4eAIS7A0c0dbL+AV7YSerGLZhI4bNnu0/ts4F558q4ssTdG4oTypAzEVG/W7JtifvVZzNM0
	u51lYoSARtQO5ytfHpNw7ZbsG1/akyrUC0b3tp5FWxA+zsrte2/Hq0utvdur9P/ve4SQ00UtXsX
	TkrDXiJY97CdJpHcjSIatm0pqiVBFCPlJ2t6zAha+LjaVcJ+qFOrm/3vkzkuKEs6fPtyKUo9DMs
	3ngu8IVRIfhtKMhP/CRJqkOopZz2B+hqfXXiw3xFQlmZCV5bZ/OdTlAQ8aDhYLzdsVFHuFNN98g
	tBooq/V7E8hLh7qaeatFTGeiQifRn0taJU0ym4cGXeNsIDVWPyZaM8D9wNY3UDOitIvSorx3iTV
	Wrbf3YRaxzMmchTfIvGMTV+7CXsHYNq6ET4/A=
X-Received: by 2002:a05:620a:470c:b0:8c7:177f:cc1c with SMTP id af79cd13be357-8cdb5a060acmr531248785a.16.1773416984183;
        Fri, 13 Mar 2026 08:49:44 -0700 (PDT)
X-Received: by 2002:a05:620a:470c:b0:8c7:177f:cc1c with SMTP id af79cd13be357-8cdb5a060acmr531244985a.16.1773416983767;
        Fri, 13 Mar 2026 08:49:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15981e963sm1198655e87.64.2026.03.13.08.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:49:42 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:49:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: glymur-crd: Add Embedded
 controller node
Message-ID: <dexkqry7yafuhtfemv44r6g34iekldklhvq5t7n5koktfgibi4@w7jqs6wsxgxu>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-3-ca9d0efd62aa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-3-ca9d0efd62aa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b43219 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=BYiauv21-j_JhOubGf8A:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: vJoRWRDe-Mh2K2YLF-lhFzKjpoxHVf3w
X-Proofpoint-ORIG-GUID: vJoRWRDe-Mh2K2YLF-lhFzKjpoxHVf3w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNiBTYWx0ZWRfX9QRbR7jVx1Dh
 KsNvYbXzHnNAC2EdU6ODv1ZnPJ0IO2PQg9FBTIR+abNoZaBRUB8esp2Vab8Go5HqUSHEEQAuMf5
 mQdCR1uk3davMmk0BZNVwmg3kGL4qJltXzziyDTsfKkUVvKsjNagNXdXoBqiv69OEj+RDEE3bjs
 kYFFrkvNXFHgbZe0AxYVoNfw2cqDo/HccERMd34TCkK2ULetc5JjMC6N5X1YRtWmK9r1ZRBz48Y
 8qkgzMkFOp8Af3PFaj4Ql9PiD4aYDwZ2xDFQ13Yr9I2KSBzQaKnd6smegmQrxW4FRtseijbOBVp
 q+iEJzwRv6NIt627+CTVWbWJ7T1jLDk2LVDKaWV1l81PVgTUWsgO5phUwV8slLHEvTjCmUCaiq+
 zIIQPMw9OdXsvvZqyG2aHCD2YW4vOer+Jof7BbcVMTNCl/0HjUiJej7jnqPnqIYed3/pDa0Goep
 P1qopVeGAmKK3jOLvhg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130126
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
	TAGGED_FROM(0.00)[bounces-275394-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
X-Rspamd-Queue-Id: 9A8402866C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:59:53PM +0530, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add embedded controller node for Glymur CRDs which adds fan control,
> temperature sensors, access to EC state changes through SCI events
> and suspend entry/exit notifications to the EC.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

