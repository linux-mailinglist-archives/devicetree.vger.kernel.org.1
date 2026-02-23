Return-Path: <devicetree+bounces-267426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCiRF/pYnGkAEQQAu9opvQ
	(envelope-from <devicetree+bounces-267426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:41:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D391771A3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:41:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6502D3079B9B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5BC22FF22;
	Mon, 23 Feb 2026 13:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MI7AM6x0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wgpo/uYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8D221D96
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854008; cv=none; b=nIkv4UgmNMH1dW4Ubk0xnxFJmxyHmFI+w7W1pMrcPiL0ahud/7ydvJg9Tj5VgD8ZInCJ5BBc5sJEsYejAriMf/tOZHgIZEwmUt9KouBDNfX3ucdBBRqA/SwWUvr6F0QsnNeKr5TdnZZqAYUGiWjSWApQFRrhvbAI7WY/EBIU+L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854008; c=relaxed/simple;
	bh=xTRDG8VPVDkjZn6a/v2LqpAFndZp0nERDikx8C8cNUs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=orI4VNnNmhG5CRM43xaS7iEj5Bl+WmiQJVid3I3KEC4oQk8u+J90AVjIACq0a5d+5OSoDF4nqdOsiMv/nJxQ9url2ZE/cZEx3Dz+IZJ753XUlUqZXLmX+ZgeFQ4JnNHA0gqI5Vr3C1i6ScCjAMKntt5Rg2O6Mhz5plg4MW5U5UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MI7AM6x0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wgpo/uYH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAYCNa561326
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=JV0fojRxZfJZR81WNnONfv5U829bKs2Tndr
	jWz17jRM=; b=MI7AM6x0WJJ7Mwa1Z/FpBHsebIUwOdT3oEBJlo4qxVfcajUNphS
	hvB5BzbjkPYJvaIP9dr1pV+zPcIzNIgPdE9EcHi3Sg1isX046K8V6XhfqEz9KT96
	NcwRe2aARhSdPZtVLzWuBLt3phn2VNJRTwhubVnhsLZkY6kzbtCo+zUbxCmSEgLo
	ThnEzz3MjKBoYglf00gMJMYXsr9t17nrd9TDYuDn4+4mnx5P+VlzxS7yPxcjZAvK
	c8FqJ7p+a48Ulk8if4wW29gQHyy0m7z81hc8NNAD+oLGDjtzQT0g8dVKXXaEKKuS
	SWA/y5fE8gX9U1LcTpAGIr9/bOQNNYcHhmA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8r8fmt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:06 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb413d0002so4992149085a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771854005; x=1772458805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JV0fojRxZfJZR81WNnONfv5U829bKs2TndrjWz17jRM=;
        b=Wgpo/uYHxL4fnFSdaiHj7mNE9xsoruVn40ELCjKlOeJ7mqSdrpRXRpvF1CnPxOt2mg
         C8o42mwI/WWvFFNc4kVHfe23QLwzDQH3oYJ0dE1Gv77VGr5Fkkrzo1T+76q1xDiS4SCb
         Mf0cwkGNn9Wm6mR+e1Lrbf69ci2Wgs+XrMgzNb/tJqg6m23FY8CS25IWrHvk/ng5v80L
         zFMzjPf50fq6oItjfesSEJ6tVus/EMQN2IFK9MrHZ1MYIDA+Ueg+BdRk34Z2AcYisKNc
         SGK/axzWcXRegaAU53//x8oELSZuJrFudIqEGSru/gIkwg/gOj+8eP42ozY+4byBwFBr
         0Tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854005; x=1772458805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JV0fojRxZfJZR81WNnONfv5U829bKs2TndrjWz17jRM=;
        b=ImtYma7dRahpbl56zihorC3fsxnsbsBpGqXAknrakh4VB1IdMKCwjt2v2hO7bgor8S
         eC4KbylECghbP9PYFvy7S1qVkjl8HHfwoyIEs5WWPU3nz4ybjq5IFK2M4UfL9CgR2Lnt
         9FyI6B416tCXop9lFGgRZfU0xbL7wvjTETVHkqEWVIVdvL0JoDoQtFd7o5fVaHGisgea
         5TjuRBc5vZx1ZVdNvnhZOqDWnoNmFMI5X/kRkKKmDdhlQCjV3poAMYoQ4YWo339uawFW
         fr7YHFCAWqPJGHN/sSWC4aF4rc3SfMWpuXwgreZnQadzIrbtsWVVD1ZmGWCk106uWFvM
         6B/g==
X-Forwarded-Encrypted: i=1; AJvYcCWL85e5Ar/3Hqh8OhEbg0temwr7h74Ab453TYHFGyvoQVv1FhmtURhsw2S1WkjsyKC/ppkgANe6VtJq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy938PSdIyRlVrxhpQ8+7LAKHKTR4wivdYC6g1qOPYGYgg1L2iT
	Y4s0xhLFf9f1GhYfZGSiZBVe0qfoLW7U5Qi0PHiqKI/XseGko4SGU1nAE4BRjzc97f+p8xOvXsE
	epa0pLNVwSNnDiLwOUQlhf3BHipKYXvaqyUQpEzR2cB4NM5B7lbttDY9Lk5xhkbM/
X-Gm-Gg: AZuq6aL8qPbWPqmxoHwgTdFi2TcL9jQNPucS2zzZfpIe/LxXeC2AHc65EHcSBJX6MB4
	03+owEGxZiodi7iry1f/WEt8dkEO6471RY4ZkbIKr/UkE3klqf9de7A4LCW59M56dvRHBgcdZHF
	YHoMLDnBB+jl21wn46KX350yZyJNImhekiw+/0/6lnl8WbfNkNznGzUoO/h5Og9zLIWhaeVISNc
	BkuyhxvhXJaHgguZX4s275+9t+3+aB3lXp6lgKbzDzC0a5E9+GUlSJI68G7yr8EqsCeHQwl5vEZ
	nJ370Dh4JNzufEkk0bLdrzqt9UtqAql6N2DGhrgCCbzKWAUisSJ0ML8LvGYr3A/+8vswSZ1NNd6
	3qR6NvzwRNKsj3/nkygJRoLMwPKVfBd0zoMKEQqNQDSZyU42wK5JhfC0=
X-Received: by 2002:a05:620a:6c86:b0:8c7:1b10:e35d with SMTP id af79cd13be357-8cb7bfc8d51mr1648315385a.24.1771854005035;
        Mon, 23 Feb 2026 05:40:05 -0800 (PST)
X-Received: by 2002:a05:620a:6c86:b0:8c7:1b10:e35d with SMTP id af79cd13be357-8cb7bfc8d51mr1648311185a.24.1771854004562;
        Mon, 23 Feb 2026 05:40:04 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c626sm21323985f8f.28.2026.02.23.05.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:40:04 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 0/5] arm64: dts: arduino-imola: add support for sound
Date: Mon, 23 Feb 2026 13:39:45 +0000
Message-ID: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: LJ-VkjfTNp2rzLWbJIejFueKk2GiTRTm
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699c58b6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=qC_FGOx9AAAA:8
 a=fKfvPGargzKJvhmaAEoA:9 a=PEH46H7Ffwr30OY-TuGO:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfXzc8cVEunJRBw
 VUY+CKQDeZejHoO4UTjEItZoUoqCKYCRBB+JIOP+7cjRgoXXFnkH3G0y71F+988O6fh2k1b3QmZ
 +xkcFJt6c9x78AwyYhgfHP7fQhYXk1D5u357/K/d7c3HyyiYv2cVzH4NG3NjhcN6T76a+RgxLxv
 U42FJDzNac7t3UeNAx59w1ROC8Gv7OVINbRCMzHg35lfl8Lww+TpoImpNj+03Sc1xf3XhX2Hp9d
 RiP5Xweg9cpSaBtcGgyAAkkZQlZm2wNU58+8ymlONK0qltn47jTQWye1Y5h7hd6YmYEWURjWyjr
 ne1ipUCTMSL1GHcATG3NInQdIYcRCmfd2YhTCMqrVvIa7TsJuoVA1AD4Y81aPbyDmH2Oo6vEnht
 4ABH9NgDthilqmHUdDjgo0/h3aDr2DpnRxskWuJa+xZdLFkNnUgf/ljJ3/6Ql5XOtsGEZZWiSk3
 yTASk8BDzj2ZPgI/NKA==
X-Proofpoint-GUID: LJ-VkjfTNp2rzLWbJIejFueKk2GiTRTm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267426-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C0D391771A3
X-Rspamd-Action: no action

This patchset adds support for audio on Arduino-Imola platform which is
based on Agatti SoC. As part of series a some of the patches worked by
Alexey are reworked and sent as per previous comments, mainly on the
dt-bindings part.

Other base soc level dtsi change is picked up from 
https://git.codelinaro.org/alexey.klimov/linux_next_tracking/-/commits/rb1_audio_wip_v3?ref_type=HEADS

Along with these changes, add sound nodes for the Imola along with
a fix and defconfig changes.

thanks,
Srini

Changes since v1:
	- updated various register ranges as per documentation.
	- added a fix for sm6115 lpasscc driver.
	- updated commit log
	- fixed various style issues in dt nodes.	

Alexey Klimov (2):
  dt-bindings: mfd: qcom,spmi-pmic: add compatibles for pm4124-codec
  arm64: dts: qcom: agatti: add LPASS devices

Srinivas Kandagatla (3):
  clk: qcom: fix SM6115 lpasscc register offset
  arm64: dts: arduino-imola: add support for sound
  arm64: defconfig: Enable configs for audio drivers on Arduino UnoQ

 .../bindings/mfd/qcom,spmi-pmic.yaml          |   6 +-
 arch/arm64/boot/dts/qcom/agatti.dtsi          | 167 ++++++++++++++++++
 .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 138 +++++++++++++++
 arch/arm64/configs/defconfig                  |   2 +
 drivers/clk/qcom/lpasscc-sm6115.c             |   4 +-
 5 files changed, 314 insertions(+), 3 deletions(-)

-- 
2.47.3


