Return-Path: <devicetree+bounces-248044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCE9CCE52B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B69113029C38
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681794A07;
	Fri, 19 Dec 2025 03:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LPvR9dQR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gx2l6ic3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D662BDC3E
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766113828; cv=none; b=Ck04W+BoZ3ksseXEXd1ye77IuolKzcppmlSqZ3BmD1rdXoGHo7I0CWGp9ieLgPRpPY7bhRL2b7kw96xBC2R09L7ohPcGj1q+c5xmQj0MOOm1d+yT5EcfqdZ+rbAFOhPUF+tsoeSD4QoKUloh7pYVdXSREFT2fyCRv+2O7cebXaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766113828; c=relaxed/simple;
	bh=1KgQnlB41KBaC2DG4Yj9ulDgjSoB7PMArv6hECtKgus=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OB9G6vHhm5IytsN+oV+nvCA0xAviszEy/+NRx8yx5S7U4E2WHdzKurs29jpcmlhPgdPv8t+L0FrRzWKixT6TTEGZN34CETUAFqgumb5ppPTKtPp9f89UfR/b3AoFAxSdUIoQB+Z21VVY/BySEhWIPHMZsNNKbJw2vqkQUs/gIhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LPvR9dQR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gx2l6ic3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ2O3D83813491
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=imtAR/C7wDh
	u9pVrr0JhhByoc7Qoc/nTvrS7itb8mJQ=; b=LPvR9dQRKcszDMBfrL8l0Vrxo/Q
	q4UyTUIdMm1kTqRorp6kMCCpuDfYxMR+lKJcmZzTRJNfSM6nID/J2BpxRDr79axT
	MeYUf3uNpTP+OlqyUo1X8YuOWKj+p/MV2JyCXcARr0NAZTcOPREpAkGnHhtSjtdl
	NDxtc8cRJCM4O3d9Fpqw0Ll5ZAqP+SK/46IM8ZbdzCXu9CYxqA0nzRIUFtsMogA5
	aG28zsiC8rZl+MxtVA+d9DIw6isJRJLM+ZzU3sRffPW/MLYJzJe6k/f91EgFgpAk
	FR2PP5o9c3WtI8bUMWTNDHHXldKZYmdv61ekO3GiAVY4K1I0BQZHFrTrqew==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c10mr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:25 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c64cd48a8so3106320a91.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766113825; x=1766718625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=imtAR/C7wDhu9pVrr0JhhByoc7Qoc/nTvrS7itb8mJQ=;
        b=Gx2l6ic3JzF6hLotN/i4bArWRshDrq/Q6a9vwIA+on5hcX8K9pbPCEunHWHvlCf4+H
         xGj4D88fvMnSbIJ2S2fxpWNhILWQJ0HbpO+GZ4P2YmGzHiEyeEeQTjgMQHv04nhAMqHv
         AKZ6hgsp6KJDM3TaS1jU3W7Bou9pGAeTajRCUaI7h5o2M/eXmkfVfzgp35gO56ZuoQWI
         q08LHXgZgIrAiwshDXR3XSKGytN4DnFSc/CHvgnpRPV1j3hRqprdCEpZ2zJIC7eP26wt
         y4j6lXBUpjl+nLD74RZSbonZnUMUWHaFRkgmx4FsoO/pos6bGucHWU5prc7nn1O+gUS/
         cz1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766113825; x=1766718625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=imtAR/C7wDhu9pVrr0JhhByoc7Qoc/nTvrS7itb8mJQ=;
        b=h2ZqEhqFi7JsSHFkTdv7QdoyVWIMlXU2t8tGt2A0Xgl/UV2eIIf1MfjAvEnVK17VpM
         wp1I91yEj7PEfaqRNDBLa5YK2WaKt0dbu0JT3RCTwNNHb6NFT6QxvJ/E6//Qsuo2QkUt
         UT3s0PDUsS+fy1Jv2FWhEpRdN6/+1VOJc67KHCUdjwKkL1uU0aM1SUzVbga9hIvy7jGE
         pTLkAI/C2WxIUSsJ4Czdb23+h9U2++/xSrnZNVOUSQ1Xak9ZY0jzK28VQCFxGf1Yuq2k
         rGyCqzwzhR9gIcrq/aKdNTjmdNnBijElE9vGebZUhFaTLu06+Qsl43Zzc/jf2+7C7k8r
         MP1g==
X-Forwarded-Encrypted: i=1; AJvYcCXOV0Nret2lejxd7xcw3pbBg19JnO1nDzgvzP+RK9m5Y7hq/dPgaedoYFBR04QIOhQQyhU+uwdeET37@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj1wde1pYhbm/1ldebfT4J11aGB3hOWLwyUhUce4xU9Ls0n+Q7
	kPA2qOh1qRxMfHdmPpjBXGprcTdi1l/55yFzNo38tjL+u58e4XtWJRbTnqd/Zd9ITAUaqsK5nFI
	oRDPomJKh8WY06fAAgz1MtUhGTxpsQ1RKdErCNu8jvBwbG2AMfjCfwQL/3D4aJBfb
X-Gm-Gg: AY/fxX4mQvwfgywD7lDFQnJweDac6OIkVp+jGAhoRcd4eXIg4owTskMaStDkVscvZXf
	Q9kuADR52HtzgeKnicZg+i81lP6z1B2QlNliRiLeY/PYX7b15gXYTRRmJ+XxEqn2zzXHWNUKxxf
	SXRbOo7hHk/2pAlkIdsbbHAWG/HqrpbdZG/JBUYwQlSP1huZmbZSiOKPtqIEvisTnNvqB816ff7
	VIqXj9Hec3PWx6vq53UyrZdDdE0ZS8AbJAAwFL2ZZwsOdgV5iQk5fVzJvrTs72HejztI+WpXioS
	wB5Fh09PAbQCP0CF/ooSsyiV38QL3eaG5252icCLilcDya6N/c72akqDm2jrf9eMrg7kl9dZB8R
	F0aF+MXDo3e7qCWNaeYnMbwQvdggP0ytSqRJ12y2Eogxvcm/q0Al9J35nGQf4jR7guAR3aB9WgJ
	oXzPsPbkl8YMl8mUGCp11dTNww8dHHnYf78VaSoII=
X-Received: by 2002:a17:90b:2e0c:b0:34a:4a8d:2e2e with SMTP id 98e67ed59e1d1-34e921b7ca2mr1336472a91.17.1766113825105;
        Thu, 18 Dec 2025 19:10:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb9ZWK+oeRMMRCYJozlfCcOYjkREpySRVF4gwmiYA/MXbS22ApJNllDyU7QX8ZeVUVfFhBCQ==
X-Received: by 2002:a17:90b:2e0c:b0:34a:4a8d:2e2e with SMTP id 98e67ed59e1d1-34e921b7ca2mr1336433a91.17.1766113824629;
        Thu, 18 Dec 2025 19:10:24 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d656casm3737867a91.7.2025.12.18.19.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 19:10:24 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Subject: [PATCH v8 1/6] firmware: qcom_scm: ipq5332: add support to pass metadata size
Date: Fri, 19 Dec 2025 08:40:05 +0530
Message-Id: <20251219031010.2919875-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAyNCBTYWx0ZWRfXyF2yMZOItvfB
 I9+Mvj+aoECVeCGnVwCZHD9JnKNaS+55bfjXBm+cEiqlM4r9EuLw51BgpxMPvOG5Awf9V8MzOLE
 p5xKvPtESJdTthWQaQEWu2u2QA1y9K0CSUlIEGxxUhb73ZiGTKDz4OTeva+r9CtkeBsGK2YL4vk
 WXkhdnpPKmMclrwKOZjDdvkusH5h/bZ3/LGY9QJC2gKs4dFoqlQQLnywdTFE5dZ4Mr012bk+5KX
 NCtQZy9vr0EyM9aueJAtbru/6nKLDKcFyQiYXnlUN+GYQtsYnzJwmhmvHl08zh2V94c3E5kM2oe
 pViuJqBOsMroj/DboH7B/LP9ufchzbyTvcnCuPQvP5xX9kQ87m650DLnVpO6ZElI+9SWwTgI9Am
 88ZUR9F25McRzNai0ztlmuTRQaaIO4lVKQPxBeAaTEcGnoOLfxYULwK3+/fJj4RCjhFaw5O581W
 qc3XvTjFZaKJYPTjxSQ==
X-Authority-Analysis: v=2.4 cv=dOmrWeZb c=1 sm=1 tr=0 ts=6944c221 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=uWiwPwd6ELW8fYEcJRYA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: HXVuMdbebUMjHKdclXBbbMrbJrNzsMWl
X-Proofpoint-GUID: HXVuMdbebUMjHKdclXBbbMrbJrNzsMWl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190024

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

IPQ5332 security software running under trustzone requires metadata size.
With new command support added in TrustZone that includes a size parameter,
pass metadata size as well.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 17 +++++++++++++----
 drivers/firmware/qcom/qcom_scm.h |  1 +
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1a6f85e463e0..c970157f75b5 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -583,9 +583,6 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
-		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
-		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = peripheral,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -617,7 +614,19 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
 	if (ret)
 		goto disable_clk;
 
-	desc.args[1] = mdata_phys;
+	if (__qcom_scm_is_call_available(__scm->dev, QCOM_SCM_SVC_PIL,
+					 QCOM_SCM_PIL_PAS_INIT_IMAGE_V2)) {
+		desc.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE_V2;
+		desc.arginfo = QCOM_SCM_ARGS(3, QCOM_SCM_VAL, QCOM_SCM_RW, QCOM_SCM_VAL);
+		desc.args[0] = peripheral;
+		desc.args[1] = mdata_phys;
+		desc.args[2] = size;
+	} else {
+		desc.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE;
+		desc.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW);
+		desc.args[0] = peripheral;
+		desc.args[1] = mdata_phys;
+	}
 
 	ret = qcom_scm_call(__scm->dev, &desc, &res);
 	qcom_scm_bw_disable();
diff --git a/drivers/firmware/qcom/qcom_scm.h b/drivers/firmware/qcom/qcom_scm.h
index a56c8212cc0c..57d63e932f62 100644
--- a/drivers/firmware/qcom/qcom_scm.h
+++ b/drivers/firmware/qcom/qcom_scm.h
@@ -105,6 +105,7 @@ int qcom_scm_shm_bridge_enable(struct device *scm_dev);
 #define QCOM_SCM_PIL_PAS_SHUTDOWN	0x06
 #define QCOM_SCM_PIL_PAS_IS_SUPPORTED	0x07
 #define QCOM_SCM_PIL_PAS_MSS_RESET	0x0a
+#define QCOM_SCM_PIL_PAS_INIT_IMAGE_V2	0x1a
 
 #define QCOM_SCM_SVC_IO			0x05
 #define QCOM_SCM_IO_READ		0x01
-- 
2.34.1


