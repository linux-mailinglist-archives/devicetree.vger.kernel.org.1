Return-Path: <devicetree+bounces-268605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHAxAMHjn2nCegQAu9opvQ
	(envelope-from <devicetree+bounces-268605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:10:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6F41A13A1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D88B30BD4EA
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB5138B7B1;
	Thu, 26 Feb 2026 06:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BTbCCBIb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bnco/r0D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8139D2D77FF
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772086137; cv=none; b=Qc6r0GDkHg8VB70s+MtWfMlYBOOkdoR0rUyNdQ/iicBV6nJonQ5+QvaH5RG+lNt2TnIjptHpTPK5xGGTy4VqnEy5QBj3lN6wL8V1EbkmMcNSu76QKL35xIj3fhRnHwLtERKW0R/00Fc4/AjsL1ULO0JfX0BatFyWUnt9VbBnu/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772086137; c=relaxed/simple;
	bh=HZwFUQOQ6A7aTZLiMxZmYJR9QvaqliTJcqwhopazxpY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XlA/sS4M/0ijmr2IAxJRwrjF9bmvEOJN0R9HMU17lsgBaozztI1nJgsQ3KvLoKyo79XeZm0NQaugWVXbbetjZzxzDQ378+PHDOkSli8OIiQwC26rrOEw0ZxBr92KW7HWyQ8eUk4MbJuaO+MesNZPuKaePvTd31Vnw7Zad7+XSHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BTbCCBIb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bnco/r0D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VJjQ3721802
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:08:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2Kl1wLQ1uXk
	gLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=; b=BTbCCBIbPXe2JqFK2bkGKihjgKO
	5jRKboG90Fn4d2A5ZKDIWbZuc8Hv4CC5Ys2I395ct1d1Et/RL4M77WY3QQpATkmi
	drt9FIFOseivgOhZVRRxDBFD1x/HBpxbyrxCXiPo0lOSegU7aYCX0sPaRQ9UPHPs
	huJuf3OtEzmfgLCAsOz8UW4GChY5m2vJ+MTiDEqenQPAKnXzgTtuSvuOyw89/ghF
	LsdVPLNiGyJVKHI/GCleSheGw2da0Tk7B8Gg9qCdwuL+u/qZQ3hq2D0ejD879dja
	YSeqd6Gmnizk5wHRMClNp3uVWnJDDQr7GgXX3Bx6kAJ9mqp18Pmbw9Yc9Dg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyvf33ny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:08:55 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354c72d23dfso2148193a91.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772086134; x=1772690934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Kl1wLQ1uXkgLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=;
        b=bnco/r0D3IoKepXwaYawiSskLdZHoa9mb3VQDr2+DrSC9LHTzJuGJ8nA/8hkWg76eX
         hcLYQrkfK9HrMWP37f2O/5D+0SK+5ABECfUJDWfTZYvzg9q2i7IKrVemeAZGk/7lOzLd
         SOrEIBpHxHKcYn0kZk5OReYewrHqcPzAYcnMCNgyGGaB6KtkIPCyWTYc10F55ytpzhu8
         XQ6cLu+4hus504OjZNmPfvSBQcZenaAWMIpZNPZaIFW6VVyEVSgb4+6EYMOuKoVxojcU
         r1+7paiDCFi4FbEjQlQThEPxfUIsxWjw8yC6GK0JgGsOE7CHz+AyJ5+ovCd1iqX3CR+P
         ckdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772086134; x=1772690934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Kl1wLQ1uXkgLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=;
        b=OfeH0TxHsZdFTC7LF7vMORLMgs7CYv3D0zk/CqPPXuOYfUcflv/JY8wsQLVETPkLBG
         eTmyqws5sVAoMwYG8yTJKx66kBOstbdRgYb6BtK9Ljy28ADLG/VjcMBEPGGWqdy8PiP5
         N94Pb6rhzXKm9GHUSKo7yQ9glU6GruLJ9+juTS4pbiWGtEG+pc+N+6b8TSgTjHpQVSXg
         CeP6VFReiXAG5NeDHJrEldNK2EX5DWqALv8ALi/jxNL6sTJMGes/qzOIF58NBa8ySlQM
         Fsm/bkAFjDpwI7NlyF2PNbofhZgWjdgkZWTaab9iUoD4U32IcmgePXu96dJJbhIUKyFw
         6TGQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+9v43riSJbaz90TU4RaKTqkQfV6AiwqfsxOxTSw0V8nXAqE+vyaoDpDweb4eoOpff0/am931QJ/cr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1hg8dH24q6k0FxS3qyMUOoVDfStInDTtP2NSxuO7y/o0vV1/X
	adXXuNSzR9rD3MAewrH0LwakLJ2Yg7sasgqnkaChG6bu+XQZktFmfkMdG9uJmPNLzbD7FRehtPN
	NaKw70SgJIO98SKFXiJBts2qJNP90xY9n4reyXeYI/4D5FcaluAEuZZD0LxxcBcp3
X-Gm-Gg: ATEYQzylblo0JkIfaebj0qdFI/oeQiFVGUlLAmD8FVpU9D7eRB/EnzUM607SZWdNlUF
	MLK0/hGyb6zpvAahLrzmXoDkoArBDyqJVgjq6BG6+WKm6vv1Gd0OwzUeB3TKGhqSZ+4rkBJZYMU
	YhRQZ4ag4KT2KRoudXp1+xDAsxIgI6GItq27+JyTJ3n0jn0Hc6SRlkyAnjvcRA7NiDXemNDMNaW
	8kaPUqKhn13xQzpj2fxxntKuvq7BXHvF0DHQS7VHXaak3v3JqbFWsv3wPmnO1noyIB5V9NqtEzG
	suB0AdjxAs/zzDTtJ9qFp9nhH6WxPuNait4f13stmKTwgH5foqeL9RuaM6yhDvkbYhMlVmO3fxS
	jPd06DMlfctTme62xWLhc65VPCuyLVsPGiFJPYpEYm/8FBWp+defyxPw=
X-Received: by 2002:a17:90b:4987:b0:339:ec9c:b275 with SMTP id 98e67ed59e1d1-3593da6053dmr1290739a91.6.1772086134144;
        Wed, 25 Feb 2026 22:08:54 -0800 (PST)
X-Received: by 2002:a17:90b:4987:b0:339:ec9c:b275 with SMTP id 98e67ed59e1d1-3593da6053dmr1290714a91.6.1772086133733;
        Wed, 25 Feb 2026 22:08:53 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35912fbc363sm2754421a91.2.2026.02.25.22.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 22:08:53 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/3] arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for tertiary USB controller
Date: Thu, 26 Feb 2026 11:38:34 +0530
Message-Id: <20260226060835.608239-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226060835.608239-1-swati.agarwal@oss.qualcomm.com>
References: <20260226060835.608239-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: lH0ymi2huzgvGo4jfiMDo-hZ8UkTiC_F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA1MiBTYWx0ZWRfX9M+5DFpuPyC8
 7yoN+9I2Q00sar2ElEwhpqLhyS0gwK7x+jHuEeHYvaI3W/E7QZm+2Iqd1EDatzi3UlO+mZYUb1u
 QF3pOgI1U0qeFf7KFKQDsrUqXJKj+pZk0Tnb/Qd1vSq5hlWnhAUoJOOW9LyRvHoBYNa1udpKJxq
 3DM4n37U5HG+0LJSj/GgzTZJMvS/ooQV5+F2m0rtvq+EjZT9VJ6zVFQUZsbDFmxKeJewC0SKGui
 oPvla94Bfo/9g5xjiPoKT8bZ309dxreVldtamZTqHBUk2mUp0LuyvFka8PQ3ahN6LK5GCP1QLUp
 y1XwuobAcoAOQljOiV1J41cF8XUXNQWIVF1YnN74UV0z2bHWKClAU4OGphKzk27QFO2Jp1nvxnL
 OlS++sYh5VogQ1R+Zak73tYx+Ql+K+ToCw9L5Wx4ogP1isMKSdPRjsTFG8bvnpbJIthLUqs38ic
 PMTDdEqQvMhXZuKi2Zw==
X-Proofpoint-GUID: lH0ymi2huzgvGo4jfiMDo-hZ8UkTiC_F
X-Authority-Analysis: v=2.4 cv=dZWNHHXe c=1 sm=1 tr=0 ts=699fe377 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=ZrvUoS1E-TgtW8Atug8A:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260052
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268605-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9B6F41A13A1
X-Rspamd-Action: no action

Enable usb-role-switch for the tertiary USB controller on Lemans.

Additionally, add a port node with an HS endpoint so the controller can be
linked through the DT graph to the corresponding connector.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..d0e63336be6b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
+
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.34.1


