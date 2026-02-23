Return-Path: <devicetree+bounces-267267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFqJJ873m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:46:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F47B17250C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:46:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BF00F3029254
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426D134AB1E;
	Mon, 23 Feb 2026 06:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pPXNeC5N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FldUu3l+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07AC34BA24
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829144; cv=none; b=CObnwLx2Or/wT/Kmdei18n4XAfV0dkOVnxVXG39iSDQqn81SUt7RD7NnYn4EY4ZZ5PJgZC07cnJT8HNP+GcLamfKiTQYt53Oaz7DyRzGf+gYYFxmsMepV9KM5iVLPQ6j0jWrk3DcYfbAb3nqbpGsoVopIt2UwG6XIuB5q0Dpk6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829144; c=relaxed/simple;
	bh=0MADiRxGeDkPQDc+D4cOyR9YpPfqVXFTQN8hJDo+rxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QGeuUv3HyZ202tRzu7N7nATKdK9BtGc5DQL6Yu+Du5qPA6oIfZw+21ldigqPN5Evc8rHewcp+J3PcRapJrHrscnLszAjbVmHZbyCP33SGgfDiyAH5nYabfWjX56skShJ4gxjaFcBwRBYXWqgAo3wY0tOWrT/vnZDlYmRqDXKbRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pPXNeC5N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FldUu3l+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMGhwC3532324
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=; b=pPXNeC5N16HuJEvH
	NNTVLdWJKjRpycH9VZwxi1Pl9MsXFMI2y1QzyOD5sq9R3aM6mzht9joPQ+z8WoJf
	iwKPoujoYeYJu9A0fIRQX1MqHqOOf0WmQUZBVXLYPsAQyB9Al8NyH/ijJ1RclWdu
	g/Xn3xP/4aIMlIFec9KmOCihOREqbMfZCNZxibQGkCwsDAoUmvlU38cGP2mCVB+o
	KIatDV6+CwnC4P6I1QbILRz3sK5P7K/nFOSZCGyeFwhuUg+Pto5m3lBP/bQwM7ny
	9IZkN3VaRSgzskW1/+XvlTjWYosVfun8Sj1itZKm7KT8ZJWVABDNTv/qOM8yOfE0
	uQzOnw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u8knyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:41 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c65d08b623aso2948432a12.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829141; x=1772433941; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=;
        b=FldUu3l+js+aH4e8G4bg5dzdqQGgK/kIvqncTv0UIDKOi0WrdOOsliCYdGDmcfa0Oa
         LWEtvBfhXQKL3b++W1cMfdX1oq80m8pvYLFx0WkywoBVYb4uFkz6B8Pmy81P+3wYPcBs
         YJSJRKICyr+/SjRbXATU0w3a3HU3k42vVhQdcPeNSYmsFwm6U5j2XS+8DIiSDZVT/zNe
         WRI9Q0n36zvmj2ZpsF3SL+dYf0IK73WPbjXb5mgQL/0mXOLFc80IPPy1NukcyUx6mSEU
         JwWU4iyLsFyautg2CLryrLK342PqZi8XOIDaczAZxIIaM7Drv8FJqOnfJZI+3DV1d2vh
         t57g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829141; x=1772433941;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=;
        b=FyILouhRRrF7FPTW84Khn5StApag16fuqg/wSAOkuLrIvHEWoFt1VS3q37gvHShzhM
         VPVZr02+59Ch/XZ+TzVf0nP3ARkwwVYC4gd7JNvNp/rZ1wqwENPTV3En2yFQ//De2jGQ
         2M+EPI7+KeS0gNGY4he3fu86jZLpq2bA4rx/UMivu49VZSb31uHgk1YtULb7fITn65rO
         bjAfwCsidgKIOKEUH9o7Z2QIfQMTZVOSSd8DiYKAd7kjpi+luso6VPYG+14z9h8VP0w5
         7TRThaENQ3KAq8wQipnOewLT9PXuEFZaxdCsgTEG1bivbNjS76j9wCq8E/mgibLRv9Tm
         P1nA==
X-Forwarded-Encrypted: i=1; AJvYcCVxc9aGaJm7G1L8PallFxk7KzdqkoHmk84SMzYezxuFst/Un21oynMicQwGHE4W0pKQ3KBLjSJm1jWL@vger.kernel.org
X-Gm-Message-State: AOJu0YwVIVke0vKUAAGVucztRlcG3M/F3nIm82C9y16GdV0j9gBALsYb
	NKh5+Wuf5OgrOuvlRHGnP247wrL4C+oNkP+5h47q+5tJvrC4modRsZHRWACoZNPAzBnobkLoh27
	A+Lh2gYyD5Swwp+cqU9TIxWLDW3UhOc5IrecjumZl6p/33bCPvfsDfnfm4egkldfKxu0eQL/2tF
	E=
X-Gm-Gg: AZuq6aJJ8kC+XXBNGPjjt+yi11c9hq+DpZnld1Emj6kY/zKXybYNwM7ufnw6H76DfcQ
	P8djawwMi4NTKnpq1JcrikX/VxPqnWN31FlpIAvACvnnV3NdCxkTikS/xDopFJDkIkTgdyt3lZP
	A3+lPdY7jx/CFqcT+YlJbOdDnbUR/fojQpp2odsbaPwkmgXCCL64Yfw98oIvC5TUlT2wZ9Xm36a
	cqWtezuz1RSDu0Bi6D6DDevqu8yMjdsN6RHYsbQugg8uk/5qYMvePTBOaprhC/DsY0uKIo6gUIo
	MT84UHsFAaHxTOBGanpXeobPVg4aR8pCNh28ieu3TQRc9V54gVMVjjqSTRtpG6uKjPo9h3lCG6E
	h0dv4SsY4sJ1IKQ9u20jL84no+7eAgH7n0ZCHPAfQ1ZfEt92+Qz+npIrHMB4ZYc83QuaynP52ht
	AIdL64gSImQOGV
X-Received: by 2002:a05:6300:8a97:b0:394:f617:b418 with SMTP id adf61e73a8af0-39517b35a81mr11353952637.4.1771829140632;
        Sun, 22 Feb 2026 22:45:40 -0800 (PST)
X-Received: by 2002:a05:6300:8a97:b0:394:f617:b418 with SMTP id adf61e73a8af0-39517b35a81mr11353936637.4.1771829140165;
        Sun, 22 Feb 2026 22:45:40 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71839d6sm6483993a12.6.2026.02.22.22.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:45:39 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:44:44 +0800
Subject: [PATCH 8/8] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v1-8-042fb35bd37e@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829097; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=0MADiRxGeDkPQDc+D4cOyR9YpPfqVXFTQN8hJDo+rxc=;
 b=A7MusA8b1rixgM7/D/ASj0yIGsmRsBAexrkdv9rI624/50t9vZK5GeJTvPPItLcY41IBNloz8
 6huL2xXkTumBdYn/0Dhp0CDcxJhVHuohW+RmF0KAeN5DRuFE1OKOZNn
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: fzkgDrw4fV9hyHR4SrkzvyUBaQO2egap
X-Authority-Analysis: v=2.4 cv=cJftc1eN c=1 sm=1 tr=0 ts=699bf795 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: fzkgDrw4fV9hyHR4SrkzvyUBaQO2egap
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OCBTYWx0ZWRfXx0tr6YQkbX+H
 YzdpxcRbyuleQjgUnlE9gX2568ylMUh93UU+ZoMJsbEbFU0FnuR8M4UMsZxsqOR4WC2txrLJrHu
 FvkDty3pl7+JszG8pYQby9jU669eXm/+kUl9AUMJEF529JYRL4N45ogmx8Dp3X2gLWPamWbYAsj
 CsLGICbiDT0SBpczR6RQ2+Et4OZVtBncB/+VpIc8JlkodRHFoVSljkWQKCHLQ1I2lbG/bngmIB5
 8LxWbx4BlsbNPbC/2g3z2T7JETMJUtD7i1DgrtsmIyCk0s7d9+d7S5UfHdtHR+uzLzHBIF1TCq+
 k+lDXCV4zNzs+vUbHhE85VUYUU3GNbDfrKsXXuk7o/fBYqCca919Eir/PY43ykT4b2mS0U3kRrT
 PImcNqFLlkn0p7MJE4XI74kR7fi53AZlk7K7vpHS13hK61FFkMdVtL0pyT+ZiUj3+KlEWTWzB6C
 BAjN/E93NsZ0EgS3Jnw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267267-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.61.12.232:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3F47B17250C
X-Rspamd-Action: no action

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..e8a20789cd58 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2800,6 +2800,9 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


