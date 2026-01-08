Return-Path: <devicetree+bounces-252821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B67D02D78
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 354B43052F7C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73A0247ECDF;
	Thu,  8 Jan 2026 12:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GZ41UKhT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h0tyttoB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594EF47DFBA
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876739; cv=none; b=mqU9AW7IeKKpRlFY9om/90NUGHjdve7r/1PxDh+uVildWomZMgWgxVrqqaSBOQBq7m+QMTQZ18/fQlhBUcy+tDP0q3M/JZQqWj2IEWt8TrF70fu2yAT0FPu7R3Uu5RgMP7K9WiE1oY2UIHQEbpBCUOGWnqdVOZFY8Dochf1JZhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876739; c=relaxed/simple;
	bh=jLmFH+cwbuNfENRFtA+4MMVYqROr3VN/PhNwAuOLUF0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qJmYWx4hap46c8oy7ILIakYweXXavPbwTrsAYZBJZjD9Xl3KLV4DYVWAiL4ChZdmBQG7mslQ9E9EOz5SRzfBOJCv653P78IKusG9eEyBvkT3L1425G6tLs0LLeJ7P8lGhnnOifBr53zP8/fRzS5MGW+qCSjzQjJLsuHuofYU/EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GZ41UKhT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h0tyttoB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608B2lNs1970090
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 12:52:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/yf1Ue7amp8
	9AOLm+XQspD5ZX2yuMeb8ho7pJFXOCxY=; b=GZ41UKhTfLAGZ2utKjKSDThnrh5
	GHe3S7+SfGE+2bZzJFqS509jN3uTF548lOnHYonMS12A2Kr3gAhh7MZZVAkVHaX3
	/f6i8IusG0Ec7i76W/YnCcCf+rPM3XHgx+0vRwgmFO7o46xF6od2Kh8vnRREDs9B
	z2BxpEe/nCa82RcAIp2HzdQBTEuA0xKaT9x6icQ6UsPlde3izATtgWq96jpnpO1+
	UITlxEZF+LIYaxeGf81HCCcmr+pGWW36ClMJA2QKIxA6wCXJro1YTETDm89Bp6AO
	hEfGu0Bvk/DrnTPJJS2YEtbXKx8QsSRWRoydYeLI+Cs0incD81l08O00wiQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjbc4r9h2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 12:52:16 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c52d31fe88fso795003a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767876736; x=1768481536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/yf1Ue7amp89AOLm+XQspD5ZX2yuMeb8ho7pJFXOCxY=;
        b=h0tyttoB/4jqRMmZcYAztuPEQ78JcIUiV+gWMkYvDtpQVWjlcnju9cbIUoE7h7cBgD
         iby4AbNG+hJzswv1BbiAMfENScTV7jRwBn4X4uJmxhinHSAlQwpf8O8sK76unA/9eJsC
         wZvIE0VuUHoeHjqWI8P7/NXI+NSVpCjXLFEaelbyD6mnFzZy5MA5t9EZyc+8Tws2V6qp
         OBC6rDidDuLMxLWgudW2sirp406VYqVWPEnAaOAYAIhjeeVG/Cg2GttltZ071i95J4a0
         c6EZX3pHDd78ZVFbDWOhElC3r5J/m4ykOdwDZJW9Aks3K903f+b4rLYPdB9mwtvpQ2VO
         xlXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767876736; x=1768481536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/yf1Ue7amp89AOLm+XQspD5ZX2yuMeb8ho7pJFXOCxY=;
        b=poTIxqGTu5TgrjL9SoU+mOZLLZqQuZEKaHNBWUweEsf/jc+Dg9JbJ6SWG/LyV/CilQ
         ZnFfYt8Ral44wbQH5vTUeCaUphOw4NVphOM1Ubv0sdFW4eHSt8T99XsS+WoEwRPmqNEX
         43+iFnPQYLxq5GD743mAIEyRRbBrpEMx4Br2bMIJqUic6qhC3tYhZN+YPjz8aXCzOcl3
         EAahBs/mN3+Neg+cARJgfzqtY10GxIjS3E7N0p6rz+2AgPkfCFXxwvC/HkX7ZDwwSgPF
         9/jcl9qBCdUWcu/nXhSOv9gFiKq+WFFY2jE4hqjKcJXk932V6ftJWhb63miNWc4D1v36
         2Ndg==
X-Forwarded-Encrypted: i=1; AJvYcCXz+Ff+DwMRHtpUz2cm+AWmZSiSiK4CEjqMfba/8VxyZE0vilALWYhApYEsMbLI9TG3tTxe+cywndmh@vger.kernel.org
X-Gm-Message-State: AOJu0YycigjIMGpFOmR2qrguN9ez5b/9o4YlaUIkiR+MC0HJ7zGQvgZj
	ExkDoYDRnWMV3KF6ybArYIPLRpeQvMzb5fDfqCeTuVqvMCbfz7esUYepRCXvf7Weqg+KrHdqJ7L
	D2yCjvC+5RTxF/jkMyT3HAoCOaSZ2G/pt+APLl+6JqXu7FN/DlyiLAjc1KYgGHPT0
X-Gm-Gg: AY/fxX6etYKHo0qI8p9Y99PmFNCOZNvgGzDMOOCXnfAQipXUA3OSYDMCLMyDABjjLAl
	c7+vfXo3+R1gH6Arb7SGP2ortgI1sPvY4KJjZcWbnPsuMenhHMNQwzrtG61dAXgc7Cydo6x36PU
	9dzFWbzQKUUcNDVoOyzEfttCKTx0H3Wkt0urH16A1XqaeZtXU+SOUaolwGHj/FjPCxxc3kCAdWH
	ClxGevBgHDLbyHpI5Uh+WoaCsTtiR7JrH0/m3Yr8AzfJL8viF/i+W6GkxQhPRdQp5309QjR7yBw
	yqOMhdFXqqVYLq0nzw9JlsuLf01xcI08OP2Nbe0nOlvBAbia+G0VOiRIJntG3GNX/BY9i0O3Vve
	R6Om0Ml5kmSqFw+mZ/xXJa0WaYOuuhJ3wSG/jfDtDp0TAiw==
X-Received: by 2002:a17:902:d541:b0:295:a1a5:baf7 with SMTP id d9443c01a7336-2a3ee4c0e9dmr61508215ad.37.1767876735878;
        Thu, 08 Jan 2026 04:52:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG53g2osNOh+cy+7lSdXr7lutMU++eGlQD4ELNCeQpgL6083Zu9k/e5sJKKScvFL3iCNb90qw==
X-Received: by 2002:a17:902:d541:b0:295:a1a5:baf7 with SMTP id d9443c01a7336-2a3ee4c0e9dmr61507915ad.37.1767876735439;
        Thu, 08 Jan 2026 04:52:15 -0800 (PST)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81dab89f2a5sm253302b3a.56.2026.01.08.04.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:52:15 -0800 (PST)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v1 1/2] dt-bindings: can: microchip,mcp251xfd: allow gpio-hog child nodes
Date: Thu,  8 Jan 2026 18:21:59 +0530
Message-Id: <20260108125200.2803112-2-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: VKhYlvqs4pmvKVtcYB_C5-PpuaU8rwyc
X-Proofpoint-GUID: VKhYlvqs4pmvKVtcYB_C5-PpuaU8rwyc
X-Authority-Analysis: v=2.4 cv=fdegCkQF c=1 sm=1 tr=0 ts=695fa880 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=5Uki56Dm3_jOTjpcuNwA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5MSBTYWx0ZWRfXybMjt1FjNdoq
 uPAgwu+WwMyvnobdlH6tgwDHYnYo6DL3Vmh7gd5/P57Z8EyBvpFQjG7IAj6DrmFfDJtdm4WvH3W
 IREpZP1I/jZtQpo76s1RoPsuQHgc2X+xBtzoR7aSP93wUOF4GF4f2yjCEpby29/14aNAGAYefCj
 2QitLUFLuFrHO68pw1eMBEu/7YIVXGUf8bZJMGixVLfXL2j6k4YsRFdW3BYqAV4N/1AfNbxSGbh
 RuKDF+6xfARLn4SacGQgm9OumTQAW+lytrbbWXEdmkJRLfsMSNSACE3yn/nUtULVPmYOG1TLiF8
 7HeV1s5aDJJRyqkvKj7jdShR5qwFK4GWQnLNAkoT3DyXjFcCzZHFOOP5/6btCd76Y18Def4UWRh
 ss7Tpd1q7QRAoNky8/570NtXnZkMbPLSA4ORIBsl6rSwafGS+nVc/jHHlNjR9gO0RlEHPCUHARZ
 dmh5NtWtHEnDyJ8HinA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080091

The MCP251XFD can expose two pins as GPIOs. The binding already declares
gpio-controller and #gpio-cells for the device. Whitelist GPIO hog child
nodes using patternProperties so boards can set default GPIO states at
boot via DT, consistent with other GPIO controllers
(e.g. microchip,mpfs-gpio).

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 .../devicetree/bindings/net/can/microchip,mcp251xfd.yaml    | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.=
yaml b/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
index 2d13638ebc6a..49d6f6bbe193 100644
--- a/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
@@ -54,6 +54,12 @@ properties:
   "#gpio-cells":
     const: 2
=20
+patternProperties:
+  "^.+-hog(-[0-9]+)?$":
+    type: object
+    required:
+      - gpio-hog
+
 required:
   - compatible
   - reg
--=20
2.34.1


