Return-Path: <devicetree+bounces-268593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIKrEgXdn2nEeQQAu9opvQ
	(envelope-from <devicetree+bounces-268593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:41:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4084C1A1152
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB766306DDA5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAAEE38B7A3;
	Thu, 26 Feb 2026 05:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SgJMvpR+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SfnYZOCf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30372765ED
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772084479; cv=none; b=hw40PSSONTkNgGFwZ10n88WGPa7yZ/KJ3JiOANcEaLDZDxt/2p+JoxOogEqUBqHwfjzu+r2xLHhKWWLiZPAwRuW2fIb4O1jIy5nJjEZ/COZaVejsZJcn2WeuqRfsYETlJkHenxzoBLtArtSO4klHxqaW1HMfy1OiYF+OOpT8IRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772084479; c=relaxed/simple;
	bh=+xoluHXuR+D/fG+xPGV4oks6EJCgYvXrLylqcr0WyiM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QB9whveBnIoucD6+I4hVskayy7T7CmOtX6n9s6OGUr9y3sLmPyYedPmNLY1+Wtdkx9O5fG6KeHzgLjOSp16J3hWput3cBwRaAkrYsoepZRju66aQkWX6fYS/NixX2HdZ99Ox2XqobYguDGE67m9OC1u1YuIn2hghUdQZf+5s9Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SgJMvpR+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SfnYZOCf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4V8hw918929
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:41:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=qau/tG4eqp9KBsHooQy+rhqtyNgLVQeHb6z
	b03iKaJc=; b=SgJMvpR+UZknoXez/8cvm3CsSLiDDGCTPjrybbYC8WZLu8ALN5E
	PwDeEVecrKyo0nBQMwOau4+ks7JgTyezliBJgY6UfCl8ltAdD12ml5cpJE3CYU+K
	V9sZSGhuDEh1Mq8Ehx6HS+tjeRLRTlnWQ42RI0CkAvsJtfvQPGkIMaEEtzVQDUvQ
	mAY3KsYp16kawtUVGkuBga9V4WNv2q088N2zG/GR1TxlA5liiVIenHd+yzAozd+M
	+i0hi4pn4Ths8YCfcpyHxrNRJaAQ67dyZFFWZMhsTcqhJ1DLoaaHnw4dYPMVZ9tp
	OdEWIwN3rc7bgmjyPr1p+S0o7ZORGg9ohYQ==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj4w4t0cj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:41:17 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-45f0b597f04so7233901b6e.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 21:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772084476; x=1772689276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qau/tG4eqp9KBsHooQy+rhqtyNgLVQeHb6zb03iKaJc=;
        b=SfnYZOCfXLhEM4qsQX3pAI6uZg6p7AyWaZImiBZLLwI6iSwDqVF0EY5NdGkXGZvCMD
         4iq5Y0rRLPTXoG8+F8J6DU1LzmcZ66hMn31mFOBl4fYK9XwWqQy+fgeldeQ9qx7kWEGA
         rZTph6tBdex/32qW3T9SGGKzz7mTZtbHwexJUzUk+R3Our7PDa9nYgc4XfUo5stcVUsI
         j58kaTFhaBwGuFRh3ClXcuSN2zM1dPy0YfZmH2gjk3wJuPpjumTus2XevFJNH4IKj5yS
         uFGkxh/URcriQKgnzhAZJVSs72m2fNTs30+YYzvFxB/rr1b2q5xjoCo0eTG7LNi5Aoag
         2fMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772084476; x=1772689276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qau/tG4eqp9KBsHooQy+rhqtyNgLVQeHb6zb03iKaJc=;
        b=TgKBEWzGJvbFEwU6WfhbOpAdiQze7eMpbZAnsIMF+kQk4ac5WboLdIywKRwaFpPMog
         Acz279lrl126QNihr+lPsiyHzJ79ghkAl2a2H7PkEGlKH6aqzTG1ULfvbToyD3h+EfnO
         fPHlcudH+cwr7Cw8cNQnhkK9sh9mc4sV15IfMUjTqgWDzG1YTkUJ47gRu8CBMBDsUCO7
         QuF2wfIMLts7IXu4sJc1DMKXSKTsQu2fqoMoOBUi/6JMJ4KutEdKZyZ7Yt3+MrxHQD9i
         +SwHkRkZ0PtrD2iGJQqg+Y0rQ+1ypaPq4Ybp2Qvx4nTbXD9eg22VFCXVmt3dZkvaXjjw
         PdWg==
X-Forwarded-Encrypted: i=1; AJvYcCVAxk+NFlW0D5nvp31Z9i4Osqh7qXFh1gNqQ5plerCLtfS3w924H0SInpfwk/dQwUBQi3XZd2SO1i65@vger.kernel.org
X-Gm-Message-State: AOJu0YxSg9hv0S1KItGEFdRHY/bt1V8kpywtrNDQuqT0kcS8+6Ko1Ke3
	hvFXvy/Td2fv/ohGF7vaD8SgCORNnN5SvbqIb4gvyjXeexjnSWgpyN2zMI48y3s5WHVI5XPBylx
	wfCpJC+KHLcaDXEijCD/y1zpfKxdj/2fbJ7yXzNZIBpWvZTB8Y/PLqEQVwRSZMFSG
X-Gm-Gg: ATEYQzxsZ24ZYR7aKGIlnhKgH5VId26zBkXxfUZ1/kcTSMh/k8CcYshAkuJubo1Uka7
	mewg8L6vctcKjXJNRUfjwPIohGCTLVFb4salKEZk53m2A4YkIdvAj19m1GXaDR32u5jDWYgSRSq
	Ut3mTn8/jyEvHkb2WtKXpQuA9FKWSAod/9s60xPyD3zC7M9z00P1rtmOIWXRv/rUS9wyQMQWP2U
	h/9hh89L1zBL5pZaEBKE5Xmi2vCHVoN+QbjwPrGVs70yDH9ZQg+Osvf3SyWoP668KGCtzLu5/gj
	seyAgb5BEfOWkUIG/I2zuAjeYW8xDze/2Prgt1UU9EVia7j44AXuxVwlqfY2uuNsPVVs2JsHnXX
	4E3638eLUXopN84fbbgqQzsF3o2B1tvEzY6cu3cdVP3VVp0MQdiTyXtKSmTkYSBCVdR0=
X-Received: by 2002:a05:6808:3a14:b0:45e:fdf4:b928 with SMTP id 5614622812f47-464461b5bacmr11446882b6e.24.1772084476441;
        Wed, 25 Feb 2026 21:41:16 -0800 (PST)
X-Received: by 2002:a05:6808:3a14:b0:45e:fdf4:b928 with SMTP id 5614622812f47-464461b5bacmr11446869b6e.24.1772084476115;
        Wed, 25 Feb 2026 21:41:16 -0800 (PST)
Received: from hu-liuxin-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4644a01200csm10434448b6e.7.2026.02.25.21.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 21:41:15 -0800 (PST)
From: Xin Liu <xin.liu@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        xin.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
Subject: [PATCH v2] arm64: dts: qcom: hamoa: Add PSCI SYSTEM_RESET2 types
Date: Wed, 25 Feb 2026 21:41:13 -0800
Message-ID: <20260226054113.4156874-1-xin.liu@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Og3jjwkAkkPPGtBX2CU4cInq-RiOVfX7
X-Authority-Analysis: v=2.4 cv=IqMTsb/g c=1 sm=1 tr=0 ts=699fdcfd cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=dSPudSTnkYQQv60Rkm8A:9 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA0OCBTYWx0ZWRfX/QGRszy4V/Ob
 IVg0w+SJyEKArJI0tywliucxY2iZC+8qZq1OsRpLzpPJU56CfhsqrG2AL3Jbp9i1q1sVvlyX3mr
 uWh7DpjrQHaBcaYBCJ9KomuUdSSkmcEqI7c5lX9npDW/ljhCTpVq6zmadXSacSyS7CvDxQ7PlyH
 Cp45rafgPBe36eorEd0B3XQ2dKOSbQjaUiPUbMUYRUVAIgz/AQ5OMrGgHnTpmWtNdZv7bEEeYcz
 cUuUQeZX7cykJaGI+KuHpJlpW2XLjghIYCRqdM+a9hg+Nz1L4D/zriVB2LWXkcc3Ny2XMEzrQdF
 888mv3XuOvhL0TeRs+i3p0A0YL5ANlmENTNMtRBOcZRtq5qkQjLe3R9UK8PZgP2FQDbpG3JcAe7
 pMlvOEkKsv+lqcS9/m42xjfSvkib4qNRKnAbwTsPnwPD2NtcfodQy9NuXorurbNPZkqy8Iqpxus
 on83Yg+cGMOD49wTiQA==
X-Proofpoint-GUID: Og3jjwkAkkPPGtBX2CU4cInq-RiOVfX7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 adultscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268593-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4084C1A1152
X-Rspamd-Action: no action

Add support for SYSTEM_RESET2 vendor-specific resets as
reboot-modes in the psci node.  Describe the resets: "bootloader"
will cause device to reboot and stop in the bootloader's fastboot
mode.  "edl" will cause device to reboot into "emergency download
mode", which permits loading images via the Firehose protocol.

Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
---
Changes in v2:
- Fix mode-bootloader and mode-edl reset_type
- Link to v1 : https://lore.kernel.org/all/20260209042700.1186392-1-xin.liu@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/hamoa.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index db65c392e618..a1bd8c3e4061 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -450,6 +450,11 @@ system_pd: power-domain-system {
 			#power-domain-cells = <0>;
 			/* TODO: system-wide idle states */
 		};
+
+		reboot-mode {
+			mode-bootloader = <0x80010001 0x2>;
+			mode-edl = <0x80000000 0x1>;
+		};
 	};
 
 	reserved-memory {
-- 
2.43.0


