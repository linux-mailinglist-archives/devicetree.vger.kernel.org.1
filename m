Return-Path: <devicetree+bounces-248651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 045BFCD4C31
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EA5A30321D6
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 06:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5D3326D50;
	Mon, 22 Dec 2025 06:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ADDhwNWc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y/278gyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5CF3246F9
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766383421; cv=none; b=IC4ZI7f3CmDfwtBWM6/xaOCdxtUksy3daih7x3DLlKPRgLw5580pt7gdtLnXjYhGM0Y9AA1aAFIpt9UY5eOLKySEs8w/b0yAHbRVY44y9r42W6pgPJnL1YfmDeDF682eZgHrjxlONklIQc6uj3gjbX0tOETfmLfqlHeEaMe2U6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766383421; c=relaxed/simple;
	bh=2HOdIFHx7rQMqAGvzHoIwZDSOaSh9TN+QYrtFLDPAoo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eada518RsCnn513lUMtad7EQ3Np0zucQWQlgrK4KH5DgKKTbkJ5I4QoHG3SY68m58A/GUcRsfTzEIzCcxgZsZY6I2VeJOsF+p1eYzQFvPlhAJjirtmqnRy5S1VZheiw3aIxE+8oAcHLSPH9wFIctFlBJ0WfwCZAs0r44RHlODys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ADDhwNWc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y/278gyT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM1idC13963235
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jRrEo65pOkA
	10zcqstnnxrzqRwyrbM6potO7GiKVyKI=; b=ADDhwNWc2afmYB8uHyDEdnQtK42
	Z6y4b2Atwnn6oJ/a2nKfIPZ/PQyR+oeJz0F33l3YWFCZJtWVHRBRzYWX2+ALeWC+
	et+IPcCpjSGAA9Vjpc7j5ib+aJV0+6aOwQFmpckUyc4uXSIo7KOugiuByKhwDGeG
	GRphpBh8p1l9MtbExV0yMeriVEXb1qYgm7iE559JVLNEqFDQpzNLK+OWiKwriqmP
	ApuE79DCsxp2Zktz4MIXpi6LqKfQJhF9d+FSdzq6SWIfjloyh7ZMFNQMrPo8kxyX
	1AZfYngeZLJDfIw3KPyHo94hiW3sdiOWOeNtUAAJBAEM5+SEWWjC53nmqTQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b6vk6gmh6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34abd303b4aso10407519a91.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 22:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766383418; x=1766988218; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jRrEo65pOkA10zcqstnnxrzqRwyrbM6potO7GiKVyKI=;
        b=Y/278gyTrPjTt8VB5oMOAzrUNlLBRckDz2iHBj9ZFQg+D47TPbO8yoarRZl+8xOuSO
         Xi9g1DaUHV3ezXsw+FAOoVupmjJLNLyib/sg4SDD8yJM+w8f5OqRvq4Grwz38NZYOc1o
         +SXuXSaCfC+DZkgVzboSMPFhKTiHNPyOT+IFvWFVkbMPvq3RNcCN8H1LrjTeArRNfR6z
         gTR6AcJZvHQo5Li5Mfz289+QNtFbZF9NHWhgpzW0qw1vpvBXJpezNMLZs7XXshq1lz+R
         5ME2Fqja+8/9NCCy8op0gpnd+JCmt9IVzi5MrY1zKjTjBLCnDsiy8hJj5i1AAsvBzPy9
         bxQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766383418; x=1766988218;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jRrEo65pOkA10zcqstnnxrzqRwyrbM6potO7GiKVyKI=;
        b=lMfb7B7jLP1FprdUPv1z/+uoJ9M76oaAtmySANAI8tvgyauOi07iP96OFv7RT88nJ3
         nQBAV9PrD+2hcn4DfwkXFyNm65BHNH9PMFhSfZRmlOnxFTHylRmaDPuaEZOlsNnVaRaC
         290XNaNy4a7athrVK/tAQ4ab7bMblH1qkVZzRGL+dVaOwDN4OxsA9zVxiPvThsfw8BvI
         UgljKAOCjRvD7GDN/29BaOaBM8M69E5R/6SGR8BOoQIX9N0m9FcbJz3wjqIp2+2Ooc0V
         u1AtaNnEuOa/e86l4jJ0bIxG8BIBhyqrH/QJBA8izhgHrwK6/uLvuSZ6ODTBFHmwKL+n
         lsOw==
X-Forwarded-Encrypted: i=1; AJvYcCWy97QLZ63V3F5dtPl6Ge93yteVJbj7o1sj2VwrhwiKE4I87O+NxznpdhdgQXhSJ/pVSGptBmG71uoY@vger.kernel.org
X-Gm-Message-State: AOJu0YxMbYF8rrXvqORxcGvXpHnpA4WJo7KhWz9Pt0y9/Zpn5vr3oL7g
	ufG/6lsiZKrwB/12bRflqXBnT9VVUKgu2qtZQPv00bAHu6s9DpJQdV4DPV9Cz/68g7b9sIj/FHz
	JX1dGjQ4xLQdi5WYs2qtsJ8VxAo335nhAbctVPQOuD0ts7H8jJrGuxWOOSj948T75
X-Gm-Gg: AY/fxX6NkKDl5i0eEoJboAUPTljKa+kmGrELTwQwgVIAz4CBQEFjYkcPOux8gYGA5ea
	rWYR+GNX/+TgCZp7HWh5q0+OLPfDKqQ+ZPdhEAkTTtU7LRm91gGF+GE8Aof2hre93Tj2nJu+wUN
	sGCpL8PlxRbpSQgkGcOJPnZ2SWmWmh6PHt3gw5qCsX+aBnf+hiKSOKRDfOTJWe3q4Nkfl0zG7u9
	SzzWFFpBlRwqRpFmMW3CY3rVQwb70gXTbUi0ZeeYTtfhFpgzpTzaaZxmRtuqlSOAeXC9JOzut7Q
	nZq7+d2QM7PHkp22p5Xd0ZK4v3WLd3UsC7nG2FpLhsXJTdnxltSbhKHvj1bwai4+KDDNNw9oqUl
	qDNdsZXMgwMHGhy2GoPa8jLBtlI9kgfE6dR8B9XaM/2itCI2JWx8q8WGENxZI9By9Mq/USMYvAt
	k=
X-Received: by 2002:a17:90b:37c3:b0:32b:65e6:ec48 with SMTP id 98e67ed59e1d1-34e921222e4mr8407963a91.8.1766383418514;
        Sun, 21 Dec 2025 22:03:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGKA3D0UZC+xjfh66ByXXzYWd/qrhrAJAJRBonmIq0VE51dl8kz7ILkP/PfuaCUcDaBWyqw9g==
X-Received: by 2002:a17:90b:37c3:b0:32b:65e6:ec48 with SMTP id 98e67ed59e1d1-34e921222e4mr8407938a91.8.1766383418083;
        Sun, 21 Dec 2025 22:03:38 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769c347asm5846668a91.0.2025.12.21.22.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 22:03:37 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/4] firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
Date: Mon, 22 Dec 2025 14:03:26 +0800
Message-Id: <20251222060335.3485729-1-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ixG5zMQykhpsOSn-K0U0HZyk_mjWs6QB
X-Authority-Analysis: v=2.4 cv=cuuWUl4i c=1 sm=1 tr=0 ts=6948df3b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=A5G4tF9_Y6NSfw4zGTkA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA1MiBTYWx0ZWRfX7H8T2oAhHxn5
 H0b3s5vNeHIh4aYBnFg2chLNEgrrcCfD3+idQwvJ9JkotE/iWnT+LJV8cKBZXApEHgSiFAbywUp
 7PMEZimd67Ir6l5UjjX9YRqwug9HvQKvtBWxgaW0iA1yXxKSqq5gfpEmScpnfOxyDqUTT65Ye9I
 OjX0pD3uf8h5xBjy4JjD0olKUmCAklP8MRFEFvlL0Ceu3gbkrY6QZkqwiA0S3pkCj99xBJLXXY/
 3MdMIsf/QZOqTXxJrLnpNGKvJGXPRjSovz6ZrXHif3lVA8+6APhcu/uxBOwAb8XYVsClqnQUGjY
 khSYseJrHUuFv33+dJ5eQzpHuK5FW9jdtURUbFWThSqqutgeUgL2GPd+ob93yRGpXc9sTir0BQA
 RcXJ3CijNl8WGwAtM3LC0pwN6PuOn/fQ0eFrMvzeBZuI0lITz0mmE9HIGktg1DBh5W/KBxyKfX5
 /ZQSU5prsRn7R/LyiPQ==
X-Proofpoint-GUID: ixG5zMQykhpsOSn-K0U0HZyk_mjWs6QB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1011
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220052

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.

Guarantee that subsystems relying on SCM services can access secure-world
features. This change improves reliability and prevents missing functionality
or boot-time issues by making service availability explicit.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1a6f85e463e0..1fed7a81bd29 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2010,6 +2010,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
 	{ .compatible = "qcom,hamoa-iot-evk" },
+	{ .compatible = "qcom,purwa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },
-- 
2.34.1


