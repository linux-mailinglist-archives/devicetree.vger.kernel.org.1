Return-Path: <devicetree+bounces-178341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB740ABB74B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4716818994C7
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E9026AA85;
	Mon, 19 May 2025 08:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HGF4TJCO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E826A0D1
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643601; cv=none; b=upAfQn9RNf0UNKl3E7dUdrRgnb6xJOGcKvB5FqXal9XWqiRgLyUYdIHuSNboIUFsCiFtlTMN3PXtDPuNav/KZOyioRmy6Irfz5gga4ZjKmQ9/1VvWAy/2YePdn2ckKeJsTmD7nShxi3Lw5ElhI/vEdbPl/j0qwCcxXrR8oeT3GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643601; c=relaxed/simple;
	bh=BCY95S5YwyhuN7eprWN+F7brDc0QM3mQom5N5iyKPjQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BVo4GDdWN1cBa+iBnoDlyvX2vjlj54wONVOiYxQm7p+Vfu3HUpXF+Fxxu40pT02/jyz40WZWY5tI9v4ZjuNyhS76ScrQSe7DxCcKwi+LyMQMYcrn4gNnOWZrgSJtxIZ20x2Er3Kalto2nVpA718K+3jUh55DwFD/DHWXSuCg2AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HGF4TJCO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IM0K3A007110
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=BsvjJCHHiTx
	Tor+DpQ8GKlT0ZZeN/JEv0ETifCmbtVc=; b=HGF4TJCOB58H8VfjEUyt3c1jeT+
	1veTtGVBFp3jqXFjZ3dSvBryT1efjThfW+8F9V6WEPTE3+uRbVGBVGxXSicx64ui
	QjsGh/uLNtrpWvvc/NebhrpYK8tfKYXBzsoEDQ92aB8XUiGgM7btkbwncg3vGvYl
	2h/YPF+HtO/z+D+u6Cx/q2fo/BoQJcJp+njhA8LyeymcbPOBGRqp0k0so2dReK3v
	MxUvjMT9oWmc6nerR36QYl8BWx0A8J1Cdub1RQikNheSGIbzjUDxooqhkuboMCP5
	dldKV/+MDa0b2Kgu2MkCLjYvdVv6ZuDsdvPTkaZncAdoLKK7TLFc/XajRvw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4up1d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:19 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b26e38174e5so3972353a12.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:33:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643598; x=1748248398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BsvjJCHHiTxTor+DpQ8GKlT0ZZeN/JEv0ETifCmbtVc=;
        b=Ub9GfZNvqkKISGu/x7DbEg13gN+KbveTjbXjedSIqvJxJyCv5Amsd2jWK+BMx9vhp4
         Umf1wf1PYBdDF2A4zd+t+RpNitKKTT28q1lLhI7Y21xsWXoOQUs0OURwsykoEaTqcXxc
         fGuMrTH9SIRSvPBQinOr8ISGc7KyY0REk8Q0bJfVX500QCYzTiebpu7k0RdT65kZJG1I
         t/4HBAhOu7cQs73LvjN1YfhiSDzJBTVVW2O7fPLgUuTThl36BGfTDe0vT8aGOuOVRm3f
         pgn20SAEgGY0TFWPj/X/XRhs7G9HxiErPbjZZyz0ayQzdvPIVGzgZtQniIOPGvMFZvMi
         JB+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjGp6VZ2CJfnXt9pUmCo3TLgRwfVLg+elthuLZLrs79cvJkW0djxMEl+WV+qwuHhRQOKEURrAY9EgK@vger.kernel.org
X-Gm-Message-State: AOJu0YwiIsB0h71JglyeqlrvqiGncEQuixG+7gETMqVmkVz+SoL2Hkf9
	YC0an69py33PyXmhvdJq80HZw7Zuvvcz3ESVnPmDcCg5h3m19D6OE2h43D1Kwu8/k7peRIoApMo
	qUZPp3jsJpyR9HKS+5lLa6J3lHyn/QM2GobUVu2a2+pcZOFeMm7uKhRwaIW71W9yu
X-Gm-Gg: ASbGncvdQPJ6tH8REtgACNtqt9GTpcSwoJpV8HSiU3ADmzpjM2uHMYK7d7U0xynRhZJ
	E4FNB4xmruDesYMQcJrpiW9vdW7pGN8Boz+i4HJlKVX6fdLDOXObgYXi3X2yxoeGC/mg+St0Yq4
	hd0HxWiDe2YSZBn9lWGkMUOj6mNFhFCGMBJds6P9dj8HHEd+pSvKxowQeNZbsbV1TvqH5q3MCSf
	SIT8z6Z+SHYuVvvUxjiiLfaRvVetoBiz6kUuKBoo7EcbdUcn7ZSM+bJdWOgR/a3pmi1ReP0NCWF
	Idi0PzonCJ174PlhpLa64UjRjR46glfu+EgBnBny9jpAYiGu
X-Received: by 2002:a17:90b:28c5:b0:2fc:3264:3657 with SMTP id 98e67ed59e1d1-30e7d2ded9bmr22199425a91.0.1747643598427;
        Mon, 19 May 2025 01:33:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK16vnqAO96Pzvim2OZIqPkjJATrLQNDQbP19YpepwUrlpJVdSfxpSAk8bvv0p3I37g+7Cyg==
X-Received: by 2002:a17:90b:28c5:b0:2fc:3264:3657 with SMTP id 98e67ed59e1d1-30e7d2ded9bmr22199395a91.0.1747643598063;
        Mon, 19 May 2025 01:33:18 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e6af9d586sm7003887a91.11.2025.05.19.01.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:33:17 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkumpatl@quicinc.com, kernel@oss.qualcomm.com
Subject: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCS9100 and QCS9075 sound card
Date: Mon, 19 May 2025 14:02:43 +0530
Message-Id: <20250519083244.4070689-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dIimmPZb c=1 sm=1 tr=0 ts=682aeccf cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=kbphIXzXdx9KadpZM_wA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: Mkt2NUrqQZgpqLTHNW1zcQdRNB9oNciC
X-Proofpoint-GUID: Mkt2NUrqQZgpqLTHNW1zcQdRNB9oNciC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MCBTYWx0ZWRfX0pILDMOy7p21
 janN+XhYQl4JIcxkoxQu+G1vBdQLNKZdv1IGEc0uw89U5xUhxz1ZeNtTPz1sOYBashNVZ1eyFij
 lO8OUOTFlb8W9ydi3wLzcJYEpRA2ZzoxdqBaiM5fPNebNiE061KmyEJkDiX3FHhP85uTxEwsboU
 iIbFRZtbYtOnsaDoRgbHzyYnYpSiZ9KUkjRK7wo3/FugWmy8wzwZe7+NndDYGIAxFVJYHJwhebk
 WmJUejFCxbQyBxhPuCIpNvKyEzXptj/PvA6MrUKD3oMDxrFGT9Jsg8wehnXmUG6K5vMZcDhP2fx
 BpcDgEkPNcQA5rAwOYPWHapTv3FLFzW1vUOK1ATGAthPH+GTwiFrM4emfdJn7BkA+e264y8zT1A
 ZeMq1+WMD5RxUuolw27KIrXlKv3UKHPLqxvRhn5LA+K08NUjGyiG14c99arvDpN5fRWgc9Fi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 clxscore=1011 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190080

Document the bindings for the Qualcomm QCS9100 and QCS9075 board
specific sound card.

The bindings are the same as for other newer Qualcomm ADSP sound cards,
thus keep them in existing qcom,sm8250.yaml file, even though Linux driver
is separate.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 4e208cb7f6c6..5c6e990dc55c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -31,6 +31,8 @@ properties:
           - qcom,apq8096-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
+          - qcom,qcs9075-sndcard
+          - qcom,qcs9100-sndcard
           - qcom,qrb4210-rb2-sndcard
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard
-- 
2.34.1


