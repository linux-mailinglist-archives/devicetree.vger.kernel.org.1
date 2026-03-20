Return-Path: <devicetree+bounces-278219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eF5pFREovWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:57:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AFC2D927B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:57:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F05F300E485
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C7C396B90;
	Fri, 20 Mar 2026 10:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oW7jvAC2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hETgVUW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56530395DB5
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004228; cv=none; b=r8fSY0sLA9gp6N4Y6ShhmSHmTh5YRED8zxcWAtbvNXcV6708gKGUcd/5nlIQLuGRuaRsupfVPTPlCUm+Ii/zG6qraGj32s/9wpUnofah9ktToHuSEKYNaV7e4QPqnjvkuKeedVgKkQkmUuMJwOQlbVJgp5wloVJZTVTwCnFaQfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004228; c=relaxed/simple;
	bh=YN9GyhbRkWixxbnYiz6zS9TP+Z312EMl3wBVIxg9qIQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L0yYy3Ovu6b09MQjFrYafImATdE7yLopHnCUQnM/q3eusEtux3EmKB92cHEvWOh0L1uPK4Q2Fxbzeyfz7wNWBY0uPZkxPNP5glhOAKRkkR6aazIslPaPkl9EmZcncDi6tooGM6WFQchSPzyI9OBBvhRTLUYnnGGZkcj+0pWDaw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oW7jvAC2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hETgVUW+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2XrQ83557797
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K32Y/8A3gj+UozYohQfA5ARRCky+c9DYZu4RpkBY4lQ=; b=oW7jvAC2E8b4jhPD
	K4+G8yK8zqq9t+MDdzn/JNMGrozFzO6GVkkZfBzIENV8Q4NjM9mDPFmg1XSU2zJY
	LHSRLspwUy4Xo9unDcpWUuBKY++G0W4zPgcrE2frOJs61883i6ppkw2DQT7KIfve
	lWHUXRqRq0U5peut85NWL4tRV/AnXyMg1P/LaP66vXz+CKK860naaHFPdHxKMJHB
	ugg7N/DrkEA5J43eZ8AxWCjbPHURSRcnJ1zjpM25/agwEekPg+B78roSS7mL4tnM
	6BHPMC3jWHoW1Aw2SZB7NbuxWgfd+0woTfntNyZ7l6xxL7z1hWjxWQS2AJ1vE4JJ
	uxJN5w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0r1gswtq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:57:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b4031b86dso16792601cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774004225; x=1774609025; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K32Y/8A3gj+UozYohQfA5ARRCky+c9DYZu4RpkBY4lQ=;
        b=hETgVUW+tn+A7J/vbIx1PksJ4tr6cirgZHWTl/q6my7QMzeiNVRSH898xU72bUgYyI
         YN7Hh+FuVLin3moITKTy8ml+LoN0BKZd23zMMg1UtgaOLAMe5abvaqw3vL0kiubYFa6c
         QDieCJGK7E5kdK4vtzHFmdb/g+n5vW0zEHKbq9B0RDRnvUeKbwt7uZt5vpyvWF2J7SzR
         oN6pKP2lJaVGEtAk0kOXxCooVsL0zUC+vK30j8aS05oQ3Ranom0cv1keFmeJ4tDLbMri
         348l78hxA+14CrJ02xZsi1Qh4ygSZGWVgvjdGCo6BTkeWtRfC8W4R3XMvZNS00ZGUC4l
         JGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774004225; x=1774609025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K32Y/8A3gj+UozYohQfA5ARRCky+c9DYZu4RpkBY4lQ=;
        b=mHgHjSN06+PFs3bgAN4Qo1bF/tMNE/kvdVYkQPzur1utHtEJfAUPhllApM2nVnxxPq
         QN6QvYAYIbUo0AqtUhw4VqLU4MTsbeOMdxMETHSzD1dZK99wZiZCW5s4QJV8NgjnCQmU
         cwPuT1Mq5Et+KiM93yzkigDST1rPycQyRTPQKVcpvuytA262OTlHcu8415tr8N549nX0
         C/CZ2u6lXrDX6mR7k+LGttucoXWL2kuzSHNzbArszV6/2KMzzUtaMVBnVW+gl9Cp8gfr
         kI+dzL/nDbT6znxFThp5BaF4r4pgDhBjTmylEdkpP9R52P2lkG3C/PfK4aj7zjYZPMh3
         UOYA==
X-Forwarded-Encrypted: i=1; AJvYcCXE1L90laMR1fKpsyuUXu35jPwx3Y7c15KnEsV0zy2Rzt5asLCLbjL9tGhDdjWJ2ZiOTiKBeGuV4ApS@vger.kernel.org
X-Gm-Message-State: AOJu0YyfdThrHmfUJ+1SYlbnDBpdBxEIlf/EtXb8Vu46HDEJQjsexeEY
	/vRYEbuvtoGXJkaK0zjs2dHsKKsvD+VoM2w4kPjbvySp4//t6Kqy9x7rxMM7ksNCMSIvWz9fd+Q
	QZG6ntf7PooF3uZCQps4Qqo0m9vHYSaB7JMotCnco8lhK61GORIvlhwndVzTG07GQ
X-Gm-Gg: ATEYQzzBdBWCc0BCic2nTSqxDp0MqVN/rPrYvPQ2Jt6ek1JiKh/GlT7Wgv2f89l4mrO
	QVsdzEGRt4Qk5v78U8HeP31q00pfUyIhCZI77RlMlfjrfBbDhCfbnZd/qR1rIZ/kQdUafjeeo+q
	S/qH6sx3XpxoWmxYelmHXcHe3RsOue5G6WWkT5F0QVWwMwJqzaE8nsb9Kj4v/Uo9/IxEdF8XK3U
	0LtcWW00NLChyOJqf0/jrrMW72T4TK1ZnS45OWqfGrWNJejioxUvCXvRxWGmz9fY7x8I31cyvQI
	3mt8MbilI2VYvHWXKg0a0Ix+9d7rKJMLqoW8R7khPiQiR2ntZTD+IZF2clZdHj0fMN4VjMS11TB
	GRVyAhuk/GUbq4f6pXbJrCpik2wc=
X-Received: by 2002:a05:622a:11cc:b0:509:270c:88eb with SMTP id d75a77b69052e-50b3744c5cdmr37669071cf.25.1774004224340;
        Fri, 20 Mar 2026 03:57:04 -0700 (PDT)
X-Received: by 2002:a05:622a:11cc:b0:509:270c:88eb with SMTP id d75a77b69052e-50b3744c5cdmr37668791cf.25.1774004223745;
        Fri, 20 Mar 2026 03:57:03 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fc4d90f4sm103911555e9.1.2026.03.20.03.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:57:02 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 12:56:53 +0200
Subject: [PATCH v7 2/2] arm64: dts: qcom: glymur-crd: Enable USB support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-dts-qcom-glymur-add-usb-support-v7-2-ba367eda6010@oss.qualcomm.com>
References: <20260320-dts-qcom-glymur-add-usb-support-v7-0-ba367eda6010@oss.qualcomm.com>
In-Reply-To: <20260320-dts-qcom-glymur-add-usb-support-v7-0-ba367eda6010@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=5440;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=3fi+M2lPbqt/CTMON5Qvec9faOcNmPMY/nZYrvqfMoc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvSf3mYB7DhMyBkY0jvOdZUlp0/SRC4LDxKwla
 NRCeVibW4OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCab0n9wAKCRAbX0TJAJUV
 Vh0gEACZmKwH+tGVF01ugmZsVJvL444ns+gSoHDMvc2ZVffIINK2p7uf3kKc0IJuz5j+C3eE47S
 WKkj2oSXW+34TxsPuS7Pa+/+A4xCVNFZSezAAvvV0zO4axi9Kx7NzJyY7R1sBC+kZte4INMWVOT
 5Mu4Fg/hkHFzioqwmh/pZIXF/lAGUfPtnD5YwFRsPNtkZvKKT8+EvWTbAl9+4Ckct2Wo5N81j7F
 ByEzNMx2BGcKjjWii5XB8S/oVoIPEB7HG4mNJxxieKBgkkzx3FyUY2hCy4A/AOMrEttmiqBWuBh
 ztt9MmtfT/0fnyZhpQFN3EgJjyoJfG5GaVJrkW2JkuR0+wQ0THrHHZNVf3V9QXOGcWAFhztUqBN
 4ql6vFxRzBUJIrugZ5+MNd7f0oKTQ1BcVpDs58WaSZ0+tMP5PvhiScjjVzLehN/Hi29WybFaMtW
 vxQbl0X6mO1NIKwn7lzA3I/qAJxGyEk9Mh4bVrn+vDQNQGiq6182RHikkX8o50iMo6BQAHmLpis
 O09IfNndOT2gpEQ2QyUtvzzadxSAyUqXKov4VAMc30jcTZ0O4YqFtY4KRco1JPbzO0JxPbEwKEW
 l6az4p2lIncgEgtcCHHfDhKEWLfuk/Aez/y+X8GB3N6xecTalVfHOwjk/HEeRYoKNjmmGB+Wugi
 LePtmX1Sk780Iaw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDA4MyBTYWx0ZWRfXwnFfl+i+O0LI
 6z7y6tTS8rirbSsGYPa9N6ibWYUiHdU/+CGj2xndY3nus4I2ojGTLv3CGRsNP1OPX929SFkH33H
 JIoVQCLRfiZu9gDa2XcWkQhbxrjZpBb7azCt2Bp6l18jlkFGU3gyptNQMyhQNw3oxeK9dpR8uqO
 /nlgBvFF+KC1uFrlvVHX37dHypEoScrQWm66jphnKgaaWreQ8cwGj9XpKZSodSoHK1uKjLU6aPj
 YXw6a/8QVrrMzOdalKTnh/oMMVTyO6j7lnb6yam4WekqK/wqMIRByrv029qc6aYwb6UeEzUdLHB
 TWeVPFpSet2H7JmpY906atmiklhsv727s+yAAtx/oEp00SieRmVLjkvhAC5RmH+Icbv9Pwd8FDK
 mAEA+4k3Sutb8nFjqZ3NV9C5PUjvlriFlusX411u/uXoTaBakjT6ZV4HZCQrvnRzOm3h9ainaM+
 Ua0Ch7ovA3awLPSYqpw==
X-Proofpoint-GUID: 4Xlq_vbGLJ99NwVkuRa3RRcXe6Wj4E05
X-Proofpoint-ORIG-GUID: 4Xlq_vbGLJ99NwVkuRa3RRcXe6Wj4E05
X-Authority-Analysis: v=2.4 cv=Y/D1cxeN c=1 sm=1 tr=0 ts=69bd2801 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=UaQ5raezdk1POPUwhdYA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200083
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278219-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.47:email,0.0.0.43:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 86AFC2D927B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

The Qualcomm Glymur Compute Reference Device comes with two Type-C ports,
one USB Type-A port, and a fingerprint reader connected over USB. Each
Type-C port is connected to one USB combo PHY and one M31 eUSB2 PHY. The
Type-A port is connected to the USB multi-port controller through one M31
eUSB2 PHY and one USB3 UNI PHY. The fingerprint reader is connected to the
USB_2 controller.

All M31 eUSB2 PHYs have associated eUSB2-to-USB 2.0 repeaters, which are
either integrated in SMB2370 PMICs or provided by dedicated NXP PTN3222
devices.

Enable all required controllers, PHYs, and repeaters, while specifying
their supplies. Also describe the PMIC GLINK graph for the Type-C
connectors.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 214 ++++++++++++++++++++++++++++++++
 1 file changed, 214 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 0efd9e27c82f..4df8fc4ec254 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -11,4 +11,218 @@
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
+
+	pmic-glink {
+		compatible = "qcom,glymur-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_0_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_0_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		connector@1 {
+			compatible = "usb-c-connector";
+			reg = <1>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in1: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in1: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_out>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&i2c5 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	ptn3222_0: redriver@43 {
+		compatible = "nxp,ptn3222";
+		reg = <0x43>;
+
+		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+
+	ptn3222_1: redriver@47 {
+		compatible = "nxp,ptn3222";
+		reg = <0x47>;
+
+		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+};
+
+&smb2370_j_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
+&smb2370_k_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
+&usb_0 {
+	dr_mode = "host";
+
+	status = "okay";
+};
+
+&usb_0_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_0_hsphy {
+	vdd-supply = <&vreg_l3f_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&smb2370_j_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l3f_e0_0p72>;
+	refgen-supply = <&vreg_l2f_e0_0p82>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
+&usb_1 {
+	dr_mode = "host";
+
+	status = "okay";
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in1>;
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l3f_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&smb2370_k_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l1h_e0_0p89>;
+	refgen-supply = <&vreg_l2f_e0_0p82>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in1>;
+};
+
+&usb_hs {
+	status = "okay";
+};
+
+&usb_hs_phy {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_1>;
+
+	status = "okay";
+};
+
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp_hsphy0 {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_0>;
+
+	status = "okay";
+};
+
+&usb_mp_hsphy1 {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy0 {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
+	refgen-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy1 {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
+	refgen-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
 };

-- 
2.48.1


