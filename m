Return-Path: <devicetree+bounces-241004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC18C789FC
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:02:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2A3F74E9BAB
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9CC4349AE1;
	Fri, 21 Nov 2025 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P9qJAf/u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CFk78eB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412D8346A07
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722903; cv=none; b=T2jCoM0s32eZD6s2pZkZ83c+sEfTPz6r2eVuQiPuS2xjhf2VWbEFElKx1AuT0FNUSogt+SxWg0mBrp8RSeIgJk+aIzBU/7ajl+UA9OaRtgifllB/I4FH/zHOGiZC3EhBeSUmye1bPFfaYPxFJ/le7ugfV4bpf+O5S1BMKDmuxTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722903; c=relaxed/simple;
	bh=atRUbTe1wqlw66lPTwU2h2uX5zOo7TURemVlkzfSfrQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f7up2Ek6/RmPY81vIWy/wk1gPXTAboManOI3uYNFbI/vA91jeaXO9msyLtysKeFTqGAJ3kG4e96kyEkOmcU61lY8AOY2BzQBOFZMcoBHU2gu6r8N/pNW5lz08lcMxMgQF0KaNQIddsLLyg+ahIkD0QR6fEJCR0yMG4xqwTaeM6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P9qJAf/u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CFk78eB4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL5TA7d2759593
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gGMHteN96D+kdzeh+oroZ90SMRQswPS3eyagrABl0U8=; b=P9qJAf/uka3Y281l
	oBnIVLQn5yirzjIadTqJYSCgqNpQPfzc0SGMe+bj/6riFGxNm51yjrP4cgrujCPq
	bU1M+6hvvXB2t9XjyNuoOEj2SCaXMpMgfoOis2Tk0h8xA0ChmVvkEwd+rmLXb+6O
	+5ums39EIPU/52vHiFXJnY9gX4GFEeXXkVJZmvdsOZwvmkilzSN56BWdX21yW23M
	3QZN64ad0rX1HU1xS0zMcejP5AW+zjtBAOgIYBVpfqMrGDZXVaxJXZDwNxx3TMeh
	oiL4i7ZROoHvIXNVM+HPU89EyVJPjL8+Vpz+lrS0Zw8oQOU8mBibHS15/DPF+ngW
	unTkXA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhy6159b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:40 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-345b4f2a8e8so3843296a91.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763722900; x=1764327700; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGMHteN96D+kdzeh+oroZ90SMRQswPS3eyagrABl0U8=;
        b=CFk78eB4IRHHTNgB7JSQuDrVY9XAhqRFqujuf1zuyUI054sO/EYlNPVB5gASFcj8SO
         j858VZMVV/VXYdjkiuX0KbKii6VWyosgGB3DF3Je/F2yiNPgP+yuCa8H1n4PJpXiAO1i
         rfmNIZae6G8Xr7hy//t/Sxqdkml2XjfLaTPNN2bIzPMj9yeHWu0Vqw65kczKZjniK/ol
         P7xJ/epMyW7zIxaQgUXhoordyaamSaUadUwqjFx9bTj37oc/VYjAP2TUOv4fqqggwwvz
         quusLwc5AbKoplkQyyNQ03XQMDTdvNHHyzAv1v1qgyqqfybvV5xjAzRcuaFDC9FsxRQO
         RGSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763722900; x=1764327700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gGMHteN96D+kdzeh+oroZ90SMRQswPS3eyagrABl0U8=;
        b=YI6IxsV1IQ4FoS/PLv55QH/kedlYeER1L4VzSXJuD+Y+lMpdI8eB3gC7wwgrKEIgSZ
         cZ4KBclP/ZfSta0SLFtPcU645mxUlriu3WW+bw+VuSUUp+pCWuZGaL6MoEwZJDutVz3Q
         e37yyqpT3AnDl5I9vIdjHXmyb6P3fY8yxXieFUmczjXZPCryFxPm1Egj1PEoG8cy36e8
         5+2aZOkot5lukyS5xJyZ1PSKxFKpaop9a6NGvPKddEr812q/cQ3kGawMqvHISrDjPf30
         2W5xNOEFB4NbibGDqDB+R1IZSzdfUGz1FqS+bAZxSzlZ2nw5H/AJBZCrQo3J3hIhQXGH
         4/JQ==
X-Forwarded-Encrypted: i=1; AJvYcCVERYUJfVIWMuH5tL3jx16336jiNTVyN/KI8OL+dHwr3/kM1Z/S2KiRSgFAzaLCLFpWYJOMAKdPGask@vger.kernel.org
X-Gm-Message-State: AOJu0YyqbZorbj8SWwKp4vse2FRYMzWfda3hoiTRUO3gSgVEDtz6xIxb
	9q2xP3zfz+Ehm0l2NPKbzuMx5Ig4IgbI9Ox5Qnc2xlechoqqgU4yg9oul2a4HlPzGADMcjZTlvB
	G/WrT1G0m+Vam/JIaKPtm5C0O3vSSU5nbh79gA/S5N7DGlsv6hk23T/XtrcwTVpWk
X-Gm-Gg: ASbGncvvHSZJno+z2wy72mkrJC8uIKA3eeI8XP+Re/UUIx8b4x8jsVlIaBmcib5Ykx5
	67WxkPgR2QpRbpNZ5JJjfu4apzp94R95NxsXsAXvIBs0DCahWh8dE9ER3eWNglv24krcBgqEuic
	+KFWohW+7kQxN5wgXOgO8R7P8EfrmY7G5IYwwpBntR1qh8jDBqD7tIAPhhWfI7R2lNhy6TMFJT+
	cvrAOvsDozF2Unx+kMtycUW13NW+H19SdY5+EKCNyENs9nyXI6shq1KysWPLvNtExLVMjz9NRb/
	Yt4ujwBePOos0rpk9wO55+iMWmDe1etHf3lHGGUInGiBWUYW1KI5T6eSKl8zp/84N4uM3+yeau7
	0l7Ab7UrfIaQAj/3CiDM4ALk8juzPYz517npb
X-Received: by 2002:a17:90b:2f4b:b0:341:8bda:d0ae with SMTP id 98e67ed59e1d1-34733f2de45mr2302149a91.20.1763722899586;
        Fri, 21 Nov 2025 03:01:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHun6eTxQZztKqbKIy4EXfyv4Laf/KztaRT+F0JNkqQRthBtd5FcxMQdybDyeVSM2bhhR66sQ==
X-Received: by 2002:a17:90b:2f4b:b0:341:8bda:d0ae with SMTP id 98e67ed59e1d1-34733f2de45mr2302072a91.20.1763722898933;
        Fri, 21 Nov 2025 03:01:38 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727d5208csm5191165a91.15.2025.11.21.03.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:01:38 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:31:06 +0530
Subject: [PATCH v8 04/14] firmware: qcom_scm: Introduce PAS context
 initialization helper function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-kvm_rproc_v8-v8-4-8e8e9fb0eca0@oss.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
In-Reply-To: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763722879; l=4059;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=atRUbTe1wqlw66lPTwU2h2uX5zOo7TURemVlkzfSfrQ=;
 b=bHlSlo92n3VgckL++DWPpGBDbCq4f5xm9w2gE7vSUVmjL7bmjBaXcP/cS2TVKuaTmB74lmOPv
 6UqD0RSxxo2BaXHGvpphrEyeIlCv6Uj1EDZiQZ0ovWA3gJLlWIEVh7W
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=Lb0xKzfi c=1 sm=1 tr=0 ts=69204694 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FtZ2CgB1kwCBZN0VdloA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: yHVSHItHJ2IHnuq7pVzTBgBXJmTYoNqW
X-Proofpoint-GUID: yHVSHItHJ2IHnuq7pVzTBgBXJmTYoNqW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfXwEvHOTnu8u57
 7XLTdxU1/xkiT91CaLtLpR1KGDGZNAbq3lCOeK8DSk+TQJtv24EL1oOzo5LfFOJZI3bt0lbzPOi
 jAbOuzB7zN7qd4bJd9ZP6PyhLkd7sr9MvKkkR1WRNNWoXMF50Cm8lhAgBxADs4fCxzHBMRwBflg
 G4XjkL/Z5RAD4HlVAt+Xzk+WZzOcTduJTuvokoJqgFLiNjA0XLAQi5CQ4io60p4Gz7Urfe4Cwdw
 Lr6E+zM9IpuGgw0s4WWvpdetYZ6c7l6KvE3n1stIkx4YQiYQDXaPnoXVg02hkmgczx9dT+a6eQe
 DGVhPhdpmhtJNbIuutMSi825DvH+gufDuh+UTc9H5aDUv6H1X/j4sWdCulvBVGCwNxQDRr6FveQ
 aQV3XeDoT3LtZOAKeUELcO4rYzeAhg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210084

When the Peripheral Authentication Service (PAS) method runs on a SoC
where Linux operates at EL2 (i.e., without the Gunyah hypervisor), the
reset sequences are handled by TrustZone. In such cases, Linux must
perform additional steps before invoking PAS SMC calls, such as creating
a SHM bridge. Therefore, PAS SMC calls require awareness and handling of
these additional steps when Linux runs at EL2.

To support this, there is a need for a data structure that can be
initialized prior to invoking any SMC or MDT functions. This structure
allows those functions to determine whether they are operating in the
presence or absence of the Gunyah hypervisor and behave accordingly.

Currently, remoteproc and non-remoteproc subsystems use different
variants of the MDT loader helper API, primarily due to differences in
metadata context handling. Remoteproc subsystems retain the metadata
context until authentication and reset are completed, while
non-remoteproc subsystems (e.g., video, graphics, IPA, etc.) do not
retain the metadata context and can free it within the
qcom_scm_pas_init() call by passing a NULL context parameter and due to
these differences, it is not possible to extend metadata context
handling to support remoteproc and non remoteproc subsystem use PAS
operations, when Linux operates at EL2.

Add PAS context data structure and initialization helper function.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 34 ++++++++++++++++++++++++++++++++++
 include/linux/firmware/qcom/qcom_scm.h | 14 ++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 0a0c48fca7cf..e9e9d03ea36a 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -558,6 +558,40 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
 		dev_err(__scm->dev, "failed to set download mode: %d\n", ret);
 }
 
+/**
+ * devm_qcom_scm_pas_context_init() - Initialize peripheral authentication service
+ *				      context for a given peripheral
+ *
+ * PAS context is device-resource managed, so the caller does not need
+ * to worry about freeing the context memory.
+ *
+ * @dev:	  PAS firmware device
+ * @pas_id:	  peripheral authentication service id
+ * @mem_phys:	  Subsystem reserve memory start address
+ * @mem_size:	  Subsystem reserve memory size
+ *
+ * Upon successful, returns the PAS context or ERR_PTR() of the error otherwise.
+ */
+struct qcom_scm_pas_context *devm_qcom_scm_pas_context_init(struct device *dev,
+							    u32 pas_id,
+							    phys_addr_t mem_phys,
+							    size_t mem_size)
+{
+	struct qcom_scm_pas_context *ctx;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
+
+	ctx->dev = dev;
+	ctx->pas_id = pas_id;
+	ctx->mem_phys = mem_phys;
+	ctx->mem_size = mem_size;
+
+	return ctx;
+}
+EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index a13f703b16cd..4a57fa676513 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -72,6 +72,20 @@ struct qcom_scm_pas_metadata {
 	ssize_t size;
 };
 
+struct qcom_scm_pas_context {
+	struct device *dev;
+	u32 pas_id;
+	phys_addr_t mem_phys;
+	size_t mem_size;
+	void *ptr;
+	dma_addr_t phys;
+	ssize_t size;
+};
+
+struct qcom_scm_pas_context *devm_qcom_scm_pas_context_init(struct device *dev,
+							    u32 pas_id,
+							    phys_addr_t mem_phys,
+							    size_t mem_size);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_metadata *ctx);
 void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);

-- 
2.50.1


