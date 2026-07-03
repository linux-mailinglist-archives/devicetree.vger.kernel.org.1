Return-Path: <devicetree+bounces-319767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /IrOFztJR2qdVQAAu9opvQ
	(envelope-from <devicetree+bounces-319767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:31:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AED6FEBB9
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:31:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=j7ybRX7o;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=U0RwNDdS;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319767-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319767-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D29A53040B80
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 05:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468363859E9;
	Fri,  3 Jul 2026 05:04:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60F8368277
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 05:04:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783055073; cv=none; b=SEzLQS9q3ZiZ0NjfFnVnMdXBH2D2RYlcR8OU6cC7Iy+nRYCGDqf8N9cQmOFz4/8/uYIH/hGx+86Xxn+XYbrW+l+cnyRFW1mx6rdBMJCzoD3//KpSIn2fYvdlCx4xP4mimteZgtStVBWFPnBhnnwoRYymZdQD2QwFwr8W95BqTjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783055073; c=relaxed/simple;
	bh=mw2xywDtGE86eMiTObjMgtV9IqdLC+USGzaPZvRA/pk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Akp78TFP7w7TXYvdWh8N6YDNNTHmyHxlWygJvC9ga61/DqcOCzlzkegfzP+0FWoy1M7WqSDOdGU3cqILmBoIaF0wppXfujKcnKQPDqB04drpNoHQdfCKDiyWIPLLe84UsbsdLMIN9wo8IzAyP1X1/N7LqmDxnq+hXzp9YLunmlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j7ybRX7o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U0RwNDdS; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66342hgn2817962
	for <devicetree@vger.kernel.org>; Fri, 3 Jul 2026 05:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	md8wWc6/cgAOJXI2yDz++qo+slmTKVQf5dEfPIb96Jk=; b=j7ybRX7o89rK6kKu
	/G3+cqhxVEaf/oFTjSHPoCgSuQuP/4WzvDXZCeYbKKYKHUoVp1U9aAvX9xzWQSo0
	oud29xUyfv0iTHdkzbIKklSIsErlht4XidYcnKrunC5z4A3dT1A9rdbSvpC6gUa0
	EWUJpcZs09+hGYc/hSK5f8RWdhUzilHjEFoiQGybOKeCmKTCLCsrlSK286SE3js7
	7OaZLixqFcogRYT49HMkCB3W51uTTvg9Hj9ZDIlTx6t6DZ52hCNM982dFEo6NbjS
	spTT/RPehHg+zb5DvIcaOTBjshwU6/G6JSZwuz3iY4Nj6HWL/khgVDHWohJrQhOo
	ZswItg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5tpnjmxc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 05:04:15 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c8952346bb9so189188a12.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 22:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783055055; x=1783659855; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=md8wWc6/cgAOJXI2yDz++qo+slmTKVQf5dEfPIb96Jk=;
        b=U0RwNDdSfbMXx084KS9S/y7u6A2YJmxu091bVSO234Rf6pcusQWpwAXXNwzAiO2MmM
         I/iUwiwTbnnioza9nEX0bd1eIh2DLgrI39/B/ggsC452JcSqhC6qL3UD4+uJ7xMpzJj0
         XIbEVm0N/oveB9Optfytk9VER6dlmUPQG+6jJ+KEXVqmcAZQErAYAbNL7mfGyXRroC34
         Zompz0btS0R3assV3qKY9YMzsGHg8XhG1dHVjfbn9/M3jbfvk54hmbdJ8N2sH8tRjE2F
         nfAJe2Lky93pM5dai2fbeQJfYVoWaTOm9GPsXz4xMWxokdjCSWsFIICo29nEZ6pSt+4c
         GAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783055055; x=1783659855;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=md8wWc6/cgAOJXI2yDz++qo+slmTKVQf5dEfPIb96Jk=;
        b=RyFPS0UlZgbKFz01zpyiNkPb1K6R94sR6vic3AxijQMpp5ZfFmmL6gO9/wFYazXkqI
         3pdHG8mvYRGpqZfTmKRKbzIWRwUUoSofpd1bneMm/hixKCCGotdEBHYBKQj+XjRZLQp0
         gLdkBi4xF0d0ikfCuFHocv/+pKCZ9OWrIstS+jJBqUS0IJDktKHCjkpE0tW/l73dSDoV
         +NLRmUR7OmwrdcCMZ0G4FwQRf99smPjuuNm7fKrA8bDa2/Yw0gipWCoe7MAnXwuJXP9Y
         TboHScmjBEvzEnIDWuE1Hwixyysuff/ZA+/G+njPRaFl08q6IDdKXfyz946sOSrZdanm
         IarQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrcg8g4TlqQAy8rve+4p6FKuQRxRRm1SWJid1kMTnHQ3vYRFuCG3Pr4xnzQecA07LNNBMYCn2iZ9Rjy@vger.kernel.org
X-Gm-Message-State: AOJu0YwIp+WGK+ePaD2j9ptccoeHgnnkRE5wA5XKglW30PuMVQHgsDuN
	ePo1LjB31ssQPWc5YRN96hQ+IeQBm1Yd/qwR/Ru3h/pz6WmVYev9IA3BZ9aETLa+xUv8Q9p5Urc
	rkYmzaLSjRVdtOn4fB6O8Mga0VB2dKLzKm5nPAyKyjS6Cluok/jOuu7c/gIK0vv5h
X-Gm-Gg: AfdE7cnhXbNUe57+GWysRFvkKDmJCr5Y6oYrSdYLhRmq6+0ZldmStUY3iMHZctPFQcT
	0GKOgdEaf5mDC4mNOEadzyhJ6l0CeT33WLc44CPsFqCDeVi+42D5P6hjuFtWWdtUyao40X/kuN3
	l1CjP2SufWG1YNG6a4OT+LlGX1B1P3SPq1JQF+G2f7l84zTIP8JmGxmeSrDXzdZz1hPKEcyN7Kz
	ACO8mARil3kBWpBhRV1yYcWcwDZvt5bgjSVybOu91msGK/JAlZIC9CTxTPFiTS93AS2aMQeFjuo
	71J37qAbTNTH/rfdjQ1WaETnaIabAZFKBIvw8/d6LUyrM2pUnbVgYHD3mNcd9hZZ5B3FDviFZKT
	KbgZFsZcmCQCDY5+ovPOHkqj6C3SPJMNRSfv+6urz
X-Received: by 2002:a17:90b:3811:b0:381:5ede:1296 with SMTP id 98e67ed59e1d1-3815ede1635mr77868a91.11.1783055054654;
        Thu, 02 Jul 2026 22:04:14 -0700 (PDT)
X-Received: by 2002:a17:90b:3811:b0:381:5ede:1296 with SMTP id 98e67ed59e1d1-3815ede1635mr77838a91.11.1783055054031;
        Thu, 02 Jul 2026 22:04:14 -0700 (PDT)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30f0bbd2362sm16771941eec.20.2026.07.02.22.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 22:04:13 -0700 (PDT)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Date: Fri, 03 Jul 2026 10:33:08 +0530
Subject: [PATCH v4 05/10] remoteproc: qcom_q6v5_pas: enable QMI TMD cooling
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-qmi-tmd-v4-5-3882189c1f83@oss.qualcomm.com>
References: <20260703-qmi-tmd-v4-0-3882189c1f83@oss.qualcomm.com>
In-Reply-To: <20260703-qmi-tmd-v4-0-3882189c1f83@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>,
        Amit Kucheria <amit.kucheria@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-hardening@vger.kernel.org,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783055015; l=3860;
 i=gaurav.kohli@oss.qualcomm.com; s=20260302; h=from:subject:message-id;
 bh=mw2xywDtGE86eMiTObjMgtV9IqdLC+USGzaPZvRA/pk=;
 b=ikEWVDd9kQOc9aRYdLrIQRqy20EpLvW9r6pThjNeNOGwddivHx9OZ/0ZkxdGjXxxIaCKgSOFX
 LOXWhMa5YioCLK3ChMQTtJcVx8h012+foUjbvpUg3oqYjlxd7w6lT7E
X-Developer-Key: i=gaurav.kohli@oss.qualcomm.com; a=ed25519;
 pk=IdNsqe8rWsF6dbpGHfwPEH9zM0nbOdRH72HxUT9qPak=
X-Proofpoint-GUID: W81udl2i5VlNlSgJ7cqfHP2-gMg2aPzz
X-Proofpoint-ORIG-GUID: W81udl2i5VlNlSgJ7cqfHP2-gMg2aPzz
X-Authority-Analysis: v=2.4 cv=UMft2ify c=1 sm=1 tr=0 ts=6a4742cf cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=j6jQExit_mXiN_RbaP8A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDA0NSBTYWx0ZWRfX6h9ixyoJwb1H
 P3CGpY5QtdEA3nxjZM+c26pxJyj8XmQVgJzDwsvP7VmC3/8xiJ+9AUAD2aUC8PnmucMYfiTW8Bn
 kCRVMqgx5pZXMpfdP0z7/MPdpu1w8+8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDA0NSBTYWx0ZWRfX/Z2DPL2q1B59
 C2NEi6mIuPjRtgBYLagYQRWNVw+TEx+oSAe3T/VTaKXTGY7FDQ16xPDRzDWWxrcepdyqdI9CAjO
 f9Ai2NqqymktfFYFz+Oh6vrFUCZwCnaMi2l7YqWd3/IDQI6Wo+hBbGv8ctGDsh3jpEorG3M+kYu
 R76KB/rxohrv+ukYYIhoB1/nCW5RnhRQVbCPIoVko7I9KtoWzPbQV1ngnXt05kaT5fa7qLxIhND
 EWFjLK+g+k5gd4sTsH6zatK0vosvFbwG2CTP008KyGqDCDRtBvvNXspRKLsAtFTwTggMZApGrfP
 L0zIa4+DAU7dmgL9vAFz+oq/QjdkukilIhm3lCgAlFI1Fs6NI77ZpwwEkcpZA5uOT0yI2TqOju9
 HTtKBSUK7jjpywFN/rCA4ILGx4CJ/6wBwF9ovnm7Y/J+wX9h5o0ZWcki/AInnu7IE4hFJ4iQaan
 Y7KUGVvcC95O8R4N6Aw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607030045
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319767-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mathieu.poirier@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:daniel.lezcano@oss.qualcomm.com,m:amit.kucheria@oss.qualcomm.com,m:mani@kernel.org,m:konradybcio@kernel.org,m:gaurav.kohli@oss.qualcomm.com,m:kees@kernel.org,m:gustavoars@kernel.org,m:cros-qcom-dts-watchers@chromium.org,m:linux-arm-msm@vger.kernel.org,m:linux-remoteproc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:manaf.pallikunhi@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 32AED6FEBB9

Enable Thermal Mitigation Device (TMD) support for PAS-managed CDSP and
modem remote processors on platforms that expose the QMI TMD service.

This adds per-platform TMD configuration in qcom_q6v5_pas for:
- Hamoa (X1E80100) CDSP
- Kodiak CDSP and modem
- Lemans (SA8775P) CDSP
- Talos CDSP
- Monaco CDSP

For each remoteproc, the configured TMD QMI instance ID is used to bind to
the TMD service running on that subsystem (e.g. CDSP: 0x43, modem: 0x0).
The driver then uses the corresponding TMD endpoint names ("cdsp_sw",
"pa", "modem") for cooling-device registration.

QMI TMD identifies mitigation endpoints by name, while DT thermal bindings
reference cooling devices by id. This change provides the mapping
between DT cooling indices and QMI TMD names, allowing remoteproc nodes
with #cooling-cells to act as cooling devices in the thermal framework.

With this in place, thermal policies can request mitigation from CDSP and
modem subsystems via QMI under thermal pressure.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index ab5bcccc91a6..974526195e97 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -987,6 +987,15 @@ static void qcom_pas_remove(struct platform_device *pdev)
 	device_init_wakeup(pas->dev, false);
 }
 
+static const struct tmd_name cdsp_tmd_name[] = {
+	{ .name = "cdsp_sw", .id = QCOM_CDSP_TMD_CDSP_SW },
+};
+
+static const struct tmd_name modem_tmd_name[] = {
+	{ .name = "pa", .id = QCOM_MODEM_TMD_PA },
+	{ .name = "modem", .id = QCOM_MODEM_TMD_MODEM },
+};
+
 static const struct qcom_pas_data adsp_resource_init = {
 	.crash_reason_smem = 423,
 	.firmware_name = "adsp.mdt",
@@ -1144,6 +1153,9 @@ static const struct qcom_pas_data sa8775p_cdsp0_resource = {
 	.ssr_name = "cdsp",
 	.sysmon_name = "cdsp",
 	.ssctl_id = 0x17,
+	.tmd_instance_id = 0x43,
+	.tmd_name = cdsp_tmd_name,
+	.num_tmd = ARRAY_SIZE(cdsp_tmd_name),
 };
 
 static const struct qcom_pas_data sa8775p_cdsp1_resource = {
@@ -1162,6 +1174,9 @@ static const struct qcom_pas_data sa8775p_cdsp1_resource = {
 	.ssr_name = "cdsp1",
 	.sysmon_name = "cdsp1",
 	.ssctl_id = 0x20,
+	.tmd_instance_id = 0x44,
+	.tmd_name = cdsp_tmd_name,
+	.num_tmd = ARRAY_SIZE(cdsp_tmd_name),
 };
 
 static const struct qcom_pas_data sdm845_cdsp_resource_init = {
@@ -1189,6 +1204,9 @@ static const struct qcom_pas_data sm6350_cdsp_resource = {
 	.ssr_name = "cdsp",
 	.sysmon_name = "cdsp",
 	.ssctl_id = 0x17,
+	.tmd_instance_id = 0x43,
+	.tmd_name = cdsp_tmd_name,
+	.num_tmd = ARRAY_SIZE(cdsp_tmd_name),
 };
 
 static const struct qcom_pas_data sm8150_cdsp_resource = {
@@ -1204,6 +1222,9 @@ static const struct qcom_pas_data sm8150_cdsp_resource = {
 	.ssr_name = "cdsp",
 	.sysmon_name = "cdsp",
 	.ssctl_id = 0x17,
+	.tmd_instance_id = 0x43,
+	.tmd_name = cdsp_tmd_name,
+	.num_tmd = ARRAY_SIZE(cdsp_tmd_name),
 };
 
 static const struct qcom_pas_data sm8250_cdsp_resource = {
@@ -1288,6 +1309,9 @@ static const struct qcom_pas_data x1e80100_cdsp_resource = {
 	.ssr_name = "cdsp",
 	.sysmon_name = "cdsp",
 	.ssctl_id = 0x17,
+	.tmd_instance_id = 0x43,
+	.tmd_name = cdsp_tmd_name,
+	.num_tmd = ARRAY_SIZE(cdsp_tmd_name),
 };
 
 static const struct qcom_pas_data sm8350_cdsp_resource = {
@@ -1356,6 +1380,9 @@ static const struct qcom_pas_data mpss_resource_init = {
 	.ssr_name = "mpss",
 	.sysmon_name = "modem",
 	.ssctl_id = 0x12,
+	.tmd_instance_id = 0x0,
+	.tmd_name = modem_tmd_name,
+	.num_tmd = ARRAY_SIZE(modem_tmd_name),
 };
 
 static const struct qcom_pas_data sc8180x_mpss_resource = {

-- 
2.34.1


