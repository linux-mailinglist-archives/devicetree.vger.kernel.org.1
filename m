Return-Path: <devicetree+bounces-250051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6A6CE5FF3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39DB83004CD1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3EF527587D;
	Mon, 29 Dec 2025 06:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A4cjvcQZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kRLo5pjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D86275AEB
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766988445; cv=none; b=czN3WaioEyMfjDWG4ZWrwCpUO27pDWPEEZTdURkeJTxgcPGYW469GoHnpNqULIHUZKqUIlS9oy43VqhkOYclJ1I9pXy19+mHye7diiMiLNbCWH6ZZW5qNEtnrRJ+d6jkpYE3QppZJcj2aaT36u+EIIkATZom/Ov5kmvxkkojkNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766988445; c=relaxed/simple;
	bh=O4EeEWUv2uTtPsYwnH9RypRVFQouYX/8tIpGLdXsHjk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LBrjuauWBy1OF89SP9Bw3C4SbjINzJWXfiAD7BCmob+BMTRmSVuAt/+vFB0IF73MXENlPArLhOTBgHU7SBa93/NBBh7rwvQmqI1h9LO+cMeXbLPl/2npMGqAp2SJ78Ag54ixg6lj3PsZE0YD/iN+LkVqY3LnoetxyXhYJsAv52Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A4cjvcQZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kRLo5pjj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNj1mE3818203
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:07:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I3hUvNAPWtt
	5FBty8NnxL5IbWwIfHhW09CY6p/HgKJk=; b=A4cjvcQZBitn+/t9xbrmC7ZYUgx
	z4geC2PKRUVjOZQHFpOQp7HlpdO4ItilGXqvllUjejD63fg988IgRdZVpuIVDfuh
	Q8qx3CnK/UNfoKaNQDthpVNGtH+9O5htLQARAEWFNUh7W+Q3bw0GLmU66JQQ5iz+
	JhDGwhKrKGA1FEov8brccoNJS43FsFnpfgDkFVWqdz5dCF1dfteXCR1e4r6DCziJ
	kIdulOJh2QNAE4T9/9frKY62ItV9ichSECAW09VPrhSI789g2Q3jWH/rce3NNpBJ
	OqWVpoUggsSSIgoPqx4qR5irdspaPOzssRA1gRdpF7SLjwOd/hLdEkoVQZw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc8yrrg7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:07:23 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7c1df71b076so17376503b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766988443; x=1767593243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3hUvNAPWtt5FBty8NnxL5IbWwIfHhW09CY6p/HgKJk=;
        b=kRLo5pjjyeG6+ur8lMhIVjDRIpipagljKF8ksY7xlVSSIhQk2sefk00yVmkVU8il+p
         MH/ej4kyNp/ZBjW4jHd580Voywuat/tXZ9IRtgEW8YrjgW6VTgpgWTiw+M2atBQ4lVLR
         iaDCe1fTjHZrpYno5WPhGSpDSso2Y+mEw+DUFA+UUDo74UsN+onesgA3ARL8xTwwYheS
         CjW1vKd8jiF+bZR4iLU0gB2NPl2t+1zMFhupkAr9f6kK4Ok/Kv92kNQss4BP6nlXs8H2
         jCOhme+MkKCJnyfi6qZC3c+Koeu2ons0phhYpRs6YR8vFTAxXVH+dvrTiogUxzIhXzxb
         6I3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988443; x=1767593243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I3hUvNAPWtt5FBty8NnxL5IbWwIfHhW09CY6p/HgKJk=;
        b=Xjl8mbuZCno9mL58yTB8+D+uGzN4svhIIuYnLRywkBYYIPNliCJcV1ReObpiScSutB
         UVWyi0MQ9HDu7n45FPHiyqfS0+mWST8E68c3Uurw58dAjK8fjJecdZkJiV8geq/6ZsSS
         WZ+7ryeEQsqCbnb9/CpQYAbR/NtieyZhFNP2N6n58fByrUebPk2/gSfjNKDca/ymLqQO
         Ry9lDC6syWJ12G3azi2635R/l7Mujvzy6Quby2qT/nHN1RJzAmyMVAVOpvqThOA/xxZ2
         K5GBZi/h0pjvRvAnDdn9ioEGhRlTM75xhACvrIITH2WdXAICBzgSBXdJs6CY35FFaOka
         DrBw==
X-Forwarded-Encrypted: i=1; AJvYcCW5z5agIXklRUj+gRxoi7D+XTys/lEzvFbVnUgO14e/AxinjCJERQRHBFD94iXsEXg5R2pTQO73omF3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl1MAAwWdjX5Z+AEYXS9q/f4Vqop295kewxw+jE7IeKKv9QEKB
	99veQsznZDwmIB/RsncNNfN4AR1j3nbsOaFN0CMDjKasBMsYqwVNChAFw0JEhdyuT5mWqMfJL/i
	559UWgvL4g8vZ6eDjpctFoC7qjcvzABjKkuBKSbbu+52TnNp6S7ClNOaaFlpPjuh3
X-Gm-Gg: AY/fxX748d56ps+W6TZGHmSvq2wsIflzsWp/32/5pyjjdG5+BQkbF3JwoDafxsikIDP
	fU68sh42Q4tfrdt6FU87tnDW87qrqleQWWNn8uoY9y3B98VtMzqcTrTeCCTpmZs3symCXL9qCZA
	FCVQSTaiqNtiFo4HYuIQ7Hb0y9HZf40N4PbydGntEKA+lzAsf/6BaCZVItHRixsovcuusw545gM
	BT7pp9hI35Idw5tLVWTGAp2x4vw3kDoPR3wXRVRP5UlamkNtR3wBwm/dNsET5wJMXV79U2S0ona
	0z2lcz3VGsgVTxQnsRN82zhBYW0Z8yOgJzTlIl4jnly/gbCkMVY99ipRHrq/jegUaFzT+6YbAJQ
	3/mJ0TcJ4vBc3kKxxeHxzYOkMl8cvdyV+BilKJryFnQahqAwzIeyK
X-Received: by 2002:a05:6a00:2998:b0:792:5db2:73ac with SMTP id d2e1a72fcca58-7ff64403c13mr27755393b3a.7.1766988442974;
        Sun, 28 Dec 2025 22:07:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQjcE18QB3OL4WoMWr8IotpQbW43BKwdAOmr61bEQpyHhcwjCgEyzZ0+Kzga7KsoF96MAkwA==
X-Received: by 2002:a05:6a00:2998:b0:792:5db2:73ac with SMTP id d2e1a72fcca58-7ff64403c13mr27755367b3a.7.1766988442531;
        Sun, 28 Dec 2025 22:07:22 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm27917763b3a.67.2025.12.28.22.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 22:07:21 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V1 2/4] scsi: ufs: qcom: dt-bindings: Add UFSHC compatible for Hamoa
Date: Mon, 29 Dec 2025 11:36:40 +0530
Message-Id: <20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA1NCBTYWx0ZWRfX5jVxW6ZfmmZb
 j268UrCug2k+D5an4W/EUEPaDBH/KMjg9QGuSoqjLbgdgcqSvFYYU4jDqaOiI4MB4KoTIKeWRmC
 YzR+aCIAcNDcB12VBdEFlg2iZ4nkPZfkIWHAhscAbOU+UObKz7L0CQiW6whaYxszipQaLvKP/Pk
 n/GNmHZFYrPzg+Dqa/BNqODM21nh/cv26RemwJIrGzfeys12lfpKSKawz9kZjKbjixtY2eT+kNn
 h2kkG8TE7xIyhbHU2yHvi6emlU7AW1lSFv5tiTD1jsK12VYflF/LdIoU/3HwWCKb/GLWRMXKQDB
 DZGy6p6DhztS+6Q0e3FnByHDDUPJ3XlIdF4Uv5WjFuN9MzD8N2ProcFM79stkwLt41lK4bkLyM/
 JCz/f4kTNjGgDt8zDlrtl7UousYup1La0GuQLdqFYn8WBxI64gZTwD3PgEZZkzWlb5hRlcWvssl
 y5uH88Sx6ib04iMWzMw==
X-Authority-Analysis: v=2.4 cv=cP7tc1eN c=1 sm=1 tr=0 ts=69521a9b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VesTawrJlPzqt9UML1YA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: CWgTgH1Gxr9ItddeNmcJNvc1Dd2Cv6KJ
X-Proofpoint-GUID: CWgTgH1Gxr9ItddeNmcJNvc1Dd2Cv6KJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290054

Document the UFSHC compatible for Qualcomm Hamoa SoC. Use fallback
to indicate the compatibility of UFSHC on Hamoa with that on the
SM8550.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml          | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..3b5a95db7831 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,7 +31,11 @@ select:
 
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,hamoa-ufshc
+          - const: qcom,sm8550-ufshc
       - enum:
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
-- 
2.34.1


