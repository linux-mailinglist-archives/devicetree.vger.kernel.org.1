Return-Path: <devicetree+bounces-272057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GmsH4LHqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:24:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1969822086A
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:24:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 25927308290D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCFF38F23E;
	Fri,  6 Mar 2026 12:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IQyxH/pI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UmKXA0QL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041D4391504
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799738; cv=none; b=s3ECqJAk7w57+ILydnr/IuslX6fsnC4rp8G1spd1RZlzNJj/iiMra5aSn8Idba4xVUJ7tG5oPQs/r3DtQr6bgCHvxfJPMsT7eNWp2dz+fy/k3MzQWVPiKMGLRbDbhq7FCQ6eOzZNaTcliCtep7v1Dkts5scWNxCnlM6ellYHrA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799738; c=relaxed/simple;
	bh=VGST5Brah17d1wPyKLpwY5Hj5+A6sMXNTyNGXYgoTDQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oAq7/wD0ZowxIC8tX5FDmvJ74fzYK+PCIRe2DoSe/aa+hTe3dnVnPpmAcCBAdq5setD6Iiy3+5gRMjF5Kd6iR62azPijxHLc6wqAQT4brw+ZOBRPSQwjSSVJZfefBGcVgxASh/d2YwyiH8vkUN/oiTw/JmEvkuZAdPYTu8UNR9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IQyxH/pI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UmKXA0QL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626Bag3M4185912
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=118jvOZ59eK
	ci70KA7rIqIZSiuUuG3oFP4GJ6waca7I=; b=IQyxH/pIW1cMfvWxfjrN7eWq2PO
	hcOCVBVsuuC0MpgHr8qXaxzpewGxWebP26xtVZlkRwKM2Bh+GY0TkmpLkKU1VhwY
	mILJBqtwkEUruoji84BycgI+Xm/09KO/VxnYqfcFWHJASdGGq3G4PFmfjXW6ZKjH
	K65feqeNPYrXuBMP8EBVTeE406NZQjU0pWVAQfvvFmNpSgMNh/Vt/+IKqs+Rkcbp
	CNAV9V206ePC4YOVvcg+h6pyNnhwPOS8o09bwQmAZnkIb1HODdGiMQByayLThXVJ
	UR/+kX25r+ub1NlzJJ2W8Veo0L2Mq6C8s2NM+faTdN85KdGriW1OXzKlrmA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqruk9a8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c711251ac5so5061884585a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799728; x=1773404528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=118jvOZ59eKci70KA7rIqIZSiuUuG3oFP4GJ6waca7I=;
        b=UmKXA0QL1YOx5PtCLb29JW5skfLlcP4eoT1zdYulG2dxzUeg1cBvNpTGTae/PwP3yC
         CpvEwjW//KfNjFAloDB3PvXsrIlqs8BT7HUjf6KYM4pMlzQRmrmw/+ntUacgTjT9raxz
         fDYlQXlj1BF5IfY+FoI9oBEs0uBthL887nGW1H8lg7ISgqfQtf87izbCEOjCIbu5N/to
         bI4yJhXrUC6TAndWCjFg0xZzyEsYAKel8AfEeVruAk3NUihgLm+uw+Nuy9M6PZc0qG+O
         bAqAzz+zFJHTD3D20L4ERmBRaY+3Bd7NQje44VvbEw43B4jV2lUDdVNj/ZG+S8vUL+rJ
         EgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799728; x=1773404528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=118jvOZ59eKci70KA7rIqIZSiuUuG3oFP4GJ6waca7I=;
        b=rwiqvlK2EXlZsGjfQCcst/RpkoO3heXroMDhfhLAZBjuFa5PdXtKsDiu/ErtV7VtZc
         UnSvufuGs3ePfXipwxFc0/DdJyJtzAUksQ7Q1apuQVlpJI8WjMNm1Ii2gMOu1yygv04m
         iG5TJl/sIPkUYURHfl2omil58c+6vaAhOzn4ty9VjqZZNnqjJm1TB01yXKsj/BzRX83N
         mXdWyi+muAc+plAEfrp4exgQFOeICHExNSjdodltsSqL1vo88C37QzmrPq3eUTfEb4yB
         8MMSFxY5aeFvRHDnh+CmH2smiiqkNGen4aiRko6Rgqa08GU7g4qxM9G3NKkgKMTDXxSa
         9bpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmNnwkANenhrXqBANorCXlgZDAIkDGJZCWduZcMST7osXMudyIrJFM5m7pE6naYL6uK214VbhM6lu8@vger.kernel.org
X-Gm-Message-State: AOJu0YwzOVRIuk4PniVS5epG9UdfzSLBlsCJDqW+QfJyjX1i/9OPhbY4
	bLIncQmX6GaaSzj/5lScz+jVGRvAYO8x0oJWBrtOseFxGao7EZOfwo7J+dPznWS0w4da5OjH/x/
	U659iQtIx3TK9HWk2IHSbKP51uVuIMmAPTTSbzi3DLz3M3+RsafeJRXuVJ1KACDqp
X-Gm-Gg: ATEYQzwUm59qbK/vkCnAAucwB6WTmPYgmp96WSlBElHsDDgEzgZZ2LCHS9Mmdz+Jesg
	/avLZrwj/YjPwVPEkC1sJ1Gu9IScIHJa5Irj89Vh7QtRi6WlpXbKurS9AzP4q9SdyXDZEpn0kiM
	AO4joStFjiJKIE1H27vQe0qFytLM9aocsK58YJXKDL4lYm1OzFemyrrBTdve+E6gawjE7r/uhkC
	BcQ0uq371xcPBfhyf5kVgbkvVWwPbkmXX9iayIxOGmecag+UHageDMyuHjvBrBdZVw534WCZtGZ
	eCvr+K0fSAKfk8lltjcLinWt1aKEhXKUMiuK1xVuD/j+Joj0Ram/53jYDNASXIV7SjXSgWAAvSh
	19bEw7Acj7BxWbOUoplXCEMTjKmjJY5iciguk4InoavvzIz7ZJiCwA4A=
X-Received: by 2002:a05:620a:468a:b0:8c9:e98a:d9f1 with SMTP id af79cd13be357-8cd6d37173cmr229474185a.30.1772799727906;
        Fri, 06 Mar 2026 04:22:07 -0800 (PST)
X-Received: by 2002:a05:620a:468a:b0:8c9:e98a:d9f1 with SMTP id af79cd13be357-8cd6d37173cmr229470285a.30.1772799727469;
        Fri, 06 Mar 2026 04:22:07 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:06 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 06/13] ASoC: dt-bindings: qcom: add LPASS LPI MI2S dai ids
Date: Fri,  6 Mar 2026 12:21:08 +0000
Message-ID: <20260306122115.509705-7-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260306122115.509705-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260306122115.509705-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfX8uZ6V5t2kTbk
 /XdtrZpmDAUl5uc0NRqAk3L33n2rdjXve/+GL1QnMbhJdAclq0HMKu1NKrSk5oi50LMa6OL9Gjb
 RHSFnU5nCY1xPVRup70WkYiw4SRLqmYi+hI67wzy6tf5TmrF0N66IyDQcqedLSE0p42QM27Jezr
 +iS1yhls+xv1hrBMU3VIjiDQjtgNBIMoRVXScYaHrlVIn4LCj15mTI2uOywGQXIJ/o8Wt8G7IH3
 5hWJl/rcI43ypVA66ST4Cxj8qOm51WwVP/VUlE2F9FAx4tmFqesQphxphI5Hc2n5Hk5fAVDjroe
 ZNVtOZaFiy9kMKwh7C1CeF3xwdovguCjJsBONJb5dJZuCczhqDuQ9NTmTwWKDC64mmTnRwR7IuJ
 raxo3Z4qis4EaVtgv6xWC1enQHocAuzDlFW7jEz1fRAt38kQdl3yGOb1jFEPY3Q7tMu4e+JSswz
 9pfQTbwkIBg5xlyQTDg==
X-Proofpoint-ORIG-GUID: HGAuKLZ3qwsjy2bGGlbG7Z9GjnaKTuov
X-Authority-Analysis: v=2.4 cv=DvZbOW/+ c=1 sm=1 tr=0 ts=69aac6f0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=6P8UuP444nAwg2htitIA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: HGAuKLZ3qwsjy2bGGlbG7Z9GjnaKTuov
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 suspectscore=0 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 1969822086A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272057-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add new dai ids entries for LPASS LPI MI2S and SENARY MI2S audio lines.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Co-developed-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../bindings/sound/qcom,q6dsp-lpass-ports.yaml       |  5 ++++-
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h   | 12 ++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index 08c618e7e428..2b27d6c8f58f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -126,13 +126,16 @@ patternProperties:
             reg:
               contains:
                 # MI2S DAI ID range PRIMARY_MI2S_RX - QUATERNARY_MI2S_TX and
-                # QUINARY_MI2S_RX - QUINARY_MI2S_TX
+                # QUINARY_MI2S_RX - QUINARY_MI2S_TX and
+                # LPI_MI2S_RX_0 - SENARY_MI2S_TX
                 items:
                   oneOf:
                     - minimum: 16
                       maximum: 23
                     - minimum: 127
                       maximum: 128
+                    - minimum: 137
+                      maximum: 148
         then:
           required:
             - qcom,sd-lines
diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 6d1ce7f5da51..45850f2d4342 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -140,6 +140,18 @@
 #define DISPLAY_PORT_RX_6	134
 #define DISPLAY_PORT_RX_7	135
 #define USB_RX			136
+#define LPI_MI2S_RX_0		137
+#define LPI_MI2S_TX_0		138
+#define LPI_MI2S_RX_1		139
+#define LPI_MI2S_TX_1		140
+#define LPI_MI2S_RX_2		141
+#define LPI_MI2S_TX_2		142
+#define LPI_MI2S_RX_3		143
+#define LPI_MI2S_TX_3		144
+#define LPI_MI2S_RX_4		145
+#define LPI_MI2S_TX_4		146
+#define SENARY_MI2S_RX		147
+#define SENARY_MI2S_TX		148
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.47.3


