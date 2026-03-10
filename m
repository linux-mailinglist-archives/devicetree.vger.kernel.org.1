Return-Path: <devicetree+bounces-273253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEFABESZr2lbawIAu9opvQ
	(envelope-from <devicetree+bounces-273253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:08:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AA432245232
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 35829302BF62
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A343A785F;
	Tue, 10 Mar 2026 04:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dh3UkXyN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DMDpGdjr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDE3285419
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773115710; cv=none; b=BBEyyUZFImKksM3RVOk9/5zuHTLvxo7tESwxLOJJfCBiE6aCe4x8HtToq/Wbc+Dpu7HF8LoTTev03beZqh38MxSFFV9IrchedHCsx/klTeR3HuwIqxc+NvXLpdDNJ31j/n+qV0n+MJjRUgKEa1hN/3+nucQQO2q/4Duc2KgQnpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773115710; c=relaxed/simple;
	bh=DuZeqPcjKYhEn8F5NjUZofnkhzNvaLI1wnEiFR7wyuU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dW7TT2ZmEdWXRUwMQ5MZLiG7zS1gfhFrg+0yVx9P+q3myw2KVuUXpA5yuYK8c877ejWPD1YG+ywrnz3yZkJC4nxYNeHLMKhpECmvSDchKoQUImDdLyis2vDpSLkR6SoHuN4zfUI9vX/KUH3ul+ln3oNLKFtP8tEEl4hkhIYuREg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dh3UkXyN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DMDpGdjr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EJKO247053
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ovr49Ywe9/o
	J6BapOkVc1HhRaNPcXs0HWWpvcanHAR4=; b=dh3UkXyNKIU8M//12ZwRo0qw0s9
	UNEgbJ9US1J9pMcAKLV712EWGgkO9EGK668AaHqBn6Qg6SkqOJ4BICTY1j9OW+bo
	8F0jz78+uVH4UV8EF+dGAAzHpE/8yeqA3R3A5pZcmvOAC7QzQAAUgdSdZ0tQD13c
	+KsAT4Qx39cN/ukvL3aZy5tpCh4prJ2tDuNIyRZztpFP4snraf/b7mylQxIEYKkb
	TZ5pVSmDAbravl2+L4u/m5UjyUsLpqvda1k2GTRBHpJb8LG6JTsWweZEn+9bWSCg
	YRK/uawDo+zTO6cFPthJpr4zczmi8lvxQ7c2yA7yDj62y8jaj27+Nq0FPUw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct8800q3h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:28 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358df8fbd1cso12228324a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773115708; x=1773720508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ovr49Ywe9/oJ6BapOkVc1HhRaNPcXs0HWWpvcanHAR4=;
        b=DMDpGdjryuUXDI31jHvP7c0J41Ca3A83ZQVkkpUJ3aN6G4WH7lRDioFCvraDUuqCSW
         C/NS8D/GlA0fwCurxbmIAVVmls5jMWoYEfYNiJDuAVcVJiUN53TUzorH/nwUKAgfQHop
         YayQilhQjGohPuUxusrMv7YDtSiJA4FLtw1aqL2lruSJLwkF/+SKhYD0N9qOEAO8PTRK
         Kd2oVBjvBQoK8BFxD1IOdfFONHLzhnZajHfUlQ0iFHMp9L7oOBDuYVWjtxgNnY/40sIV
         PBZbHxajwbMH+mN1SOIf8VP6e/QVa12io947c9NMffBzI8Tql2/M8nK6uL4kxhgPD1Aa
         bBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773115708; x=1773720508;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ovr49Ywe9/oJ6BapOkVc1HhRaNPcXs0HWWpvcanHAR4=;
        b=OSBuv5HR8xzSxhF8e52Su/k4+HJIKGkWICd5J8TqzJZNQEjzcA8vXiQPpgGbNzY+Tc
         qH3ikWmpD71Tpp7Vg3M4T2Tz9HPXZSgqySjuO960svuWV+OFbNRsSALCo4rewS3y7CMV
         PKjuk8DMuRqPXU3qHMqqerPtwfs/aQeKcweB1nkO9LlF/W4RA8RNUYF61N/kYVq3/Z7w
         zP93SGL77Lr5T1El5Bcs8qfXokld4WjiGn/yXJY+7SodSU4KkCRa2f0UTepGHlGyXgEy
         wmWtOADIiFRLc2bVArBMHy8JZbRWGBlTH6idbx5WiikuMUqTPsYwE57A+zbVJFwdzdWJ
         6w7A==
X-Forwarded-Encrypted: i=1; AJvYcCUNRiIHs46lRsZOYlz/yTZUiEvg491pNqnLa2XIVCcgFwMi+mnf3RRwAHudd7l9NmaXyC4MZKLzpdAc@vger.kernel.org
X-Gm-Message-State: AOJu0YxLlY8MS3GqMomDu6qxgXbqq3H4MR0oOyK1UweyBNo9ikqBoRY8
	JjEFX7en+J7t/SVSY3XfEYNbI83zxbBnYv7P+HHC5XOF3GzrZ/vr2m8k/LcHqHhpaX7+Nqap3pK
	TjcTtSeyAcjjS617qUsNInj5cYfYFBQhMlRTCL3tAzOqcN/FnlRMWn87lte6IYAbo
X-Gm-Gg: ATEYQzzRkrh5or92JTB1HUBDTHyNz7Y81+mmWr8l3VfP0Su2tvMpzDyezxSuUu8r50g
	+et1veiJAjN2AAV8IMlqzU4NPIXP5pgbdoxQmyanK13sfWwJ/koJoxWLfG0c/Y2kyLWjKdIFi6G
	XqxrAViGqKjhW0L941LNV273mEHEvP4e7rXJ1tW4aW0++LTAcd8nAr9t5qj3mYzGW68m+U5eHrs
	BI9kZNeHT3z/kDcxh9WBbM369qgWKZooXw5ihkzBFr9lgvNhMfhwZ5A1eo3wKQZQ4bzwmEHnO/D
	x3pSp7gjKm8tqXHQJVe5LAanMwBD3h2ZG6gf4AF6/uvwYKEv3VQ0Dqt64A9gDLCFTY89c2zQTRj
	rfZe8Yo71jjvjN9F0tKQ8gWKdLMnzbMiuUu8mkkCbwhhlZwI8anKmXGJpg1NeXexWSL69z/P/v3
	XJW9g6CZrhfOYtF02ZxE2oNHqBY8A335wAt9ju
X-Received: by 2002:a17:903:35c6:b0:2ae:4e43:a606 with SMTP id d9443c01a7336-2ae8245df81mr109276495ad.20.1773115707808;
        Mon, 09 Mar 2026 21:08:27 -0700 (PDT)
X-Received: by 2002:a17:903:35c6:b0:2ae:4e43:a606 with SMTP id d9443c01a7336-2ae8245df81mr109276175ad.20.1773115707311;
        Mon, 09 Mar 2026 21:08:27 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aea4eed00fsm9797975ad.80.2026.03.09.21.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 21:08:26 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: sudeep.holla@kernel.org, angelogioacchino.delregno@collabora.com,
        viresh.kumar@linaro.org, neil.armstrong@linaro.org, festevam@gmail.com,
        Frank.Li@nxp.com, danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
Date: Tue, 10 Mar 2026 09:37:49 +0530
Message-Id: <20260310040751.3132523-2-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
References: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAzMSBTYWx0ZWRfX/Y2myROwzQiX
 3Ug4f/o7VNotrHdssq4ziuBNnSh7hjviqetSnnRt0joosOK8GwnHqsu+JEZ6SGA5ZkKuakrqdkJ
 QcqdPL6h6IVoIkJF5aVrdfErCJ7+UM0tBQ2tb6Wy01TfKhlsH9gBJ2IrGvdj9C7YTsNz8bpy71H
 HRvqxXF3ub/9pFnUGBnMBG61fm9W/Uvo1QO0Ow3A7rTqzUpdnnEnVQ9ToOo1Y3GHwkPzDX4gdM6
 u+CDodFzVr30QlhbJr+F1gUuPE/CxzAHoUiSbi2ryw7L0jgYj8vKLejubm5IrnHvoAiHuS6lkoE
 /x4M6e2miG3MXQFNifj9/FcvqsiVLpwYGFu0cctMIlX17txVbi/cc5dXJlS5lZtHCrfRL3q7zBH
 5xo5JK1vkfkWRq3/GR1lJ+t2KWzOztkRtNQvqgobE5tSYEdPQl40TXDMVlh3zEAvWdkcIkgAZmU
 u0Z36F660xh/8xtHXlQ==
X-Proofpoint-GUID: swI0xgX-sksih--OgWJZMkSQFCdTQiYp
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69af993c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=Jikm8KGWMo0igBCjT2MA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: swI0xgX-sksih--OgWJZMkSQFCdTQiYp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100031
X-Rspamd-Queue-Id: AA432245232
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273253-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The generic Qualcomm Oryon CPU compatible documented in the binding
doesn't account for differences between core types and has been
deprecated. Introduce core-specific compatibles, based on MIDR part and
variant numbers.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 700255e9a002..fb6e5871b625 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -218,6 +218,13 @@ properties:
           - qcom,kryo685
           - qcom,kryo780
           - qcom,scorpion
+          - qcom,oryon-1-1
+          - qcom,oryon-1-2
+          - qcom,oryon-1-3
+          - qcom,oryon-1-4
+          - qcom,oryon-2-1
+          - qcom,oryon-2-2
+          - qcom,oryon-2-3
           - samsung,mongoose-m2
           - samsung,mongoose-m3
           - samsung,mongoose-m5
-- 
2.34.1


