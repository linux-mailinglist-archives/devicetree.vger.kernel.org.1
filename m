Return-Path: <devicetree+bounces-211740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84884B40619
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA5751B232F2
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4525305E32;
	Tue,  2 Sep 2025 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nolUCwk5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544A930101F
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821666; cv=none; b=c8lqavKq1z3hf4z3gZMd3Sa5JTSUr21UPjnjWvfGBMq2fDLcDNnJp5ercv7tdo1edIrG8v8asRMGgxRk1GKZp7JIRmLxoSv3EuI9fLqCpyrX0rHJsvlJc4+pZ8YWA7TDY7N5VlWjTs2M/X34o2g4fzSjjux+o9tCXi7Sn03a2U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821666; c=relaxed/simple;
	bh=lzi7PjmrbdiTIxDM4q1qCQWpTdwTH0ya6B+wcBwilSE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OsvBokdmJGQg6q5Bf+0cvAZA3/JJq2L1giLzkrnQMThMKzFJ8P/jjiLlDmwQ/wN+v4t0O47gyqYzl8FG2hk3FYHtBM+SDBlcfxHlMlOYGO5PI/+ER9LQzV/HQZ6b+ElRM1UGRWaCbjWW7eqsAvIYZAF+p5ht8sdo1j3g86++2o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nolUCwk5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582B1OQI021747
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:01:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4elZEAGxUxZ
	vEJD8DID/5RqvZhZy/oGpNYortaWIzhs=; b=nolUCwk5gI840TZbsYE9bsSF2so
	/8qyZgP/r0pDHDc8qE1TamUJx/C6Tin+c578ghNPCzQu5Bpc9sVAs8Az7VSp4AoS
	8pIsV7maTX5gp0lqlcFd9cGqC3qKhtRDgHrWP8jsXWpONMPsGLtKYLj0chIIX+dW
	/2L9VVEQZpfMQJIAVL0ccpzoxUrwUdPtxdEeuet1eUwiUQqwXoQeREzclF0dZEmU
	XKSjUGwXAoVJFRUBH9H2Uw9duEHkKOwv0u1RRTCUmslkHsh5zhlF4GyADB3nwohz
	OkzrGiYcX2iOIivK5rkfDr+dObxP9Ve2k4ufAk+SQ2sJlAWGQfDwATePL7A==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s03te-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:01:04 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-898c0d9f127so243022241.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:01:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821662; x=1757426462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4elZEAGxUxZvEJD8DID/5RqvZhZy/oGpNYortaWIzhs=;
        b=E/TWHw0gA+mjtPYxTmd4D7GGAVaKrKilHnE3bDgWrJF00D4PmCu+aM9DHDbkQTh1fV
         5Vdde8xQYkjPjFUYx6wcjMu0QzCO6Ovu7tfIdsfZjVpW3a1RTHUY9dazXOwO8mJmW68w
         782Imwi4YmpwN9n3B5hktcMQJNgaLRTRXEoSXbjeeakD+repjVVd7NHZm5HEInlocKaa
         JAbxW9ESQww2UDKALChx/uUJCDHFuY+lp4MmwLykIwya2DJ6xxUtDtvqTVeU4EnhOoVa
         bOWHneXR0ZImhi4jvri55phO7A9hyt8G70Lx96dJWtMhTJ6PKkHRkr53orX/AbFhlIW4
         t15w==
X-Forwarded-Encrypted: i=1; AJvYcCWXsH8spLTmClXdr3UOMxGf5sLWwfl3lkhxA8KRqFmPwR5wIUpS8coFvNK5p9bf47QSRhBMryxLSpNX@vger.kernel.org
X-Gm-Message-State: AOJu0YytFIPPDD7w4Dg87I//JVFj4BabMfgNBl8vzBXOmaI8BIMp4Oh1
	duTOSJ2IXt7u1Xfl1evQxLVe4wLRFuXmsHmad0IOW+94MqWioZ2DJ4nlD39knkxVLJ3avhUqPwE
	nnPbTH10zb/L9ebHteXdg+ycT23Rx694BPFe9fhZioV4AOP4ghHsudyWj+qaULf9b
X-Gm-Gg: ASbGncusa2wSOjfaGC8UDMkrvXWYBzsOLKR+bIoKOQOyCVuQO6fEuXWbjhumYIjI3zR
	VDLqyQ0hUBPbas5pVwwjrO51EZFguC9gSth135vfs+aNzP4zIwLDeFNhrxDaCrtwnJpr1NLCHoB
	kGv1ZYzHR06SeRxJVVS/8cENVjZ+5OvYZyfIk5FONSpDbe2WoPRgLzZrz8TCSNm65LE2J3olDUP
	F44UhsvdUgIBULKvPT45HRdKDGvN2HFcNgg3JRyAt1wFnHUAhDCdWyEoDYMn/jN+eaas2kMp5am
	RRWNepZdyy9XdhHYqcTFNY3467xcOygBfSYSI0FQNkyIKrjLU3Pr2Q==
X-Received: by 2002:a05:6102:685b:b0:530:f657:c1c with SMTP id ada2fe7eead31-530f6665444mr447385137.0.1756821661513;
        Tue, 02 Sep 2025 07:01:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4XanQI+P+HUm3egZOKx9hQOOG0P1c24g9VEwtKc0I4KsM/LPaQOP0PJ6Mb77+ov0hpW2oDg==
X-Received: by 2002:a05:6102:685b:b0:530:f657:c1c with SMTP id ada2fe7eead31-530f6665444mr447186137.0.1756821658795;
        Tue, 02 Sep 2025 07:00:58 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:57 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 3/6] ASoC: qcom: x1e80100: add compatible for glymur SoC
Date: Tue,  2 Sep 2025 15:00:41 +0100
Message-ID: <20250902140044.54508-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX/HZynovM4MUv
 GoLUFm+xF5TTyPGZjBekCsSA6a5QXyPYspDgpgtVY8PwAiM7atQ/jAwMsa3iYdJlgAeF6N6kM08
 5V2crOOtgrdoylndIsldLYx8DPVS/LbLpgbz5Pahz+bhRvZQmYXPHGsw8pjOvDLrPntbKBF4AAl
 rfSAesjfM8XMKXfcsxB/Exkcq1SZnkrd2c5ppsHXUqQZQZT310fYVuwVJsoUWhjLUj0+dzWAOfs
 dzpHxLtmJZcCEK37IJjlRKUva3+RmPYBMJALM7twigSnwv+Gtkl1Kq1eaHz4cvFiNeft74XKqUL
 7koTCiVfC6zqVYmmQjMj8EgS1eHw9y8vYkNQZ2Hr8Tmt4GpDHI1ZOFx2n/JabBnLD6zfMCoKS6e
 0uoTpeGm
X-Proofpoint-GUID: rV4vYoq8_9GSRJ-_UQgac9VsxmQurv_A
X-Proofpoint-ORIG-GUID: rV4vYoq8_9GSRJ-_UQgac9VsxmQurv_A
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b6f8a0 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eB2jmeKzBhuYpaM94Z4A:9 a=zgiPjhLxNE0A:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

Add support for glymur SoC based sound card support.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/x1e80100.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/x1e80100.c b/sound/soc/qcom/x1e80100.c
index 322010d54af6..444f2162889f 100644
--- a/sound/soc/qcom/x1e80100.c
+++ b/sound/soc/qcom/x1e80100.c
@@ -218,6 +218,7 @@ static int x1e80100_platform_probe(struct platform_device *pdev)
 
 static const struct of_device_id snd_x1e80100_dt_match[] = {
 	{ .compatible = "qcom,x1e80100-sndcard", .data = "x1e80100" },
+	{ .compatible = "qcom,glymur-sndcard", .data = "glymur" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, snd_x1e80100_dt_match);
-- 
2.50.0


