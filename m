Return-Path: <devicetree+bounces-249707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D9CCDE43E
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 04:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B3CF30052C8
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 03:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B5C241691;
	Fri, 26 Dec 2025 03:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ki3zI7+b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LqJGDZon"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0D22556E
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 03:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766718420; cv=none; b=n7gVTFx7tQ7mpESqisb1mmDtALp+Y9P9EX2WZvDqNYFDE+tjmije0hrSyMHAoQcaTblERjsBVLQM/cqbQo3VPSO0dLPBLBiSiJCrHY4G4eGzXkH8MCtEvLS8iR2UvnfgxJZkGhn4gZbYtCNhEkUtGqS6VcAzcToYC8LSh6UT5y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766718420; c=relaxed/simple;
	bh=o9ByM8Utpv5ofb4J8fJllzORI9orvLkUbWROL6wCLos=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=a9jSEYrKEi0OvzFXAgGWUHgfROv41j4dEP/cZ1h8AdLGnblkXnlv1f1wIvI4gJ/0KRP2ugrZevXe3Jvyy+lN2fKbfAKH/Ipk5vfPBXW1U43+TEjGzqW7Adhj63p6lDihJxVu+kjwR4V4Z4UjHku+A1gRWbWAs7QDr8v0V7J5BHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ki3zI7+b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LqJGDZon; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BPMr7as1271215
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 03:06:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9AU6FSaZ0Vl4X1hD3OQC+6
	+SzAVgwHLjUNdZGCfzSR4=; b=ki3zI7+beSeYIhoJNhw+dhlX4NbpwKwJDmBG28
	9XhHbzurO4a0arMbTtLQ1Y4H17hq8N1qqGMXXUOTkZXGvgoEgezYuEzAJLT6ADs5
	F7XAwL5OkEdrGT9LXxvyJyCIQPMf+XG4TQFQ7prb0uZ+z7ybP6cq6fc+YCYJmynR
	46hUp35ONFIznTC28xJ6nVG4EPIKBbgdlvnhwRbh2OS7oVdAAOXHPZJyi+N4y9kD
	iVIhiLQjxuZhvhcQlDQPQs9hvAfKIY3UINv0Vm9KaUWFLJRTxVpKplDconPK9qoE
	EKSWNX4L5tSZ/LeCQLhPTnPPenyrKxU7taZV/geDLOVh6O0A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8hwe341v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 03:06:51 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-bb27b422cf2so12673598a12.1
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 19:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766718411; x=1767323211; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9AU6FSaZ0Vl4X1hD3OQC+6+SzAVgwHLjUNdZGCfzSR4=;
        b=LqJGDZonGm3H6TjNSacKqqKUUlyEoCPH81ShFeabNAhGLAXcrFyEg5HRkkgITOOww2
         M67TWnR8Oz2SfSa7b7AWSyVQgFtbqT5gSQCSXP5p+XscU5xNTV4hkHuaWnQ1sjUcmHyJ
         t48P+AT667HKSUMHnXFNj4floVoRzyt/sHt2+TiyGTYyxNC/cYX8r7Z+OcJuZkfea6p6
         jS5ktEitHrHS3lhWSrVTX7lHFB+jgmqCHOrvOrF7REKyRsPBQjyl9i+9F3mK+n7O72qE
         U65NK3Xj8Au6c9h/WGMnn/8Hff8uQVAuq7VG3eyahSZS1Jc20cEt/vl38bQYF1CrsvgG
         aIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766718411; x=1767323211;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9AU6FSaZ0Vl4X1hD3OQC+6+SzAVgwHLjUNdZGCfzSR4=;
        b=raPDZorudU+KPd8cppiRnFKLgZ4iq9NAmiQBUSKXdXbCm71D4sM+Oaq/emzO26nCBA
         T+KGDLkuK1jX9zVkNgMovg17ffldv2BWpMBoLr1MB1PxO21qBIyv2KG1eAXsdU4BrDgI
         nFroqxTCLlfIKEX3x7upwh/F1M0po/FV55oE9054P7gqKuY7lX6hJsKUX3xAzwkbRDKy
         /pUiByEngsfC9e+ib80fg4lJyBYGPsByupAPGvTgmhLLvMConkkXB/JYbI2QIKRsXJ7R
         z5TuBZf1pIaIQ9ls+KJpdR4uF21NVur2mpHDzbi9BZcjcFTxrY7M0/mS4qEe+kflatpX
         GAWA==
X-Forwarded-Encrypted: i=1; AJvYcCUq/CB631jSpOZXPBf4rRVM9HiXvzG+B940UaGOiC4h8DOrsGzDl9vV/m05YNM8fONyFhYTHVh0YqZN@vger.kernel.org
X-Gm-Message-State: AOJu0YyJmCtZOe3fq4hO7ly0CXER1PVGZZ0uD3Y3z8fJa5ToYdlSptLc
	00vglO5/Ea9DmUnlEL55hRXjSK5TXnN3V1qSOTe/EohrrSmM8/fyVWe5FYkQVxAUqMVeBGKaaGJ
	f6yIw2pOi7o1yH1lsAFDILqhVYlgTAoh7dQTE/eIO7lEFnBz7MQtt4HthbLCHVQbd
X-Gm-Gg: AY/fxX6wfRh9NFqtcCvu9dLWU+NAUVX2ud0ELCSA1U8/RrDK6NWK3VEehpXGqJlKsse
	qwjZmMETvI0lsYT8pqne+IEldqVmcXuTXjuENUNtDNpcAFMuKjpUitckpr80G6v1jQHaSUKCI5O
	W2NvkyiFol3hObFx3In0ei7rNQzBP8fbGOVhr9QBD6gvLir4I35RETTIqb8Jnr7QeAVgypA4tcF
	Gqy4XBpcHXn9B/qsnteAGW7yNXHxQOZ3cCcUbeQdLBKLlgw6SB2dHrVS/rGaM6/q8EUy6s+TsZE
	O0gGHRGoln79NTrXc9n5SrGvXZI7sttr3hrRMGm9ktnH/T0+thCPynve3qQN4AsaHltADeHxGkP
	A/7TCpEYMor5Sol20/cKnlOiQj2uCayeiwWRO31wJNIy+p+l+y0yyaCIobggy
X-Received: by 2002:a05:7022:258d:b0:11d:f464:5c97 with SMTP id a92af1059eb24-1217230621bmr20670586c88.39.1766718410773;
        Thu, 25 Dec 2025 19:06:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhSZHVBPoJJ9v0xUmns+Jmp5dPO+OtadwEh/5L2h88zDEVpBLDs8I+DvjAvsgxr/Ugppecpg==
X-Received: by 2002:a05:7022:258d:b0:11d:f464:5c97 with SMTP id a92af1059eb24-1217230621bmr20670530c88.39.1766718409642;
        Thu, 25 Dec 2025 19:06:49 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121724dd7f5sm83135082c88.5.2025.12.25.19.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 19:06:49 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/2] arm64: dts: qcom: kaanapali: Add misc features
Date: Thu, 25 Dec 2025 19:06:42 -0800
Message-Id: <20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAML7TWkC/0WPQW7DIBBFr2KxLpEHMDJe5R5VFswANWptJ2Bbr
 SLfvZAo7WakL828N//Osk/RZzY0d5b8HnNc5hLEW8NotPOH59GVzEQrOhCi45/zlbs18ylm4l4
 a1SvdE2nDysk1+RC/H7j3S8los+eY7ExjhYCA11ryt63I1ufuv6uoqwnapwm3zIMHKYIOGoQcd
 sFeXFqmKa5DQyStVRKVQodKuoCW2kDYAXW6M8oCSNnbntWPxpjXJf08+hZWdVdha4T6q7YDb7k
 MDkmh8YBwXnI+3Tb7VZWnMtjlOI5fJkL4CTwBAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766718408; l=1322;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=o9ByM8Utpv5ofb4J8fJllzORI9orvLkUbWROL6wCLos=;
 b=y6/UfDKvmvsjws0q7oRClPCgpHFFxISlUh3HF7+LFr4ceiskmIgfPKb8jkyAtTQyXGjb1dYt7
 YaOtZyd11awD7k39M4tDN0nz+s1vKi6D3I6Vhcer++FHnc2CQy7XNZR
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDAyOCBTYWx0ZWRfXxIW5nHeiUcEs
 Kaw8x4slQDTyVX3l2GNvTgb/ZgA94MCrkjJ8+iSFZbsoBUThptYrN3PVZ72LwUo/mq/rGKHoZ4l
 KJFMkMzLbUOlghLloAqSI4H9RYeoKWnyom2klzXfJKcPfctek9vlSqCtqFL916LRmtQ8+Zk/u4W
 Boz9g3BBoO0WRiwmf1b6vmBytyc31jplJouqDnmKRzAffQyYkXTvgg9KTGa30JoHhGm8agy6ZkR
 LHDmAsyQtwcBlgVTck0nr2TMqZXRPGtSlmV6ncnRIKKcLACzSZSlYO7z2u7SiVDOOhP1sNVljXw
 EdPRlyzlzRoY1mTbA2mpLZH+cK/2bIoPQuUwPPsm0UtAA+rgLDPMhsLDDgOxtf39eRQLBIVUyt6
 FMAYBZVBGI0HRp8rXsiNVccBLt9/aEXOUHEhiBcAfi6BVgblDjqcnduPPnTJZNoa21oU1unvRUP
 zMSTvYp38qw0eXA+cWQ==
X-Proofpoint-GUID: fmTYRLlmynMWuUyLxb5M9zeBHnbgTBJR
X-Proofpoint-ORIG-GUID: fmTYRLlmynMWuUyLxb5M9zeBHnbgTBJR
X-Authority-Analysis: v=2.4 cv=P9c3RyAu c=1 sm=1 tr=0 ts=694dfbcb cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=oEMF-frSRFZDcAtVmLgA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260028

Add new features on the Kaanapali Platform including:

- TSENS and thermal zones
- CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
  These devices are part of the AOSS, CDSP, QDSS, modem and some small
  subsystems, such as DCC, GCC, ipcc and so on.
- QUPv3 serial engine protocols with 5 I2C hubs and 24 QUP serial engines
  across 4 QUP wrappers, each with support of GPI DMA engines.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- picked latest coresight patch form: https://lore.kernel.org/all/20251205-add-coresight-nodes-for-kaanapali-v1-1-d3d2099b9b24@oss.qualcomm.com/
- Link to v1: https://lore.kernel.org/r/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com

---
Jie Gan (1):
      arm64: dts: qcom: kaanapali: add coresight nodes

Jingyi Wang (1):
      arm64: dts: qcom: kaanapali: Add TSENS and QUPv3 serial engines

 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 3997 +++++++++++++++++++++++++++++++
 1 file changed, 3997 insertions(+)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251225-knp-dts-misc-e3948468cc69
prerequisite-change-id: 20251105-knp-bus-fe132f6f6123:v2
prerequisite-patch-id: 64b5c2583a515ba7b77e521123058e10e2461313

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


