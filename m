Return-Path: <devicetree+bounces-255465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 227F8D2366C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:19:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B38C5302F913
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24463352FA5;
	Thu, 15 Jan 2026 09:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mej2Oa1O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gf/RdC16"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF94832D0FE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768468738; cv=none; b=jaM1ulTvCWMd6DV0AjSMtxu5E+8E41PelOAS1UX3q/im6owb/H0FtasKX2SGufsPOLheZhQ6cpetiIoq4GvmbGKXE2LguVRNn7ZDPUoxir2JuXXyTIbw5C6fSPH47cXrl2P+xgUgSDUos0YFKuNFa67S1caxXBFFNzRwZlD0t3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768468738; c=relaxed/simple;
	bh=Uime7dZmNkMTLPWVfuwrvyaoBD7BKWQj9kmzWs//XRo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pWKIHw/cOCmK6g1pOLG6UDdGX50Yb8lDuv6MkDG1wtyOxPkjpju8iUH17pUJv+MNHwCdK9nhAG8EHbJXy8mO+5ctdilS6EJQsjDhFEvBchzVUs3LLyzrQj5l/bzqIDsj4o8yYVZqiUD2XoG0BmXLnNGiW7863C+vE+sEtey1Rd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mej2Oa1O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gf/RdC16; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fl3t1744894
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:18:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fzkDdKXt9AvR9DQcSSyHWpFEK7AjBSdC9iV
	pDB6Axzc=; b=mej2Oa1O86atLwqoE8xQjXpPiUT3Cm6lpuRArsjgvD7D01xXRvr
	e9CV0LjlmmY5oy21RAUFqyj03jifY3Fitieq76hTy0hO1o1ALBRZxl0zRmvUNQoP
	M0jfKB9a//w/b+e3xRes2hsGxNgADyUZCUssrpfAJ8GbSVF7a4HWWhao3GyESuRQ
	1fBEdtVsehMjY/oiWlGMxykPm3SLRnLGUZ8vTcCr8ykAySzGIyv6Tp0bXJQTiYUN
	fA19iRCedcJuJZjtnLWGI5qDoJvSKPPy1pp4LJuXc6CqMkAa7+r2Vrq+2HlZ0ZJj
	QOebA6G7cYX3CyLJcZa9E2Y+5Mak6qls+Mw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptu2ggy1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:18:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52c67f65cso276820585a.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768468735; x=1769073535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fzkDdKXt9AvR9DQcSSyHWpFEK7AjBSdC9iVpDB6Axzc=;
        b=gf/RdC16UeMj+2rXFBa/2tsK8e9N8cYtqOQX2Nqg8etl/vJvnupaE8LuhcZjCHzuQ/
         AypYxsi/t/FUdA4HJd9GY0PNRuMMl4o+I3p3ONT8AxcqzHOFoN6QJhUfHyL3L4Uv3bzi
         xAAS16SZF9MAVIrIDMdniOLxPvJ5+keEm09p5zFUCDGMH2v+YrVwyWbgfS7Z5o1iw+mD
         Q6Vt7tqXY/qM95rfE8CkLmoWLGmB49PRutzS7r37nJm+rW+Wf4fb9+yiO4NU1hLCtQQC
         pIxlIl0sMxdZLKWTXLNqfT1jWM+/dTMZD0s3PjFBV4zIEljuXhbAnR1nwk2SeOU/RfCQ
         4G6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768468735; x=1769073535;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzkDdKXt9AvR9DQcSSyHWpFEK7AjBSdC9iVpDB6Axzc=;
        b=E7YwjqmfWFLbSaiQR/EoX7N18ljvM+pY4tLBL4AY4EA3n26WJbdGU+IHKcgdEP4EUO
         287Fiz+2OpwnrehAbM04UySao54zO5MRUtjfMkGTWfyCnaAUt7FT+c17Xgz0fLYMv7UA
         nTM+N5nrIK25tFjgxSoAMbzrjAd0ukkxrV4DaF1Esula1EaLwhLbMr/HYVulDp0SXNpz
         6NVN2ogDkna9CHa2CjBehyxUQ9H2UvqKGa3aYZNFKL6D3xhjlrE4589A7KhnKIrZCarU
         3CbH2swwpnKBoxMdSQYAbYCPRCvC7KgT9OIJBXUHiv27t4QnD0sxTQsCH0/0cEs3qsnB
         hJEQ==
X-Gm-Message-State: AOJu0Yyb7sdooK4O6qNCFQoAkPLcRK8ar5JYEKQ57oii+pkBErZM14/6
	Wdf7o9gV4AzvYf8JH7dnskxLML1/j6k0g8hHYaKX2y0tD8YageIjEPqYQQoFJUDIqfsnuqj1uM+
	nFCxSY2h6PNNwrNGcDnQdobEUkzMjSlcUR9CcpaAOu0wdkVizGYhBPB8UykQ4fCEC0wzR825X
X-Gm-Gg: AY/fxX6eUsJi4goSoTej3qtTZruUCJVSQ9bikQgjDgL4ueOYbD+h3KU75OloPGTQdqj
	ozM5SEIqXvE5VSLhODFdjM12460qyuMVncprOyNeXIKjsDACENCJAHEf/BeCS27hZjsnJMdeNse
	fmzv0XUxDscecju8/6KGev0vtLkGyS2KYS/kVYxTY7xDcfN/MKPOX57rro0lBVo7YgipT9sBkAP
	ZKRGJwLogOLcoA1gFtEKwrYckwOjRs11ntf7n7+4kP95OPIdaQ2RIvKkxHWlpUvZn/AKMGIiBnT
	OaDjNHpreRPHEEymPxEyBfmsr50mIay2M6AEGER8VF8xns2lFGz/seedgXVkrJowdHc46hOFYbQ
	9zLNzlNOUyOcSI/OcBZjZu1guLQR+oGzd8UWEFw==
X-Received: by 2002:a05:620a:290b:b0:8c5:c9a0:ac28 with SMTP id af79cd13be357-8c5c9a0afc6mr296273085a.21.1768468734918;
        Thu, 15 Jan 2026 01:18:54 -0800 (PST)
X-Received: by 2002:a05:620a:290b:b0:8c5:c9a0:ac28 with SMTP id af79cd13be357-8c5c9a0afc6mr296270785a.21.1768468734515;
        Thu, 15 Jan 2026 01:18:54 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:b2fd:6f9c:25ce:7df7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6fca57sm4459984f8f.42.2026.01.15.01.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:18:53 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH] of: guard pointers to key OF nodes with an #ifdef
Date: Thu, 15 Jan 2026 10:18:39 +0100
Message-ID: <20260115091839.8206-1-bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NCBTYWx0ZWRfX2L87Xm2wKueu
 PGaNPgaMkF6MtBnbqB8Q2EWY918JZtdd2hu3aPicJx7GXeIOcDPH7yP/ITHSeJlIYxoExAvGwPC
 qVNnMq1ydK8AU6PgFcZPMWQq8+GugpbVPRzwO5GiSTMbUQrk1whix+hVT+ViJ41Juuozxbg4WXQ
 ZbqKqKgS9a5p6K0E6wRQOBAhuLOLJni3GywKl39AMdaXXXDJXLE00Sj3Eq2gePAujP3DrCfgMBe
 W1+Ji96Ryo8d4fcPeeOudm3+Y3cGaqlQOkIQsWAt7aKvZtXDBsIjE/qFfEgWtfd0tp+RUOWWOj+
 C53YZIcPGE8vVqI6LIbiVNDb2X4RFR1LlgFlejTqe6EXwP+L7Wj39bNI/7cbow35uK4735l76vE
 fZHs8J1vC5wyDhoAGsIAfd6BtITHQ6ivy0idBOeO3u7bH4q+agweS5hgXpgDLmaXsReK/DLYfbE
 coTaAT+HKKUdCYCcrZQ==
X-Proofpoint-ORIG-GUID: eW3WPs_Hj3q-64BJl2DlRQJrlH7YySPa
X-Authority-Analysis: v=2.4 cv=W6Y1lBWk c=1 sm=1 tr=0 ts=6968b0ff cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=CLJF6lgPrjtTUpQcK-wA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: eW3WPs_Hj3q-64BJl2DlRQJrlH7YySPa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150064

We declare the pointers to some key OF-nodes unconditionally in
linux/of.h but only export them with CONFIG_OF=y. If anyone uses them in
code built without devicetree support enabled, the problem will only come
to light at link-time. Add an #ifdef guard to catch it at compile-time.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 include/linux/of.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/of.h b/include/linux/of.h
index 9bbdcf25a2b4..bc57dff819f8 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -138,10 +138,12 @@ static inline void of_node_put(struct device_node *node) { }
 DEFINE_FREE(device_node, struct device_node *, if (_T) of_node_put(_T))
 
 /* Pointer for first entry in chain of all nodes. */
+#if IS_ENABLED(CONFIG_OF)
 extern struct device_node *of_root;
 extern struct device_node *of_chosen;
 extern struct device_node *of_aliases;
 extern struct device_node *of_stdout;
+#endif
 
 /*
  * struct device_node flag descriptions
-- 
2.47.3


