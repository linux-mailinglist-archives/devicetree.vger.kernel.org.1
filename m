Return-Path: <devicetree+bounces-270057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEO5A6CepWltCAAAu9opvQ
	(envelope-from <devicetree+bounces-270057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:28:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A78151DAC8F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DEFAD3008C3A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C543FD146;
	Mon,  2 Mar 2026 14:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DaO7uWE4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e+Ld2Pdx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D784733DEF7
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461700; cv=none; b=G157J68SIFjzsAbYeDyjk0Cy25QKXpEg1VzQ09G0BXp3TMv3geM0FJvGYgbGp7RjpwSWpb7BHBvSXdIvGw3gKPp3P18L+qg+d9YQS94byaEn7IO0lKo1o4DMGU9yYN45Nhn6mPa1IGsCu5gV4v5eG5csHcbsyqkyGf6/Auq0rh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461700; c=relaxed/simple;
	bh=Epsk6vHY7VF+fty4lWb+wJcMQcgQd+iVOb4BShKgvQE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yx6pbv63q5gtMgJG559oaXTWXOlDF6W2qpkejRBsBQEcgz8S+2ZGZ3LfKTmpFrRvkta8GRj/ltPV2JjXGBlWQ4PNUJES3dGPTckNAey5m9VXWwF0V9q0BKJlPZcdLoeK+6Z1pk6rCDRA8FW1AX7sF/9P2elSS6rfvZtX3mNEukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DaO7uWE4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e+Ld2Pdx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622B4K5D3561443
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:28:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ExbRH/LQNP2bmO6Gmep+eudGy/kyfu9Y7hVujV61XVM=; b=DaO7uWE4Gfyz29DF
	ZTA6vAya79EeLyccQDWDAi+1kpvA23KfVXnozuXChpBJcjguB8FEzi/vl0q4Rhjo
	/aChyJW4DY6w3rauxye0jyDbCXPI5O0mxQik+By/f2hl+/CgpUNI8lwn/ZY7HD9r
	Ksd680DP9jDJghMbpwaZV7WVadyItxxz1QxAO/s+EHxueZsINj4fAf0R21KF9YoM
	9Nvbb8nOPUrPc0Eof7Pr8D2dl/v22bzyYLDxQD0WoD1UakRCgjEeUv0DKI9YouEv
	IIyFcH5Mkp60Ef4GndRPYZ4nu7kY1taNJa5Qd17XG9tz15pyatdrvFKJGWbGtmQt
	aOOCVg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bv8ksb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:28:16 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35679eb61b5so2202749a91.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772461696; x=1773066496; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ExbRH/LQNP2bmO6Gmep+eudGy/kyfu9Y7hVujV61XVM=;
        b=e+Ld2PdxHd0LjR3eKEBs/3tUX3fAt/Mig1m56WV6dZxd2SemG9OASW6+v5uRDEs7sZ
         434O8MxcYI6Faoc0FE6Q0Viz/0RMDm252vAYXWJewd7WtAKFr9t8hwzE9kIioznTrjhD
         gchAK2w564umZajHinH2gRAXFXY0+ToLnwS50ZDJuqStU9bRIBWkXmS5/O0B5laOAEZH
         eptxuVZFd/2VH92hXSrTKzzr1brx8+hROQ6dvWgJeiuVR7BrEH3qY/XxvDqEXBJJ2ef4
         +PwFIryOS9+GaMKbwnOJjXfFuinQfkh2tWHXLhY+bb639XsxydJS3X4NaAca4EhDeXgp
         aECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772461696; x=1773066496;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ExbRH/LQNP2bmO6Gmep+eudGy/kyfu9Y7hVujV61XVM=;
        b=K35gdjaoJACKKchWDsJu3Igyvo28Bjg5RWTFo4y1Sbg12eHz4JGElS9XUClVupeqBr
         MD+MRpGwC3wpqRsHTHhlFoEEnMCoRfQNxsx+C/+cfBaDKp/LpcUkY+VfYSYvZsRq9Toe
         24zWbRzsO5sOUaxdbWrkWYgya/6CemKETRP9BPqkhyoHar1lsfiZ+hYFqlKJliMn8zze
         fgQHLW3ykZzq2dk7fW7A4W0xk+hlLPdDSSV7e2a4+zMpZyWF8+iNMeXsVuQJ4/RbETV3
         z+GU9U/K4F3mOQQBvEg4nIhsP24vs0pzrs0NitlRwtXGMK3OiZzL2kDzvkWXk4BDhaiS
         jgQA==
X-Forwarded-Encrypted: i=1; AJvYcCXmfcOCuo+KD5cQnM7tut3uVbB/u+dnDc2HJQDE7DpNI6QOjie1LKNJ0GBJu2nfOmlTsj+GTiEU4gah@vger.kernel.org
X-Gm-Message-State: AOJu0YzzVs5QfWYm+QROMRgpnXIAEj44r5aUk+zfyJXFj6bCRNK/W39w
	U05Lx1YccPFnn19oDRYyf59hv8nkI45OTsM6okNMma9MGXjwU39aQO1g9Ni/WPanhbUDYp/cLyD
	BrGIh/5T61IMUteIhPVBZSflsJMqVDVJWX/hStRa/ZMrNgAqhBbtMi/yBw4KQXTqf
X-Gm-Gg: ATEYQzzZkrDJaVuSyJCzAEvdhi7rqYsYd7q5eAAipg1sJ+ae+3EP1XLuImwqV0zcHw/
	a+GQfz3xs/SYNY5Zy/F6ZLZPSlaakDW/aTRqy1wzdMr3RwtBacfE2EfiUp2vOjHldG2LhodnQD0
	44jw6turzatg0SZhwRllWq6kgXBJpX+HCmyNwV6Q0dgFVJHB5lKZTx1Bo4w68T0HAitnLy4+6t4
	Jg8SJQaqXKBY5Ph4uH3yul6UilGmJet1uUZ/9OM9568QbUGkCpaRHWUp9MeP4wXygyENN5bLNUd
	oeXBjt9rtABgbxddzrsrxtOYtVnVDeEBCqXnoXV70MWewqUJwJCbrq2pc6x0sg+McxbmRRyPcnV
	IQjfF/e/jnluNUltb0TP0/qc0Cczb1U1l47Y/rkEZ5l/Pcp1qh96WV0COXIHL3CVbglNJr5du51
	JdTrLi7KZdqpDvnAbKb4Z402ewmpUR6e6SqxTxVrh7IA==
X-Received: by 2002:a17:90b:3812:b0:340:29cd:dce with SMTP id 98e67ed59e1d1-35965cf70edmr8624730a91.8.1772461695731;
        Mon, 02 Mar 2026 06:28:15 -0800 (PST)
X-Received: by 2002:a17:90b:3812:b0:340:29cd:dce with SMTP id 98e67ed59e1d1-35965cf70edmr8624707a91.8.1772461695128;
        Mon, 02 Mar 2026 06:28:15 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359851a5216sm5358098a91.8.2026.03.02.06.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 06:28:14 -0800 (PST)
Date: Mon, 2 Mar 2026 19:58:05 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Message-ID: <aaWedS3RSoHH3d3I@hu-vishsain-blr.qualcomm.com>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
 <20260224-lt8713sx-bridge-driver-v4-2-b5603f5458d8@oss.qualcomm.com>
 <75vw5t3wf5wndredhot7ashymz4kmjyalakf6bkfexzfrs4ckl@kvaqky4do442>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <75vw5t3wf5wndredhot7ashymz4kmjyalakf6bkfexzfrs4ckl@kvaqky4do442>
X-Proofpoint-GUID: DidD0R3XlqKUwwcEtMup_6cnvh8CgQUx
X-Authority-Analysis: v=2.4 cv=S83UAYsP c=1 sm=1 tr=0 ts=69a59e80 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=1XWaLZrsAAAA:8 a=RynHufMhF2RdOjRzUnUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: DidD0R3XlqKUwwcEtMup_6cnvh8CgQUx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEyMSBTYWx0ZWRfXwONlf97aqPUK
 9f1JLLH6WWvtS3toWiJG2+DRnPg+MfwxsjsVrr3mbTIfvotG8YgzhwWY8FJhG4ZE7+g6OeZyCdz
 M7DhmBRXLUqfDg8KtyTtJJLs4QQ0oDI00BRkkiVAwRdOTcTiEQnVDZ6aSv02E5bNR4hTL4IXwPc
 XPgWeKka2aEd4lAbmVrwg/3of0+fXNCM92FR3mm3RkgPT3Ptka/gwY+BXfrRuBIyMruBnuMncvA
 npY0bNeqBltHtGKvf8OirtlPR9gHkUEEK9luWd3e0/1lrnyAsd+7lO+p2mc6zcYNxI01KRtZsHU
 1PTXAwgrcqaOIu0idN81sPyt2G8Zb6AT0djApXZhWblYLVqZFSEUYicUb9Mkx+SyhrAXSrYvXoY
 zj69KX8gTcPd1hLhkYQ+zqMdF/Y9U1q5g4AnOoxHu2g07USMMz/a3zM2wtcBapP+H7LskwGHjHs
 aD9Ocxogi6cUmdZj0NQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020121
X-Rspamd-Queue-Id: A78151DAC8F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270057-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,qti.qualcomm.com,lontium.corp-partner.google.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 01:45:07PM +0200, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 11:25:36PM +0530, Vishnu Saini wrote:
> > The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
> 
> "to DP 1.4/HDMI 2.0", it can't generate Type-C output.
will correct this in next revision.
 
> > with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
> > audio output interface.
> > 
> > Driver is required for firmware upgrade and enabling the bridge chip.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > Cc: 朱晓明 <xmzhu@lontium.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig            |  10 +
> >  drivers/gpu/drm/bridge/Makefile           |   1 +
> >  drivers/gpu/drm/bridge/lontium-lt8713sx.c | 598 ++++++++++++++++++++++++++++++
> >  3 files changed, 609 insertions(+)
> > 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Thanks 

> 
> -- 
> With best wishes
> Dmitry

