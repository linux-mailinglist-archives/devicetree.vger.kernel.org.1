Return-Path: <devicetree+bounces-270652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDenJlMRp2k0cwAAu9opvQ
	(envelope-from <devicetree+bounces-270652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:50:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A941F41F8
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B85A730CB96C
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 16:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 184353264E0;
	Tue,  3 Mar 2026 16:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QlGiuM6L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VDiULR76"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A096D3264D8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 16:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556237; cv=none; b=MoMDuEpy4SEjfB+AeQbRInt40HwyvqkbgGchcHuX3uM//KqVxAtv8tRQuY0OW2xHCNQpz1oSi8TGJdJOrUovTTUdGfOOeqQupShfnVXJjY1x3ILKTQCQolXtemOEGCdApnwwlo5ft36uhYBmJqR6F1uo9Yce+zlNY29I4gInRsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556237; c=relaxed/simple;
	bh=0luLqj0bA9HqriWeMlInhLYgC8atn2e/7AMYtJLxTo0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uo5qT7qDzU6ageDt8PuWdVHR7b4O8nfIepz967puPvb/iKk3gxHdd1r42f8Dd2fb/k1OVe1gn1PxOzjL1KP9yGg1KxCydnveo8Ck1InWx3lSYlOeFhpj92Ei+oKp1tDAJILtJTwAOzeISjY+8SxME1ZUxJDhIIfD7BKe5Ve7ys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QlGiuM6L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VDiULR76; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mn182733127
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 16:43:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=UC/1X9LLLCNNOizpP5u5YF
	CEcHwOUMvz4FL7ouzur5I=; b=QlGiuM6LQnf+GbNnuPUg68tjQ4r7KxDpkgxieA
	nYHafuhTsCZvHaGidcnAyld8eiJg/e/uLGRHy8INOv3FGSm4qmgZTJxalvYXT4JI
	7KVRNTW77Q1NjMF3vbSk5OYeG7S7TcWrQ6Pd76n1MjR66997m6NAmkC+YAUFyt1U
	B0G2qlUR0PXk+pDlLBZtfwHHGyYcfQPQ8I/s8PpWL0/Wts0aRloB7TDtfCaRC3SX
	CpS00Bx1rSLNKVKu31HI8jo7znPKv0VXQCn1SMJiM/rQS4GP8ozcGOIoonZog50F
	8LDcUhFhRY9UVDKuqoFtvYWhGCBRPPU/rYySLs+JNUbAhU4A==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnswe231e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:43:54 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-127124fefe8so571320c88.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772556234; x=1773161034; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UC/1X9LLLCNNOizpP5u5YFCEcHwOUMvz4FL7ouzur5I=;
        b=VDiULR76P1szaYhpgeUTkBI7VzB8/TfDdgvtArBCyLkyZIbxmsyHBKP8NrLKTXW13T
         AyED9Wf+benxRVagRNJssBob0ka9QS/lKU6vip5x2/d42Ml0Y1ptEAQxSyf16I3Uq01m
         WxBy+a1p/9IyFgLUXp0hDx/txZEU0uzM1fW3T6fEqKCDQ1hPKhJavauJXiAsRqmteGnQ
         /5ZL41Sd0ujngBGxie61ETuM+jAU1p+MH3XOE4ixJzUn/eR0/qS1gpori+ZfllCHJ1T3
         y7aV5u2qTk328EFcGFe7qcLiQSTBy0yYlgQdj1rSwIUU5yGjzdKcUJ5ocsf0tKZs/ZBD
         XfDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772556234; x=1773161034;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UC/1X9LLLCNNOizpP5u5YFCEcHwOUMvz4FL7ouzur5I=;
        b=ndtXQUjs2a6ahAOXie51EeyL+IEtSQlue/D8ybxn/60w0NrtpuBqWNG1lPbPi/CdNv
         3B0TAZsId3PnCB4ASvnRHlErSUCq48RaofrIwyNRGWLOKF7KqqFh0mOVwX6yPM0Xi6nR
         Vgn+Pw1asnKO+tFZM+ugyNUYZKlEStrudyaUMg7xSI7trHN+hqSh2K9HKK75j/9IPx38
         O/MuSzqXffhTWz0eamPcL5y/81cBIT0u6aB0Ust/CnH4MN3wX9fZRLasKLBuWJX5hEeC
         tgvQ6gpfmGlBA6Hmb82dBP/OfIMchwExO8YrtGC5NVJl9JMJRNROnBxsUxpYMftPn1r6
         uejA==
X-Forwarded-Encrypted: i=1; AJvYcCUbV8zGoqZa//6WEJ1WIWcvMLxw0qmz/zfNV+9Ol6K6LnTNTxlH2bPdzlukmuWgjwVKJRYNQbJAMVVp@vger.kernel.org
X-Gm-Message-State: AOJu0YzxVAV7t0sbRj6bq/wX7UWDU65I0F8BB3SOwXGnB0szRAcJwldW
	+Uwv4EoP+C6iRSabJxJ9kHP1/47PMjeKldyjUKSLpZcPySHwTuf4zosMYTYAyBVq2z0T8+bNFGt
	EacZ6Nz4dUo8E8nA4YLFtKbQyKwhAZiMnesfVJbDDPubrDcZX1hJmxQLTMutPfwpc
X-Gm-Gg: ATEYQzxXLU2ggPQkclv0Zd3Rpsj0u2l90DVZo0OdfrRdN1sANjIHXLGsmQf4tQSUUXE
	9OUeqQFBmS5V2RsddDi8LIPFk9rZzMTd3Yl89dFOtO3MNEgY+V1QX3q9equx1x6NSVO7wX5Pxv/
	dVqvqyhxOMe156lagbjS/OPh/7NJqAPCbxlL0dAx+91sagp3Ua7DXly4/avxLZb+DLxCjNjWCsb
	ZOLaps/2GGUwSy6OFo2NQiVOplevqjbcxSOwztzrhOOfhHmfHi7h1ixB1sGZSAPKUdxhNdu4lX7
	+HD+8fK0zVvt6gdox/Q5xYaZIRtf3uZGVcqLFMLLqIdmJBrxQVgXZ2uUYqfKN6P2gj9A4H8MoNT
	XpvbvyYY5KFo2WAFfy52IZI30oyUQTtjAYaH0+i7nR6+BlYt1vIzGfPz8kPsMUMDgLMxdr0FGsq
	jZihinWJ9b6vj+ClSfepLJ5rWcN3RXqHMSeAO3rNrFmA==
X-Received: by 2002:a05:7301:2b84:b0:2ba:7d5a:a816 with SMTP id 5a478bee46e88-2bde1cf86d3mr2957383eec.4.1772556234082;
        Tue, 03 Mar 2026 08:43:54 -0800 (PST)
X-Received: by 2002:a05:7301:2b84:b0:2ba:7d5a:a816 with SMTP id 5a478bee46e88-2bde1cf86d3mr2957365eec.4.1772556233308;
        Tue, 03 Mar 2026 08:43:53 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be002ee839sm8823286eec.8.2026.03.03.08.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 08:43:52 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH v5 0/2] Add lontium lt8713sx bridge driver
Date: Tue, 03 Mar 2026 22:13:34 +0530
Message-Id: <20260303-lt8713sx-bridge-driver-v5-0-6cc2a855aafa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALYPp2kC/4XPzYoCMQwH8FeRnrfSpM1Mx9O+h3jo16wFddxWi
 yLz7tsRFj1s2Uvgn5BfyIPlkGLIbLN6sBRKzHE61UAfK+b25vQVePQ1MxRIAED8cNE9yHzjNkV
 fxz7FEhKX2AuliKwbDKvL5xTGeHvC213N+5gvU7o/7xRYuv+SBbjg1pMBB66XwnxOOa+/r+bgp
 uNxXQtb5ILvmm5qWDUk49WAWhiAhiZfGmJbk1UboBtGG0YRyDY09at1AlE1NbV8Sp2QIynSXv+
 hzfP8A9QJ2witAQAA
X-Change-ID: 20251115-lt8713sx-bridge-driver-32704455bc9a
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
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Simon Zhu <xmzhu@lontium.corp-partner.google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772556225; l=2252;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=0luLqj0bA9HqriWeMlInhLYgC8atn2e/7AMYtJLxTo0=;
 b=A+VBgVZVipLftaWUhKTWxZyB/s94eLe9qv+M+zYLKr4mnWoC9/yDpNa4hnvdWT94LICh+Vr/7
 g1mC+O1NbWeDFmjUkFonV5AoZVsDvTtFmJKNUKRo+d7w3bsQX/b0IpF
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-ORIG-GUID: NWtHC9P2Nrq7wr89Wx-tFsjr8nHl0q3a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEzMyBTYWx0ZWRfXyxDpg6LOmF/O
 rp2ckZiF+9BT8DAoICzsEWtDRPNH/IcjI+4YQmtk9m3SyIUpbEvauaSSizKXD5arFkSOAd9iQa+
 Qm57HMoGE2Jmb+rzT8nIGQjgzRazV9jmJW3oWb+kCp2L9Uxo7EY4fiQgGPNCeJpDxeL0km59XYB
 7LL26yoYBAoYJEJplPI9YN30gFAoJd+wZNp50XhcRLjJmfx/hfPrRSUfC0vjDh1otcvkgHRTOmf
 xRB4VlNIAyYLDelgtzS8PS+sIh/jW4JSV8/YTVwBrayrGaFtvOPbkctbwQrWVQE2fnFQ0V3vOby
 mOYQ/3iS9N/XmHx7+6trJ+5yVdgh1XDFBmaey3DIU0ekrwrUIeCEMQqRr0MVeRSA4V4PBQt1P7Q
 jK4xGpk4Z8pj+NQiQDAtQXDJoO48Xplei4lqIQHqmGjn0QBtHSGrFRI0SS3WrnOMvePX37e2+ll
 xFk/FzLnkP2zuMg4lqw==
X-Authority-Analysis: v=2.4 cv=TtHrRTXh c=1 sm=1 tr=0 ts=69a70fca cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QNFiEYH7FFPh0Mko9SYA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: NWtHC9P2Nrq7wr89Wx-tFsjr8nHl0q3a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030133
X-Rspamd-Queue-Id: 47A941F41F8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270652-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,checkpatch.pl:url];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
audio output interface.

This series provides bridge driver and dt bindings for lt8713sx.
The driver is required for firmware upgrade and enabling the bridge chip.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Changes in v5:
- Commit msg changed a bit
- Added Author Maintainer after confirmation from Lontium
- Link to v4: https://lore.kernel.org/r/20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com

Changes in v4:
- Improved crc calculation, calculated on padded buffer instead of bit
  by bit.
- Fixed brm bridge chain, using single drm_bridge as bridge chip itself will
  take care of providing all edp outputs from single input.
- Used guard mutex where needed.
- Link to v3: https://lore.kernel.org/r/20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com

Changes in v3:
- Used linux/sizes.h header for size definations.
- Used linux/crc8.h for CRC calculation
- Added Basic drm_bridge changes to support corresponding ports handeling in dt
- Ran coccinelle, smatch and sparse checkpatch.pl tools to improve code quality.
- Link to v2: https://lore.kernel.org/r/20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com

Changes in v2:
- Addressed review comments from V1, majorly:
- Fixed DCO chain.
- Added supply in bindings.
- Handeled deferred probe in lt8713sx driver probe.
- Link to v1: https://lore.kernel.org/r/20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com

---
Vishnu Saini (2):
      dt-bindings: bridge: lt8713sx: Add bindings
      drm/bridge: add support for lontium lt8713sx bridge driver

 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 ++++
 drivers/gpu/drm/bridge/Kconfig                     |  10 +
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c          | 598 +++++++++++++++++++++
 4 files changed, 722 insertions(+)
---
base-commit: de0d6e19d2ef33ba34be2467ffdf3595da5f5326
change-id: 20251115-lt8713sx-bridge-driver-32704455bc9a

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


