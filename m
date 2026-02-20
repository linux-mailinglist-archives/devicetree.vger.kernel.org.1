Return-Path: <devicetree+bounces-266888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ca9COQ0mGn/CgMAu9opvQ
	(envelope-from <devicetree+bounces-266888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:18:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CB2166C29
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8546306C50C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 362BB33C514;
	Fri, 20 Feb 2026 10:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kYkeMzFP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JGGhA7o8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A92309EE6
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771582627; cv=none; b=lx6Ar8R3XCZSpI6BQCnHidpYc/kjuXx6y1sOIGjSZaB0yDTOm1URTRugG+U8IfVdoI+tpeLiJR+dCxF4jFTbsBBJYZVt/VtuginWShKov2mkTbNnRK27saZdndqo6cvO1EFcBF803T1ApsllCl4I+3/whmidF0a7IkYneQdHFBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771582627; c=relaxed/simple;
	bh=dCWejxzl/VifzIatEVBeleK+/PQfWHQU9Fp135Vbseo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=j/5N8Lp/dTjRgm06J+97ww+JF1qOiflzhrwO+rHAs/mGEBXn268lWtNCgN/MQVjfRfWe5RbYPwy41+k3/6SwUFGh9jl3mCqO61aAwat9GN99j67QMwLM/4PBZ4Ue7aT+SW0LpIclMRRvi1Sg2wpAFjP/H/sLbK9lqhxhPE9/OiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kYkeMzFP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JGGhA7o8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RtkF1805610
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:17:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zApk7hJmPzO7Z8/S2OVw3J
	iN9LYKmwlx5Eaje7Q37p4=; b=kYkeMzFPdoA6gUba3IAcQnLsvc7gftUx5YGTqr
	SbJ91e7dL9XFlyGXF/6kKBeQj12jaxT02RXA1LYkyEFzfgi3xV9irTDsg+O2Dnol
	A0QrpUFXx2p610LVR9g1sN4Zpiif0W8ktzHszLPZEYCeZYqccEkyWmEcnkbIjlzS
	a1dPn5LECgNqVVM/vk+fiZB1vds+zVwSQirZwTdluzR8l7PHPBrfIjG65zfUF6Nt
	6Wi6vSMQsXrdhUMbjSIDXyFOHFXzDVJ4b1Bm8uQzwX6h9eDJEcY3XFV53UzA7YWF
	jLue+lZRMvnmNi5f6zpOoZXYmZrHpo5ym71hzcvEy/OS3Qvw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedsns8ju-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:17:05 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aad60525deso127030915ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771582625; x=1772187425; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zApk7hJmPzO7Z8/S2OVw3JiN9LYKmwlx5Eaje7Q37p4=;
        b=JGGhA7o8pC7oUEcmxVD8J/KO/kWgq/mE5gHbDnpACFyi66l7jwbNrOHsl6OWBUWh0B
         baYRDaZCe2QeMF+V+uN5Wx54RnK38XDv2YXEazfTvrzuRw0/aTPEtoscFgHpeCI/7l9O
         IZnVArMc2I48X9v0h8ECem0xNnIMUcLqQbqeM2nk4EOVvHM1EhGWwRCYcNaex2nFdogk
         GrNTrJXqNRqmlfMwan8geD9luFVpnKP+qTKaG1LloSphQF3MYPCNqHtVxjHWs8fcHExv
         0uBYhfK0aL20Y7pWCtkgLmsk2pbP9cQ02eMb/AsYhxaywwBf3POa8XmLrK0Z/NiOGYA1
         +QxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771582625; x=1772187425;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zApk7hJmPzO7Z8/S2OVw3JiN9LYKmwlx5Eaje7Q37p4=;
        b=WfO/5Z7JrJ9I12kOAyuC250+o+Cej6t7h5grqBwORjBunCYFSw35m229C34ju1wEMI
         upgWFzFvOV2vj6xq9Dj+IFm/HIZY9tjWU0nvJA68XBKPxDw3xf3IM9r+SHfLAZ1HDj+a
         LCS0qGuRVXDKe6RbuXENEArCcBXKbu3F3dUpwAUixyqyggMW1mySJuGqISresT/KcYrk
         vM2BTDGIs7TtTYbLfV8Flzcrbq8CP7sEqiV6Hn24ezVhKF4jPo0YUDWksKeXZ+/hBj02
         g1O/G9VqUGa6hMx3FNttL3qGz1io2rT2b4976I3tRtrkwucDBSlLc5FLyLZE6KIcaYzz
         oIiw==
X-Forwarded-Encrypted: i=1; AJvYcCUDP9GPQ6YvlesdnLByiMd33JzGHRFGMJODrlWIOu4UJfPueE6HecBoR0L2ebclQMiiIlYjq5uIn04E@vger.kernel.org
X-Gm-Message-State: AOJu0YzSfPyUDOoYPUd5zumR9QElj7XCgvSnGxzGlwtHbI9TqvHxImOa
	EM01Gru8pIm7gwcuIxlcAm82YiMpJOOP0GzJsGeNiAhd0Lf5egaj3Iwav1hm9rPxWPTO1rXOQgt
	j5AuoRJPSfrfXezdCELXqYHzs07XzkYTXiZ1maA7tmKAKoJckndl3Wtr+jf1wKpYb
X-Gm-Gg: AZuq6aJyZR+PLx0K49zgpowZPg9O8XI8nkc/Og2cxu4hcTKpxgtEjdgUh0a0lABLyd/
	LzC+JLtvKO2Kl21tg7FhEgTXDqPdWlt9LQVigHnkrnWlXbEJgalGO+t8S3lfkIYpT7UQo1q2gOO
	sWAU16r/SLZUvKC9oLNz2G+BtrPEPphTS0paq6pGXYWVBBPiAuIWQvV9z/6P1t81vafNMEcXGdS
	nkeJz3Lq46j6Y9tadtHkkLAFMxT0JSEaTOdJLWQfGD31xdzRQ90i22erUs+smZElsSbkr8gT2XT
	IlcqoX2in6cN5yyOZuDI6KnAlQuHgbLheprxB2AKMRn7/NJlqSJlxbBwleCcE0NAQNXmgQoSPh3
	EyoSjQyuz9TcNw1nt90xMndSwhy8OAUZxGvUCk9DesXoRmQ==
X-Received: by 2002:a05:6a21:6f06:b0:392:e583:b76a with SMTP id adf61e73a8af0-39534657542mr1469397637.52.1771582624620;
        Fri, 20 Feb 2026 02:17:04 -0800 (PST)
X-Received: by 2002:a05:6a21:6f06:b0:392:e583:b76a with SMTP id adf61e73a8af0-39534657542mr1469365637.52.1771582624136;
        Fri, 20 Feb 2026 02:17:04 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d81c288sm2768391a91.5.2026.02.20.02.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 02:17:03 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH 0/2] clk: qcom: Add device tree and enable clocks for
 Glymur
Date: Fri, 20 Feb 2026 15:46:56 +0530
Message-Id: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJg0mGkC/43OTWrDMBAF4KsYratg/diSTSi9RwlGHo1cQWQ7k
 m1aQu5eOWlW7aKbgTcw37wrSRg9JtIWVxJx88lPYw7spSDwYcYBqbc5E17yuuS8pMP5K6yxCwG
 gs0sH0+j8QKEqbWOEdqgcybdzROc/7+776ZEjXtbML48lCZiSufNtcXzorKHrnJaIJnSb6H4++
 XGJk11hyc3opmlJNaBEqRvs+/ptSulwWc0ZphAOebzu73/jjKtn9WFeAejGslRJJYQEzXrD/yv
 l8ZQ2b3HaLb63csrqXlqN1v5t9SYh3Td+aQspG82tqDgIoWoFVlvWOF1KiQoZq5mptHJOkdPt9
 g0AfocxpgEAAA==
X-Change-ID: 20260220-glymur_mmcc_dt_config-c50d9a38fe7f
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4OSBTYWx0ZWRfX1Xcmj2CBm9Nw
 SR+0LMmG0HGjDxRJZ2X70Nhw9gOxLR1fLQtdOk8ldznC0e3U+5/ctavdsAfcX36kMBY6ty3ZzjW
 pzPzpxGln7oT6PjplnymgvIhJAwjfrT6YleNsDDkuQ9oq/v7BvB6KUxi5RWEgt3JLlmQyS8i+MW
 3kd8Uxwc7r53CikOd6z9QT5QJNXidNCnzbHAaSjtdRplF0KxHn9Cw1sp+a8Pz9UEOHo5YJ62ZLC
 W2GD00BLV0f/l35CoIHnzdJ797CgdS7w58YTHzQ9CnuKB/aFhJQhneRF1wueVhTdlgvNVSi3vxr
 RkvqzvUFlsxWIF5oq4KCvpP9sn+NKKClfGoF4aUzOmkMl++GaQzUNeMB0XF+Vh2S0v6ugi3as+W
 rYsaqgs2qIPjIk/Zw6ws9u6MpMbzIh8VLC5IiOJsY12DrVuyXg2cwJfKqTVl7xVt16EGwnWqYTX
 w50Xst2I8rMGGQlXt4g==
X-Proofpoint-ORIG-GUID: jFabeCd4UHYSoknzdAweD4zEXz_qBH94
X-Authority-Analysis: v=2.4 cv=JsD8bc4C c=1 sm=1 tr=0 ts=699834a1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Epd3R9RfRWPvzS-k06sA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: jFabeCd4UHYSoknzdAweD4zEXz_qBH94
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266888-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B3CB2166C29
X-Rspamd-Action: no action

Add the Video clock controller and GPU/GX clock controllers for Glymur.
Enable the clock controllers for Glymur CRD boards.

Dependencies(Glymur DT):
https://lore.kernel.org/all/20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com/

Video Clock controller:
https://lore.kernel.org/all/20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com/

GPU clock controller:
https://lore.kernel.org/all/20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com/

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (2):
      arm64: dts: qcom: Add support for MM clock controllers for Glymur
      arm64: defconfig: Enable Glymur clock controllers

 arch/arm64/boot/dts/qcom/glymur.dtsi | 42 ++++++++++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig         |  2 ++
 2 files changed, 44 insertions(+)
---
base-commit: 44982d352c33767cd8d19f8044e7e1161a587ff7
change-id: 20260220-glymur_mmcc_dt_config-c50d9a38fe7f
prerequisite-message-id: <20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com>
prerequisite-patch-id: a9ccb06216435308c295e2de9adffb79060439cf
prerequisite-patch-id: 1e8d403675640d7db68a4c0caf28d1b1be895e8a
prerequisite-patch-id: 09bf515a2cd6bec5b21f15b18bebdb172f4b4a57
prerequisite-patch-id: e88699eb550ada640f5f2f5e4f432d6a3ae2552f
prerequisite-message-id: <20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com>
prerequisite-patch-id: 6f0c175707287211c395137ca1786b2d9db82179
prerequisite-patch-id: 0b387f7c7bda3b0221057fdc053e94da4f13b60a
prerequisite-message-id: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
prerequisite-patch-id: 7bb0512ed0a2c198304d3d4064f03e0a127e8a47
prerequisite-patch-id: 0a264581e0868929c5c67c5af315220af2e838fd
prerequisite-patch-id: 4346ada14c281d949e9e25c4bccd775943aad41e
prerequisite-patch-id: 4f2f9d8ce99d2cd435021824f9a68a997c593605

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


