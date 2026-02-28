Return-Path: <devicetree+bounces-269498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HRZMKqbommo4QQAu9opvQ
	(envelope-from <devicetree+bounces-269498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 08:39:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2452A1C1314
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 08:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B8F3308A430
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B7636CE01;
	Sat, 28 Feb 2026 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXXSHULh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G0QP6UqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91E91A9FAF
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772264003; cv=none; b=LznXAxPV+uGhtGWQ3ZGzVOlprNPHh3UqdQeWWO55Gs5NR9YVjQ7mTMn8sHOXDzSj7D85JXKATuK93zubjLgfc5NvF+bYNPuZjzQczJ2fq0eKA6zuoAQCXm3BvOpOtMnbAVC5eM9OEgRAhlqGDypuhloEnGlKlC5eSaCl/Wvlb6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772264003; c=relaxed/simple;
	bh=19na1WlRmsHh/Xo9q7RBrKRJ70RB2b6oaU7Qyd/evFc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f8lgdbeTaIxX+HwFrK1l9t1CMv46Hi8cn7D2JxjcxLgGGq6MTt5t4VE6F17FZZC+aPkmavvwVeLThwdXCeZcf9KJara/htzrp9FJDZZyPYj3TpJzSGJgJPvg4OwgoCmH9ImhUytaHnFtCnG/3e4eMmfFnMaBozdLmdt9kMmsSec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXXSHULh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G0QP6UqU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S6OFGC3832774
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:33:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zS8VjpOwYS3qceyUhmJv3InOcI9yMX8oo15mZd0gqXQ=; b=fXXSHULh8DSy6E+w
	G5Ap2x2llQrMfyieODbBOe0Ad4QwGy6FbQFaEEBqvBp/meZ6MUhsZcRsiumeejQd
	WLH1rbfDBM1GurO45dN4mE9k/c2IzvUFmnq1u8TRQ44pyF49uOxn1a/39XIn54pJ
	zTmf4q2ESkT4+unNCxSbvOILRJX4N4XZUw6BaE+DXfBBpffQmTr8wjltn1xjgOuN
	PBG/5QXurGdgurh8Zhn3fflti6D8+U4BsVKJKdHKgztDp7Uc07IkbBgC/xri+LlX
	gp6HeC+ouGRMACPMAFHilywDM7NDI1E6ZR6sLjBuWmoPmn5b1iJI92mK4OCFh923
	ZrLpWA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf8gf1d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:33:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8217f2c9359so1737729b3a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 23:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772264000; x=1772868800; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zS8VjpOwYS3qceyUhmJv3InOcI9yMX8oo15mZd0gqXQ=;
        b=G0QP6UqUtTJkNGlh1OrYXAfti1hPPYu+rRNAl/t+WLm74vnPwfCh7QMzJpiMMsOVYd
         eJhzfYNcW2tneyMghjO/KFxOmIr+mvtE9h92ykSXqvLuLpFv/qcYB7ywUb44c+niwE2F
         BiNE92IL/MCmt5ZxBS9e6ucPh1iA5eKNUTDPbPyZsrLRO3kaEKl7zp0eUsr45fnm03a4
         Md1PdQuYJ4X/vqHPbXXNORD+Dz7PP3JM9HWyddlVfQldeK9+pa8KbKxvQ3gACtrPuJqc
         SOJz+fuk9nFfD1Ma/+7Cwaa2csDuZkL2qCnlg2ZOO6tv25cPiND+DzaPD8evwuRaOaVc
         2r/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772264000; x=1772868800;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zS8VjpOwYS3qceyUhmJv3InOcI9yMX8oo15mZd0gqXQ=;
        b=hN+M4h5l3t/v7/apGiHN/uIZMgi6P1fCCIfaIEY9uK0VfgNu8aTHzMlHZ0r2WMcIu5
         c4d2vXah3MuGLGthWOGiZEVQVL0vaO+jlX6yWxr4VTsjaF8Ko2He0loMAe59YuR04jLF
         w0ju7VdSfBwjTK8W9/oOZ/6D8DG4NozOWychZ/3EL/Ei/tu2n4/TsAX4fmqN+vxeHPsk
         zMr2AjzEaRwQZ2p/afRTegLhmv+BWJamust30DIXhPxu0XakCwUUQ/JwK43vvKv5vJlD
         Sc4ly9CpWMZ+ww2jqZVHZtx6wp50n0wAWgBB9mRKaXfUTGjoeQ/TMc0AAfYXSIB+dvBI
         qLhg==
X-Forwarded-Encrypted: i=1; AJvYcCXg3BuDzB0WN9g8lQ1os/ayiKDKK/Wy/S3AZGBL/Vxu1aMYQ6X+QUqRFd/+VAMdGqFYxM8w3FPwjqgi@vger.kernel.org
X-Gm-Message-State: AOJu0YxeEJ7UKCdkSdlh99sVvMB/4o02hBNRVwbQ6MiMwDAiN+Tt1jhR
	KjnQaGIvPIR+DmJHYkLP0fMeZm99JT66j6Nbcf77A2+3l4lDSSnSMJ98f75MejrKnls3aSpJlFq
	PI87CedhD2uQJbxQSWGXWikYQci9Nwi/VjyqtaC8QhjW6PVMId9H1DgPQ3aaj/OACNCaRFaGf
X-Gm-Gg: ATEYQzx3eASHka+mF81eBf4ZPuDxAvv/0I5f8Dvd0onIY2D3x4/GIs84QbgxsNHtnK/
	ks3W+osFCWIO95kcgm+cH3AmDmsE3Rl3y06as6OyOAG9uRhaAyU4icR5LUaXZUDEWciqspBX2t1
	ZkONUWeFrZgSKFgzezrCrimyJgDVdH3kdsTBTzDKtTco48+FhHVOdYolNSlTKWxAqXnN6Wv5/24
	SNdIy5yodC/C2HJ++0+L48F8nCbCeT5EkCjf7iGk6m8RmAZ1wjugMG9RKpIrrKqXR90yrZAYxSU
	DF6NI39bn6rav4t2uFbpexH+xvuwQr0Eu5FbjcMstKqCgmbDPdaNC3xlIQbldWxn9n4BqCp44Q8
	jm9zvSooP0ndooxvO8xmTUczEArz8HfT53C2eS59m6tvcFxOxLPC+wXTGrisD9sNRPZKBpjQvi9
	pmUKgAxJ374Bh7QVQ4whmAAtSo2ZowGeqBloNVjLYJGw==
X-Received: by 2002:a05:6a00:bd9:b0:824:91f5:aa2d with SMTP id d2e1a72fcca58-8274da05bc6mr2419447b3a.5.1772264000168;
        Fri, 27 Feb 2026 23:33:20 -0800 (PST)
X-Received: by 2002:a05:6a00:bd9:b0:824:91f5:aa2d with SMTP id d2e1a72fcca58-8274da05bc6mr2419433b3a.5.1772263999702;
        Fri, 27 Feb 2026 23:33:19 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d8c5bdsm7155131b3a.19.2026.02.27.23.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 23:33:18 -0800 (PST)
Date: Sat, 28 Feb 2026 13:03:10 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        =?utf-8?B?5pyx5pmT5piO?= <xmzhu@lontium.corp-partner.google.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Message-ID: <aaKaNlwj3yR5jLgj@hu-vishsain-blr.qualcomm.com>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
 <20260224-lt8713sx-bridge-driver-v4-1-b5603f5458d8@oss.qualcomm.com>
 <20260225-agile-godlike-orangutan-07abad@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260225-agile-godlike-orangutan-07abad@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDA2OCBTYWx0ZWRfX4Uute+2EyUTa
 Yr84rRnCcPjX+ckXpptQW8PHhh1FzJp0OJwmi6zo9nKW5b6mLTpQ6fcmho9dLDY+VmX0WVoYjFb
 FuGERTyoA+eextM3LXGviP2mCviEQfhpz1+dZRGPs+tiy7H7e2veKbrUwQBB1aFhx/GC9CBXmq3
 QZs+PGre1K14ssvFrANmYTjMDzXEE7lA4s8MGPa4ab6ePC2KsgVsoFbf1Q7UBhwjlGydKi5n0Uf
 s49j3teIAfZ7i2etIVUEm4qggGxntgm77DkYiqvj81I0Otamcc/YGkpTRJdqDDACM0JewHi3j+E
 YqtfNeDFbQPerrawt+yZWZYJ7TOKZjJQE2huVhp+5yGAEdHrE1cozizUASCxqglmVztBUG6tk8M
 koQZiAeYMm2KpotXzuQeCnm7Ahq9z7Bps/Cjq+p5/DEBi4xgKsd+6v0PLYTl9+vKSm263NHRbLn
 QPn6a35kJoF0HuTHjOA==
X-Proofpoint-ORIG-GUID: eFj8Llu9dEAjEwuTliJkUtT1sggurtII
X-Proofpoint-GUID: eFj8Llu9dEAjEwuTliJkUtT1sggurtII
X-Authority-Analysis: v=2.4 cv=I5dohdgg c=1 sm=1 tr=0 ts=69a29a41 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=gEfo2CItAAAA:8 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=1XWaLZrsAAAA:8
 a=Kz8-B0t5AAAA:8 a=_dxOVl7cOmLWDdFjOvsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=sptkURWiP4Gy88Gu7hUp:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269498-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,qti.qualcomm.com,lontium.corp-partner.google.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2452A1C1314
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:35:45AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Feb 24, 2026 at 11:25:35PM +0530, Vishnu Saini wrote:
> > Add bindings for lt8713sx.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > Cc: 朱晓明 <xmzhu@lontium.corp-partner.google.com>
> 
> Please use latin transliteration/translation, if possible.
> 
> > ---
> >  .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 +++++++++++++++++++++
> >  1 file changed, 113 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> > new file mode 100644
> > index 000000000000..29a773154b39
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> > @@ -0,0 +1,113 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
> > +
> > +maintainers:
> > +  - Tony <syyang@lontium.com>
> 
> Is Tony full legal name, transliterated to Latin alphabet?
> 
> Also Tony, please kindly ack this change.


Lontium has confirmed that I am allowed to use my full legal name and email address as Author and Maintainer.

Their response was:
"After we provide the drivers to other customers, they modify them according to their needs and submit
them to the community, all using their full names and email addresses.
We think you can also use your full name and email address."

In the next revision, I will update the Author and Maintainer fields accordingly.
Apologies for not proactively confirming this with Lontium earlier.

 
> You already received such question at v3 :/
> 
> Also not sure why I am spending my time SECOND time on it. Read very
> carefully all the rules:
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 

