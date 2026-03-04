Return-Path: <devicetree+bounces-271209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EGkDzR5qGnpugAAu9opvQ
	(envelope-from <devicetree+bounces-271209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:25:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C55F206499
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AA81930E0FD6
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD69D3E7176;
	Wed,  4 Mar 2026 18:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eSkmZLD1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CiDCp8ZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18603E5EEE
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647495; cv=none; b=NlL+AnezI5B3KjLmB5f7E8es/2gqQrHuC20rFY9uGEbGR97FMOftxlSRA073IjWs6VB4TukJAqX7oZ2FLdGlrrv74R/Men8zwHdIH2b4oL8uVGZ5FichcP8iMFpuFrW//fULx0vUoWFGLjc3YY4XuUHbHIMOfrmL7yCJC+gj6Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647495; c=relaxed/simple;
	bh=3KcpMftv/JE0g+EzWaIo/3jzOWEmXkeaFO3VA+Q+II8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C/oFHXr+VVDBD6vyGkY9etdWgpP0kBWN6MDKXYeHgDLfU2/btZkpeo5zk6wk/3i7Awk65IuoTw5QPOj9XNckUgajYnyN3JhLFYApUHUK2/lY4WCuOjZHOaZ5VmZTwZaVLB83zd5AAw0mcByD1nfiM494gcyNqDU/I8fHGqdRoRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eSkmZLD1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CiDCp8ZH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624C3Hkl1679276
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 18:04:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dkAGVLxymyDw3qYaLpCIZMTPmgwUM2iPvtUgmWLOhvU=; b=eSkmZLD1PtTRYS8D
	FUwM6t5pTV07XIo7u4bKENCGovjEdmuCLAzKmK7LIJie4U09aqW9EoGh3ZskVsIK
	0uZinK31+L5YfVD7J0hEbm/PZb0DyPAhDL2Bi7hiwtKDL/y0Kjru6ZrwUxKN6+oM
	bZxnFaT3HWV/ZJoSFm/5ln5RIw5/2r+I7R5HypIPpTVnPmA71bOXhoJuhdmMepdt
	7KyCXMNIVBaMIG4JFJpT3w8dQQroOn89099M2xuXntr2lDsk2is4ftVz/kBr7/2I
	m5GUeBrV28LLz/ODL9Sfi5WlQYrw5GJPbMc0EpquLETmg5/z1NUmjDFeoKwn8vg+
	IO1GfQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73hbvt1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 18:04:53 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3598f4fbb13so3356581a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772647492; x=1773252292; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dkAGVLxymyDw3qYaLpCIZMTPmgwUM2iPvtUgmWLOhvU=;
        b=CiDCp8ZH5shXR+4o0yeMV4eoyk5wePzLPAx/s2OYyWe+zcH0np1Gm1qzggnYlsVDpW
         S2Se+X5QZSKRHB5ht9Wqf8QmKxsBoCe5F5PNqevZZX7TF6f51RJOlOsspjpEz5DpnrC6
         4gNoCL45w8JKn4XleKODoxtrMhA8kY9OcOoKqCunTS/4idR2n0uQcrKwbo5s0yM6ckLP
         +qcu/DEDsSnWWaaKdYqWGxV8dk/eW3s3ZDUqP/YyDwT3eZMZWxp1jjAkopPXvJVh+M7D
         86q8giKQE2PFv/I+I3txv7WG2WkLZHfZ2wF9yYO2RZuMEz4N6rgk0CnvbINQsoHMBRS6
         F/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647492; x=1773252292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dkAGVLxymyDw3qYaLpCIZMTPmgwUM2iPvtUgmWLOhvU=;
        b=dv7CRFB5QT1qTZjZCWbSAGms75qAkOOWwsg9Vmy2cxYYbUwfDSlTthJIcM8Hpqzkfc
         H0qDMY4c0QyF67TVBlipxz6LiEfQYabc3j1j6ifJQlbMs45OGFAfnbwr19pksBjeP/gu
         9PaPQyLbVUjAnJ6o59Pj1d5H8xo/oHGBznjTV6V8XAEaWXiQXdqToyCTWok9Qa8tIVz1
         CrI+qoPBPUtFkSq0YP/ygbrMWhfzVhAxtyWDXdFL+BUlfy/ZHG4GZBTl/wQrvW3YQcxs
         Y6j4LKHsaWzzTyiEcKa1/wxcP/ot6VcZHH8Mv35xP5V0i6nOhHZ8oPreYpGYcAmjxjju
         usHg==
X-Forwarded-Encrypted: i=1; AJvYcCXrDJKPkUSh4oeMrbcAAToWXoyGR7aG6MhdlE/XBKn8HRqP7G36zC8+oToh+we9bEQBylTbr/hr397C@vger.kernel.org
X-Gm-Message-State: AOJu0YyNMV0TP+R7Boto2+u8rkDq1SvDwZE9XRS2eA8wwHMWY+mIYkZf
	p0BYQb1epOueICwhNtuaxdQy+BeYwfbOD2c2995f3xloFcEt9/B5MQEunXqNT4YNpych7No9au8
	zQcjHTIywP7cwqT01t/O78Pe+Sdf3Yxwl6UTSnkDfidpavuiXauNixLS7MZucEd7+
X-Gm-Gg: ATEYQzwJz2pNKNg4hEBWCfygecvTDIJfr+3XjE1mc0aXAn0PTKT8E/aKwEzckeYdUFA
	8jV2L/+3vCvmMjp5KEECtlFBZmI0luSZ50ogwyQHEw8owJktAZIOX8dYMCM0FKXDJOHUvrXfiKo
	b7d4a3xqF/dPZfgjTVpjfOdzA1ODk1mbRQRBj26f3LANbZSHlAw9Qv7R/1nv2Nbpno87c48B8Kh
	frht8+9PNEcQI8wZ98WVBPHDxAN1LIXzlVKnY1+cCmkfC725LAcq/iikDN8KpVKUGqrx2DjMM/7
	fIgXGrktfXIUqeZQg47P1b3o3GzSf8MsxaRHJ1akQWq1BMbq7qFpW+t5FAvEUAGujS05w5sg8Oc
	fiRjHSdCSoOVerEFYE0PIt9fF+atDiKmI08jH1JjqZBlhNFNmxfnxN76nwg==
X-Received: by 2002:a17:90b:3910:b0:359:97d3:5c5b with SMTP id 98e67ed59e1d1-359a6a4a348mr2128003a91.20.1772647492472;
        Wed, 04 Mar 2026 10:04:52 -0800 (PST)
X-Received: by 2002:a17:90b:3910:b0:359:97d3:5c5b with SMTP id 98e67ed59e1d1-359a6a4a348mr2127967a91.20.1772647491976;
        Wed, 04 Mar 2026 10:04:51 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359a8f22062sm1080606a91.1.2026.03.04.10.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:04:51 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:33:10 +0530
Subject: [PATCH v20 10/10] arm64: dts: qcom: talos: Add psci reboot-modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-psci-system_reset2-vendor-reboots-v20-10-cf7d346b8372@oss.qualcomm.com>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
In-Reply-To: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla <sudeep.holla@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Song Xue <quic_songxue@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772647398; l=1101;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=3KcpMftv/JE0g+EzWaIo/3jzOWEmXkeaFO3VA+Q+II8=;
 b=cUCn5OWA7AvhELGq4rqhhkW6m6l8Vo0pmb3w38wCUmkbw5BJmSxyims7SLPYd4bnB05+gyiSD
 QNYkDzzoUC5C0bIcNG1ei8wkNS/WpiXw/SJz+yWy24dY5ssr4vbXUgq
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: WdJEc7cMdw7623IrXZHRPFito58F96ZY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NyBTYWx0ZWRfX9Mf/9ikMdT2N
 ilvFDLGil1qk5Gt/WgZsjr65UG6w4c010br0LHgTJIi6DhCEx/rIyHno1FhyV34N2K7K/ePElEu
 Q6dXZcrJpGqzX4TqLYdmUOaqZMIM0AkLirfM1I6XGfP3VQEP5uc8rVuQf6G/zhgpP7L9lVhDLVe
 CD7PQ2qL7+E+2SJvMlJ96NbC9iJOKjVz5hMBjEUBFB3WYU0iUWevbLg5xYwHhmqr5BdesZ9+aSp
 VwPdU9R5LkYhGxtkhIEHCUTDEalO4wBjfLRMtHgS+YuH2d6ZUbLTZEfUgoVEEIYdNzLc+EVtQad
 ZZ2f2vJ8Ew1brzbQq+k2ehEFwqhl/c4PVYBG1TzPz3XoeQeZW0kt3auPfbGjPQekHsZfi+FCDp9
 QhMmhoTW8bkre3Y73reIcEIQq31UD0gjGzIElWLg8+nZlUYp4EoNvayoi8mFM/jZmg+8QbAJPd1
 0JJGVa18KiLRS17TrPQ==
X-Proofpoint-ORIG-GUID: WdJEc7cMdw7623IrXZHRPFito58F96ZY
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a87445 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=4cuBwC7xTQKafrdxVH8A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040147
X-Rspamd-Queue-Id: 3C55F206499
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271209-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,quicinc.com:email];
	FREEMAIL_TO(0.00)[kernel.org,arndb.de,arm.com,rock-chips.com,gmail.com,linaro.org,ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add PSCI SYSTEM_RESET2 reboot-modes for talos based boards, for use by
the psci_reboot_mode driver.

The following modes are defined:
- bootloader: reboot into fastboot mode for fastboot flashing.
- edl: reboot into emergency download mode for image loading via
  the Firehose protocol.

Support for these modes is firmware dependent.

Signed-off-by: Song Xue <quic_songxue@quicinc.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 75716b4a58d6d331337f8a4f3f41f62a45416ec9..4e12d19e282f81b7e18ecb2868b8fd9fe3975651 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -617,6 +617,11 @@ cluster_pd: power-domain-cluster {
 					      &cluster_sleep_1
 					      &cluster_sleep_2>;
 		};
+
+		reboot-mode {
+			mode-bootloader = <0x80010001 0x2>;
+			mode-edl = <0x80000000 0x1>;
+		};
 	};
 
 	reserved-memory {

-- 
2.34.1


