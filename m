Return-Path: <devicetree+bounces-277036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J61KzhmumklWAIAu9opvQ
	(envelope-from <devicetree+bounces-277036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:45:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 363FE2B8559
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEF0830A52AF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E26386C0F;
	Wed, 18 Mar 2026 08:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqOuuOYl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SM8zfLDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAC43859E1
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823215; cv=none; b=gzjD6VwFewen6HwHGC7+wPAu8TuHEr+yfeEndSFJGN3d/TmETsE4YwlIvGTok9rKsptiqxGfEKX41s6noTCEighEEq8WsbpvJH4+oGjvSncRgTG1rM42y6PaBKds/IK+1JUu67LfOZgmqy9YmcQq4hcuX97CP168QxImet6/JcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823215; c=relaxed/simple;
	bh=cvQ1+7+KJ61hX2E7lBAYjSXTUx9Z/ZsV1ErUURaTUTc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tmvcZgx4/EgHT88ffyJGrJtBhMRPfmIYxKQX0/Rf79Pd92/hz/oiVFwuAbyzPHHQ7nR9Rk1ThZZOKvNmOkb96JV3QtqPx/pIGaXAY991Oc6SLqRR697QrPx9EoVuF/aUC1ckVgxh8vzcLMJPIdLrCe1Scr+zYBR7ATb6p8mqjtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqOuuOYl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SM8zfLDv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I76Y4d2612578
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5q1bC9AHIFFKDC0r+fX1bOoJjnFvzKsMSPYf+pQ1QMw=; b=iqOuuOYlY08CPI0E
	nzwAzHwgJI8bmyVhe1ev8buDnoyexZMwzpKsGaGPT8oxFIz9DVRco+qheS0lfGOi
	ZFFN1FoDom8k+n4tiXxbbXjJ7FNHpQURnxCd1dCW43M0fVeXBXV5mHraA4CzGfkk
	MTmM3chqrjm9MSSWyP4eixQ/d1QXJz39VT/6EvheRQ5Wdqyr+W4pvY/ydC/7QevS
	mX2LyBG7KY0Mo/DJDsJJKB+rU8y5SQVyqpnaLMf8Nz4n1q9o3M2APp3TRDHG97MP
	EqFiwGOe729xYJkLYKBFwykgx6TAHwCAhS88S48N/P+YGjSwvjvlBs28JOO4VLz9
	+xRirA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyqcdrd46-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82a6c70f1f8so558535b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773823212; x=1774428012; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5q1bC9AHIFFKDC0r+fX1bOoJjnFvzKsMSPYf+pQ1QMw=;
        b=SM8zfLDvYB55lOkdjqo47Gzagdmsj0X0UFzQwtNYlrXV6YspH+exuY/l1ZwEFwSBAL
         oUgMePntAWPRDnOF4YGoFVYR9pj0RHbR0v+2OcVaPUk3bA4+3Vjcrl1fTWBM6w6CdF+R
         vlVRMtySG+gkS2l2oPynigVLd1vAx8+YYWJRHFXy1voaq2Xk2Wt06F7yHetpzfy1Ilx9
         JGSB4tCrFkDaCa52+mh3Tl9v8upOsl/cqwh+/Dnvig6XJGbxSK24+dcds+tLnTOneCvD
         hj+zlrxaWcfJmKelo8KaGHw+rM6aQ0oUC3EwIVFt/mE2pUGo3k5dY/NFnrZ7cElI09nT
         76Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823212; x=1774428012;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5q1bC9AHIFFKDC0r+fX1bOoJjnFvzKsMSPYf+pQ1QMw=;
        b=BwLcZOiosoT3t8dDObCDZ2Bw0oq7NodMT2UjHdK12A9maa2LPf2cK1EO0Mj2d1Gl0/
         tDXnFVrDomDE9QfiQKUovR++02DuR3+7Ch2EEQaUJyulHNglRVel3bm2yMdu2N0MU2aT
         AvgqP7J3IHYRhmXhia3W4Qabp7aKmTxqbsoNqa/Ho9mUe/fUiGLxbl6ZMz8pHQmK5arK
         N+/D1qHRyyEe9Hwp6gbRjOwh8x0cwXm2DLo4OrWjwGq50xZNCW69smsNbV6ZJ65VQAG2
         2ioU50wxqkPKAggoq77F5ntSQyOZAtKVcoIu0G6lHrkgYggnX+dDYGQkt1XgTUgfWRIC
         TQcA==
X-Forwarded-Encrypted: i=1; AJvYcCVszjoKQa987kJJwCbaFnVlTm+ELQRLtb8DAmIk6m7icltvP+r6Q1DTU0xTLT97JufaDmTMHuNsH/eI@vger.kernel.org
X-Gm-Message-State: AOJu0YyPtQWMkQiQ9RrqfKsDGC8b5oS7wAVgORl/4kFkGDx+cf3P4dHl
	gyihftuGMV1PEiKcEugBrUrs4ogO9jMVNW1YlO2dDZFeObM472aOQilnHwKulZCQXjYZMwBUmlh
	voBeVE8HYJGRKGGc5/fDwLPJX56je+HShc6IcPC9athJEh2O7GXECFKJETHG3QB/3
X-Gm-Gg: ATEYQzztQwxodJuRMoLDURN8L0VzjmyyplIEM+GHt9MreENanuHRKytYTS9ECdh5k4h
	iX3OacZ8KM2vdJJ8H9yWl8ytICwvY/MY2UV/cdAs4tWqKIpflS7PkcZsGLlbqYDH0wwY56atdxa
	r+A80A+qgG9E8F1EtIkp4axwejvUj/aGzD7Zn7rkBzL4Fcbvi4cKQ+LzEMHWambd8ACb2hBdomW
	G/6qJFHHF/nzj4l7j88tjcNv9QEoPIHVuN9Vtd2wnTyFZINuy49fRFk9q4y5i848IrUckF8a5an
	32VvbWA7MHN+Bd2npWMCfZXNkZvfeMsTH5zizHNdp/Al+MVppxX1fQOjx9S98ys6/O1hnnf0AYu
	kK14xBPkuM3RXAQ2vdREQmZmgNS/LnN9fca8ypWRyadbIqznnY9ykmXCUpsQ/DKWhprc1Voh5nd
	wXGxkgmE1VB/3NKkZyeoY+SASJXZJU7ssLojbNykdiCWHwxzjONsnSZZ8s
X-Received: by 2002:a05:6a00:a216:b0:827:26e7:5c23 with SMTP id d2e1a72fcca58-82a6b260f7emr2323117b3a.59.1773823211874;
        Wed, 18 Mar 2026 01:40:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:a216:b0:827:26e7:5c23 with SMTP id d2e1a72fcca58-82a6b260f7emr2323083b3a.59.1773823211364;
        Wed, 18 Mar 2026 01:40:11 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bbb2802sm1863498b3a.31.2026.03.18.01.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:40:10 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 14:09:45 +0530
Subject: [PATCH v2 3/6] dt-bindings: qcom: add ipq5210 boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-ipq5210_boot_to_shell-v2-3-a87e27c37070@oss.qualcomm.com>
References: <20260318-ipq5210_boot_to_shell-v2-0-a87e27c37070@oss.qualcomm.com>
In-Reply-To: <20260318-ipq5210_boot_to_shell-v2-0-a87e27c37070@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773823188; l=949;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=cvQ1+7+KJ61hX2E7lBAYjSXTUx9Z/ZsV1ErUURaTUTc=;
 b=GQupGMUhdSmoRswbGDv/Usp5qjiQYBR2bY9062OSCHWmkCFsZCKKdCus3Lu1RBG9LweDS2FgT
 9+pB2wFzxRlDTipe1PlHgpEwLg4i3CA4SmXzSbReWC42m/xYIPzJNHv
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3MSBTYWx0ZWRfX1AHvmONy93d4
 PrYOXRpRJougd1GIDl/UAodT+YUJrjJzrwmJvQBfFAf3Or8+QuOdZ22CNGWcOkTJ50oLyZYFnOE
 MwR1Wl6P5UgJL7XaJqz6YZd3WNkFNryfGz+OhyoYR7WsTx61/JgC/55Zd5NTHgNTDyA835+/UZd
 JhmAcgOWKWKdGRxrXctxY2R/67Y8MnYtSkQP7IwdqTtt5fwng1YIOsBRG4jA37ofGO7fUlZ5mEO
 bBvaj08mB8Pzqves8dNRO7udecIoDqhu/p6O0CANSPUySw3gDDPIdX1jRgonk8IKSSl4KmJUmQz
 Kxqw6w3NwygqlkiN9QIXRcxpe6BZAXaUFi1NL/Rrro6WqTvvA8S+XZiJLCfu0YE1UpgldcsJ/O+
 Tzm/C7UHsvicSGScNPCTCq3rJekE1SOzFFEdVV37ZsV8oNeKA7cscLR8wCeIhYy/i2cWM6EJm5x
 G6c8X0zF5FFJkxUhG6Q==
X-Proofpoint-ORIG-GUID: QfOWmCIZ7-WhRijXMkBx4rFjphFwvNGU
X-Authority-Analysis: v=2.4 cv=H87WAuYi c=1 sm=1 tr=0 ts=69ba64ec cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=7cFofPlDN1olvp7CM7gA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: QfOWmCIZ7-WhRijXMkBx4rFjphFwvNGU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180071
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277036-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,pengutronix.de,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 363FE2B8559
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the new ipq5210 SoC/board device tree bindings.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d054a8f5632d853509b7cd37f07f02473cf6bf71..7a36da412ab82b425479fbf6d81293f24e66ea36 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -309,6 +309,11 @@ properties:
               - tplink,archer-ax55-v1
           - const: qcom,ipq5018
 
+      - items:
+          - enum:
+              - qcom,ipq5210-rdp504
+          - const: qcom,ipq5210
+
       - items:
           - enum:
               - qcom,ipq5332-ap-mi01.2

-- 
2.34.1


