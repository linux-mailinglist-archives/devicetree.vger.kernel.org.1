Return-Path: <devicetree+bounces-259669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEjQLjX7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:39:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E65B8E3FE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:39:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7814C30093AA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5F6313538;
	Mon, 26 Jan 2026 23:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TtPimG74";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R2s8rRQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3263312807
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470720; cv=none; b=FAQ+MPZs0wz2AJ4frtw1CRuvFmRSfD5PKlEWAIsy2K5EsxtWitMMvZQVk3hqTQpzBRULvUUqwBlrONhn+s4mrHF3MrAlHYvtI2n+BkJ2YY9pphBCk1dHZTZ3I+GsOVeXYoGFdHTzEcRjQnnu9m2CKVCKSc1vh4ExNs3j9xLHmz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470720; c=relaxed/simple;
	bh=9B1FnLaHALjYfJ8RPCg5eOxKik1XLzUO5cKu4vZ+ZZw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=by/jfXqVkaLZF1fMr9wgmJ+1Vi2WcAQArwF/He45Tb5NdIZRsHj/ph1/7UD6T/MW753Yxsl89n+GcY+PZhd9ae8JC0xKsB8NHq70FJ/3en8/jE4oySZClxcUFrIi4r4RE2dIilMzfPYyj655zA06Q2gqst+yTpFCN0dA90WaXtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TtPimG74; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R2s8rRQP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKg8CS2733000
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1qylKAN4jaI
	gqx7JT64dI6YQstiaPDg+rYzw4T90x1I=; b=TtPimG74CKtPf7oPPv3tG/NYnVB
	/ZHHF4GvKs9T7jk2s1523Xw2fLjTfNyCuattR5lOtKg/9qjiPv5EVpFezNEnrwqg
	A6phNAKOmBG7tOnhLa5mH/JJMMdp0imRBtWrGkGQCo0l2kOxE7aCefVGGcdhyDoO
	Wp/iDmDCHW3T0F6o81/hivcUamP4tWvioK5Xw7A1+PleTCPlz8pVS7dHJyanOMoa
	+ZGBTah8pBBREkOEPWJyYC1xFJC1Q+T2XT2w7uLy+AGKE4fv2GGcm8bge2VNPBBe
	Vt194H23L6pu51Q82X1h6sB00crgmo8ryWwScrJT0XegUCFkR9FcsgY7MKg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv08qpa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:37 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12339e20b66so6505638c88.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470717; x=1770075517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1qylKAN4jaIgqx7JT64dI6YQstiaPDg+rYzw4T90x1I=;
        b=R2s8rRQPoCzvV0FpE7eueEWZrCjDp+s/jBjHX1xrgwoROYcl32/IiTHpwwREHrgI+/
         y5jF+F+sVj5jK6cxeafQqt23F0/E1Ky1VrFXzs78CNHg4Pbd019VQMEuxdyXAZlMk4vE
         Dk6mwwRWiwhUl/awCihVgIfsyS8B+imCNdq5Uh89b2TdKMu+Zk/HCjg6kLM27uybsFdb
         EcMyROvmMOXf59UWjHjU2HRXVciyXxyqGFElxgBFF6ZL6cBoaFqPtY9Vqcvacc2VYBO0
         EtUxjFtZo0pbmHDx5zmOemIWeZs0yNIe6KW6noqBszSpcQpNy68z7crRrIovl5VVwwl3
         iSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470717; x=1770075517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1qylKAN4jaIgqx7JT64dI6YQstiaPDg+rYzw4T90x1I=;
        b=dNVd9DS3Ut4P8LbfI+T4ZdVh/Wj+JjzLgAzY8nB8o4LNOE3QfFNrSm2DzOFUfpufFo
         43KvC204y4LFmAclh9oT8o0QwFFMR5UbSTZZqWNRTifgBoatr8iInuoV/aLMncPQlEIy
         bWGj7bu6xILrv0X3Vj3lXKUqQoD/MtSepQTaRfj+oWXEBCMi889Ntj6CPD8TAqpsyiX9
         yhCLdWmnPoM4YKuMr/Sa4n+QDke7dxm5j7tN5gabPj2YuA3hTsjc/TaTledvF6QDYgWC
         8kjsV7t3af04Tdbe1dM97IX7uAOYjHJIKZUqY/m7qMfUZVDkaJfywyTqlyfHTFO7FFm+
         ohDg==
X-Forwarded-Encrypted: i=1; AJvYcCUYoqdZr0r8cD+cuW2HZiGyePzZQgw9yhzqsOp/V4eonsp4ht9oy4B0g8XqA4tXFnJobKtm1f12O3cw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9vaaqKvfJaqtcGlFcmqWSm4KdK24JFTFgCela1NYVoyNSxu43
	xqbTB/UYJ3BHwHDpQ5x2A7KzQ/TYfZ4PaynDf/C/zDTl10U6xM0AO/G0EJc0EFPXoVoP4QSrokG
	U7LkK22ZZe9hqHt/XHNr8vqGLO7DJEjWjRHMxIAMZoZNFMM9qOIJz6o3M2KjZWuwY
X-Gm-Gg: AZuq6aI0mfs2FLOl/xYEzj9a6HwloPphzBpT1+UBdDFhDjBjEJCxnPtTnj62pkT/mus
	Jnfnw5NtVJGiOmGjjnGrjPR9KVxvPkCEUojnwG9yEGh63cz9wxT3ubeXFhaMXkh765RNX0NyuIX
	RQl/3DsqxUAC6M9mTtxBdKivEYw1fOHWFSU6oUkRaVLcF5n567qg1dkE7DivpluNyZSNMyYfT1q
	n6CrywXrP6hjy+c7VA2YY7ayJKc2UzvgjWahCNb55rc9rtxcN3X2U8r3IKhPRuzxwt0BzxFQfzN
	UWowfmO4i3QR5wh/IRrHgzsreB7bDapFWuyxQp9IRkt5EDNWC3mbBzgQc5FEs17U5/dAZ55V0uC
	u2rblsQ9mcGNEGVCtsM+kockNTQNGu++JSaWx90u49zE9pOSHXxiIwhM7243xZdU=
X-Received: by 2002:a05:7022:671e:b0:119:e569:f61e with SMTP id a92af1059eb24-1248ec5acf2mr3215094c88.23.1769470716772;
        Mon, 26 Jan 2026 15:38:36 -0800 (PST)
X-Received: by 2002:a05:7022:671e:b0:119:e569:f61e with SMTP id a92af1059eb24-1248ec5acf2mr3215069c88.23.1769470716223;
        Mon, 26 Jan 2026 15:38:36 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:35 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/9] usb: misc: qcom_eud: improve enable_store API
Date: Mon, 26 Jan 2026 15:38:26 -0800
Message-Id: <20260126233830.2193816-6-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: x2bc3ARlgUTn0gQ59DLDKvuUmDG088Ts
X-Authority-Analysis: v=2.4 cv=SvedKfO0 c=1 sm=1 tr=0 ts=6977fafd cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=iEam2xx7WbKG8qDqzoQA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: x2bc3ARlgUTn0gQ59DLDKvuUmDG088Ts
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfX6EmEJzFOBfQO
 OGFv+L0q2petfeaZcnHLbsmMNomc5pBdBY6BYdVu5ZiDWfsAgMHV3UuBl7+Y/WiyyVlAywGlP3+
 74Qf4KTfaK90fYmaxC3EmYkgvd/68QCyTntZTYO3wisCkMu2TjcV/9eDAj7sL2nOizh2AcehiXH
 4QSBYNpx49xZaLHu7mNn3n+rxOcXI27UH4BbIImZLzmLJn+k4cSw0t29wIPdcRb52sGsOdij9Yg
 nB4pZkbj80thYGy8iSZ4i11GvO6B+Qp/F5w5KSg8yDC7aAPRhTOS8EY0EY3RLb62XWC+R0j1VmJ
 Ss2FBoKoW9O+DUp/6JfpDvqmtpptPfEAeWDQE6ErFO6rjyxHEysQaXK9AaJq32cqnwi5gh/Rf3x
 dzytP9liEKD+a129kYicDCFyv+SBv5LmYmZVrJjHqsrR0UNUcbgDp7hLCCTx+Fc7VvQOB5OdgmT
 atAWK2trQ85FoIHIjcQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259669-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E65B8E3FE
X-Rspamd-Action: no action

Currently enable_store() allows operations irrespective of the EUD state,
which can result in redundant operations. Avoid this by adding duplicate
state checks to skip requests when EUD is already in the desired state.
Additionally, improve error handling with explicit logging to provide
better feedback.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index a58022f50484..0ea6491f963c 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -168,18 +168,27 @@ static ssize_t enable_store(struct device *dev,
 	if (kstrtobool(buf, &enable))
 		return -EINVAL;
 
+	/* Skip operation if already in desired state */
+	if (chip->enabled == enable)
+		return count;
+
 	if (enable) {
 		ret = enable_eud(chip);
-		if (!ret)
-			chip->enabled = enable;
-		else
-			disable_eud(chip);
-
+		if (ret) {
+			dev_err(chip->dev, "failed to enable eud\n");
+			return ret;
+		}
 	} else {
 		ret = disable_eud(chip);
+		if (ret) {
+			dev_err(chip->dev, "failed to disable eud\n");
+			return ret;
+		}
 	}
 
-	return ret < 0 ? ret : count;
+	chip->enabled = enable;
+
+	return count;
 }
 
 static DEVICE_ATTR_RW(enable);
-- 
2.34.1


