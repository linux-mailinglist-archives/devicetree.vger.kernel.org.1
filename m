Return-Path: <devicetree+bounces-274693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFpkFCHksmkcQwAAu9opvQ
	(envelope-from <devicetree+bounces-274693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:04:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A49D8275257
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A2F03240BB4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2603F7872;
	Thu, 12 Mar 2026 15:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hqu2glHY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KFRlib9f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D913F65F2
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331016; cv=none; b=Ohl4RN//yp9VNSRS04Bz+n7PduUJg9cdNyk+Dun8fggkMslyJ2tSoW/9JCLx96Ksqs9ls0iG44V2Ee4SnriPtxhdxIip1GyZbClQ5QErNACSH4T6zOw4u2gdXBd2uraDWCsI8obpVSnahNPO5xtjPpbRMA/jjLY/qOTe3irCzVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331016; c=relaxed/simple;
	bh=QOSYTgCaUcMKAsSL/8j8RieU+DwqZrAkCE8Aj7ml/hE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ekpjd200cgVAhVrpaXN+kj71KOsMZ15+lCK6uXi3PUSpU+hi2Xwf0WsAxBRBPjJ8VHKnf+nZOxZn4tGWsF6z04xFGRxH6cbWKnxW1S57u7i+TIhD0n/Rrn6fa8gYR5RQN56nrcT9Fy7o6fSH/Ckgw7lYYihmTQx6S/nwV7SqgjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hqu2glHY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KFRlib9f; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C8wP3Y4025952
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	532KCWBD+lQ65ANLZbE3X+kGTv2qa2uYgZCfupjZ2zw=; b=hqu2glHYf04RA5mr
	U2UFJH2xE7nnBbfTW7K0ICNYAoA8Md9uiqmD3lblHVF/pcQMOnD5WSktesmZ30VM
	r5abLt9fD+zkiFE84llwfB4I99egRJx22Bov48iPvbklKfrqGQ7xUgHeQUkQD1Eo
	Lq2Z/C/kizbGYbsLaLJ3F0iNNbGAWHjIMAtUHYrZRGzznpUa/ryZC5kffalkbJxr
	QQ2NCg+LnOAeljixDXmBXV4z9J25cS/OGOTtZ4amDC8iSD621Yv9Wu1cQJo6NCju
	V6dblkN/QjzeyLwCU6gK4LG0S6/UvZDlhzuJ9m3r/jyYQ4Jdvcy+oifgNx1tvas7
	b1YZnw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh50tn09-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:54 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b62da7602a0so923957a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331013; x=1773935813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=532KCWBD+lQ65ANLZbE3X+kGTv2qa2uYgZCfupjZ2zw=;
        b=KFRlib9fQ839BdVh8rVwqvU+4zN9Ku37db0F9Oq7VVpEnJIidgSJI8eq5HRCduCN82
         +vO2l43045lR7CagZSKQaLBS4U3CSi9X/mDUoWiyfPNv3JVSH+YgBUUA/TnacraHlMGu
         D8wqrvJOQahZbI23/cCIhoJ9oppKcTY7BO1FLiKPxMZjR2JWdD+WnmKvOEpBUeyhmnXO
         wrcRfwexbcTcSww4d/d6QQiPn/NMMZ42UAaCsa14h7aAd/PDwmy2fuFqmv8hT6rDGLvw
         XNZxI6MAKdndrz0QCMuLOZ8Ribv7PoWWyw1OIv+NxpglXhmQP2FD3WEinPvuHShUgWwS
         DUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331013; x=1773935813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=532KCWBD+lQ65ANLZbE3X+kGTv2qa2uYgZCfupjZ2zw=;
        b=NT1vLiPgoZNWQYd+IGUUe9K7JE6AYR+jxbdXDmoWTX/CT4zhB3Dhjj3gIx8GJjaMOV
         T/vfOOH5fuoO0oR4oeQw4+CL0Na2ADA4bih2WGdQQKWZRGuWLkEP13wKutV8QqhQDOKs
         oABoVtC8WrUPq9RgHMiNR5ihSUefizxvI637LSrBFJYZs52NBQgwDmwB1iGc7TfnzZzQ
         HLBn0w6yNh22bHkP//mz4jfovsfAXfyVWUHfekliqtzkb5Pq6JMu5SZDTXzcEoLR2dXl
         T/TUXTFAJO1CmmkfAAfZKurN9bSA9q7b8nFDniWAc24tC+u9VEEi9Nk71oVUmDYRTOgO
         FZeQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6Eg8VImhI0/0sLf5p5Ndjgs725NhMGnWtbitUzPOYLegMzkJ23SlbgXnqDSdqSESqaCbxsmfl8fYa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz44ogxjSjD4wS2Tc7z5MIGXMEZE+9FJmfqfwlKlC9K3HiJAsEv
	kRf9aSLEtfmxY9OIVhJjhD7Pt8fbqvV1h2c/3Ir429oJQ7hBeggqkh+brSHk9vrzUg72N0k8KRK
	iOnXxqNO9BMePkBEsLtDO4U1bjzWtMp/yDZ1PM+vH8pcFA211RFMH1GEz9Mnaq8tN2mh17QKN
X-Gm-Gg: ATEYQzysMAopQH3XgHZ2R8PpgKkpNZYUZu5Afyr3h7CtMfGNcPSMiyqjVTGHl0BWQHZ
	N3jj03w0qzAQp/av0r9sLzkmFAbYPZN1hz5abri3WuoEEjLgDgsXUvo0zq5nQdE5ISf22fdNX8Z
	Y09iO+Jc5G/w7/6ruYtXgaYCPzoIaVtKqUmU3VBfUBHXANOPCrlfKSJAFgPDYQjI1MTCGRSOt57
	T5oq+QKHxuqwbj2vK+i8/L7z+QSZz1zlPIS9kK5DYETAVqJ6oCB0VPF2gOK8tlADrPvvHGLjQ0G
	0bWoXSH49ISlOcpkiadtg4oKBpSBJuRadkAyseBWmCLOmFrVAxlsTLD4YALpboYvikmyiiH7pU8
	UoOc7p618HkS7t83ZDC1Y+0CsGHPt6CJ5lCFw0HsFfWVvC683IA==
X-Received: by 2002:a05:6a20:7345:b0:398:8dbb:d2b with SMTP id adf61e73a8af0-398c613774emr6285890637.58.1773331013188;
        Thu, 12 Mar 2026 08:56:53 -0700 (PDT)
X-Received: by 2002:a05:6a20:7345:b0:398:8dbb:d2b with SMTP id adf61e73a8af0-398c613774emr6285859637.58.1773331012653;
        Thu, 12 Mar 2026 08:56:52 -0700 (PDT)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf254acsm6067852a12.11.2026.03.12.08.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:56:52 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 21:26:36 +0530
Subject: [PATCH 2/5] dt-bindings: interrupt-controller: qcom,pdc: Document
 reg and QMP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-hamoa_pdc-v1-2-760c8593ce50@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
In-Reply-To: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773331000; l=1350;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=QOSYTgCaUcMKAsSL/8j8RieU+DwqZrAkCE8Aj7ml/hE=;
 b=vpMHwGtb+th0Tp8dNLcy9+dpWI7h4sgUaLhyFiP3eXoPG1Bjk/hZpF6GwjeiB8dNOXp8PpvYI
 Psv4dPIRU4NCujY4h8JilSKBMXyf9TNk+hbWBS4VdI3i3b4sbvZklYa
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-GUID: I7WfN3Qo4xBlIZA243ras0aNN32WTW2c
X-Authority-Analysis: v=2.4 cv=LvKfC3dc c=1 sm=1 tr=0 ts=69b2e246 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=w7jjODl3O23ZzICBv2cA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: I7WfN3Qo4xBlIZA243ras0aNN32WTW2c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyOCBTYWx0ZWRfX/M2uTZuUlyIN
 ZzzNsSFJ0tNC1Bj5zmpSMX4hOkLkAsssEIhZsDNjy8AS58ZkgkF+w/YkuGxdQAKNfO/yX+m6tNd
 EOXbojHtHcM/eQ1Gwod74MeFVJ7FhVP9Olrt95vNI68xq3y4vWFD18ArQciNbZNbNsai86d3pKw
 qPKKRdvMvXGm/H2j0l9Df1eORDaUZvBLBOrvgNsXPax4fTDwK2t+aYkTNkHDouiHJmBuHNXNHq4
 KqT1vSBAd4Y539o6ifzLVhsR5nNGQUIwM6dbH7Xax8xEOUDTmAKe1tqaRfpH7fRmx9hG2PlzHeh
 aXSt4zKD9qdmch6RTJkm+5WkrlvQbG53i083Pu+pd1Y3SACpsg6RoouH5wmbJSDEiH7I3mPsCnl
 JupGuxu8fInQrK28/BGT2oJDC8ekBcUl9Fhnd8o7z3dDL25mfrhZc1yQbc5PH39gdxJsZZjT4SO
 CpHWY30n3o3v/nGUcsg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120128
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274693-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A49D8275257
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document PDC reg to configure pass through or secondary controller mode
for GPIO IRQs.
Document QMP handle for action concerning global resources.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index 5ad68b2c6fc630fb4044c7224e6791d3bf4c2937..00eb9b28170c29c811c17b1f02f1f4f14779752f 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -62,6 +62,7 @@ properties:
     items:
       - description: PDC base register region
       - description: Edge or Level config register for SPI interrupts
+      - description: PDC config for pass through or secondary IRQ mode for GPIOs
 
   '#interrupt-cells':
     const: 2
@@ -82,6 +83,10 @@ properties:
       The tuples indicates the valid mapping of valid PDC ports
       and their hwirq mapping.
 
+  qcom,qmp:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the AOSS side-channel message RAM.
+
 required:
   - compatible
   - reg

-- 
2.34.1


