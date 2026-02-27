Return-Path: <devicetree+bounces-269281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BaZLxCpoWm1vQQAu9opvQ
	(envelope-from <devicetree+bounces-269281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:24:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EFE1B8D64
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 382163101419
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD51B41325B;
	Fri, 27 Feb 2026 14:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f8WBAZNT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O0O8qlyy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C388413223
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201557; cv=none; b=cUSraXBJpvCv0mNx1CMTtts3gf+lF45Kji0UC4Yxas5TWmmMkcGmH6jU+r1oEYT78LtGwsN2wiGXTBrztkcCh0J7QPCpj8/hIbFWX4EE4B9qp4c9+e8TH5cNybl9bo/XBFdHg5fuycKB/W/44RtRKcCw2pdjQPh8BG2T5LnuEts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201557; c=relaxed/simple;
	bh=S6hB6rVRgVI0Hmj5dE9jI+O0jSAIl9D9Qnmi+HTINNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s/8lIuvS4gjesFnLSCQcFwHiLxKaUV40TvHPp7bOoirTO/Q4Wj8zqvOpPsVrgxEFvL6/tHqhVVq5jbMNxnTD/vuU2eEA+uQkuh3u/FAAT9qG5qzpAM403GiNFV+4zFSMI8Xn+NiIxZgNNbtHmmDZK7lZ8ruO0A+YH3qhxgpVF6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f8WBAZNT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O0O8qlyy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RBhG6h2663406
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yr5UXY2i70vz4eTQdEwJVsd2YfiJn6quXaEjXK0SlkQ=; b=f8WBAZNTECxM0GqK
	yEixhEXxJ1bqafRC2YJGIlzFM86ajVOf7NssXBFWB3jnaxPiL1t1a49gIC1KIq8t
	27TRxFGRI13VGBoC/Zxs3lZCms9YvBjkFoEn3PvykaATpItyF6slO3USgiOuv8Xs
	DYaBlKDerWSU1XYzNnTe7IRAz0jzzpLHnf06kf8vDIHFODGBrVmpl0M77aoSDIcx
	kxy/5TNQVyxV2nnLNx0iwrDHKObFp4UZRuUvrFo5i7yIYzs0APF/5QSSdXBDzPaY
	1FW0pueetAnB6zfjNF/qBaNmKoQ0ZxMGTGxv2wzi8wrJ4ovEvySLEFbhp2lSY07F
	uFcZ+Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43r9t2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:35 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ad7e454f38so122813375ad.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772201555; x=1772806355; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yr5UXY2i70vz4eTQdEwJVsd2YfiJn6quXaEjXK0SlkQ=;
        b=O0O8qlyymAxEUwpHdHw1RDjQ3e+KsjgzfQ+jhf88Qo8rGoAnuDAUrSJuNkMbOhi0YL
         kCqMJDddICl8JRu331gHhkKnU6sQjITuTDmM7UE5yIJjJi/czGyxtNj+4bmhDmUpekkT
         zJ+rikfHFwrbATuTHDFWaMnaG6oh4R9Z75xXdbFziUSaLzXxXfeHoy8wDza0pcE7p38i
         5UZKr7dYqyVRyyD/0hCsWO3vatEwCH0gD2lMJM9o3C3TCw9PpzOab5gW2g6D1zxxj9ZH
         Aao0tAnEMsLX9kXwsw8G8aUiU7K0kQUldSb9cadhVE7fNwcYxSMyKdauMhn48TIQQ8S5
         lWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772201555; x=1772806355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yr5UXY2i70vz4eTQdEwJVsd2YfiJn6quXaEjXK0SlkQ=;
        b=G7MNLKTFaBPulnsUnPVgY6QohxN+vQAQxzOHtcV8ajsnfoLP6DrzkychvQKcO2XUSV
         BWyhVyNrmzXKVvJlGHxjTX75DfiOCPUMgr0mph9RLoBGsCo48k775rOATl/ElOUk3W1a
         bmpNdXXeOm/yBpOSaZGI4zDNsCwMga0XX+B8E95yymmu/bZY/TR5/gkl5/8cf57hk/u2
         F/gbhmU0D1ViCrx4V4OLZY6ZCUoBCOagBo+8+aHqIO5laxOWK5KakNitEtXSymIJe9wR
         ZxfjJnTqWL1S3JEI7kC16pRCe/Sgd7GmYJttjDKeam+XfPBJSJiyFK+lqMFRWa9grEqd
         u4mQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb2saLFjMoagTqGnGb79T9kxIM5pSlE0SOiyBmycghZxIYIEQiOInch+mgispPecVyeNIPmwpEyef9@vger.kernel.org
X-Gm-Message-State: AOJu0YyPJYPokGEsyLCNBvjyYFRUkQB/lwnG8rApc/pFxwppRotMz4E1
	rtm0PTjpFb7lgzMHSNq66B+dJdqpwQqo5MW6sB814203GpFQLIxSQ6DmklrOmPsQ20xT47EQjON
	VN1utHYFJhfu+jarkWCdxmOsCOKA1v0/poho6dsuZOBnCi4BJGfj+5qk33awwNj7X
X-Gm-Gg: ATEYQzwf7SIA/3GXuJCRl53oSgpi198xf77cRXnT1j8ya0oNFCtAy/dsvFQbDHfzap3
	KEqnlzyFjTJyTIDAHTp7TYjTPiHbxqZMc5xErP914vEI2Rr/N7iUAqQycZxxlVqlmkW5vZ8erdV
	xrUTRVdrdMjBJXjy/TaHfXWP7sM7hJxwo2E06rO4PLxY2NnBpMj0Yf8sHNqUycKSxM582CkUNOU
	SIJ4Mpsa5JPGd/wuHd/5+i53BsqVtqeX4+mhQijaA5TxlmxBYWpMjTBGZvDUcYPzJwgTpkOx1uG
	v22KGFCHN1y93zSHEFvUre4Nq9EsafzhGFolfLFVuQNyYtZYDzqFLFL5dmTYp7Uean0w+gACH1V
	UI3LGQUvV5914gwCxUXgAlutyeBVhuCEfYkxRVA7uVuGckUVZ6g2aQHAY
X-Received: by 2002:a17:902:d4cb:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2ae2e3cca53mr37300595ad.3.1772201554913;
        Fri, 27 Feb 2026 06:12:34 -0800 (PST)
X-Received: by 2002:a17:902:d4cb:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2ae2e3cca53mr37300015ad.3.1772201554106;
        Fri, 27 Feb 2026 06:12:34 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c183bsm60960865ad.24.2026.02.27.06.12.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:12:32 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:41:23 +0530
Subject: [PATCH v2 7/7] media: iris: add platform data for kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-kaanapali-iris-v2-7-850043ac3933@oss.qualcomm.com>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
In-Reply-To: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772201499; l=9099;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=S6hB6rVRgVI0Hmj5dE9jI+O0jSAIl9D9Qnmi+HTINNI=;
 b=UJm/S/GxMA5WY37JL/qfcLy9B8/KY9WiGWOPoQBjvx9w3asSb/JHF7dt4aZCZATRZ2Y4CGDXr
 dxOvlnMpzTfACVHwtZ5zQLCAUzVijLtGmzaUuss6McbTpJeFRdEU+rX
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-ORIG-GUID: 2bSch_j3GV_tbRfgGnkX-CtHDEGpOP9M
X-Proofpoint-GUID: 2bSch_j3GV_tbRfgGnkX-CtHDEGpOP9M
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a1a653 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=oUDkSdWbjXKg0EQNC7QA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEyNSBTYWx0ZWRfXznagiKMFmzBa
 vasOJuOp/nzY3gdx3vJg2gjoZMq6MNUubXdXvEeWdDsi3pytsbioSXNlb+K3jCoFqFiRxjzTZf5
 4inxGtyDd4XelkTVhTpIcjdrOE4t9CNikQFZc09H4R9AXevt3wicmMWo3NBBsFpbAnUOwRzxP3K
 Rh1cWgsaMUBM4mPxpfBGsCMxRvjpwE4pxOdXl5usZfmH/j4kIElcb2uLqL2B5ttwQBKQJBCDolj
 UMJGoI9tGNrtz4HlZ5OfY5v4keqn9at4voOvCTOI5w0w6S1dk+T7c0nHvksujCcY+VHQLclng3e
 igAgvkidd0jEnypLHpUgCKwX1+vxmfpiEqReQe6WT6p/oa2R8odrLPOfU8vHltubTbq1Us88xe8
 K5lqE56lxZQbQs11N1k/HwOMCOd/yhaGaLo+Zcv5HKdYTIHI4VXzvgU6pZYmnZzGl1/3TwzcMqH
 9cw+NKiISCZC7wM5IeA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269281-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 44EFE1B8D64
X-Rspamd-Action: no action

Add support for the kaanapali platform by re-using the SM8550
definitions and using the vpu4 ops.
Move the configurations that differs in a per-SoC platform header, that
will contain SoC specific data.

Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 .../platform/qcom/iris/iris_platform_common.h      |  1 +
 .../media/platform/qcom/iris/iris_platform_gen2.c  | 90 ++++++++++++++++++++++
 .../platform/qcom/iris/iris_platform_kaanapali.h   | 86 +++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  4 +
 4 files changed, 181 insertions(+)

diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index 03c50d6e54853fca34d7d32f65d09eb80945fcdd..34c8ae7f9f957936b6219d8557ff3d86d309cb2a 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -41,6 +41,7 @@ enum pipe_type {
 	PIPE_4 = 4,
 };
 
+extern const struct iris_platform_data kaanapali_data;
 extern const struct iris_platform_data qcs8300_data;
 extern const struct iris_platform_data sc7280_data;
 extern const struct iris_platform_data sm8250_data;
diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
index 5da90d47f9c6eab4a7e6b17841fdc0e599397bf7..df906f6b9fcd80100872a12815036a3aad9e925b 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
@@ -12,6 +12,7 @@
 #include "iris_vpu_buffer.h"
 #include "iris_vpu_common.h"
 
+#include "iris_platform_kaanapali.h"
 #include "iris_platform_qcs8300.h"
 #include "iris_platform_sm8650.h"
 #include "iris_platform_sm8750.h"
@@ -921,6 +922,95 @@ static const u32 sm8550_enc_op_int_buf_tbl[] = {
 	BUF_SCRATCH_2,
 };
 
+const struct iris_platform_data kaanapali_data = {
+	.get_instance = iris_hfi_gen2_get_instance,
+	.init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
+	.init_hfi_response_ops = iris_hfi_gen2_response_ops_init,
+	.get_vpu_buffer_size = iris_vpu4x_buf_size,
+	.vpu_ops = &iris_vpu4x_ops,
+	.set_preset_registers = iris_set_sm8550_preset_registers,
+	.icc_tbl = sm8550_icc_table,
+	.icc_tbl_size = ARRAY_SIZE(sm8550_icc_table),
+	.clk_rst_tbl = kaanapali_clk_reset_table,
+	.clk_rst_tbl_size = ARRAY_SIZE(kaanapali_clk_reset_table),
+	.bw_tbl_dec = sm8550_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(sm8550_bw_table_dec),
+	.pmdomain_tbl = kaanapali_pmdomain_table,
+	.pmdomain_tbl_size = ARRAY_SIZE(kaanapali_pmdomain_table),
+	.opp_pd_tbl = sm8550_opp_pd_table,
+	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
+	.clk_tbl = kaanapali_clk_table,
+	.clk_tbl_size = ARRAY_SIZE(kaanapali_clk_table),
+	.opp_clk_tbl = kaanapali_opp_clk_table,
+	/* Upper bound of DMA address range */
+	.dma_mask = 0xffc00000 - 1,
+	.fwname = "qcom/vpu/vpu40_p2_s7.mbn",
+	.pas_id = IRIS_PAS_ID,
+	.inst_iris_fmts = platform_fmts_sm8550_dec,
+	.inst_iris_fmts_size = ARRAY_SIZE(platform_fmts_sm8550_dec),
+	.inst_caps = &platform_inst_cap_sm8550,
+	.inst_fw_caps_dec = inst_fw_cap_sm8550_dec,
+	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
+	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
+	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
+	.tz_cp_config_data = tz_cp_config_kaanapali,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_kaanapali),
+	.cb_data = kaanapali_cb_data,
+	.cb_data_size = ARRAY_SIZE(kaanapali_cb_data),
+	.core_arch = VIDEO_ARCH_LX,
+	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
+	.ubwc_config = &ubwc_config_sm8550,
+	.num_vpp_pipe = 2,
+	.max_session_count = 16,
+	.max_core_mbpf = NUM_MBS_8K * 2,
+	.max_core_mbps = ((8192 * 4320) / 256) * 60,
+	.dec_input_config_params_default =
+		sm8550_vdec_input_config_params_default,
+	.dec_input_config_params_default_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_params_default),
+	.dec_input_config_params_hevc =
+		sm8550_vdec_input_config_param_hevc,
+	.dec_input_config_params_hevc_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_param_hevc),
+	.dec_input_config_params_vp9 =
+		sm8550_vdec_input_config_param_vp9,
+	.dec_input_config_params_vp9_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_param_vp9),
+	.dec_output_config_params =
+		sm8550_vdec_output_config_params,
+	.dec_output_config_params_size =
+		ARRAY_SIZE(sm8550_vdec_output_config_params),
+
+	.enc_input_config_params =
+		sm8550_venc_input_config_params,
+	.enc_input_config_params_size =
+		ARRAY_SIZE(sm8550_venc_input_config_params),
+	.enc_output_config_params =
+		sm8550_venc_output_config_params,
+	.enc_output_config_params_size =
+		ARRAY_SIZE(sm8550_venc_output_config_params),
+
+	.dec_input_prop = sm8550_vdec_subscribe_input_properties,
+	.dec_input_prop_size = ARRAY_SIZE(sm8550_vdec_subscribe_input_properties),
+	.dec_output_prop_avc = sm8550_vdec_subscribe_output_properties_avc,
+	.dec_output_prop_avc_size =
+		ARRAY_SIZE(sm8550_vdec_subscribe_output_properties_avc),
+	.dec_output_prop_hevc = sm8550_vdec_subscribe_output_properties_hevc,
+	.dec_output_prop_hevc_size =
+		ARRAY_SIZE(sm8550_vdec_subscribe_output_properties_hevc),
+	.dec_output_prop_vp9 = sm8550_vdec_subscribe_output_properties_vp9,
+	.dec_output_prop_vp9_size =
+		ARRAY_SIZE(sm8550_vdec_subscribe_output_properties_vp9),
+
+	.dec_ip_int_buf_tbl = sm8550_dec_ip_int_buf_tbl,
+	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_ip_int_buf_tbl),
+	.dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
+	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
+
+	.enc_op_int_buf_tbl = sm8550_enc_op_int_buf_tbl,
+	.enc_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_enc_op_int_buf_tbl),
+};
+
 const struct iris_platform_data sm8550_data = {
 	.get_instance = iris_hfi_gen2_get_instance,
 	.init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
diff --git a/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h b/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h
new file mode 100644
index 0000000000000000000000000000000000000000..ecfebc898e727ccadd2ea5d7d2d43fcba476b779
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_PLATFORM_KAANAPALI_H__
+#define __IRIS_PLATFORM_KAANAPALI_H__
+
+#include <dt-bindings/media/qcom,iris.h>
+
+#define VIDEO_REGION_VM0_SECURE_NP_ID		1
+#define VIDEO_REGION_VM0_NONSECURE_NP_ID	5
+
+static const char *const kaanapali_clk_reset_table[] = {
+	"bus0",
+	"bus1",
+	"core",
+	"vcodec0_core",
+};
+
+static const char *const kaanapali_pmdomain_table[] = {
+	"venus",
+	"vcodec0",
+	"vpp0",
+	"vpp1",
+	"apv",
+};
+
+static const struct platform_clk_data kaanapali_clk_table[] = {
+	{ IRIS_AXI_CLK, "iface" },
+	{ IRIS_CTRL_CLK, "core" },
+	{ IRIS_HW_CLK, "vcodec0_core" },
+	{ IRIS_AXI1_CLK, "iface1" },
+	{ IRIS_CTRL_FREERUN_CLK, "core_freerun" },
+	{ IRIS_HW_FREERUN_CLK, "vcodec0_core_freerun" },
+	{ IRIS_BSE_HW_CLK, "vcodec_bse" },
+	{ IRIS_VPP0_HW_CLK, "vcodec_vpp0" },
+	{ IRIS_VPP1_HW_CLK, "vcodec_vpp1" },
+	{ IRIS_APV_HW_CLK, "vcodec_apv" },
+};
+
+static const char *const kaanapali_opp_clk_table[] = {
+	"vcodec0_core",
+	"vcodec_apv",
+	"vcodec_bse",
+	"core",
+	NULL,
+};
+
+static struct tz_cp_config tz_cp_config_kaanapali[] = {
+	{
+		.cp_start = VIDEO_REGION_VM0_SECURE_NP_ID,
+		.cp_size = 0,
+		.cp_nonpixel_start = 0x01000000,
+		.cp_nonpixel_size = 0x24800000,
+	},
+	{
+		.cp_start = VIDEO_REGION_VM0_NONSECURE_NP_ID,
+		.cp_size = 0,
+		.cp_nonpixel_start = 0x25800000,
+		.cp_nonpixel_size = 0xda400000,
+	},
+};
+
+static struct iris_context_bank kaanapali_cb_data[] = {
+	{
+		.dev = NULL,
+		.name = "iris_bitstream",
+		.f_id = IRIS_BITSTREAM,
+		.region = IRIS_BITSTREAM_REGION,
+	},
+	{
+		.dev = NULL,
+		.name = "iris_non_pixel",
+		.f_id = IRIS_NON_PIXEL,
+		.region = IRIS_NON_PIXEL_REGION,
+	},
+	{
+		.dev = NULL,
+		.name = "iris_pixel",
+		.f_id = IRIS_PIXEL,
+		.region = IRIS_PIXEL_REGION,
+	},
+};
+
+#endif /* __IRIS_PLATFORM_KAANAPALI_H__ */
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index 557adb038328a75510591d91569819abc0b7b1c9..e30b159b42c75b288ef02624480cd733f9cf6f50 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -400,6 +400,10 @@ static const struct dev_pm_ops iris_pm_ops = {
 };
 
 static const struct of_device_id iris_dt_match[] = {
+	{
+		.compatible = "qcom,kaanapali-iris",
+		.data = &kaanapali_data,
+	},
 	{
 		.compatible = "qcom,qcs8300-iris",
 		.data = &qcs8300_data,

-- 
2.34.1


