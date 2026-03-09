Return-Path: <devicetree+bounces-273035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KxHEZT5rmliLAIAu9opvQ
	(envelope-from <devicetree+bounces-273035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:47:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D87E223CFFD
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53F9F3068EEA
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 16:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A14A3E9F62;
	Mon,  9 Mar 2026 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="foTonYht";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eYhLLJaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C493E9593
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 16:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773074123; cv=none; b=TGif//xFZ1MIJ9SEzvzB5Gplo8vRsn2a5eaVWrCFvzyQSFxegUM997yYZgQYdDxBlmqcfhXmG1eP0zC1Uw5rYN21Zpv+E7rYclVGl+AwuswayfJr0ZaSXpS+ZLY1x6q4408xDzPnrR4D15gZNaTq4sGrLFd1lM6kyRQCITeU5hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773074123; c=relaxed/simple;
	bh=66wRObVYpzCrO/A5ACXGOc87Enr1h4SzNjeBFnUL3pE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BIMsLVLDZ/3JK/g2Lp354fMwHUxZleY7UrKu6UHE9BpzdxWYk/MS7xFfF+9XqMNZpfk93ynU6c0Od6qr99sikvPT/2x401i7pLCXUq8+ck27jZlJF8a4EwctqZtX2GYYKrvyPbsf/SM3tyr7FOkuhOCZSCFaAKQKMbTO1Kc8csU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=foTonYht; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eYhLLJaW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629EAXCF1249075
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 16:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ecUqd5JPev+91MxPWPESWO
	NzPC7EpW4EpwmNWadHEbE=; b=foTonYhtPLqudTwCn/uzuTXchMbF3RLoSaHVAn
	bTh7mUVSUeYG99kkHHz0dCz/X+7EnxeVhPbeQdhkd+rPzqYvd9NXVnsrye5dJMYi
	1nOtLfmJNUdwEy0zbr+A4ti6cB8irbsHxdYZa5B287nMm6pH6psA99ubCSRs6Urx
	hAnBgYGJ5yjvqwTIVA6Ii/Kf95rEKbE0uAc3Ya/HcH/iQCDoEUOaI2Ckwg04z/LU
	GhuE04NyGaft3UPkSgpIxl41mwvF82KsMiaH5RJ9wgjwKTEROncSzj1JibYS9Iwp
	FtQWsA2aQHAYXK/6bsNGWsmdAYT6nvihTyyHAoq4x/6n50bQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyr40gd8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 16:35:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81c571a5so805188185a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 09:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773074116; x=1773678916; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ecUqd5JPev+91MxPWPESWONzPC7EpW4EpwmNWadHEbE=;
        b=eYhLLJaWaSYjXv+HLq1d6EC+1VLdqoAGjz3RtnGteZr2eH3iwvrCsvMUEd03OGub6s
         WqtrW1EFrenuAnywksAN8dlSRrOwOEE3Sm94iEjhl+EqkK2edaAEAKdGL4Od7ugOciEz
         EL5HDZLRtcdg+iPLGW2U/lOBe4PqNiAM0PBlct7sY4t1Cezilo8FzNWv/IRK+3jkPqi0
         ekw+aA1eppaBRmElUHDRdR3UTNR1bW0Bg8LmEM9420dqpylTASrV9vGOFk3Hhk/iFXKd
         pASdtuz2P61bWsE4hui7HaHlB1PL6LQ0ypfHfZ0OigiqpTA6SO081C2f+Ycjb36Vq1YB
         rCNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773074116; x=1773678916;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecUqd5JPev+91MxPWPESWONzPC7EpW4EpwmNWadHEbE=;
        b=OOeNwqb/NZdNl3UF919Uvj+4ltu0+qhukoISM85M57pM9lHmE//hooG+x5B819pQ9N
         aH5xv75vGTgYjQSDP8YdKyAncwvTbEfqSO6qVkXe+G2TOj7eadu4kFgq7/t+iz9nQ/2j
         bo33bBKCcRahy+yrRcEY4yG08O7MSulEteDAN8w9L/IPrnOIcruSV1Q7gf3N4rRUQYLT
         iHZiCgWNA4SOSQFl2dFuAG2NpKj7xc1Kvj0xJv4PsYxKOV0x3yzD4YdsNGnKtPaICGoc
         4+qx/2b0moTERTQ1M7eRsxRtM9ahUZl0dhaFk1VCCOzr8B+nVA2Z4TT+OEuPVI3NjUz9
         SCzw==
X-Forwarded-Encrypted: i=1; AJvYcCVSZFv8CrpFw73gMDHxN4pmswNKGqTWyzfPeK5LyRBC8pyZVHH8tvdRwYw5PEcc6sZ1wPWKtKFDtnjw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7GKHQs4oa4Oxn30nYdKzaeiGfi229nISgPc4VBS56na/xPfX9
	DV0SBDSkSXUgpqCTxE5+n7F48oFPWLFUMuo38dgZhs5JaGqIhe6vbWYQ7X3oSLvz5cHQ63OW/4r
	TUFc8DG8qTVqr8Ej4RyEZ+sZDYquQKuZYWp7vm6OFj8W0OsEq6fiDJjSIbvSUt7ftsfAiy4vR
X-Gm-Gg: ATEYQzyUqJrBAOYO5IWmLR/VMln2LA91pQ5pZ1GThqpKnuRtXiE625eIMJXqxB+kKa5
	2s1w13WOWHNL1ST0dVa9owk9v51L0VzaY6+DNka/hYQNvbHUcUA7g5RoUOQt1eqOlgv6PHolrgR
	uurJeJX7sXOKeGHWqCsG4EbUUAe+Jwm4M/3hmIyhfJSYtW1DUJRyHtHANsZBGUrexrj4BpGcTIA
	RO+rA0UxXDzh0qfrmzYJj/x3PlLPi762Ll1H/mGddyPd1bJKE7PxOhp4zc9jNJoYiYbFNMuK5Kf
	USmejYVF5sPb9jFKKc4cWXKZSMM7/19Vr/e37Y1SyWbheOJIPSCuZdgkWhjybUIpvGdmzPZedXL
	oTqYxKwX5m5QSSBScu65Ew7Vy7f339Q==
X-Received: by 2002:a05:620a:40d5:b0:8cd:8d4c:aa0c with SMTP id af79cd13be357-8cd8d4cadd9mr330191885a.0.1773074115811;
        Mon, 09 Mar 2026 09:35:15 -0700 (PDT)
X-Received: by 2002:a05:620a:40d5:b0:8cd:8d4c:aa0c with SMTP id af79cd13be357-8cd8d4cadd9mr330187785a.0.1773074115244;
        Mon, 09 Mar 2026 09:35:15 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aa73dasm5295455e9.2.2026.03.09.09.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 09:35:14 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 18:35:11 +0200
Subject: [PATCH] arm64: dts: qcom: glymur-crd: Enable keyboard, trackpad
 and touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAL72rmkC/42P3W7DIAxGXyXiepaANAnkVaZexNjp2JqfAqlWV
 X33Qrrtenf+LOt8x3cROXiOoq/uIvDVR7/MOai3SriPYT4xeMpZaKlbWUsLp/Nt2gJQiuACAc8
 Dnhm+kCCtUJZGOumwM/YgRaasgUf/vTe8H185bvjJLhXsz0Xgy5ar0+tM4BAZ3DJNPvVVo2ojj
 UJTG7KaFY6OyHXYabRaNc4NLZt63Mv+lPtqF1ZZuJheMuzXfCCCLSLEbV2XkKBVHbZkSdba9df
 DfzHl+YJiWkHm+jyz7RpZEMfH4wnasrV3WQEAAA==
X-Change-ID: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=4959;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=66wRObVYpzCrO/A5ACXGOc87Enr1h4SzNjeBFnUL3pE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprvbA7fkG8dYK59Wa3kIdW07BS7qQHkcTfT91X
 i9Dk7se+A+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa72wAAKCRAbX0TJAJUV
 VoZLEAC6q5fvsdHsZb6f/14PpodlXgF2bwh4UeiWH5cvMI3fTrpQeVCoNkuirP6HAA2k2VHqCkf
 e3uR5mzNOC/IHt6UQOSKOXDLx7m8HMzExOVG7Rz9lamW6dTMTx290Xv5pRiq/PNLiLhweJrCYBH
 xGvPI5p9Y7Dzs1fQ8BBZHbUG71nz6WNYNCukDn7iQyuvfoU3e3USqL/lbP3kZi3Bo+HiCcpfm1O
 FUD5cZVrDBriPbInIGbDmDXJZ/e2h9hX22XB789oWdYptedxQ2SHk9DPYMQOURT+iv4BI5GmBwN
 3gNe8SmVqTk9jUMYTOA8KNXCc8aVKk0xIdnQAi3kwqMMqF+IXm9wtmoQAvviJyh0j76Y0XLvK/m
 IUa1+6VITMErpr9bQ72MgSbH+FC4pHxYxOHWvrn69XySmjv4ja7W1LfjjrlddoRJ9BL4RnVpIMu
 CV1iPlbr0HWjgSC/aE74QOKG9DEnKXnAIEsm211k/F/y2sEOO2OElVMYgmTzYFM3RPs5Yi1h7wC
 dKJwKkk+x0F6niMVnuu8UXGizM2mN5YQ7lky0yx0wN4gXn+VjcjQZBTtCE9kjomJVhXDnGhT9b/
 CNTCPKxgkL+PY9/Ofbhe74hS6ZmORm7W4phtWWdITKyzZCVA3K1DA3ZiQ2ijGRxYtev+QnS3DmR
 bOVzaw4Zu+lU6Vw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE0OCBTYWx0ZWRfXz6RZ/jzoYaV/
 2tL5ggYSz5ZrJhb4dANYMKwZzrt1Oi6EcKLVcVCNDa4sg+PPP6AEqawrU+FVqZaqqeROes6Rkun
 CPGdO3BuNncU9jXpO9iij2d0RPr2J+RaJsBy5RUzT1eYEc0ApIe6Jrh8VtUb3qyjsVD4exbB/y3
 tkDTlB1+wSaPbvUFYU07+4S17Rn7kwWvWlMKAPL2K59p3q+n4M9+jTpv0zGNpfV9bgZwV2SxxoW
 Tr0jJk+jBQa6MxQ5wGgnw3a2uR9nn+kTGj/hPjh7z2lnFNefcOTwPkwsmFQrVcIBnAP09tcaYaB
 +EReXTWyn2td55nXZaxC0MkNNraTkVp75rI1P6gK9E/1gL0TpWRBXaYN9ZjWBD2oiTzyc1BKIpJ
 hWRh6elJZK0nuoukiNCUpkxZyeuNjtZZIer93pIKLcv/ev+/0swnACMhdpbB1wK6gDDTUY9XVWl
 sFWsOSGli38Owse2Pkg==
X-Proofpoint-GUID: _KUaQQkyoJpA0mlStDBS__HZ_s9hFo30
X-Proofpoint-ORIG-GUID: _KUaQQkyoJpA0mlStDBS__HZ_s9hFo30
X-Authority-Analysis: v=2.4 cv=KNRXzVFo c=1 sm=1 tr=0 ts=69aef6c4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=zzYwUZRbWdkVaHQaSXsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090148
X-Rspamd-Queue-Id: D87E223CFFD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,3a:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.38:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273035-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.936];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On CRD, the keyboard, trackpad and touchscreen are connected over I2C
and all share a 3.3V regulator.

So describe the regulator and each input device along with their
pinctrl states.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 38cdcf662ba7..0de7d35e1148 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -13,6 +13,8 @@
 #include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
 #include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
@@ -139,6 +141,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		regulator-boot-on;
 	};
 
+	vreg_misc_3p3: regulator-misc-3p3 {
+		 compatible = "regulator-fixed";
+
+		regulator-name = "VREG_MISC_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmh0110_f_e0_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&misc_3p3_reg_en>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -446,6 +465,64 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+
+	keyboard@3a {
+		compatible = "hid-over-i2c";
+		reg = <0x3a>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&kybd_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "hid-over-i2c";
+		reg = <0x38>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&ts0_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -626,6 +703,19 @@ key_vol_up_default: key-vol-up-default-state {
 	};
 };
 
+&pmh0110_f_e0_gpios {
+	misc_3p3_reg_en: misc-3p3-reg-en-state {
+		pins = "gpio6";
+		function = "normal";
+		bias-disable;
+		input-disable;
+		output-enable;
+		drive-push-pull;
+		power-source = <1>; /* 1.8 V */
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+	};
+};
+
 &pmk8850_rtc {
 	qcom,no-alarm;
 };
@@ -664,6 +754,33 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	kybd_default: kybd-default-state {
+		pins = "gpio67";
+		function = "gpio";
+		bias-disable;
+	};
+
+	tpad_default: tpad-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-disable;
+	};
+
+	ts0_default: ts0-default-state {
+		int-n-pins {
+			pins = "gpio51";
+			function = "gpio";
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio48";
+			function = "gpio";
+			output-high;
+			drive-strength = <16>;
+		};
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

---
base-commit: 5138081b838d92e1bfcddc7b72b9215cca6e83f0
change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
prerequisite-change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v4
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v4
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-patch-id: 6a291fd702870ca28d64439313d498593996b741
prerequisite-patch-id: c96958ab5c5605fb9577645ac5bfe5912cdfebfe
prerequisite-patch-id: bfa283218723a48e54fcd842484b004c877339b7
prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


