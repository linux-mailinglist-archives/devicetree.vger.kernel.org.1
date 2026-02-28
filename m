Return-Path: <devicetree+bounces-269556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ph+O77oomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A081C31DE
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EEE163034C4B
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9245343E4A0;
	Sat, 28 Feb 2026 13:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CfSE0f9m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WFnZCecV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D1943DA58
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284093; cv=none; b=cbS0q9hPWYjh0s8Gmyd/6ZCRago9XJ7pKjS56l6EiTv3iMN+ztAcGBsQQfTPrJqye4ZCz/DxBbTe8vgxwpF9+m7Eh07EXOvWDWRQKRkiqVFX82l35YdZlTeEu3uIg5wEXAbwgSwAs+A4KmQuSw42un+mGCwJmed3pjHYYYMAHUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284093; c=relaxed/simple;
	bh=Gjwjv1lCsVfqWtOvbSx5kz5zoHEXmRNs/DPgZ/2rhho=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G0N5g7vUq8IUu3nhbtONcPwOozrWOznaWXpt+SFRIFjHtM4gNBPdh2KbcHF6ufJ2Uo6t4TzzbohP0edl9afymH3XnQYMu5z+B5cAJi+oq2xG8m2YjDSVscq/5YkTe0L96h8fakcRXuUtDuPcpSC3zCahp5CPIibxUWvoCmwhJKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CfSE0f9m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WFnZCecV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90NJk3435754
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BZAJ/as90UvdiOhkHQTdKOAO8VIDQmunoF1pTp/LK5k=; b=CfSE0f9mnT7GvhlL
	7KCuqwWktmQiDpqkHqqtdO7h39xIK8RpT7T3vAk6I3TAHYJUA1eNewL02wcKRtFh
	QhZTpqOiFknR/ZOu2xUN6UgcfsKt6Jgr8OczT0++6jSjzyyrJfmdULVApfzYNZNV
	qezCBXSFGIRULEN6OJ8yV3AZuUzCoL6Xt2gNUPfK9F+7LwTKwPExVnbPyWw93+X2
	zBzTfJVmib51JEsYiI3azcl4zx6hSOg5YRsayVnqnDRSVTIQJK427Fp3SBn49Dzx
	/IKi0loCJOSlI51wz1Y8k1AVQUsJgck8l65iXANW0fvnbgy/Iuys1QIvnC/I208T
	IBsZpA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshch01t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:11 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aad3380076so21834985ad.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284091; x=1772888891; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZAJ/as90UvdiOhkHQTdKOAO8VIDQmunoF1pTp/LK5k=;
        b=WFnZCecVGHROjGKGz5yBWTLPnDaNWmGGm4Ek1fp0N1qaGAECDuPXo99RtUNoCat0gd
         nxUsA/s9tBps6MejchEzrEkNzHLRKFxhdZVi6pamDSGDemd/0ER7tuSRoeEte3L2j1M9
         JVQkjrw3fw+5Kkw5Z6hxo0bBa+crLnrfEKeP2RM75mMkDK03Irz8hpX3/ZHHyyr8cFlJ
         RuM/qukJiawDR2UHLboXZ8BmjBE3x5B27Mkwo8hd0VxiFYV+1GTDWdDZP3LAa1ULZfQU
         VKV2py+K1GazdiVNrL9fCbR7a/gPRdfhcvkM4677KGpFMxsjMbywl45PH0JHPx9l4JHZ
         aMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284091; x=1772888891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BZAJ/as90UvdiOhkHQTdKOAO8VIDQmunoF1pTp/LK5k=;
        b=IcW064r4kweFrDh3we4gviQsTq4K8wZmUPSm/QWwZsLdibMKFlg6ODye7HpgUbfn9i
         AbLQi90Jr6yaXLKgDThtvQrYcFNzjytx3g+qDTK7TwBgTvwb68xWMNvS9BDjYmSUIk0E
         patA17Cj0D+kHv3vYZKcwbfXyP9Pw/kdks82spet6OjsJEt7RsIHGLqF8INXAbmdmI6P
         789TMe1gLOYq+0sa07w1R9MMUwQi6aNqt1cjffnUnn0mwK145Ggw4cUBoW5FJy3POP+j
         QvdyeEjtf3wxgolby0lpDLNUQctpituJhdBe/G3GecX+UuEaTsT+0SQ3A9BkDtyYD2b+
         bZKg==
X-Gm-Message-State: AOJu0Yz3Azjghbxfx5VVzFhYJd6qjJqRdqLeONcVkmWfCkleGechw+mi
	TWJ8UFJ0Bv2WSFh2l9jbn0+58bXm+2WC2mHdzVjHkEHoBzyC5dmtEFt70AvqHSrP2y3d2PJr88R
	a1YGvStaE3+L0On3nPCLsm2ODafqniTP3une2SFkckRt93MxbRd1AWHZyEf6H9Tuh
X-Gm-Gg: ATEYQzxqIpiPwYIuFxgiNMSxVxuTrQQRxDnuiomA4DLbgXhpLS1A1Jvrbp0WuYAzSFZ
	KaJyrfJi19lxVXGgrSFcqMA9topG3iwSOJG1mDPajtEgZywW8SKVgHmFBwiHuVFe/pWYi1W/i67
	LD7j28lwkUlc5F92zEkp4yK1Lq/OcWNsyTqlk/kqQWVTYNo/NrtJzevdl2s1zqKq2zKZRK/7hCR
	x3oDu5ntj6mgbbU/6ZMrunz7xlS9pSkrb5rB0jMaaelzlDzu+Nt04WZZLn7d12pRbSe/VlKILNL
	BtGwaOC3OjCv2gh1Mrx881zVNXkOuiNOAo9/y5LEXmHlUZtu/A4tiVah2++KFMFlJFxvn8zeoLY
	feoGMAAQC5c/HDSwbk60zUHNdZrYXeXTDNbybylOyG+EvUXYnjEYCiIfWp2EJ5cRwcWLhh3J1GG
	PoBGPHANINZXqh23NdCBSKgUo/MzT2qhRa8sDllNp/YjTN9gHP5vAYo79i
X-Received: by 2002:a17:903:234c:b0:2a7:80bf:3125 with SMTP id d9443c01a7336-2ae2b8d4c4dmr66489085ad.13.1772284091041;
        Sat, 28 Feb 2026 05:08:11 -0800 (PST)
X-Received: by 2002:a17:903:234c:b0:2a7:80bf:3125 with SMTP id d9443c01a7336-2ae2b8d4c4dmr66488855ad.13.1772284090547;
        Sat, 28 Feb 2026 05:08:10 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:10 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 18:38:00 +0530
Subject: [PATCH v3 1/6] dt-bindings: sram: Describe the IMEM present in
 Qualcomm IPQ SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-imem-v3-1-20fbcc1a9404@oss.qualcomm.com>
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
In-Reply-To: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1286;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=Gjwjv1lCsVfqWtOvbSx5kz5zoHEXmRNs/DPgZ/2rhho=;
 b=IyOcY1JccX5ilrUr0KJud1Nmllqy4umeUU/oKGxSvH8lZ39Vk7dkn1ijzdHKoyPIaQFUGoCBz
 6cCM5cQLxM6DBH8pOfB9Vijed6WlJ+YCbDCCWFaMH8to7Na+jNszXQT
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: QBzIJ3jxKcaPA4jirqzwvAtFzbFlXHP7
X-Proofpoint-GUID: QBzIJ3jxKcaPA4jirqzwvAtFzbFlXHP7
X-Authority-Analysis: v=2.4 cv=SO9PlevH c=1 sm=1 tr=0 ts=69a2e8bb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=Yu0Y65rDbttY8LA09AQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX57fMoYU68JF1
 nTyJvEdllwN9/vf+2e8+iPjOrGiSjVzaPXiuHJN4Dgwx5NG9miKBgvvMwak5JNP9J7Ci+8pmeeY
 duBu1Tiz+5EbeX7q2XwTmUZvV5YZqRViOZTRdz3RYXDoOLQjNCEPhbghuiAGsTwrnvNfDFXDImo
 GrePHOT+hZRZ65vt8XL7NDuSeVVPfhpQmjg/aG6TGsigjyDrBDwHpmESbNN0Ak9N5WmnHg0SKie
 MsLTkeaiCqNBUwaE2K7d1vE2/trLHmySgSFvCaSPpQhtGvAEPQOLDGP8q+uUe8YlRJ7MjFjO7Bn
 /Ni7+ObH0/NODu1m6XfytVB21RnZDdwB4+JGYO6lIRqqx24Z+HHgQLdIOMiLvgoNPmVLhV2B53w
 Vf5d1+zuQmuX3kEDrTnGWOI8dE9MAJ/c50fpYz0JtsLzFFCblBlNwimrGcA7zghR/+gMH+a7CNU
 LAGIT/eUVhteGyxTk5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269556-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 95A081C31DE
X-Rspamd-Action: no action

Qualcomm IPQ SoCs also have the IMEM(On-chip SRAM) region and used for
the various debugging purposes like storing system restart reason and
so on. As a preparatory work, first describe the IMEM region and
susbsequently add the required features.

Across all SoCs, only initial 4KB can be accessed by all the masters in
the SoC, remaining regions are access protected.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index c451140962c86f4e8f98437a2830cb2c6a697e63..83e8c1e7070de782557fa7a36573cc48cbe28c62 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -34,6 +34,11 @@ properties:
         - nvidia,tegra186-sysram
         - nvidia,tegra194-sysram
         - nvidia,tegra234-sysram
+        - qcom,ipq5018-imem
+        - qcom,ipq5332-imem
+        - qcom,ipq6018-imem
+        - qcom,ipq8074-imem
+        - qcom,ipq9574-imem
         - qcom,kaanapali-imem
         - qcom,rpm-msg-ram
         - rockchip,rk3288-pmu-sram

-- 
2.34.1


