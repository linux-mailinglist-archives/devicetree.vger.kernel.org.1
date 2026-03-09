Return-Path: <devicetree+bounces-273008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DbmEePormlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:36:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AFB23BC82
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:36:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51FAD30C457A
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67533DFC75;
	Mon,  9 Mar 2026 15:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PPeJeG9H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y5aT8PSD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF643DBD50
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069875; cv=none; b=bDj/qZA9z79DciJT4PXroOnsFgxR5AkQG5gnKbL7DX89LIwjDeUW6UUmTTbRhEoneZHkyRj+pOWS+kKk4j/luNdWfXjTfx6Xxl67dRlCX/N40tQ1OPwMSgfoW8qaCYKS/51qIj6uGZ9ZJ/Glf1F0cq/NwmVrzTzjanFMz2SzawA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069875; c=relaxed/simple;
	bh=TavqoYSHkOCK535bHTFlVPN3mKzIMI/FOq8y09e/vtE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=haQoh3D4oXezdz/ihQo5sve2SOeUZpTB0UeZZnqR6sbdgISmncRBIzsDrU3OOYQhg5EbwsCziA9jwtQ04TmtwdfM3WhxQhseig/sZKSNk3KrBlG4q0mKRPYKILtRKiFSEFYi/GPmOiqnX7AqhPD3DCdg8Ws1wfDpWgF0IS72O4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PPeJeG9H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y5aT8PSD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629Dqhei2137784
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 15:24:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gedwtJfIJXq
	QK9HwihTh5tGOiTBuUlmHOcWjvUS8084=; b=PPeJeG9HxL+QlBPJ4SuLVZFxoVr
	K9GYjODodHZvtOXy72GY/wvfeFyf0sM5G8ERX+KNKSUi5T6vMTadXXQSnaqm+/a/
	x9BLqawHs+akSub2PULyDHEyRKRZDUE1j78/fm5KtM7aqvu0yk+lTEYn+tz1Z6pf
	XRBk6cmCZi79Q8RxNAQp3DTfzYiBNyfMcVdosKbrex6xqnviVrw1UGy7F+PZASeF
	3+IgHpdkSRBM9qB2JDSERMqh5trKg3YZ5g2Tv7yLuoZtoc6v0wDrXMdl6GE4Wbk9
	z13CRVKCdp2IHBb8PNyKRzXzc4G9xlF0t52BPFPv8NmIeNPC96ZZCqgSpnA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyft09t1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:24:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb6291d95aso3848695185a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773069873; x=1773674673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gedwtJfIJXqQK9HwihTh5tGOiTBuUlmHOcWjvUS8084=;
        b=Y5aT8PSDvBegQLq/tYAnUeuouHpg2vf8HqLjm5g0KdEv95GpZWByixmkiICdB7/e3Q
         0imY68Oaf1SZ6TGAk1MYVu3f61zLmYRIHx2pS5IvPjKTrpRFLRqwc+aXJqTh36i74uXi
         hKXwPg0UsWC2NYMU7JLHo2iqfev6Bi0zfUUkhHiA+GIXU47K3uunQn66C2rQAEO3CV96
         dgN0P5o918Cm1dJXoztSsILoRNVshEBlrNk0XjWf3KCjzETl/ynFFgJO07fZWbgbjXkI
         Z/5h3pyzk7f3t8OxuinAhRQ2cMhc9Q4YZqCk+3Zst+wCk+OYOWA1/+wVzp2dbyep7ozW
         UByA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773069873; x=1773674673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gedwtJfIJXqQK9HwihTh5tGOiTBuUlmHOcWjvUS8084=;
        b=fW509KXGywDuY5eysueeudm7VNdvvL5Ty8TqVtqGWLQhuNpaGDHqdnWEsLQAFm9hgN
         9Z3JB/iGzS+souEpS9PdnEc+Wi6E82DURIu0gBOUieLiLy8qjFOEV4GUZGg43ZqF8JaO
         Mi/vYvNM0VkcbuzesZxouHx+E1BS8o9zzIrKeySSVMxd9sBLuoeQUxl1yUVsoVzFp3se
         RD8j35J0BGP14L7QKS1CvhZl1s/sY8k052Y9FqU0rbioU5qTm9fTfCtPXosVwdPea3Iv
         dUf/awFSFmVIUI5aDcuBMYvekmnBGrZ+eahR9LId7anwqaKuZYVV1MmvUAeRLkXUIvC8
         q/bQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4zAzIW7FN7UB7TGY1tTPCrHej4Cb1j88ZbaeVot5+BAesM01wmusBhoUHol92iO7kzP/IrqRM1sxw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy0oLiQPYlx68pv03xgr9R0vGCfQP42vrSA7Qkixpg1+Ykb7Kj
	29JAW+Bi+rokWdh7/wDhhPNKQr2Z6cs1nDRkY5nNykjfRc4k2+alDLtLkDGrSG9r71xoMbN+0as
	dEHU+6fxe0vbfBvcZZrupFk/Dy2kLPLvdQgjYeHOCP2Jbl1ChySCNFpa5MetMn8wy
X-Gm-Gg: ATEYQzx0iQGbfQx4N6a5Jnr0bma7nynDZjrZQuwwo5MlL3uKraqObcN/PSp/4tt7HUQ
	bimfOfggcf0Trvb1k/6OxamwGFqgejBqQsrWtE0a2iMjzO+HgWAkf4BtFrbULnudtudN1Ma5Q/o
	u55qpBorsafffZHwkD7PeER4goHYF596j2WRaBeJvkvFD1ZAASLkq3SQBDzM9rOioia691N6hU0
	fPKes4qxO6sfxFSWDcww1rFGSDUU5pRYTaNUWirE4GiPvtjVsLkO67+wvaxKgqVQtnnbpFvpQpG
	vzKPGEMEDphGc0hq817Nopbhryb8Sezj7/vas3sgvzVl2UcYD0kPpgZzCvxGTMngtKox4tV/Z9I
	8/lZaRxPFSDi4M3GaaGr/Zd6YHqvYRoprRzr/rv89aEmfvGANdSnb+WY=
X-Received: by 2002:a05:620a:290a:b0:8cd:8f18:d1f4 with SMTP id af79cd13be357-8cd8f18d614mr225361585a.6.1773069872530;
        Mon, 09 Mar 2026 08:24:32 -0700 (PDT)
X-Received: by 2002:a05:620a:290a:b0:8cd:8f18:d1f4 with SMTP id af79cd13be357-8cd8f18d614mr225354385a.6.1773069871798;
        Mon, 09 Mar 2026 08:24:31 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a59fc36sm192812515e9.9.2026.03.09.08.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:24:31 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 3/7] dt-bindings: arm: qcom: add Arduino Monza, VENTUNOQ
Date: Mon,  9 Mar 2026 15:24:14 +0000
Message-ID: <20260309152420.1404349-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 6mrNNZPQRSAQqoecc1cghKXGyRhneoQX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEzOSBTYWx0ZWRfX13VRPIS4AcMO
 zOE/PNafbNNZ21yhvrzLUTBrhy6Igr/n+LenNlaZWYCmQnWJuJZzSBfX/dp9DNwiiCoVMrfJASw
 nxGnrOoq95BCcSjJoE2vkT2/w+fJ6cV7aKIWsQlg6Y5C8+oK7nCDMm7q/EP+DtD8GD6/VgeILfk
 sOP33iILzH9lOx0ogzEfF3zBNw0XciR+pJULr70bUvqMtvBpVTgKJM6kWYwVHdaQq+j82k1DbiU
 C51wlV23te3YqTER/3Na+lDIKXI5u/Pso8IfyrCUxmG9X/U+nocsBdf8a/CwR8/xzy/I1zOcnKq
 lnFKDvD8zbAEchG7rtx3dlJcd1f5euNuxcXnmaQWdDsC2Tta87es/FTJicPU1qGi8YbEcZTzlHV
 AZ61Q50ll8yA7NMca7ki4LlEiXixX+3Fs34/BfQIfiBrPYxArIbEIY5rzEF4mxOrslPnD5c9FMX
 SvJCk7WU96GJ7UdWRCA==
X-Proofpoint-GUID: 6mrNNZPQRSAQqoecc1cghKXGyRhneoQX
X-Authority-Analysis: v=2.4 cv=F8dat6hN c=1 sm=1 tr=0 ts=69aee631 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=cYMVCVoaxOtvnoqWShsA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090139
X-Rspamd-Queue-Id: B8AFB23BC82
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273008-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Loic Poulain <loic.poulain@oss.qualcomm.com>

Document Arduino monza, VENTUNOQ codename. It combines Monaco
based SoM with STMicroelectronics STM32H5 microcontroller.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 153664da91d9..2edef7e86175 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -890,6 +890,7 @@ properties:
           - enum:
               - qcom,monaco-evk
               - qcom,qcs8300-ride
+              - arduino,monza
           - const: qcom,qcs8300
 
       - items:
-- 
2.47.3


