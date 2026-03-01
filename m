Return-Path: <devicetree+bounces-269702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKxzHeEmpGkiYwUAu9opvQ
	(envelope-from <devicetree+bounces-269702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:45:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA311CF688
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CDA6300EA98
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 11:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C59318ECB;
	Sun,  1 Mar 2026 11:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mUN3U7SK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OUhdzXst"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA79A2D7812
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 11:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772365515; cv=none; b=Mashtr+2eM54z0XaewkwqDaWlLJtwPeYhsFh8nofzVaffA7QLvYtAGYJiARiJCx6lmgdZBCXDhybeg66lxdpMk/kuE6YeLrFM+csBQdRrFQ1W2SWZOG27VI1Z57UurnoUrucsaInprn14eOh1ZUGkQ1MM7TpAjR8qlOPzQLTbW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772365515; c=relaxed/simple;
	bh=Z/1gY2fc2QwJReDY/uk5KCN8lx/cZGy9dGKZxw+caJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EgLMr1Xsfg0T7//nI1SlhD/VWuEM7nGwjCf5FrUpWJVGD9tFr4j3qQVlOhIc9nxS3A72lHhJLJXjV/XcaZe3OK5aKrKBREmsuSVRMHS/CJ+VPyAm/aero0CrJ9KKm0MFnLviavdYq/klY77xk4ute/jOQxJ9HFUgM8fTy/LhFqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mUN3U7SK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OUhdzXst; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6217ue0f533721
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 11:45:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9IhWw7jETeTBU59aFUoPt94R6Buo5mucBgCBkH/xhww=; b=mUN3U7SKKOBRtR1g
	Bk7P55hgFSmaWqnbGJNlbgtpOARezja2FkEdjQw7HyzPkH3/KIvJaCpEvrtv7L2Y
	B21rD9jW6Jxcb6rZiECTh72p7T+nuKc58AR2JaKhNHEg528joVFjdpve+qO/4Mcb
	+veSvgdAmJRLqJ80eo0nPMAjREAC/xh8KAmZpH3G343byRHFNoP3tJda8uDYn6Q2
	LhVLJwzWvt3M39yl9Rz9Xq8eul0/Hbkh1Nqd9Ou9tq+FPlb2A/k2TzsxrmJ5taNg
	fqoSNZZZibFoorwvuV1y9bSdBRDIUHWYw+Jn5u8vkHaXsFU/LqTuL+3kQrVCVSsw
	VXQjcw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksg72hxc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 11:45:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ed6c849so2968744085a.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 03:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772365512; x=1772970312; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9IhWw7jETeTBU59aFUoPt94R6Buo5mucBgCBkH/xhww=;
        b=OUhdzXstpGkkuQ8u7Mhs6moUp2dcZiqUcoxVVBdc+7d46/KEIyNc6HXG25dQQRq66S
         KeDHYYANBCeAak00zc7zc+dqW2Cr4bmz4h6buiQOMMLxQW6YgoO8NuD+NPV7osxDOVGE
         GYlJ/2RSKSYEAhHzGlrB5NFpqxGxlpa2CYnOUiyGjAzQC1DOdXsBZAEECfVxb2lqdk1q
         iIaaMDV4icNVJWI7UpTEqbnZ0dMVprVffo/RL/BAhvzxKlsytYjxCoIMPfdXOVlmnY1I
         +baqM2CC64dKvmcjMJVaayFL8ddHqPjL/RlmmcJYjUfviQPa5suk0F5Vj9oYxwFMz8O6
         k9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772365512; x=1772970312;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9IhWw7jETeTBU59aFUoPt94R6Buo5mucBgCBkH/xhww=;
        b=Eev0SibjycCgyUf3A5hZIaEIB2vAifqE63ylI51otZIJQIdE0/pZELDGLHu8gcDUE+
         uL4c6PbLLMmVpS3Y3wTBshVaV1SzgVpbTbK95ZfCTcLfiNbm7cVu5o2xl8AM6bd0ZH/V
         Vomgo15g4GhqE/jyTKA8gv1eHkT6qTgGFCr7qCc+g94KavfZgUWt7cR5RYRPY7MMx6EX
         dMnvbZjs+EhY5EBKVKAAQVVmtz8B41e99sAjDro4U6Md/lCDtUlFLl4g7BwWBmOmC12k
         GVnUcJnB6b32tuVkMid+WtFROgYluL5lBW6h/SDBzPL8/crs8TXoCC9cJcnlTJJ+1a51
         wg6A==
X-Forwarded-Encrypted: i=1; AJvYcCUgqTXoKrUTaQpXLE9tARoteRfUHbLGwuRkOz60XD9bv2y7OlnNNPrZj24Tvm1YZ/3XMLei2AqBphZc@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvdqwu3FdQCxlKVTsh3ui70YPWBglo04GSXPCcFuIqW/QD8S62
	1pNQa3jSdyC+QvBQ6D5T0iYemYhbq/UC4+z4AEx4N5Zl6ki81lguiwvaBof7kfpfZNpO926lM1f
	96BEUS2OHFu3Wvv7pmxIqNcjAsxI6XpvjtxXYQDq6+nLBjymXlyLNWkgXproxaDzt
X-Gm-Gg: ATEYQzyaUzextD0hOwVj+YvjJPOBCKB9ra16lkv/unzJX1CYCExDVSA060hF6/5E06m
	PuLOa/u2I3F4Bx0QGRk99O7yncVopvt3pX0odxq4t4dgamI9LrFMO+vRjYqYTelVy7HdQUqJzmA
	e53zOhpQuNgcuBXw3UbhP3LCOKZBMJuQsv0kbJjLat/RC4GJoKuI5PoSoS8jUUDsVIeIUXaiZwi
	eM3hxtDhMKrT9JpIg7MgDUmXTSQgMzG6En8WRpsL4wf4GL9bXWGNLWG0fifMCsvWovYfrs0ei5Q
	OevTEf60tashQ3oqqaHnRJTSX1QvJji8m7ZqEfT8+6AjWjr6CMviFQe2+5Ty1bgVqXsFuslP3aR
	46hkDWgOp/l5WJFp46SnyxVNCR+ufhIGI24ZQRmjnNSgZHH+a3uBtJ5b8qQag37ZY0y8DRBc+oE
	qwQKK3mRe9BVBzW32auZNoVFaFcYhfIXV2bCw=
X-Received: by 2002:a05:620a:29d3:b0:8b1:7c0c:e27f with SMTP id af79cd13be357-8cbc8e54d43mr925533885a.82.1772365511931;
        Sun, 01 Mar 2026 03:45:11 -0800 (PST)
X-Received: by 2002:a05:620a:29d3:b0:8b1:7c0c:e27f with SMTP id af79cd13be357-8cbc8e54d43mr925531685a.82.1772365511432;
        Sun, 01 Mar 2026 03:45:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bca083sm1031126e87.31.2026.03.01.03.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 03:45:10 -0800 (PST)
Date: Sun, 1 Mar 2026 13:45:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
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
Subject: Re: [PATCH v4 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
Message-ID: <75vw5t3wf5wndredhot7ashymz4kmjyalakf6bkfexzfrs4ckl@kvaqky4do442>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
 <20260224-lt8713sx-bridge-driver-v4-2-b5603f5458d8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260224-lt8713sx-bridge-driver-v4-2-b5603f5458d8@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: So5_wqPxeaAoSjYMPddnJhizD_H1ICj3
X-Proofpoint-GUID: So5_wqPxeaAoSjYMPddnJhizD_H1ICj3
X-Authority-Analysis: v=2.4 cv=FaA6BZ+6 c=1 sm=1 tr=0 ts=69a426c8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=1XWaLZrsAAAA:8 a=JLGnUU-u1E3EY4DFL30A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDEwNiBTYWx0ZWRfX+6d4PW+Azlcw
 JbkUgsmbzlCHQX8P1cXweb9Ve0dmOw4BNYHoowe3wFOIcmUdJJjJ3dFuH5wRdlxtizUt6M2owY9
 /0xDBQZwetW9W/acbcJv4K0MB38RkNMRDHo4rzYRcS+Iz6jitmwCSVjz3psSWeaI9wBL9ITMyjS
 RdFiJ9qpaTdFTsiA/0lvo/m80fz3lCVD54y6l9V1wbCAGAEhDkasdHOZzgpZ037bc/ye8oSBPYm
 ejTY2McFO0SNe80cTrRqe5m14deEFMkxDS9LXm2JO9TZT/sLCruK5U0mbac6RAf6oZNPXSFvc/n
 6DyKtmREmRQ+Zw0RnWVC5gDhKm7KO/6Gn4XkD7XJlPncfw041zWubbG5eursQj3HEE+DhOspSfg
 3AJiQSoblxH2NWYOD8m/BPBFZbHv/vHFOLHpH6e6/s0PYicEKs3xpEjB0MPE71VKhI3HXW/1Dt+
 jKKyOCvl3VeEJpByjuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603010106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269702-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,qti.qualcomm.com,lontium.corp-partner.google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CFA311CF688
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 11:25:36PM +0530, Vishnu Saini wrote:
> The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,

"to DP 1.4/HDMI 2.0", it can't generate Type-C output.

> with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
> audio output interface.
> 
> Driver is required for firmware upgrade and enabling the bridge chip.
> 
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> Cc: 朱晓明 <xmzhu@lontium.corp-partner.google.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig            |  10 +
>  drivers/gpu/drm/bridge/Makefile           |   1 +
>  drivers/gpu/drm/bridge/lontium-lt8713sx.c | 598 ++++++++++++++++++++++++++++++
>  3 files changed, 609 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

