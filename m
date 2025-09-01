Return-Path: <devicetree+bounces-211141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCBDB3DA6D
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:58:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 987183AD3F2
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 06:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B35262FEB;
	Mon,  1 Sep 2025 06:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZeEv75nd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3528025B2F4
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 06:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756709905; cv=none; b=QiJfkDNe1PMjLkapNCD+6AjvDeEhwapOn4gYJyIcGF2rlK6g+5J7eWKjVpp60R/st5iuq7a56BXe6Ctgiga0RPulzxR9kfB8XKesaUSrtZTKHyEBSYn8dGw49mDiBht1bOmEaxg0UsumI0VQ0fbOi7tPKBK82yeeSseaZGn9p3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756709905; c=relaxed/simple;
	bh=ZRqDRcqJUID9wiPQfpPR1WcEMamloLO0sgtrKILAjZ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rJOnLTW6YrO4deStedEdNXQmK0GHKyfIqbyF4Su3R1wr+hOEZtVRQYHqpgFErMVouwdYk2Y72e4KgK3YE7C0qofs26sdcIS6MRDAofFiouGjoQNwgfjE0H7qLQPh5Egu4jM8RAp7+ir/W6PmJjWH6aa2GPuwblSl1e/4BcoJDOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZeEv75nd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57VMGhVp028656
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 06:58:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dLb5zfab531NYNRygT00FTgQk+urSL3aIgF+0s6ontE=; b=ZeEv75ndWYIPIdcP
	E/agYXZZYbvSkBnqiy3jcU84FG7VMCBsQKJFYt8MNzQwwpihzNg9H6xY7BR4iw0u
	T4Z5SUqoNwWOe29K5lY1aAl+Q6m47dIj5rxBe7zalIKdMDbkyNwYuG7rw3MWkx43
	/zFSQOB85IUlDL/4y0In1YFKTHkb3quSrOLZY6z3NhIWzVxKA5Kg3cyOF9PAgu53
	X51Rh5bIuX6cIBcJSIDMj0mGI+k8EyXgSL+U3r0jkwTX4Rj0Bd8hjym64mqlPUyb
	Qow1Gyb91VuNGM42Q3jKeXmzpyvipTJjCF58qfo/qQBV+bECK10ZAeDZRWbVUuy0
	y3lgrA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utfkbhcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:58:23 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4d48818a04so2044219a12.1
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 23:58:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756709902; x=1757314702;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLb5zfab531NYNRygT00FTgQk+urSL3aIgF+0s6ontE=;
        b=MP7pa/UegqdHuHodGngL8BvZjIP3PpVv9mSS/9t2pylElfMTMsuNRpvgA8yQbVzTMh
         MN7QR6GphNGLwojpMmOL+EOP6TV2GziutI0Oeyk0FB3wyLWc3xgoXJ7CjOPoQw0iP+Ld
         AseRzzg7oWPMU3vDhO8PT/VzM8rBTbgmYb7IyovdDO7y3TjEszTR/r/I0bwxo8id1fnx
         NlbspNQOo7PozhNYpK/Kw9Hzw4mqTx31GJagKPEQN07yACF+B1a2TMdmECgX7Ug+rU/w
         6/eBLjXteyf7V0noq/agVhYcWATqRHvW1h7n0B6QfWYCh4qKMeH0IFtBHnvehHGE+G0U
         +z2g==
X-Forwarded-Encrypted: i=1; AJvYcCX4cFMpCu3xMatDEKlH2juuxxU+bO6hpRmRthO/Smhp+cjtuckz/1YcfQwEjgQvQ+DUZBkCW7O53HqN@vger.kernel.org
X-Gm-Message-State: AOJu0YycSbpkhIfPTHsDCYjZF23revNIDAd6TEbWoiBAM0d+AvEbGPtt
	/V0i+MKa0YRvEmGgI3bgulYzaeYCz2HxnpJ0hbzA6J4pbLKvJABTeRGOAbGC1VI1GEAKM9OXtSX
	CVBpJ5Oprr4dgkhnS3Qdq/MRgLJ7+7nJuSOv3Wu35hhjtnFFMijyA0wN2lfgTHbQ+
X-Gm-Gg: ASbGncuRr59hVs3YCBVHV9BAFDJ5aerE+okMhSxYOlsj3gZVxJzKt5gJcFwxB94eX3U
	wzuZG6HLvWSb2UHi0dxRbAO9l6OsJl3a1jiWOjFPURrA1TCVDYQ/EVi8EdgD/955XMB+jfr4wNm
	7DhBoPIZk53X9xTREhMVZJzoQMXPEWNq4gF2nK4MlIlrU79L7ClsDzDtbaFGl6pWdw0W9tjV+yh
	VRFMl69v5uwFoQK76gJz5p1Rs7Qofq2sUcL92D1J7KreGIwL86kmfD8F3A1hjZWosiHXOVVvYtn
	L5/NgfKpigZKeVf0GGo3yUX+OU9LWw/Dknu/AcUMf2Dp9rcUY7NlZPuYj1RTg4H7UoHlMwCXiUj
	TWv2P7mQanreyYIyERixpoA==
X-Received: by 2002:a05:6a20:42a3:b0:243:755:58b0 with SMTP id adf61e73a8af0-243d6f3b622mr9331547637.49.1756709902491;
        Sun, 31 Aug 2025 23:58:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHanZiPxSU1v9cAUvVnD8utRjYhNL8IT8UfQ2s9CDwfXiE+kciYJzMhomhFdanaIJbCuctfPA==
X-Received: by 2002:a05:6a20:42a3:b0:243:755:58b0 with SMTP id adf61e73a8af0-243d6f3b622mr9331519637.49.1756709902058;
        Sun, 31 Aug 2025 23:58:22 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd366f95asm8559358a12.51.2025.08.31.23.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 23:58:21 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Sun, 31 Aug 2025 23:58:15 -0700
Subject: [PATCH v4 3/3] coresight-tnoc: Add runtime PM support for
 Interconnect TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250831-itnoc-v4-3-f0fb0ef822a5@oss.qualcomm.com>
References: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
In-Reply-To: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756709897; l=1698;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=ZRqDRcqJUID9wiPQfpPR1WcEMamloLO0sgtrKILAjZ4=;
 b=RoLU+Iza7O5TpoVvMZwc23uQWSolFpj4SfzRxppOcKkPY6mZ4URDE1xbKH8DIs3/Ssnphy84n
 Npq7139DM2lCGohtCNFwcX+JVdamp1E/bBCAR9t71gZwSWk7If4/s7j
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Authority-Analysis: v=2.4 cv=eaQ9f6EH c=1 sm=1 tr=0 ts=68b5440f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qearADheJa7ujHrKWl4A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: wxAjpSCxLBm6u7h4zc6Sq3w0dAM1Tp0Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MCBTYWx0ZWRfXyirWRj10Swz9
 GTrhQKGg1NcY/Ll8Tf0xAKTLjRukl8En1znw4pokr75lKrb3Md2ABbyaU4pXS2hEGPM7iFELyXE
 MeeFMqDWIUiEt26KEEYoRfmuBiM0z8LJBsvSFGj74nJR97mSKVDXkLxlG8FnT4eMwMEj+Tx+Vlh
 tuvX1/OAm3pXntTw/OLOoPmD/0XVLWWaVpN221rWnIckD9GtgFJIQQKGgcNLXfdbjjkMDnfihIh
 M3NMCVkrAdY9/RrnHpL84cYFWuWBhU5dpZKb0GEQ9OIVcrlH4uVldLYqw3mvYg6nKoqtbBuoivb
 gW7rNNnwXDXO/1pss6GONdhSlgKt3hkSXaOrmBavMprhlsnfmz8N37lGQIYQIvY7orYeqn4hY+d
 sB/2/dZJ
X-Proofpoint-GUID: wxAjpSCxLBm6u7h4zc6Sq3w0dAM1Tp0Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300040

This patch adds runtime power management support for platform-based
CoreSight Interconnect TNOC (ITNOC) devices. It introduces suspend and
resume callbacks to manage the APB clock (`pclk`) during device runtime
transitions.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tnoc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtracing/coresight/coresight-tnoc.c
index 5be882300d79bc0173aa6a19d7da1d48c4aaca9c..2c5370497076536bfa868f0d80db775ef242968b 100644
--- a/drivers/hwtracing/coresight/coresight-tnoc.c
+++ b/drivers/hwtracing/coresight/coresight-tnoc.c
@@ -301,6 +301,28 @@ static void itnoc_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 }
 
+#ifdef CONFIG_PM
+static int itnoc_runtime_suspend(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(drvdata->pclk);
+
+	return 0;
+}
+
+static int itnoc_runtime_resume(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	return clk_prepare_enable(drvdata->pclk);
+}
+#endif
+
+static const struct dev_pm_ops itnoc_dev_pm_ops = {
+	SET_RUNTIME_PM_OPS(itnoc_runtime_suspend, itnoc_runtime_resume, NULL)
+};
+
 static const struct of_device_id itnoc_of_match[] = {
 	{ .compatible = "qcom,coresight-itnoc" },
 	{}
@@ -314,6 +336,7 @@ static struct platform_driver itnoc_driver = {
 		.name = "coresight-itnoc",
 		.of_match_table = itnoc_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &itnoc_dev_pm_ops,
 	},
 };
 

-- 
2.34.1


