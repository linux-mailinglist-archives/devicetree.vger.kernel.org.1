Return-Path: <devicetree+bounces-259665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F0xHwH7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:38:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBD08E38A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 323EF30268A7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDA2D3101BA;
	Mon, 26 Jan 2026 23:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e/gI25H8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KcAPsfXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D0A30FC08
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470716; cv=none; b=h58Qr5l0YFYD+rOtvVQonZZYC3cYi6XVbVhRB96VPnvrGD9m+HTk6yPYmvsW1XCHFGn8byBu0tCGppJ8N6SU4i8pxZDdK91ItCWTVCmqC1rs0UHdJiP2/LCNhL5BQ9nUqsc8wR2XCwSBVrbh4WlHwVY1IK6C1HnURloKk0QM3XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470716; c=relaxed/simple;
	bh=akNftRbJ5E2gGyqkSyObc2C1zNjFMSE1YjArvdXAPVM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=iUutf1fZhbF/O1fiyVhFXlzvZhetx7X9vVpsoPA/7kgbkpwoeAgT1LlKf+5ryNthmAVjDfS5XVLfV8ofhoswGb6JyJk1rXWhZbeWoW2ledsoE0MDg+6D3W3TBhwNXZJrxp5fAo9AbAOgFBAh/cM8abfQxF5tv1Pirc19ZTHM4RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e/gI25H8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KcAPsfXZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgeev287398
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=YQ/XMWG1rCwru5SUXobxjv
	1J94W2NudtyEbgjI4rQUg=; b=e/gI25H8njBnDaaSiMHFzH7kTkvjVfBUOUtDrB
	6ps6Dlacx2FFshNFknk3bGmvQV9hK7CU6Ekamb7TvS1vpAEz27S4CdoLxe6QXD1k
	NzG3EKVGslKbdMRjDz8V5Dntn1lS3eY8xYpkaR4pUyHVvie1MbIX+M05rxXJuM4/
	kuq7eUXmpH+2Ukv3VQwEjGhxsJ7YcUNfuGDsAhM6OWtms0f24VpaBaIltsKoS8ic
	6SMnpvcvLyU65UTyF9SNbatGVbZVRKDSS+2UfyeHs9NyQGF5PcmB/nRgFCXxt+Xr
	xGo8nFa0/+rrYUIZjjmCxaGvH0Y5N4/0E5JAyFLFd4t7k+TQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdva0qy7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:33 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12339e20b66so6505576c88.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470713; x=1770075513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YQ/XMWG1rCwru5SUXobxjv1J94W2NudtyEbgjI4rQUg=;
        b=KcAPsfXZM/auORixLqXItJm1ajckKFbGRiZxdrJHrzw2/1AgcJpzKtHjxOfybI6YTy
         PMS5LfIhIDXZaTJDvkofuAEdoAEvsdqG7LZBvgm4wZOITBe9EJI7i/WRpX5YVx4xXy6U
         ouPugcC3JqiNAiN3eyiYflsCAesLcomUCKhAsA9c1CuHd/wcEIcsRZIy/65S5kFamYU/
         pc0RjMJxu23HmsQHE84BuhYBzjGki1xk8kDUXpD3E002/D2Tcx1tTA98lu+/cKQHWZxK
         gVoGU8hLNg9qF+CfRkD8No+zTpXsXGKI6KYPb/LIotj3FzATf9nuveuZ/n1ctp0cKYsj
         axXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470713; x=1770075513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQ/XMWG1rCwru5SUXobxjv1J94W2NudtyEbgjI4rQUg=;
        b=kzHvRtOn72QoHc7xWYJ3yPylnk0cWaE8ybg+WCJkYAoUooV2xmxcEMPrKthp/v+1VU
         cL+HYdrsyd6wrXTlZqiRs8Qi6VM91eEiXhCIEVWP01a1g//gV495P6S2cDFxO0PI8lgG
         kqYd8XF4BWREZc9DzHicNn+K9ukHTjWBEdoPQJPYvwb0+gMGM3/iYPRWOm/KfGuuz36a
         dli5ma8iZDMjZXWCb5TT2rNDjWx9BBit2eYQJ/vaU/OzipsMDASDMF9dmbx8ADt7yybP
         BwjuyiwfGPdW1i35AR2B7hRWTpoIdl5tLNrk6zhWlv4KT2Ft8fmrKiXiBwZ5LVBJI8ba
         mpgw==
X-Forwarded-Encrypted: i=1; AJvYcCWAPdGmkhilBxx2IN9MH2cAd8iH3K6zPiKx3A4frEsdZzVCVJK9HlwQ9O6FktGPD93TJh3xkF2H4A02@vger.kernel.org
X-Gm-Message-State: AOJu0YwtYgNGikBBTK18rrujZyLpizmYCypghPqSAOahjkOSSA0ODscf
	eBywKTOCwWpPypqjJZk5tXXa60BXZ4gKg2FMMePFWvFqSKu3oXNm9jVZqEPc8mz62tYdIgYO8rE
	ZgjgexD0gDlQ7lsYZlRPa+jVIAz3b9faCrwUr+ytFa7x/YMTebtC7CffQ72YABcvH
X-Gm-Gg: AZuq6aJ0wLCVY5eckIXTAvKwypxaY1+vQ3vIaLCk9/nCtaGghIpeOZEd3AE2B4HMw2d
	ekjqcPBWM8OdoSvnJZy6KQ7kMY8Tc4Jnpmg0wno2ipNtEqln2Ly7sAimTwG2pjf0TvjUjGvzKyp
	UemzUhMci3saQQjyMFdUTivDTJA04Y3IfapzAb0wy9198dqRKAqKVEBaYsox15kAAyeR5XMjCUA
	VYmb2jzAXd/J2SeXh043hr+3tts8YH3U4GP7IbErsTd3I9elXBg2iD/i4gsPlEHn6f+1BlSUUaq
	eiFpxiDAPISdXQ9itgBHs9rksspxIoBHYsycO9fw4EBtmO7l0NgxroRpi5HErKRzwfn0aM9iAsM
	0974b7cRBr3PzUbWzT7NVLJQ6XRVddp0EucWRreSs048o7ikRkXbO6uY25+0eE6E=
X-Received: by 2002:a05:7022:4399:b0:11b:9386:8265 with SMTP id a92af1059eb24-1248ec73b0dmr3411969c88.42.1769470712712;
        Mon, 26 Jan 2026 15:38:32 -0800 (PST)
X-Received: by 2002:a05:7022:4399:b0:11b:9386:8265 with SMTP id a92af1059eb24-1248ec73b0dmr3411948c88.42.1769470712102;
        Mon, 26 Jan 2026 15:38:32 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:31 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/9] Improve Qualcomm EUD driver and platform support
Date: Mon, 26 Jan 2026 15:38:21 -0800
Message-Id: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: k_Iv2XSbdhLcloNb4R9JbExs3F5kJme3
X-Proofpoint-GUID: k_Iv2XSbdhLcloNb4R9JbExs3F5kJme3
X-Authority-Analysis: v=2.4 cv=I+5ohdgg c=1 sm=1 tr=0 ts=6977faf9 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=AzGkZF0M6A1vzCAPr_4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=LnhvVPq8fVUA:10 a=vBUdepa8ALXHeOFLBtFW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfXyXe6NmHtD5e2
 rBkT0zOEfNocg8q4h82BqgLkrG35BwmSfFBCZ5y5X4x/MFWnJhdFPBwX8l4lR9lEmWHQEyFD8BJ
 ht7skKss4R6mjW+htSJniZOXru4iVPEQgsW41P5FFJW4aGvTlJG/ZLNT3A6xpBguIRtWQHLAo8y
 LR0yPd0DRBh9zLZZsku3kNTh/4tRtubGKgHbJugFsaFISxH7ccQaFO87MkiPKR9KCyJuyOGElmt
 VC48kudcldmjWmMGSA4mxtTBOZAZq7Xv2wkvaa8Z3fjylTnSvtzatEbhGlsNJuyY2bljpdMpr3V
 ykvfQBeRLncRtHIdpS3yUkT3GFH2XWdXIHldAGOFgDkIFSS0lZEqRtB1jkvYmrr4v7gkEQsOscU
 z6utC34VsVvTyrsPSslRWhf6JFY6RLzqaWg/jFVsmo6xLD7zkLc8mHn2Tzwy2t1W0+XtriGRkFw
 NpvURhpOvAJDT/3z4VQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259665-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:url,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3DBD08E38A
X-Rspamd-Action: no action

The Embedded USB Debugger (EUD) is a High-Speed USB on-chip hub that
provides debug and trace capabilities on Qualcomm platforms. The current
EUD driver, however, lacks essential hardware resources such as PHY
references and support for multi-port configurations. This series
addresses those gaps and introduces the necessary device tree updates
to enable testing and validation of the enhanced functionality.

This work builds upon an earlier EUD driver submission:
https://lore.kernel.org/all/20240730222439.3469-1-quic_eserrao@quicinc.com/
and extends it with support for multi-port use cases and proper handling
of EUD operation across different USB roles.

The series has been validated on the Qualcomm Dragonwing Q6 platform
(RB3 Gen2 board), confirming successful OpenOCD connectivity to the EUD
interface. For detailed usage instructions, refer to Qualcomm’s Linux
kernel debugging guide:
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-12/debugging_linux_kernel.html#debug-using-openocd

---
Changes in v2:
- Improved commit message of patch 0001 and 0003 with historical context
  on why EUD worked without PHY references on single-path systems.
  Expanded the usb-role-switch property description in the bindings file.
- Link to v1: https://lore.kernel.org/all/20260116232106.2234978-1-elson.serrao@oss.qualcomm.com/
---

Elson Serrao (9):
  dt-bindings: soc: qcom: eud: Restructure to model multi-path hardware
  usb: misc: qcom_eud: add sysfs attribute for port selection
  usb: misc: qcom_eud: add per-path High-Speed PHY control
  usb: misc: qcom_eud: add per-path role switch support
  usb: misc: qcom_eud: improve enable_store API
  usb: misc: qcom_eud: add host mode coordination
  usb: misc: qcom_eud: fix virtual attach/detach event handling
  arm64: dts: qcom: kodiak: Align EUD node with binding
  arm64: dts: qcom: qcs6490-rb3gen2: Enable EUD debug functionality

 Documentation/ABI/testing/sysfs-driver-eud    |  16 +
 .../bindings/soc/qcom/qcom,eud.yaml           | 100 +++--
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  33 +-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  |  20 +-
 drivers/usb/misc/qcom_eud.c                   | 365 +++++++++++++++++-
 5 files changed, 477 insertions(+), 57 deletions(-)

-- 
2.34.1

