Return-Path: <devicetree+bounces-262441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ADLF1OagmkzWwMAu9opvQ
	(envelope-from <devicetree+bounces-262441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:01:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1712CE02FB
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:01:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB88330E3013
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42B4E24501B;
	Wed,  4 Feb 2026 01:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k2Zv/a8Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VleHCBND"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA0239594
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770166804; cv=none; b=n9470+GRmoUBlCTnkPKGcI4e0f55ew1cGLlXcmRkA9YMHrEpoWAEAj6u3o2og1uf+LzyIUPxvXmKPB1tzlSpTLrGsNVGf1KcOEiKPhs4Lju8Po9rWov4WdeBtJ7pepzikzYYVLQ6dAtcOHy8AYFHZ5AkQZrBGakmc8379jCAgnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770166804; c=relaxed/simple;
	bh=DrFwEkIoYrD1qa5tx9EdrYljNPefynFUvMATHqt7Zhg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WA8JYRAd5E8SLz5dUtc+HVo3Ey+UrW6t8HK7mOoNdHxj/huzlH0mCKIfIDv8Z4aGJFb8B6IXVMqmLq+ZPrXDPTZjvLoj+W0Enc4xgPwBsIRvT87kql9q/ljGA25tkL0IvEuaJQduw3G3GBKS5jMo6/2dNksXKVfLZeORdQoPbVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k2Zv/a8Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VleHCBND; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613IlxJ22667695
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:00:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HFgRG5qL9bnoUT3jp+ysOldDPm40o5vQTA9j6ykK/qw=; b=k2Zv/a8Z0KJ+rUmV
	oMJx+1RTv6EK/XHMNwvwIHIQbf7SVyEVr3teJD4KYzxtuoQ8mDZ1ra2mnwGYswP4
	n3Za56KUmZj/p9y0bD3D99UVauFXB+Hdt59PcvbkibN7AlY0LNMzwhZlCtYqtvQQ
	/2F0Q+eJQPQ853xWzsHqX9B7e+uX6R1TfGw4N8DQxRRuwEFu04v/o/BiaYVO5C+3
	eqr7nLqYPreMkmUwp53vv51M2gviNMj4IyuYagIu1PRA7VikAq4VBVmoapEJ9Hbx
	4k4CmIHgCzWQkXfwAPp47VdqCqw1FH8eZnUZk5py4jluMhMmEcrKBKUUUHrmvuhr
	aL2kew==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3nf61aym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:00:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6ad709d8fso106030785a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770166800; x=1770771600; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HFgRG5qL9bnoUT3jp+ysOldDPm40o5vQTA9j6ykK/qw=;
        b=VleHCBND3S2RJj5CpZZTpVF+0Pc9mLuvuApB+dI0DzUgPS9KPglsniRt9mLJ9n0SNl
         wajmFaKXbYUtR5pgj6mznxM7bqm36V2rIpM6Vg49MQzyBpsjZl11nEas+CbSu13kF0Xg
         7gYGz3MGSTsaQMKIikAzAFcWR+4D2ebAtwZ9nuZnmMvE9K201LLUNweNRdmBAgLgEBZh
         4pEfKyfIIdykYk6JxT1CoiCAe5tPBCMwIRIoQMqfi99XgIw/w6+XflRCJIIniuBYjM2x
         L6RVPlMBA5gdlAQamfZFD8u8TjlHdg3GNl1+W9AKfGerLV6dyK2t4SwoBbNBHpqVxDrb
         m67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770166800; x=1770771600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HFgRG5qL9bnoUT3jp+ysOldDPm40o5vQTA9j6ykK/qw=;
        b=So9lIHla3EaXzG3fhDs1dc+1uZy+6xee2PTc7yyZURT3dQcahnxjia9VjbVas71GoJ
         JQRlihCZCfuNCn7pKQ4J3fykPJGi0S6a3Yg0MNEUI/Q+S7oNeUeU9qrbVNV4AD2V8mQM
         rHwIDqbK1oFK6sk0VUHJPI2WBj7od/pAOSoID/fCaguoNN1nK+/seOmMgF1AZmzfEYXE
         6PdPtP9c9pycZWnY2pw123GmsivChphb3UJJY1NBejSbaNyg07GjbImFwUdaokPf3U3q
         v7okB2UAGaWh/AN3v8L91YG6UOYExhLAM2nvDF9qPtQWWIRYb6ObwtiI1ssdN2Lv7ENq
         kGtA==
X-Forwarded-Encrypted: i=1; AJvYcCWFdol40UOjLoNwHaAtgb+ZCBaQx0C13GC/brHFN8n3K8u8/XeiACugaOzh7Hde/R27U1CT4Faqu4aS@vger.kernel.org
X-Gm-Message-State: AOJu0YzHEHTGRXrOzvpfF0aipdlust2bdai3wDASyimCiqVQvfj4iPYJ
	Q1XKEVGss/PzL4EEn8yfeIt8cqjcd9TQJQrJhnFXOodb2bwnKud47HI4F0nc5bTShrhLFYvDoXL
	AyXc6ZBBfvnvdIHEMdkEwpwuhtC9yng8JgoAXfD0noVJgFZN1xk8PJNzd9RoxWlAA
X-Gm-Gg: AZuq6aLs2REQO4qQdPvjaHDbc5I9DRuMiuMhfZJl3PgntnRqx1wFpLDtizCwM4+AlXX
	APHT5zoJD4RZ93yw3r1Hyfz0Bjw+nsO62rxnp5Ejz4Pzh9gYUWBSDndu8kcSlDBQXSbEdYuqnoj
	zgV/wdMp9LbPo/AgqFn0c5zHLcNRX7cfL5HWd92+ED0TqCa5wuktvU0QYY13LBYYhwPx5nm8up2
	1FbED2iSJ2b2/J+WuneSy6mw9vgJB/0SUwWqaMm9u3arXo8yl1m97ilgsUj8RkzDgaCyBfQOLi6
	tSmy4xE8SW3+4OCR5QBZF8UP4+hm/Vi4ZcRR68M83qVUdQi2wPvlPkcHCdcA0uf9MP887l8l0W0
	/ESGJM0s8Dy97Ov4jWgSE8I3Xgnu8uy50GI4YxgLpKaZk14LjfA/ZI7of05/9nuHkdPBIJccN5U
	/NsWMjXRohdFCWI6WBzkdGYR0=
X-Received: by 2002:a05:620a:4723:b0:8b2:e0db:e639 with SMTP id af79cd13be357-8ca204cd086mr614825485a.32.1770166800198;
        Tue, 03 Feb 2026 17:00:00 -0800 (PST)
X-Received: by 2002:a05:620a:4723:b0:8b2:e0db:e639 with SMTP id af79cd13be357-8ca204cd086mr614820985a.32.1770166799720;
        Tue, 03 Feb 2026 16:59:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e386ff563sm253405e87.1.2026.02.03.16.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 16:59:57 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 04 Feb 2026 02:59:50 +0200
Subject: [PATCH v3 2/7] media: dt-bindings: qcom,sm8250-venus: sort out
 power domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-iris-venus-fix-sm8250-v3-2-70fa68e57f96@oss.qualcomm.com>
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
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2051;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=DrFwEkIoYrD1qa5tx9EdrYljNPefynFUvMATHqt7Zhg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpgpoHGVXP1oPuZ1HuUzywdpPWCvtW3w+jr4aSM
 y/VnjMcAf2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYKaBwAKCRCLPIo+Aiko
 1URPB/9AbHHnOcBK0yW1YvGlYOkWgOh7u5KCk0ZVSgqo0xge7DvEHmVVxxD/P1sQxFA65QGswBT
 TZdKhKTqca9+6fPUjh0BVrkCYPAK+/yj9TUZOYnIJCvSl9TiIIAVbkrjQTW5zhVQkJY0b7asY3i
 O8RuKd86nreQOjaqhDl5lZEZIpUF1tL3mytnS2Q5ka3fvdAyibGpul+zgxBe6qwkLhMCyR/Huea
 dRigVV0bMz2b3othCMm5yTbD4ld2O6C8538X0oKnKyzBzHKxZ06dQDrXKIDSpzNr/ewcRxErGDA
 PKllVBMVXDCzw5DFeUIQVpKHURpbMzaCTZf711bnD6XLOryV
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: X026MuB07QJ3uIGqPckGNFaoel1vVsfg
X-Proofpoint-ORIG-GUID: X026MuB07QJ3uIGqPckGNFaoel1vVsfg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwNCBTYWx0ZWRfX1rTL0EHQdHKP
 OWS1PKPgzBqN6ZdR0ZxkYzLN+hhiwOOgHBkzGWb5j9rTAmS8HZytDb7/CN81bdYRKhGrrrSxprj
 nLTC3ZO/u/roeeMBJ0lOLfn8U8VGe1it3s0lkHinwNEry6oiBQ+LNxa+4mbj4/4qUGtF/pvvE0l
 cJUJ18t/fqOwR/Rv+N6PdPlCwjyM+i/LX5jsezAOfg3FEOa0MgxsUNcI4AoR+9ggqLAo2yzz7e/
 p/VrVsbiQJ8GfiYkMA4jD4G4Y6rG/C1K39RLJhV1Pg271D6dir6BxoTgXyKIR/Ly7np+h43SgYo
 wVW4EOHGTwUzG8y086bhVH2R1BVQxSulhGEm5P74s/dR3/xYP0/v5AzOL/9n195s/XonitRBCfU
 2UkE3WDupQhdJCZfN9V6rRHbBBgPOc7tapdac1XIwiv6zeHDBWK/Gadf45+2ldE+Tjz9TH8osJx
 8mvrr8q/k3ODYQIUTqg==
X-Authority-Analysis: v=2.4 cv=doTWylg4 c=1 sm=1 tr=0 ts=69829a10 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=V4YYwRrX08S5_i0GLdQA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040004
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
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262441-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1712CE02FB
X-Rspamd-Action: no action

First of all, on SM8250 Iris (ex-Venus) core needs to scale clocks which
are powered by the MMCX domain. Add MMCX domain to the list of the power
domain to be used on this platform.

While we are at it, drop minItems from both power-domains and
power-domains-names, it doesn't make sense from the hardware point of
view. There are always 2 GDSCs and two power rails wired to the video
clock controller and Venus. Disallow passing just two.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
index da54493220c9..04cbacc251d7 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
@@ -21,15 +21,14 @@ properties:
     const: qcom,sm8250-venus
 
   power-domains:
-    minItems: 2
-    maxItems: 3
+    maxItems: 4
 
   power-domain-names:
-    minItems: 2
     items:
       - const: venus
       - const: vcodec0
       - const: mx
+      - const: mmcx
 
   clocks:
     maxItems: 3
@@ -114,8 +113,9 @@ examples:
         interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
         power-domains = <&videocc MVS0C_GDSC>,
                         <&videocc MVS0_GDSC>,
-                        <&rpmhpd RPMHPD_MX>;
-        power-domain-names = "venus", "vcodec0", "mx";
+                        <&rpmhpd RPMHPD_MX>,
+                        <&rpmhpd RPMHPD_MMCX>;
+        power-domain-names = "venus", "vcodec0", "mx", "mmcx";
 
         clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
                  <&videocc VIDEO_CC_MVS0C_CLK>,

-- 
2.47.3


