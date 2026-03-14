Return-Path: <devicetree+bounces-275603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MvwGH/DtGnxsgAAu9opvQ
	(envelope-from <devicetree+bounces-275603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:10:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB57928B5AA
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46F7530870DD
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA735277017;
	Sat, 14 Mar 2026 02:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F1JxTVw1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SoZe0Dcd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D466223DD6
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773454204; cv=none; b=reVTIqfrh1kjpqdH0aATOVp6fL38Vdn8Lgk+Ttxd2DhE9XT59ZW3xHNN9bUG44cW/O8iOcEU/Sbbhb6kyQWBO8l2CFJwloST3BNi3YmzmS5/uv76zMZLuOtJbp22lmBqk/XvZTvqmEhUvoge0YcVg4K9QAlz/bfIsfL2jx3s6ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773454204; c=relaxed/simple;
	bh=duL+i5Fk3AetXSo4mqzJyt0RKDh36yD+zg2sCtportQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CsZ0O+nOHQ707rJ3ntjIinUYtFi1iANWFylzo8CA+hT4QXC8jPRV9pB7uwWHAClUkBWZ7Sv9CfatAHa1Y7bM3FOfMsG4xyemggNMN3Q0UBJYFL9my3FDSjkB8ObjTYr9jOselZ3MAgqe4ZjDsr43wA5GX4HMfcpJhN6SNDSekUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F1JxTVw1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SoZe0Dcd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E0K2Jx2108302
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:10:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zkwHP9ceUQy3uJlb2Qy9ZoM9IQMMlgfHIckJWUulXX8=; b=F1JxTVw1ul0gMUYZ
	VQVmjF6b+9ik2zHjfpH1KrNymRhMiixacY/kIqsotqawoQxs1T06N1kG/6BGPDef
	ahDgyJpmaascvrfVbQeBM82NRGO/R3zfBYLSKE0wfUO/DAweumqbgFVtQmAJgVba
	MNzu/CM2OrJgccBn1sOQJGX/4ZfoD6WxLoeMjBBNtRpphTq/zowcIXVDBIs8cL3+
	Gjfk+uHRa9E+Z8QQoPLOOGjHM2N+nGeQ9R3CQ4I8pz4tSJRNTh4aq14t5uPkDQWZ
	wdRr/3pKRp1ZzVz+uy5R6MQhwblHzVtFMbiL7fZPTWEZTV3caSQUcqRvTId6O1OO
	imjLcQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvw1p86bx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:10:02 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5675cb317e3so4805177e0c.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773454202; x=1774059002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zkwHP9ceUQy3uJlb2Qy9ZoM9IQMMlgfHIckJWUulXX8=;
        b=SoZe0Dcd2D7u1d7Na1O4RiplJ5N07S4heBekVzu2NysAUi3BkqLNS/qQ0qU8pO/YoT
         EE8M6LSi5YYawNlFITNrTONn265XJ7xUhKSgtmGTFXE+AWC+SEc2nM7Ql2BW1rqVE3Hr
         rlT/iRZ8l8/ViPS6aV0BgtJvQrakfnG7LLdcaEN9871JnjgX7yZj9RWLVG8tvmsy5A+H
         74Syjh9Kc6jc1keILQeM+gnZashcRr/omkEKYqzgy0B+cyGBaqS+207vXh4voFpLGN6o
         ljnZIMY6x3wOqqltmfFYX4b2/H2zAFYpeII1WoFMNn/kSr94eCkzseKM+dcHjqpKUwwD
         wf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773454202; x=1774059002;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zkwHP9ceUQy3uJlb2Qy9ZoM9IQMMlgfHIckJWUulXX8=;
        b=MisjYL/EkP156GmIxY6OwN0aP+S4cHnIuHL5Rh4r4YwizOWsf4SxvuR1TxFqp0+Rv6
         71SOkAKyY88GBWtzaq9Grx7ELvhyRe1UcmvYlXq65fgwYeDDVTVpeRVfTXh7ClYfaPr0
         5789NC0x17XxxP7V6fkXGOPWFTcoEw3qaTw2GDViwH/F3dSqs0CyVOBn/o/p793qdn20
         N1IBt9kf5vNBAVbONo6W7PvUyyk3x7OwkcArEsqMXi0rMnNoHYd22nsmR/KVg3DkuZ4N
         dolVOtcbsNxmCRx4Sm5Q9+gjJGUIXfEBFUz018q15kstzK4QL0Dofkgjs3yp3+z10Xw0
         ZHOw==
X-Forwarded-Encrypted: i=1; AJvYcCV6ClM7XOc/Xi1pT3aPjGav29VjadpCLkRqLH5n14WCEl+max48k7Th4BwhA5JRQHLjLFxsVnbvVjhA@vger.kernel.org
X-Gm-Message-State: AOJu0YyIeRxDhOIa6ccNVcym83oApImGr9SfXWkDr6TN84ZXnQM/LOOY
	YPvfipSdAg7ZNW1IMMoEl8J2tJEx0Yg5qTQe/oqngjRybfsz8HzguT/l/RTj3vI9iuKWhe53TkM
	sxib0krbnk1RW5neI9UAjgNSyzksAhH0rpIaX48sPeXKPPN/MG4F9PjAvSZGFQrQX
X-Gm-Gg: ATEYQzy5LeP1oS0SQ5drfxE7R+v8UznT1dHgy5cyfTi/uNJ1aTUmpIZ4KWkhvv1BMxD
	gSdiwdSz48uQT0/QuygdWub8YBxU/xa9JbykLVzKHG62Uq3GRmFVX6831RWBLSs1xdPw/zpxG3Z
	PCJlXagPozgKG+RtwdlKphRuU7QdbSZPsdANeXv/3fpb1m+PZ5y6HbsmRvsqkaVQ6L+cjoOxtg9
	fPww7bwR6kFqiR/Z/4DbuORwjpuHYQjPvriQFA3ZIdjAH3rgQ77dDvqNjFC7n0kBTCfLWbJ2JDS
	nr/pdpuSmSYVUkKmofvLIi0ulwUZVss5sLc1It1hUo59f/I8BFFjFke4qc31ZM3Xtq2VqC3G2gL
	AUbdsx3yoSM+29VcmkAaHulnw1DIgoRd+hwCiRVMiQzd5pxa4IFN11EE75sKuGvKbJQI430o3ib
	cHmvrXF5cbHBqXmJhT+zO4by8pZVf+9TqCYNk=
X-Received: by 2002:a05:6102:26d4:b0:5ff:9d74:967b with SMTP id ada2fe7eead31-6020e510daamr1986721137.20.1773454201669;
        Fri, 13 Mar 2026 19:10:01 -0700 (PDT)
X-Received: by 2002:a05:6102:26d4:b0:5ff:9d74:967b with SMTP id ada2fe7eead31-6020e510daamr1986700137.20.1773454200768;
        Fri, 13 Mar 2026 19:10:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d6185csm18479301fa.3.2026.03.13.19.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:09:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
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
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Simon Zhu <xmzhu@lontium.corp-partner.google.com>
In-Reply-To: <20260303-lt8713sx-bridge-driver-v5-0-6cc2a855aafa@oss.qualcomm.com>
References: <20260303-lt8713sx-bridge-driver-v5-0-6cc2a855aafa@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/2] Add lontium lt8713sx bridge driver
Message-Id: <177345419701.98253.11507693763985665579.b4-ty@oss.qualcomm.com>
Date: Sat, 14 Mar 2026 04:09:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: HSWfqX6dx8-dLRuBz_Y9Ri79ics4EiS0
X-Proofpoint-ORIG-GUID: HSWfqX6dx8-dLRuBz_Y9Ri79ics4EiS0
X-Authority-Analysis: v=2.4 cv=auK/yCZV c=1 sm=1 tr=0 ts=69b4c37a cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=K0yhrkYJGLBofdj1EVwA:9
 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAxNCBTYWx0ZWRfX4sUORkT6D3gA
 H+fN4XDwYn3kueQ6HQEzMIdVUuADxhhF3u81V4y9SOW/0HwCls4qtaSgV/Rn6yvYREkrWbgRRfM
 Z6vzF+wL3e6hlp0Ih8POMI5p+pEOLN3LfdduK0eRVMkH3xvYfR39YLoz8El+NSAbHeLrqBKf1yH
 miwVKh1XyBe2KiZwIMSY+0Gmo1wm67yh+nncL85BoZ3qNJREG/Gwvaq0PCpzmyEHGK0WYCNZBTb
 QAz5X7vwLVLVWSQ3MMC44dXv7ezL0ue7AaRA4hQ41JcVaOG5nWj/9hyH8QocupBUNoPUpZSd7Tk
 KeClmsygtDIEPfJdwtiFCYMAa9vqoEF84PDzoALM2GzXiiKNxOVnFc4HCrSU/T0mvY3UVq0MKxw
 j9qP47b2yyneE4K/XnDno/PxOF/fNpmWol9x2Z4mD37UVUt6Mg3l3ganjVombQAJaWMv6kiG09a
 C8h6NeW3CAYejIn5esw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_05,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140014
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275603-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB57928B5AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 03 Mar 2026 22:13:34 +0530, Vishnu Saini wrote:
> The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
> with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
> audio output interface.
> 
> This series provides bridge driver and dt bindings for lt8713sx.
> The driver is required for firmware upgrade and enabling the bridge chip.
> 
> [...]

Applied to drm-misc-next, thanks!

[1/2] dt-bindings: bridge: lt8713sx: Add bindings
      commit: 130daea1cb6217fb9b9ad51453e0a06e8111b3b2
[2/2] drm/bridge: add support for lontium lt8713sx bridge driver
      commit: 4037c6adc1f99843b9076e7ced85db0f233e9eeb

Best regards,
-- 
With best wishes
Dmitry



