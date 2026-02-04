Return-Path: <devicetree+bounces-262442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OA/oFjiagmkzWwMAu9opvQ
	(envelope-from <devicetree+bounces-262442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:00:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C6BE02D4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 00F0F305B65E
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC84124A07C;
	Wed,  4 Feb 2026 01:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OY3gMuzm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CQug+om+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67792417C3
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770166805; cv=none; b=hjncFHfYVr46sphjD50rKoeMP5f0b9K7kR3+vNXZGE67JcyzBVKbRkxSmQk3MbGfUUGzQ8h19M2ElQrV1gisG1gf+9L9+AL9rIO+aSQjnPiOxfl8X2VoZy4DmnzSL1ino62onDKxZwP9u51AoL0h7vEwUSSy9mL7RvlTdwtk45Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770166805; c=relaxed/simple;
	bh=VfRuUvDLNQGtvgiSr1eaiBtwpSSv6JIHemxucUr//rw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t62TNAyceCiRQxzw1DHyVg4qBfpxz279lrzSmyThvHOT4rb8GcWikqf9KEPrCNE/VHhgFBjNqUadkidx70fYEb/3Vv0ba2okD/7WrQ1qzzqsOOzBexXvvnZOhjTDK4FmuKr1gJRJ3T/ezEZElB4WtwT8P/n881mfKcIBh1ePDHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OY3gMuzm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CQug+om+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613IloDQ2613495
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:00:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F0AY75pLMlp6UqxNfuSclKDOeELGzfL4se7wy8hQYlM=; b=OY3gMuzml7IP7Qkq
	7Qk35TR0FHXAcYO36NxNmTrj5PHeUa8DB8m8Q93kXbn7oyafYiWmhhWKuRr+uR8z
	mO+UzSblYNS/fGhxWzsFX48oipYfbOvs0946FK+aiczLZ43doRUp9TFd6HadVTEd
	VWtXjDu1PwnRINwtRzJ4htsofspTw2Zrn/MttPoOKfYnRjv6Qir7/nMa8082D6AD
	0zlfhwB+DWoD9KHfMuVmVyjq7N+RoLNizJE/ZUfoYokPmowky1dDZMYXz/Jx24Ok
	r47MJUMP+bnKge6g18MXHnCQ73hfMfVXJt0ON2a+QVV2wv5xEhORNck/23b7ssHf
	pkEZWQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3h07jca9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:00:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70b4b53e4so2755053685a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770166801; x=1770771601; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F0AY75pLMlp6UqxNfuSclKDOeELGzfL4se7wy8hQYlM=;
        b=CQug+om+6ESlEAFBfG5iWjX75Hc7w2MLeENwElaVbwJjg7xRxFsvqP3OnHJcFqfOmB
         L9QV88OZi1pAw+S+gsieovqZLvSk8D4GRn0cZR0dQ5nokmbvqkjgoqRWCgwUQHVLFxvx
         usP/4KRyLSknIiwhoDZyhvFdbJdxqeGf8J2JLWsE64yu5I3vsSQ8euqs6kEFrQnVMqdy
         yUE9wi2AdXaxBtA2TrYlQ6OWA8BFj8YJuZlfHBWB+o4Pq2lm6k3DYGAKaBmBhW2XX80c
         YUxNYU2vf5fpBaIaWj8YAucp4xKsv9QeQZdOhUPpFma9uPJubHs4AJlBDVqYisAD4j5Z
         U/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770166801; x=1770771601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F0AY75pLMlp6UqxNfuSclKDOeELGzfL4se7wy8hQYlM=;
        b=aNblfXAUkOnXNbrk1JPgx1V5uIu1du2n+oh53pwOGUcaBSRjJRSliXcTeyvmvUie5e
         TOLkNdR4c1+4eEFvF8Oj5qWxgSp8GjFf5791hMxjCxnrAmnwsDlN7nmMkdwgw2U67vUr
         fda+lzX4L859G7j/nnJ8wfzS5h1Mm5yozgjZ9PGRNNWyau9SjSYKXLlW7mdjJmGjvaUX
         0CxJcDAHzHmlr1/AAWZH4MPnha3rHNzO7wgM+aM+EMvlqSCETJOnApaExjgmmv0P6BlU
         tiNUHDTCcfn6ly8YcKFo8bhVYJnM0WsGnhWKvTv9/mvtyp9EUKPjuKUvVWlXo7dmuQ12
         WZKA==
X-Forwarded-Encrypted: i=1; AJvYcCUqt8W2TnSoSNbCkdX2O4EOF8BvM9Zy6L1MZiampkpExpeemMCcHG3Ptl/G16130HZw1NiD7Zs5Z5Qv@vger.kernel.org
X-Gm-Message-State: AOJu0YxuwVfkUte4qzIgyDKxrTAob6fG+cxMI1yS05FeVL406M/Om21Y
	xmg0AdlAeoHV50v1N+Jycxv4FQUu9AUXefEftjNVI8yPCWEC0hMSmCJy22yVEB0o7dcX3/U95CD
	pjSIEDv8MjXs0YXiPZsGmn7Y2nz4oBtAsjJa+OIonjcjuFy9yv97T94helACEq7jDWarQ336l
X-Gm-Gg: AZuq6aKeGNCDHAVDB4qvBATES8PDQE9OG0aI9kmppJ7s1KwpFvcBAAH9qxFQz7J+KgE
	leXiLKucXWYJiw+eas4YA0ml4HslOD9oE+dDdnpdhbg2tPHvW80Zn0J1qCac6gwOPmcnVEujlZo
	DAq8hCsTsbPkdxHLjqIhfmYlmj0oNvPiV7bouQUxRvuVj73AanUeZX6CIsY9TOYdKxYrYsEbsvS
	fdlmbEvpln+wGgVvJAm87rtCA6EMr+wv2oHz2Mt13aMB2pN08rRAm2tQd+X+pP01ToYG/zsdaMb
	rhzk78Nstrzs+gHHNnA/HBIvbhrnZV+sob9QQD1tRJuidsN4CWcKDprc1iHsd++ohDeHVsRku1+
	uKgLVVUuRJSQ5JBmenqVTB9QNWM6YoPf49+v9L/ed927zrd2d83oUTkR7iOavrETnA9aFFhivQe
	58mdELsZfr7jNPZBZbVmtnR2w=
X-Received: by 2002:a05:620a:4148:b0:8ca:1107:1214 with SMTP id af79cd13be357-8ca2f80c8b6mr201842085a.7.1770166801353;
        Tue, 03 Feb 2026 17:00:01 -0800 (PST)
X-Received: by 2002:a05:620a:4148:b0:8ca:1107:1214 with SMTP id af79cd13be357-8ca2f80c8b6mr201838685a.7.1770166800833;
        Tue, 03 Feb 2026 17:00:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e386ff563sm253405e87.1.2026.02.03.16.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 17:00:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 04 Feb 2026 02:59:51 +0200
Subject: [PATCH v3 3/7] media: iris: scale MMCX power domain on SM8250
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-iris-venus-fix-sm8250-v3-3-70fa68e57f96@oss.qualcomm.com>
References: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
In-Reply-To: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2142;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=VfRuUvDLNQGtvgiSr1eaiBtwpSSv6JIHemxucUr//rw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpgpoH69jYaMl9aHZSebvqf/7+KmmazX16JJBMf
 XbNTMQ30MmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYKaBwAKCRCLPIo+Aiko
 1fQyB/9WdlqfncSawuaEvQr/Y7vMSJ30ptCp+Q6MnsWnr3cxm3NiMiQkGgL4VGujh6za1/xN22x
 kwdizN2RrU+oihEl2FipMI877Fdq52jPDC//ieT7UCIF+PA67GtQPnDGz3mruvvDS0nj924uzEK
 /0xMiLULGUL2uroIdK4T8V68/zT/RYU9xKUNNQWJK0zcSWmZWSsfk0uYz0EztJQEp7FlScHEXGo
 19xZQdUA+Rhb6oD0bmv7kFAXs9XN9pVLfue9YtssMiMAMzXQVc7TfBeJ3DkkI0Tj34j+nPbM1wu
 U/Y6ohg3d3XQ3c7LCUBMzj1ydPICVugRCWj7NXhvR7cPOYfT
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwNCBTYWx0ZWRfX0xKNbEw7t3Lc
 gb4HqkBzgoFC0kXlYwyieLdvcuk5WqI44YVclTWA7+uWAyQfWo3iUE0zPlbpNOFugWCjCDvV+jc
 NSnEwairXRJV0Peg2MApkKxHIMU0+VSQODMmfF5Toe4bs0Hp6haIjg0Sd0y/5d7r69fylmx98VV
 4GwCBBK7btrp/C06+0Ha+W/hCrvQFSyVeePEK4OIvf/4PuNERPoqX14zxdjJMt0flbQnAZUaJ+b
 9aamElYZqF4Vk9n5Iszdg9xYfAKV6aQpGW3Nj1VEC9BVL6kF9YAup3AtlbbvE776a2Jr9EU56Kx
 OXDKL1JtBl7nRYe1KwvQfUg22BoJleGg6T8RJ9lMiDpkuiJO2KZws5fOUfRV91iUyFX79cUigTA
 hNhudPzzFLI1mRJqK4jOySwZB9qktT8HtIlxZIqRZZyxtVWbYEf92ef1GJJgx7AHaGvIr/ab7Pm
 AEVk+FikiTY/lcd2lyA==
X-Authority-Analysis: v=2.4 cv=CMknnBrD c=1 sm=1 tr=0 ts=69829a12 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_hdJGhFWpaytJYYtlLsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: vgzjKsK8W8O__Y_af6F0YBifLDesqYe4
X-Proofpoint-GUID: vgzjKsK8W8O__Y_af6F0YBifLDesqYe4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040004
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262442-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 46C6BE02D4
X-Rspamd-Action: no action

On SM8250 most of the video clocks are powered by the MMCX domain, while
the PLL is powered on by the MX domain. Extend the driver to support
scaling both power domains, while keeping compatibility with the
existing DTs, which define only the MX domain.

Fixes: 79865252acb6 ("media: iris: enable video driver probe of SM8250 SoC")
Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_platform_gen1.c | 2 +-
 drivers/media/platform/qcom/iris/iris_probe.c         | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen1.c b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
index df8e6bf9430e..aa71f7f53ee3 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_gen1.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
@@ -281,7 +281,7 @@ static const struct bw_info sm8250_bw_table_dec[] = {
 
 static const char * const sm8250_pmdomain_table[] = { "venus", "vcodec0" };
 
-static const char * const sm8250_opp_pd_table[] = { "mx" };
+static const char * const sm8250_opp_pd_table[] = { "mx", "mmcx" };
 
 static const struct platform_clk_data sm8250_clk_table[] = {
 	{IRIS_AXI_CLK,  "iface"        },
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index 7b612ad37e4f..74ec81e3d622 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -64,6 +64,13 @@ static int iris_init_power_domains(struct iris_core *core)
 		return ret;
 
 	ret =  devm_pm_domain_attach_list(core->dev, &iris_opp_pd_data, &core->opp_pmdomain_tbl);
+	/* backwards compatibility for incomplete ABI SM8250 */
+	if (ret == -ENODEV &&
+	    of_device_is_compatible(core->dev->of_node, "qcom,sm8250-venus")) {
+		iris_opp_pd_data.num_pd_names--;
+		ret = devm_pm_domain_attach_list(core->dev, &iris_opp_pd_data,
+						 &core->opp_pmdomain_tbl);
+	}
 	if (ret < 0)
 		return ret;
 

-- 
2.47.3


