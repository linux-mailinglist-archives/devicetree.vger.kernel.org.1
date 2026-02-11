Return-Path: <devicetree+bounces-264669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKXsBdJHjGkHkgAAu9opvQ
	(envelope-from <devicetree+bounces-264669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:11:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D55C122938
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 862D830095EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DFEE355040;
	Wed, 11 Feb 2026 09:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6sdTWNo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hsmbItn0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DF5354ADD
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770801097; cv=none; b=gN33XFo4+4xcuZR8CoxTTscc1zMuI+QcOh/MeHbcgAKBU2cgOHbytTcLvOsSDs//U1NsZZnghjX2K2ty5FqQwJe7v8LXJLTmeT6KiXL7DPFRt56j+Hrftw52dX4+4blOlCrcBZLWX6bq+LwspOVcp43l33nsUJnu4+Yu8x2OCxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770801097; c=relaxed/simple;
	bh=GJWZ7Rm8qTVnP2D3HIa4cLF9KS+n3zEPlp3pqdzKCIM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tL+9UylGByHHwr0Pi8exvj9f2WBiZdKWg23KelUnJpqF/AEznirxdR44iK2sLjaC5WPP8dnEgjzSnX660w5uj06h/Nmbs/JErscvo94z9cCFU9lwiBqrsd5kHWHCi65tv0bYigdkucFCar8N6aLK6Yga6Wp8XSg4WQlhGoXQypM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6sdTWNo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hsmbItn0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B3cTsX837967
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:11:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=utjvZ4xDb24hS6m7SLahOnCAlh/uD8yBWYB
	XPpBlbcQ=; b=B6sdTWNo1fQpU9gnFnV4044QpXC4Je4oFUvdYDzdwcDdQRHlElM
	TUG4LOCO8jb2l34ktGmNN+UP77Po26ktow5KD/ivv+3sqywbIUMoaDUF04+w2hW2
	LRMM/Iog8V+J6lGW++vH2KcIJrCPKlvvYLFE0LPcugNqj25lxkUUkBTHnl10gNav
	94KP4ZJr5zq6djPQqQYy8hPD0sxW+JI56K6NqY/TGV8G2ruBxbkGpqx4WUBvBCqB
	KxYKipXPTVcL6SZbFmUBhdRiVCQSvYwQROM9iF18d4DJHONWLDFIAIK86/TYG/y3
	6E8XpolTpdxjZQ9flKVFsJCPzGKGJDkGTEA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8j1t8wyw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:11:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6de1ee12a3so2602654a12.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770801094; x=1771405894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=utjvZ4xDb24hS6m7SLahOnCAlh/uD8yBWYBXPpBlbcQ=;
        b=hsmbItn0XqwHwKQ2pzbrl2hRtz3wo8C+7jyMe3N80E4fagLWkD+5Y9ZWnwiFnY9jbY
         F+txxV6lrGpPOtqmUFE7EEhFWKealJxpkZifBi6JANNxHacpEAERGV9+e/+OcWQESgiU
         pFSTdR6WF+G4vgRidWMjX5r37GjjIvVF36Y4lOR63av5qVUgtxnhKsD0gMOO4SeTXAF4
         UN4u3Mv1AhF1BxIPdA45FCfVnKoo4eRG98/GspsTQf8MkUNTxvRXvtAWu/wMwKYpFry1
         IdkjOcoWhV/jgjUeYxDqfDRdqm5sglt7C33r36E/9S2/mdZ3JbJTTru9v3B865LWMygH
         BWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770801094; x=1771405894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utjvZ4xDb24hS6m7SLahOnCAlh/uD8yBWYBXPpBlbcQ=;
        b=jC36kfExEFNW9kFce6POVEgZ6SNFGupLjcJPdlQUlT1n+32jQPiDOmInCAeWMMkcNj
         DZMyexZjwkO5qTDUoVppbopm8adMIFVsvqeEs+RWV6AWOr4AX8FWM9/xbIt4d2b1PGDL
         BJyTvo8r+srZaymKBe27WJQ4FoUyOLFdUdW8sBaPJEq5YryUFvbeQmxSc+FOH0gU2XO5
         OvDKDGcM+A6xFWRvaDonVLTk/TvRQwQ6Qt3NV/Nbn8TIg7McXeIVRl9vZCtwkJ1V3tnh
         KLynuiFWoSFZoHYoTluB1WxZhcXMQneOy2D8vrJyPY3FQp90wOpJHVzWtSzPLGXNWwaV
         6ojQ==
X-Forwarded-Encrypted: i=1; AJvYcCW23NGiysGJ2C9JlaZbVY34eOVaNwMy0TMwSS55LJiN02MzaqPFV9ZVO7KACppkG1JkPdoG1bUcal4c@vger.kernel.org
X-Gm-Message-State: AOJu0YzGPKSKVDaZa8sOjRZ/bYyWllrLLPG69CHkkgf0EQtRaT2KAMQ7
	vY2TMtuH2V3Z5pUdjjVWGAbEjWoxBONDQf+Tm4EFKROPCsZZLiYvEcvpB1nASDn8jM9EK9t1FNL
	lTeldd/CrKN0BXqt73ueq8zhLIXU/Rivl7Q4P16bA6pYZ201HwKv4FmhZuo3C/PCI
X-Gm-Gg: AZuq6aJ0fP43sLMz4fSi/F8STQPvKErE3ObHUf/1V9OjShv502TRNHfF99zoK21pSar
	NiDvBJE85sOlcTKiklnTk7uZ3r9brNCif+zq4Jvn8L2h9V70rg1K+uU0HQ7+awWxQvmDMQ1487q
	4wPu+WNRsQBwfPEpZt4D+oRmpUPikRuQNELA8u+DYYCo4kHW02gTpQocf+QL7seGkglxRSRUVAy
	zVuQwCJ5MAAWrpVD5S1llhciK48Y/2SkIKuUunzXYK+LV6tt54Vt1uonMKV3OwGytsP2aogvz5x
	3nsPxwarc4nqUTFMJtZJyylx8PFgnIysrLS2I6cYP8dUmn5vsvp3tkCcjxwa3cKga8dEUYN5+6p
	fZo7Hgm17JLwC1noPDw2OW1k48A1rVnjDiutZyLA8RTfcDDTs1vZMHR8=
X-Received: by 2002:a05:6a21:339e:b0:341:9db0:61f1 with SMTP id adf61e73a8af0-39432252f26mr1508377637.16.1770801094141;
        Wed, 11 Feb 2026 01:11:34 -0800 (PST)
X-Received: by 2002:a05:6a21:339e:b0:341:9db0:61f1 with SMTP id adf61e73a8af0-39432252f26mr1508345637.16.1770801093671;
        Wed, 11 Feb 2026 01:11:33 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e1981512bsm1521481a12.31.2026.02.11.01.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:11:33 -0800 (PST)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Enable QoS configuration on QCS615
Date: Wed, 11 Feb 2026 14:41:09 +0530
Message-ID: <20260211091112.3285626-1-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3NCBTYWx0ZWRfXzdTgnpcrqmJv
 hCYMoS3Us/vU6n3B7JKY/LBbX4kXG0WUh+B1r1NlT3yBFVxaMdXeRXYv7QxCCSmvOUOCiXy1ZiJ
 JpA+Lqq18O3PGnchCNryX+Uarmj+3UuhRi6BSLHcx2cFyihJyJOfwW5QPpNR0ySa0dN6xYOA5nH
 XBgFtXNDIr4LLaBRSjJ/VWYmMYmjIHnnorFzd0QAhU6bqQj5oiIQObmJ3IWupI8GH2QRzVBy3hL
 LY25ZUa0wvnPK7zzvDZ4D+FroeMPeXVsf2sV7AgyPtC+Fj+Xl7HBWXFyISjJvBC40YDwFyk9nh9
 Y8nzEQdpMO9Q6wqmLfTi0nVvKHpeYkL/TdWs+F3LbzANkFBpO4b1U0wqmlJU5deWn0CyxKYy4ge
 yQavSC05CsW5K2ZyG6LahJu2xtbJcPWo3Ex9+//9G6q3OmSADe/ygQZnLHd/YR/jKMDBa7PP/8g
 yiku9Fankbdm54fhzTQ==
X-Proofpoint-ORIG-GUID: ixXTXkIjI8otxM4UkFoeadQVXufHNJQc
X-Authority-Analysis: v=2.4 cv=cabfb3DM c=1 sm=1 tr=0 ts=698c47c6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=fIl7fISSXmXrEScvsbQA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: ixXTXkIjI8otxM4UkFoeadQVXufHNJQc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-264669-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D55C122938
X-Rspamd-Action: no action

This series enables QoS configuration for QNOC type device which
can be found on QCS615 platform. It enables QoS configuration
for master ports with predefined priority and urgency forwarding.
This helps in prioritizing the traffic originating from different
interconnect masters at NOC (Network On Chip). 
The system may function normally without this feature. However,
enabling QoS helps optimize latency and bandwidth across subsystems
like CPU, GPU, and multimedia engines, which becomes important in
high-throughput scenarios. This is a feature aimed at performance
enhancement to improve system performance under concurrent workloads.

Changes in v2:
 - Added the IPA clock to Aggre1 NoC bindings to accurately describe
   all QoS related clock dependencies.
 - Updated the Aggre1 NoC node in device tree to include the IPA clock.

Odelu Kukatla (3):
  dt-bindings: interconnect: qcom,qcs615-rpmh: add clocks property to
    enable QoS
  interconnect: qcom: qcs615: enable QoS configuration
  arm64: dts: qcom: talos: Add clocks for QoS configuration

 .../interconnect/qcom,qcs615-rpmh.yaml        |  46 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |   4 +
 drivers/interconnect/qcom/qcs615.c            | 247 ++++++++++++++++++
 3 files changed, 297 insertions(+)

-- 
2.43.0


